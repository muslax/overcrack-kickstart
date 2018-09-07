Menulis Markdown untuk Overcrack
====================
Image: 
Description: Anatomi postingan Overcrack dan cara penulisan _front matter_.
Published: 2017-08-10 08:08am
Publish-now

Bila Anda belum mengenal Markdown, silakan berkenalan lebih dahulu dengan membaca artikel [ini](/2017/01/12/mengenal-markdown-1) dan [ini](/2017/01/31/mengenal-markdown-2), atau langsung ke sumber asli Markdown [disini](https://daringfireball.net/projects/markdown/).

Setiap artikel atau postingan dalam Overcrack terdiri dari dua bagian, yaitu bagian _header_ atau _front matter_, ditulis lebih dahulu, dan bagian _body_ atau konten utama. _Header_ dan _body_ dipisahkan oleh minimal satu baris kosong. Dua tautan artikel di atas sudah cukup sebagai bahan untuk kita mulai menulis dengan format Markdown. Saat ini kita fokus untuk mengenal cara menulis bagian _front matter_ yang sebenarnya merupakan metadata bagi sebuah artikel.

**_Front matter_ dan _body_ dipisahkan oleh satu baris kosong**

_Yup_, sudah dijelaskan di atas.

**Seluruh baris dalam _front matter_ tidak boleh terpisah oleh baris kosong**

Karena Overcrack menganggap baris kosong pertama yang ditemukan sebagai pemisah antara _front matter_ dan _body_.


**Baris pertama adalah judul artikel**

Judul artikel harus ditulis di baris pertama, baris nomor 1. Apapun yang tertulis di baris ini akan menjadi judul yang (biasanya) akan tercetak tebal dan lebih besar dari tulisan lain.

**Baris kedua adalah pemisah antara judul dan keterangan lain**

Sebagai pemisah, di baris kedua harus diisi dengan paling sedikit empat (4) tanda sama dengan (====)[^1]. Lebih boleh, kurang jangan.

**Baris ketiga dan seterusnya berisi kolom metadata**

Metadata ditulis dengan format `Nama: Nilai`, (nama dan nilai metadata dipisahkan oleh tanda titik dua) misalnya:

	Link: https://github.com/muslax/overcrack
	Description: Membahas static blogging engine Overcrack.

Kolom `Nilai` metadata dapat dikosongkan, seperti misalnya:

	Image: 

**Metadata tanggal dan waktu penerbitan**

Metadata dengan nama `Published` dipakai untuk menyimpan data tanggal dan waktu penerbitan sebuah artikel. Kita tidak perlu menulis metadata ini karena Overcrack akan otomatis mengisinya dengan data tanggal dan waktu pada saat artikel diterbitkan[^2]. Lalu kapan sebuah artikel diterbitkan?

**Metadata khusus untuk penerbitan**

Sebuah artikel akan diterbitkan oleh mesin Overcrack manakala dalam bagian _front matter_ ditemukan satu baris yang berbunyi `Publish-now` (boleh huruf kecil semua). Sebuah draft tulisan tidak akan diterbitkan bila tidak ada kata `Publish-now` di bagian _front matter_. Metadata ini spesial dan tidak memerlukan tanda titik dua (:).

**Apa saja yang bisa menjadi bagian dari metadata?**

Tidak ada batasan tentang apa saja yang bisa dimasukkan sebagai metadata, tetapi saat ini Overcrack hanya _mengurus_ sejumlah metadata untuk setiap artikel, yaitu:

- **Image**. Untuk menyimpan gambar atau foto yang mewakili sebuah artikel. Dengan kolom ini kita bisa membuat template agar setiap artikel yang di-share, misalnya di Facebook, dapat muncul dengan gambar yang kita kehendaki.[^3]

- **Link.** Bila artikel kita merupakan _linked article_, atau artikel yang mengomentari atau terkait dengan artikel lain di internet, maka alamat (URL) artikel terkait harus dimasukkan di sini. 

- **Description**. Satu atau dua kalimat yang menjelaskan apa yang menjadi bahasan artikel. Seperti halnya **Image**, metadata ini berguna antara lain untuk ditampilkan ketika artikel kita dishare di Twitter, Facebook atau di tempat lain.

- **Type**. Bila _front matter_ mengandung metadata **Link**, Overcrack secara otomatis akan membuat metadata **Type** dan mengisinya dengan isian `Link`. Metadata ini membuat Overcrack bisa membedakan mana artikel biasa dan mana yang _linked_.

Dua _screenshot_ berikut menggambarkan format penulisan artikel biasa dan artikel yang terkait (_linked_) dengan sumber lain di internet.

![](/media/2017/08/screenshot-artikel.png "Artikel biasa")

![](/media/2017/08/screenshot-artikel-linked.png "Artikel linked")



[^1]: Dalam Markdown, tanda sama dengan di bawah tulisan dianggap sebagai _header_ level 1, yang dalam HTML disimbolkan dengan elemen `h1`.

[^2]: Namun kalau dikehendaki kita bisa saja mengisi data `Published` sesuka kita. Artikel ini pun dibuat dengan mengisi data tanggal dan waktu penerbitan secara manual.

[^3]: Saat ini template bawaan `overcrack.php` belum memanfaatkan metadata `Image:` untuk menghasilkan Facebook Open Graph maupun Twitter Card.





