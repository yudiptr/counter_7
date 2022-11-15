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
