
## *:information_source: TOKOWEB*
Aplikasi ini bisa anda gunakan untuk mengontrol stock barang yang anda miliki sehingga jelas transaksi keluar dan masuk barang tersebut juga mempermudah kontrol barang tersebut.
<br><br>
Untuk tampilannya saya sudah pasang template admin `bootstrap v5` yaitu `sash admin`.

## *:sparkles: Fitur*
* **Dashboard**
* **Jenis Barang**
* **Satuan Barang**
* **Merk Barang**
* **Barang**
* **Supplier**
* **Barang Masuk**
* **Barang Keluar**
* **Laporan Barang Masuk**
* **Laporan Barang Keluar**
* **Laporan Stok Barang**
* **Setting Website**
* **Setting Hak Akses user per Role**
* **Setting Menu (bisa tambah menu atau bisa hapus menu)**

## *:electric_plug: Plugin*
* **Yajra Datatables**
* **SweetAlert**
* **jQuery**
* **Datetime picker**

## *:gear: Requirement*
<p>
<img alt="gambar" src="https://img.shields.io/badge/PHP%20-%5E8.1-green"/>
<img alt="gambar" src="https://img.shields.io/badge/Node JS%20-%5E16.14.0-green"/>
<img alt="gambar" src="https://img.shields.io/badge/Npm%20-%5E8.3.1-green"/>
<img alt="gambar" src="https://img.shields.io/badge/Composer%20-%5E2.3.9-green"/>
</p>

## *:rocket: Instalasi*
#### :arrow_right: Clone Project / Download File
Clone Project dengan perintah terminal `gitbash` sebagai berikut:
```
git clone git@github.com:TOKOWEB/laravel-tokoweb.git
```
Atau bisa klik tombol download Zip dan extrak file tersebut
#### :arrow_right: Buat Database
Buat Database `db_tokoweb`
#### :arrow_right: Config ENV
Ubah file dari `env.development` jadi `.env`

Setting `DB_DATABASE`, `DB_USERNAME`, `DB_PASSWORD` yang ada di file `.env` sesuai Nama Database mysql kalian

#### :arrow_right: Set Up
Buka Terminal di proyek folder Anda dan jalankan perintah dibawah ini:
```
composer install
```
```
php artisan storage:link
```
#### :arrow_right: Import Database
Import file database `db_tokoweb.sql` yang ada di folder `database/db` ke phpmyadmin 

#### :arrow_right: Jalankan Aplikasi
```
php artisan serve
```
copy & paste `http://127.0.0.1:8000/` ke browser anda.

#### :arrow_right: Login Default
username: `superadmin` password: `12345678`
<br>
username: `admin` password: `12345678`
<br>
username: `operator` password: `12345678`
<br>
username: `manajer` password: `12345678`

## *:desktop_computer: Preview*
![35ace435-364a-4687-ad3d-cb20c8919f54](https://github.com/XNHAE/TOKO-WEB/blob/main/Images/Login.png)
![b0a513c2-c7e7-4098-860e-a67c620f315d](https://github.com/XNHAE/TOKO-WEB/blob/main/Images/Dashboard%20masuk.png)
![46e7cb6f-f5e5-4d83-8f13-6b0ac51783de](https://github.com/XNHAE/TOKO-WEB/blob/main/Images/Jenis%20Barang.png)
![d0b00488-665f-40fd-bd13-80700dcfda55](https://github.com/XNHAE/TOKO-WEB/blob/main/Images/Merk%20Barang.png)
![99c8e171-c9d2-411b-b051-d5a00720fffa](https://github.com/XNHAE/TOKO-WEB/blob/main/Images/Satuan%20Barang.png)
![87663504-3da5-4153-9eaf-ab6b0fdab721](https://github.com/XNHAE/TOKO-WEB/blob/main/Images/Master%20Barang%20Barang.png)
![81b66810-c612-4cb3-b38b-0969c995daaf](https://github.com/XNHAE/TOKO-WEB/blob/main/Images/Supplier.png)
![4b5e456b-b7ea-4811-a5c1-daa390ff60b0](https://github.com/XNHAE/TOKO-WEB/blob/main/Images/Barang%20Masuk.png)
![eb346127-7335-4d21-b7d3-4a6fd3546f71](https://github.com/XNHAE/TOKO-WEB/blob/main/Images/Barang%20Keluar.png)
![b6556fbf-be09-4af3-9879-457869a62e95](https://github.com/XNHAE/TOKO-WEB/blob/main/Images/Laporan%20barang%20masuk.png)
![2cc02ed2-b349-4547-b4f4-8bb387d76c85](https://github.com/XNHAE/TOKO-WEB/blob/main/Images/print%20barang%20masuk.png)
![2147a66f-27a7-4b67-9ce3-4e370ea86a3d](https://github.com/XNHAE/TOKO-WEB/blob/main/Images/laporan%20barang%20keluar.png)
![Capture](https://github.com/XNHAE/TOKO-WEB/blob/main/Images/print%20barang%20keluar.png)
![b38ca89e-6b3f-42d8-854f-012d67d2eca6](https://github.com/XNHAE/TOKO-WEB/blob/main/Images/Laporan%20stok%20barang.png)
![5fb52443-21e7-4d00-bc44-a22e95242058](https://github.com/XNHAE/TOKO-WEB/blob/main/Images/print%20stok%20barang.png)
![Capture1](https://github.com/XNHAE/TOKO-WEB/blob/main/Images/Menu.png)
![06bb2407-764d-4748-afc8-5cd81da997f4](https://github.com/XNHAE/TOKO-WEB/blob/main/Images/Tema.png)
![d0102488-3be5-492c-9779-f08be883efb9](https://github.com/XNHAE/TOKO-WEB/blob/main/Images/Pengaturan%20website.png)


