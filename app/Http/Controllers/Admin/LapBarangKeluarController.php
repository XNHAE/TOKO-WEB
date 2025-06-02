<?php

namespace App\Http\Controllers\Admin;
use Illuminate\Support\Str;
use App\Http\Controllers\Controller;
use App\Models\Admin\BarangkeluarModel;
use App\Models\Admin\WebModel;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;
use PDF;

class LapBarangKeluarController extends Controller
{
    public function index()
    {
        $data["title"] = "Lap Barang Keluar";
        return view('Admin.Laporan.BarangKeluar.index', $data);
    }

    public function print(Request $request)
    {
        if ($request->tglawal) {
            $data['data'] = BarangkeluarModel::leftJoin('tbl_barang', 'tbl_barang.barang_kode', '=', 'tbl_barangkeluar.barang_kode')->whereBetween('bk_tanggal', [$request->tglawal, $request->tglakhir])->orderBy('bk_id', 'DESC')->get();
        } else {
            $data['data'] = BarangkeluarModel::leftJoin('tbl_barang', 'tbl_barang.barang_kode', '=', 'tbl_barangkeluar.barang_kode')->orderBy('bk_id', 'DESC')->get();
        }

        $data["title"] = "Print Barang Masuk";
        $data['web'] = WebModel::first();
        $data['tglawal'] = $request->tglawal;
        $data['tglakhir'] = $request->tglakhir;
        return view('Admin.Laporan.BarangKeluar.print', $data);
    }

    public function surat(Request $request)
    {
        $tglawal = $request->tglawal;
        $tglakhir = $request->tglakhir;
        $tujuan = $request->tujuan;
    
        $query = BarangkeluarModel::join('tbl_barang', 'tbl_barang.barang_kode', '=', 'tbl_barangkeluar.barang_kode')
            ->join('tbl_satuan', 'tbl_satuan.satuan_id', '=', 'tbl_barang.satuan_id')
            ->orderBy('tbl_barangkeluar.bk_tujuan', 'asc')
            ->orderBy('tbl_barangkeluar.bk_tanggal', 'asc')
            ->select(
                'tbl_barangkeluar.*',
                'tbl_barang.barang_nama',
                'tbl_barang.barang_harga',
                'tbl_satuan.satuan_nama', // Mengambil nama satuan dari tabel satuan
                \DB::raw('(tbl_barangkeluar.bk_jumlah * tbl_barang.barang_harga) as total_harga')
            );
    
        if ($tglawal && $tglakhir) {
            $query->whereBetween('tbl_barangkeluar.bk_tanggal', [$tglawal, $tglakhir]);
        }
    
        if ($tujuan) {
            $query->where('tbl_barangkeluar.bk_tujuan', $tujuan);
        }
    
        $groupedData = $query->get()->groupBy('bk_tujuan');
    
        $web = WebModel::first();
    
        $pdf = PDF::loadView('Admin.Laporan.BarangKeluar.surat', [
            'title'     => 'Surat Jalan Barang Keluar',
            'data'      => $groupedData,
            'tglawal'   => $tglawal,
            'tglakhir'  => $tglakhir,
            'tujuan'    => $tujuan,
            'web'       => $web
        ]);
    
        $filename = $tujuan 
            ? 'Surat-Jalan-' . Str::slug($tujuan) . '.pdf' 
            : 'Surat-Jalan-Barang-Keluar.pdf';
    
        return $pdf->stream($filename);
    }
    
    
    public function pdf(Request $request)
    {
        if ($request->tglawal) {
            $data['data'] = BarangkeluarModel::leftJoin('tbl_barang', 'tbl_barang.barang_kode', '=', 'tbl_barangkeluar.barang_kode')->whereBetween('bk_tanggal', [$request->tglawal, $request->tglakhir])->orderBy('bk_id', 'DESC')->get();
        } else {
            $data['data'] = BarangkeluarModel::leftJoin('tbl_barang', 'tbl_barang.barang_kode', '=', 'tbl_barangkeluar.barang_kode')->orderBy('bk_id', 'DESC')->get();
        }

        $data["title"] = "PDF Barang Masuk";
        $data['web'] = WebModel::first();
        $data['tglawal'] = $request->tglawal;
        $data['tglakhir'] = $request->tglakhir;
        $pdf = PDF::loadView('Admin.Laporan.BarangKeluar.pdf', $data);
        
        if($request->tglawal){
            return $pdf->download('lap-bk-'.$request->tglawal.'-'.$request->tglakhir.'.pdf');
        }else{
            return $pdf->download('lap-bk-semua-tanggal.pdf');
        }
        
    }

    public function show(Request $request)
    {
        if ($request->ajax()) {
            if ($request->tglawal == '') {
                $data = BarangkeluarModel::leftJoin('tbl_barang', 'tbl_barang.barang_kode', '=', 'tbl_barangkeluar.barang_kode')->orderBy('bk_id', 'DESC')->get();
            } else {
                $data = BarangkeluarModel::leftJoin('tbl_barang', 'tbl_barang.barang_kode', '=', 'tbl_barangkeluar.barang_kode')->whereBetween('bk_tanggal', [$request->tglawal, $request->tglakhir])->orderBy('bk_id', 'DESC')->get();
            }
            return DataTables::of($data)
                ->addIndexColumn()
                ->addColumn('tgl', function ($row) {
                    $tgl = $row->bk_tanggal == '' ? '-' : Carbon::parse($row->bk_tanggal)->translatedFormat('d F Y');

                    return $tgl;
                })
                ->addColumn('tujuan', function ($row) {
                    $tujuan = $row->bk_tujuan == '' ? '-' : $row->bk_tujuan;

                    return $tujuan;
                })
                ->addColumn('barang', function ($row) {
                    $barang = $row->barang_id == '' ? '-' : $row->barang_nama;

                    return $barang;
                })
                ->rawColumns(['tgl', 'tujuan', 'barang'])->make(true);
        }
    }

}
