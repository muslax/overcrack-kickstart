Markdown 101
====================
Image: 
Description: Cara mudah memproduksi HTML dengan Markdown.
Published: 2017-01-12 10:38am
Publish-now

[Markdown](https://daringfireball.net/projects/markdown/) merupakan sintak pemformatan teks yang mudah untuk menghasilkan kode HTML yang dipakai dalam situs web —termasuk yang sedang Anda baca sekarang ini. Kalau Anda biasa menggunakan Whatsapp dan bisa menghasilkan tulisan **tebal** dan atau *miring* dalam pesan yang Anda kirim, yah… kurang lebih, dan antara lain, seperti itulah Markdown.

### Memberi penekanan

Untuk menandakan bahwa satu atau lebih kata itu penting bisanya kita memberi penekanan dengan mencetak tebal atau miring. Dengan Markdown kita memberi penekanan dengan tanda bintang (*) atau garis bawah(_) di depan dan di belakang teks. Satu tanda bintang atau garis bawah menandakan kita akan mencetak miring, dan dua tanda kalau kita ingin mencetak tebal. Pingin tebal dan sekaligus miring? Gunakan tiga tanda.

Kalau saya menulis: `_miring atau italic_` maka akan tercetak seperti berikut: _miring atau italic_. Boleh juga kita menuliskan `*miring atau italic*` dan hasilnya akan sama.

Dengan dua tanda seperti ini: `__aku jadi tebal__` hasilnya: __aku jadi tebal__.

Dan yang ini dengan tiga tanda: `***sudah tebal, miring lagi***`, hasilnya: ***sudah tebal, miring lagi***.

Di dalam HTML teks miring harus terwadahi dalam elemen `em` (singkatan dari _emphasis_) atau elemen `i` (_italic_). Cetak tebal harus terlingkupi elemen `strong` atau `b` (_bold_). Berikut ini, berturut-turut kode HTML untuk membuat teks tercetak miring, tebal dan miring sekaligus tebal:

	<em>miring</em>
	<strong>tebal</strong>
	<em><strong>miring dan tebal<strong></em>

### Membuat daftar

Ada daftar dengan nomor urut (_ordered_) dan ada yang tanpa nomor urut (_unordered_). Contoh tanpa nomor urut:

- Jagung
- Jambu
- Jengkol

Contoh dengan nomor urut:

1. Agung
- Ambu
- Ambrol

Dalam HTML daftar bernomor harus ditandai dengan elemen `ol` (_ordered list_) dan yang tanpa nomor urut ditandai elemen `ul` (_unordered list_). Selain itu, __setiap__ item dalam daftar masih harus diwadahi elemen `li` (_list item_). Jadi, daftar pertama di atas dalam HTML harus ditulis seperti ini:

	<ul>
	   <li>Jagung</li>
	   <li>Jambu</li>
	   <li>Jengkol</li>
	</ul>

Sedangkan daftar kedua yang dengan nomor urut ditulis:

	<ol>
	   <li>Agung</li>
	   <li>Ambu</li>
	   <li>Ambrol</li>
	</ol>

Dengan Markdown kita membuat daftar tidak urut dengan salah satu dari tiga macam penanda yaitu asterik (\*), tanda tambah (+) atau tanda kurang/minus (-). Berikut ini versi Markdown untuk daftar pertama:

	- Jagung
	- Jambu
	- Jengkol

Versi Markdown untuk daftar kedua:

	1. Agung
	2. Ambu
	3. Ambrol

Tetapi Markdown hanya mensyaratkan item pertama yang harus diberi nomor dan tanda titik, baris kedua dan seterusnya boleh memakai penanda tanpa nomor. Jadi, teks di bawah ini:

	1. Agung
	- Ambu
	* Ambrol
	+ Jagung
	- Jambu
	- Jengkol

Akan menghasilkan daftar berikut ini:

1. Agung
- Ambu
* Ambrol
+ Jagung
- Jambu
- Jengkol


### Membuat *link* atau tautan

*Link* atau tautan adalah salah satu penemuan terbesar Abad 20. Tanpa _link_ mungkin tidak akan pernah ada internet. Dalam HTML tautan disimbolkan dengan elemen `a` atau _anchor_ dengan atribut yang memuat alamat targetnya. Sebagai contoh, _link_ [DuckDuckGo](https://duckduckgo.com) dalam HTML ditulis 

	<a href="https://duckduckgo.com">DuckDuckGo</a>

Markdown memberi kita cara menuliskan _link_ dengan penanda `[]()`. Penanda `[]` atau kurung siku untuk mewadahi teks (atau elemen lain) sedangkan penanda `()` atau kurung biasa untuk mewadahi alamat targetnya. Versi Markdown dari _link_ di atas adalah:

	[DuckDuckGo](https://duckduckgo.com)

Mudah dan simpel.



### Memuat gambar

![](/media/2017/01/duckduckgo.png "Logo DuckDuckGo")

Dalam HTML elemen gambar atau foto harus dimasukkan dalam elemen `img` dengan atribut nama dan alamat gambar tersebut. Penulisan kode HTML untuk pemuatan logo di atas adalah:

	<p><img src=“/media/2017/01/duckduckgo.png” /></p>

Dengan Markdown pemuatan gambar di atas ditulis dengan notasi `![]()`, mirip notasi penulisan _link_, tapi dengan tambahan tanda seru:

	![](/media/2017/01/duckduckgo.png)

### Mencetak kutipan (_quote_)

Belum kenal DuckDuckGo? Berikut kutipan yang saya dapat dari [Wikipedia](https://id.wikipedia.org/wiki/DuckDuckGo):

>DuckDuckGo adalah mesin pencari internet yang menggunakan informasi dari berbagai sumber, seperti website crowdsourced seperti Wikipedia dan dari kemitraan dengan mesin pencari lain seperti Yandex, Yahoo, Bing dan WolframAlpha untuk mendapatkan hasilnya. Kebijakan mesin pencari mengatakan bahwa itu melindungi privasi, dan tidak merekam informasi pengguna. Karena pengguna tidak diprofilkan, "Filter gelembung" dapat dihindari, dengan semua pengguna yang menunjukkan hasil pencarian yang sama untuk istilah pencarian tertentu.
>
>Perusahaan ini berbasis di Paoli, Pennsylvania, Amerika Serikat di Philadelphia Raya. Nama perusahaan ini berasal dari permainan anak-anak bebek, bebek, angsa] atau duck, duck, goose.

Dalam HTML kutipan di atas ditulis sebagai berikut:

	<blockquote>
		<p>DuckDuckGo adalah mesin pencari internet yang menggunakan informasi dari berbagai sumber, seperti website crowdsourced seperti Wikipedia dan dari kemitraan dengan mesin pencari lain seperti Yandex, Yahoo, Bing dan WolframAlpha untuk mendapatkan hasilnya. [... dst].</p>
		<p>Perusahaan ini berbasis di Paoli, Pennsylvania, Amerika Serikat di Philadelphia Raya. Nama perusahaan ini berasal dari permainan anak-anak bebek, bebek, angsa] atau duck, duck, goose.</p>
	</blockquote>

Penanda `<p>` dalam kode di atas memiliki arti bahwa teks didalamnya harus dianggap sebagai paragraf atau alinea.

Dengan Markdown kutipan atau _quote_ cukup ditulis dengan tanda&nbsp;> di awal kutipan. Versi Markdown dari kutipan di atas adalah sebagai berikut:

	> DuckDuckGo adalah mesin pencari internet yang menggunakan informasi dari berbagai sumber, seperti website crowdsourced seperti Wikipedia dan dari kemitraan dengan mesin pencari lain seperti Yandex, Yahoo, Bing dan WolframAlpha untuk mendapatkan hasilnya. [... dst].
	>
	> Perusahaan ini berbasis di Paoli, Pennsylvania, Amerika Serikat di Philadelphia Raya. Nama perusahaan ini berasal dari permainan anak-anak bebek, bebek, angsa] atau duck, duck, goose.


### Judul dan subjudul

HTML mengenal enam tingkatan judul dengan nama elemen `h1` sampai `h6` (`h` diambil dari kata _header_). Markdown memilih tanda pagar (#) untuk menandakan teks sebagai judul atau subjudul, jumlah tanda pagar menandakan tingkatanya.

Berikut adalah penulisan enam subjudul dengan Markdown:

	#Judul level 1

	##Judul level 2

	###Judul level 3

	####Judul level 4

	#####Judul level 5

	######Judul level 6

Yang akan menghasilkan kode HTML sebagai berikut:

	<h1>Judul level 1</h1>

	<h2>Judul level 2</h2>

	<h3>Judul level 3</h3>

	<h4>Judul level 4</4>

	<h5>Judul level 5</5>

	<h6>Judul level 6</h6>

Dan akan tercetak seperti ini:

# Judul level 1

## Judul level 2

### Judul level 3

#### Judul level 4

##### Judul level 5

###### Judul level 6


### Menulis Markdown

Dalam Markdown setiap blok tulisan (misalnya paragraf, judul, kutipan) harus dipisahkan dengan paling sedikit satu baris kosong. Perhatikan contoh berikut (teks saya ambil dari novel _A Letter to Hindu_ karya Leo Tolstoy dengan judul dan subjudul rekaan).

	# A Letter in Markdown

	Do not seek quiet and rest in those earthly realms where delusions and desires are engendered, for if thou dost, thou wilt be dragged through the rough wilderness of life, which is far from Me.

	Whenever thou feelest that thy feet are becoming entangled in the interlaced roots of life, know that thou has strayed from the path to which I beckon thee: for I have placed thee in broad, smooth paths, which are strewn with flowers. I have put a light before thee, which _thou_ canst follow and thus run without stumbling. KRISHNA.

	## A new hope for liberation

	Tolstoy menulis:

	> I have received your letter and two numbers of your periodical, both of which interest me extremely. The oppression of a majority by a minority, and the demoralization inevitably resulting from it, is a phenomenon that has always occupied me and has done so most particularly of late. I will try to explain to you what I think about that subject in general, and particularly about the cause from which the dreadful evils of which you write in your letter, and in the Hindu periodical you have sent me, have arisen and continue to arise.
	>
	> The reason for the astonishing fact that a majority of working people submit to a handful of idlers who control their labour and their very lives is always and everywhere the same—whether the oppressors and oppressed are of one race or whether, as in India and elsewhere, the oppressors are of a different nation.
 

