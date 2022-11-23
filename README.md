* Yudi Putra Sabri
* 2106706123
* PBP - F

# TUGAS 7
## Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
Stateless widget adalah widget statis dimana seluruh konfigurasi yang dimuat didalamnya telah diinisiasi sejak awal. Sedangkan Stateful widget berlaku sebaliknya dimana sifatnya adalah dinamis, sehingga widget ini dapat diperbaharui kapanpun dibutuhkan berdasarkan user actions atau ketika terjadinya perubahan data. Perbedaannya, stateful bisa untuk ubah reference state yang udah diset, stateles cuma buat itself.

##  Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
* Text : Untuk menampilkan text
* FloatingActionButton : Untuk membuat button yang berada di index paling dekat dengan surface
* Row : membuat element dalam 1 row
* Colum : membuat element didalamnya memiliki gap 1 column
* Padding : Untuk sizing element
* Center : Menaruh element container ke tengah halaman
* Icon : Memberi icon ke sebuah element

## Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
Setstate akan memberikan informasi ke system ketika sebuah variable berubah dan system akan melakukan render ke part yang berubah. Setstate perlu digunakan ketika ada perubahan yang ingin ditampilkan di UI.

Variabel yang terdampak tentu _counter itu sendiri karena yang mengalami perubahan adalah counter. Dari counter, akan berdampak ke text yang sudah dibuat yaitu ganjil atau genap.

## Const dan final
Const dan final sama sama variable yang bersifat immutable. Bedanya, const disetup sebelum runtime. Akan tetapi, final di set setelah runtime dan hanya untuk sekali. Dengan kata lain nilai final akan diketahui pada saat run-time.

## Implementasi
1. `flutter create counter_7`
2. Membuat fungsi _turun() untuk decrement counter
3. Membuat conditional ke children dari body untuk ganjil genap
4. Set color dari text dengan style = textstyle(color: blabla)
5. Mengubah floatingActionButton dengan menambahkan padding untuk menjadi container element dan set posisi ke bawah serta menambahkan child karena kita akan membuat 2 tombol
6. Mengisi children dari child nomor 5 dan kemudian membuat widget floatingActionButton untuk increase dan decrease disisipi sizedbos dengan widht 100


# TUGAS 8
## Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement.
Perbedaan dari navigator push dan pushreplacement adalah pada push, kita hanya menimpa layer sebagaimana tipe data stack. Akan tetapi, push replacement tidak akan menimpa, melainkan akan mengganti layer tersebut menjadi layer dia.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
* Card -> Untuk membentuk sebuah component Ketru seperti container dan diloop untuk tiap" data
* Drawer -> Panel untuk melakukan perpindahan tampilan atau navigator
* TextFormField -> Component untuk ask input text
* Form -> Membuat sebuah container untuk dijadikan parent dari input input yang dideklarasikan
* ListTile -> component yang didalamnya juga bisa digunakan widget
* Column, Padding, Row -> positioning
* DropDownButton -> Membuat fields untuk memilih input
* DatePicker -> pilih tanggal
* TextStyle -> Styling text
* Container -> menampung beberapa komponen seperti `div`
* TextButton -> membuat tombol berbasis text untuk trigger datepicker

## Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).
* OnPressed
* OnChange
* OnSaved
* OnTap
* OnComplete

## Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.
Navigator layaknya stack untuk ditampilkan dengan paling atas berarti yang muncul. Ketika navitagor push, layer sebelumnya akan ditimpa dan tetap tersimpan di bawah layer yang baru, sementara pushreplacement akan mengganti layernya

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1. Membuat file drawer yang berisi route untuk masing masing class untuk counter, showBudget, atau formBudget.
2. Membuat file addBudget.dart untuk membuat form untuk dimasukkan kedalam List di dataBudget.
3. File dataBudget akan diset untuk memiliki fungsi untuk menambahkan obj paada atribut classnya untuk menampung data yang diinput.
4. Membuat showBudget dan melakukan loop dari dataBudget.len untuk diloop dan ditampilan sebagaimananya dengan Card view. Menggunakan ListView.Builder



# TUGAS 9
## Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Kita bisa mengambil data JSON tanpa membuat model, akan tetapi, terdapat kekurangan seperti kita tidak bisa mengakses data tersebut sebagai sebuah "class" dan ini menjadi kurang efisien.

## Widget yang digunakan
* Flexible -> agar text tidak overflow
* CheckBox -> State untuk menggantu status watched_movie
* FutureBuilder -> Create widget saat tangkap data
* SizedBox -> Kotak untuk positioning
* Text -> buat text
* TextStyle -> Styling text
* ListView -> List widget
* MaterialPageRoute -> change screen
* Container -> Menampung widget
* BoxDecoration -> Styling container
* Column -> Container berbasis kolom
* ElevatedButton -> Buat button di bawah

## Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.
* add dependancy http
* (Optional) Membuat model dari data yang akan di GET
* Membuat HTTP Request untuk GET
* GET yang didapat diubah menjadi model yang sudah dibuat sebelumnya 
* FutureBuilder -> Membuat widget / component yang menggunakan data yang diGET setelah data sukses diGET

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1. Menambahkan dependancy http
2. Membuat model watchlist
3. Membuat page watchList
4. Menambahkan watchlist ke drawer
5. Membuat file untuk fetchData dari url
6. Melakukan fetch dengan futureBuilder di watchlist Page
7. Data yang diambil akan diloop dengan item builder dan membentuk komponen seperti card
8. Membuat navigator push yang akan menampilkan detail dari film yang diGET ketika card dipencet