Show Your Markdown Source
====================
Image: 
Description: Showing Markdown source to users.
Published: 2017-08-22 11:21am
Publish-now


**Show-Markdown** adalah sebuah fitur Overcrack yang berfungsi mencetak kode sumber (_source code_) asal sebuah postingan yang tersimpan dalam format Markdown. Dengan fitur ini penulis atau pemilik blog dapat mengecek kode sumber, misalnya ketika ada keganjilan dalam tampilan, langsung melalui browser tanpa harus _ribet_ login ke server. Bagi pengguna, fitur ini antara lain dapat memberikan gambaran bagaimana sebuah artikel blog tersusun dalam bentuk aslinya.

Fitur **Show Markdown** berlaku dan hanya berlaku untuk halaman _permalink_, yaitu halaman blog yang menampilkan postingan tunggal, jadi bukan pada halaman beranda (_frontpage_) atau halaman arsip. Dalam Overcrack halaman _permalink_ dicirikan dengan format URL (yaitu alamat yang tertulis di baris alamat atau _address bar_) yang memuat secara berurutan tahun, bulan, tanggal dan judul postingan, misalnya seperti ini: `/2017/02/28/judul-artikel`.

Memanggil fitur **Show Markdown** dilakukan dengan cara menambahkan **`/markdown`** di belakan alamat yang tercetak di _address bar_. Sebagai contoh bila _address bar_ menampilkan alamat:

	http://overcrack.web.id/2017/08/22/show-markdown-source

maka, **Show Markdown** diaktifkan dengan mengubah URL menjadi:


	http://overcrack.web.id/2017/08/22/show-markdown-source/markdown

Mudah. Dan lebih mudah lagi karena template _default_ Overcrack menyediakan _shortcut_ **`Ctrl-M`** untuk memanggil fitur ini. 


### How it works

Fitur **Show Markdown** terinspirasi oleh halaman [Proyek Markdown](https://daringfireball.net/projects/markdown/) di situs Daring Fireball yang bisa menampilkan kode sumber dengan menambahkan sufiks `/index.text`. Tetapi bila [John Gruber](https://twitter.com/gruber/) hanya mengijinkan melihat kode sumber Markdown hanya pada _satu_ halaman itu saja, Overcrack mengimplementasikan secara menyeluruh untuk _setiap_ halaman _permalink_. Lalu, _how it works_?

Berbeda dengan CMS rumit seperti Wordpress dan lain-lain yang menyimpan konten asli dalam sejumlah tabel database yang _tidak bisa_ begitu saja dibaca oleh mata manusia, Overcrack menyimpan konten aslinya dalam file teks sederhana. Bisa dibuka, dibaca dan dipahami sekalipun hanya dengan Notepad di Windows atau TextEdit di Mac.

**Show-Markdown** mengandalkan pengaturan akses direktori yang disediakan oleh server web Apache melalui file `.htaccess` di folder `web root`. Berikut adalah potongan file `.htaccess` yang mengatur itu:

	# RewriteCond for serving Markdown resource
	RewriteCond %{REQUEST_URI} /([0-9]{4})/([0-9]{2})/([0-9]{2})/(.*)/markdown$
	RewriteRule .* show-markdown.php

Dalam Bahasa Indonesia kode tersebut kurang lebih bermakna "Bila pengguna meminta _path_ dengan pola `/yyyy/mm/dd/judul-artikel/markdown` maka serahkan urusan itu pada skrip `show-markdown.php`." Skrip inilah yang kemudian bertanggung jawab menemukan kode sumber artikel dan kemudian menyajikannya ke browser.

Simpel dan elegan.