Markdown 102
====================
Image: 
Description: 
Published: 2017-01-31 10:53am
Publish-now


### Cara lain membuat _link_

Dalam [Markdown 101][m101] kita membuat _link_ dengan cara ini:

	[DuckDuckGo](https://duckduckgo.com)

Ada cara kedua untuk membuat _link_, yaitu cara yang dikenal sebagai penulisan _link_ model referensi. Contohnya seperti ini:

	[Overcrack][overcrack]

Tetap dengan dua elemen tetapi kedua-duanya dalam kurung siku. Kurung siku pertama tetap menjadi tempat teks yang tercetak; kurung siku kedua memuat nama referensi. Referensi ini kemudian harus diberi keterangan di tempat lain, misalnya di akhir dokumen, dengan cara seperti ini:

	[overcrack]: https://github.com/muslax/overcrack

_Link_ di atas yang berupa teks **Markdown 101** pun ditulis dalam dengan cara membuat referensi.[^1]

_Link_ Markdown model referensi bahkan bisa dibikin dengan mengosongkan kurung siku kedua. Dalam hal demikian kita isinya dianggap sama dengan isi kurung siku pertama:

	[Overcrack][]

Dan kemudian kita definisikan baris lain dengan:

	[Overcrack]: https://github.com/muslax/overcrack

Cara demikian bahkan tetap berlaku untuk _link_ yang mengandung spasi seperti:

	[Marco Arment][]

Dengan definisi referensi:

	[Marco Arment]: https://twitter.com/marcoarment


### Membuat Catatan Kaki (Footnotes)

Dalam Markdown catatan kaki dibuat dengan cara mirip penulisan _link_ model referensi.

	Bahan tersebut perlu disangrai[^1] terlebih dulu sebelum ...

Dan kemudian dibuatkan definisinya:

	[^1]: Dipanaskan di atas penggorengan tanpa minyak.


Definisi referensi, baik pada _link_ maupun catatan kaki, tidak harus ditempatkan pada akhir dokumen, tetapi bisa langsung pada baris setelah referensi.

[m101]: /2017/01/12/mengenal-markdown-1
[^1]: sssss