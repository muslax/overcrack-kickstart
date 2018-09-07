Jenis Artikel dan Struktur Penyimpanan Data Sumber Overcrack
====================
Image: 
Description: Tiga jenis postingan blog Overcrack.
Published: 2016-12-15 08:31am
Publish-now

Overcrack mengenal tiga jenis postingan yaitu _page_, artikel dan _linked-post_ atau _linked article_. _Page_ adalah postingan yang diterbitkan sebagai halaman non kronologis dan ditempatkan di _web root_. _Page_ yang dibuat dengan nama file `about.md`, misalnya, akan diterbitkan sebagai halaman _About_ dan dapat diakses melalui url:

	http://overcrack.web.id/about

Artikel dan _linked post_ diterbitkan secara kronologis dan karena itu memiliki alamat URL dengan format yang menunjukkan tahun, bulan dan tanggal penerbitan.

	http://overcrack.web.id/2017/01/12/ten-years-of-iphone

Data sumber Overcrack dapat ditempatkan di folder mana pun di server, dan disarankan, untuk alasan keamanan, berada di luar direktori web. Situs [Overcrack.web.id](http://overcrack.web.id), misalnya, menyimpan data dalam folder `/home/muslax/Dropbox/Overcrack`. Yang penting untuk diperhatikan adalah bahwa di dalam folder tersebut terdapat folder-folder sebagai berikut:

- **`drafts`** - untuk menyimpan draft artikel
- **`media`** - untuk menyimpan media (foto dll)
- **`pages`** - untuk menyimpan postingan jenis _page_
- **`posts`** - untuk menyimpan artikel blog
- **`templates`** - untuk menyimpan template Overcrack

Pada saat draft artikel diterbitkan (yaitu ketika ada direktif `Publish-now`) draft tersebut akan dipindahkan ke subfolder `posts` dan dikelompokkan berdasar tahun dan bulan. Kurang lebih seperti ini:

	drafts
	media
	pages
	posts
	  2016
		01
		...
		07
		  - artikel-tentang-jamur.md
		  - the-man-behind-the-gun.md
		08
		...
	  2017
	  2018
	templates

Hal lain yang perlu diperhatikan adalah cara pengorganisasian media (foto, audio, video). [artikel ini belum selesai...]

