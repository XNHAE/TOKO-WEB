<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Surat Jalan - {{ $title }}</title>
    <style>
        body { font-family: sans-serif; font-size: 12px; }
        .header { text-align: center; margin-bottom: 20px; }
        .header h2, .header h4 { margin: 0; }
        .table, .table th, .table td {
            border: 1px solid black; border-collapse: collapse;
        }
        .table th, .table td {
            padding: 6px; text-align: left;
        }
        .footer {
            margin-top: 40px;
            text-align: right;
        }
        .text-right {
            text-align: right;
        }
        .page-break {
            page-break-after: always;
        }
        .tujuan-header {
            background-color: #f2f2f2;
            padding: 8px;
            margin: 15px 0 10px 0;
            font-weight: bold;
            border-left: 4px solid #333;
        }
    </style>
</head>
<body>

    @foreach($data as $tujuan => $items)
        <div class="header">
            <h2>{{ $web->web_nama ?? 'Nama Perusahaan' }}</h2>
            <h4><u>SURAT JALAN</u></h4>
            <p>
                Tanggal: 
                @if($tglawal && $tglakhir)
                    {{ \Carbon\Carbon::parse($tglawal)->translatedFormat('d F Y') }} - 
                    {{ \Carbon\Carbon::parse($tglakhir)->translatedFormat('d F Y') }}
                @else
                    Semua Tanggal
                @endif
            </p>
            <div class="tujuan-header">
                Tujuan: {{ $tujuan }}
            </div>
        </div>

        <table class="table" width="100%">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Tanggal</th>
                    <th>Nama Barang</th>
                    <th>Jumlah</th>
                    <th>Satuan</th>
                    <th>Harga Satuan</th>
                    <th>Total Harga</th>
                </tr>
            </thead>
            <tbody>
                @foreach($items as $i => $item)
                    <tr>
                        <td>{{ $i + 1 }}</td>
                        <td>{{ \Carbon\Carbon::parse($item->bk_tanggal)->translatedFormat('d-m-Y') }}</td>
                        <td>{{ $item->barang_nama ?? '-' }}</td>
                        <td>{{ $item->bk_jumlah }}</td>
                        <td>{{ $item->satuan_nama ?? '' }}</td>
                        <td class="text-right">Rp {{ number_format($item->barang_harga ?? 0, 0, ',', '.') }}</td>
                        <td class="text-right">Rp {{ number_format($item->total_harga ?? 0, 0, ',', '.') }}</td>
                    </tr>
                @endforeach
                <tr>
                    <td colspan="6" style="text-align: right; font-weight: bold;">Subtotal:</td>
                    <td class="text-right" style="font-weight: bold;">
                        Rp {{ number_format($items->sum('total_harga') ?? 0, 0, ',', '.') }}
                    </td>
                </tr>
            </tbody>
        </table>

        <div class="footer">
            <p>Surabaya, {{ \Carbon\Carbon::now()->translatedFormat('d F Y') }}</p>
            <br><br>
            <p>(_________________________)</p>
            <p>Petugas</p>
        </div>

        @if(!$loop->last)
            <div class="page-break"></div>
        @endif
    @endforeach

</body>
</html>