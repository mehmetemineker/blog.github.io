---
published: true
layout: post
title: Evrimsel Sürecin Simülasyonu – Genetik Algoritmalar – 1
date: '2018-04-08 15:27:39 -0500'
thumbnail: /gallery/thumbnails/genetic.jpg
categories: 
    - Algoritmalar
    - .Net
    - 'C#'
tags:
- genetik
- algoritma
---
Selam arkadaşlar, bu makalemde birkaç aydır üzerinde araştırmalar yaptığım genetik algoritmalar hakkında edindiğim bilgileri sizlerle paylaşmak istedim.

Genetik algoritamlar konusuna giriş yapmadan önce işi biraz daha temelden alarak “Algoritamanın” ne olduğu konusuna değinmek istiyorum. Bilgisayar bilimleri veya matematik bilimleri ile ilgilensek de ilgilenmesek de aslında algoritmalar hayatımız her yerinde. Günlük hayatımızda bilinçli veya bilinçsiz bir çok algoritmayı yerine getiririz. Bu algoritmalara en güzel örneği “yemek yapmak” eylemini gösterebiliriz. Yemek yaparken izlediğimiz tüm adımlar daha önceden belirlenmiş kurallar çerçevesinde ilerletilir. Bu bağlamda algoritma, en basit tanımıyla, bir problemin çözümünde izlenecek yol anlamına gelir.
<!--more-->
{% asset_img el_harezmi.jpg %} 

Algoritma sözcüğünün kökenine bakacak olursak; modern algoritmanın babası olarak anılan **Türk bilim adamı El Harezmî**, **Cebir** isimli kitabında algoritma çalışmalarından bahsetmiştir. Yazdığı kitap Avrupa dillerine de çevrilmiştir. Algoritma kelimesi, isminin Latin biçimi olan Algoritmi’ den türetilmiştir. Ayrıca ismi, İspanyolca ve Portekizce dillerinde basamak anlamına gelen **guarismo** ve **algarismo** kelimelerinin kökenini oluşturmaktadır.

Algoritmayı oluşturan 3 temel bileşen vardır. Bunlar, değişkenler, algoritmanın kendisi olan mantıksal adımlar ve akış diyagramı. Bu ifadeleri açıklayacak olursak;

*   **değişken**; değerlerin, yani verilerin tutulduğu-saklandığı elemanlar,
*   **mantıksal adımlar**; algoritmanın adımları,
*   **akış diyagramı** ise; mantıksal adımları görsel olarak ifade etme biçimi olarak tanımlayabiliriz.

**Örnek Akış Diyagramı**  
{% asset_img akis_diyagrami.png %} 

Algoritma konusuna kısaca değindikten sonra makalemin asıl konusuna geçiş yapabiliriz.

Bir problemin çözümünde gözlem yapmak problemin çözüm gidişatını olumlu yönde etkiler. Bilim insanları da bazı mantıksal sorunların çözümüne gözlem yaparak ulaşmışlardır. Bu çözüm yöntemlerine örnek verecek olursak; tavlama benzetimi, tabu arama algoritması, karınca kolonisi algoritması, genetik algoritmalar vb.

**Tavlama Benzetimi (Simulated Annealing): **Katıların ısıtılması ve sonra kristalleşmeye kadar yavaş yavaş soğutulması esasına dayanan bir algoritmadır. Kirkpatrick ve arkadaşları tarafından 1983 yılında önerilmiştir. Sıcaklık değeri, elde edilen en iyi çözümden daha kötü bir çözümün kabul edilme olasılığını belirlemek için kullanılır.

**Tabu Arama (Tabu Search):** Bu algoritma Glover tarafından 1986 yılında geliştirilmiştir. Yerel optimum tuzaklarından kaçarak global optimumu bulan yüksek seviyeli bir sezgisel yöntemdir.

**Karınca Kolonisi Algoritması (Ant Colony Algorithm):** Karıncaların yuvaları ile yiyecek noktaları arasındaki en kısa yolu bulma kabiliyetlerinden esinlenilerek geliştirilmiştir. Alternatif birçok yolun söz konusu olduğu durumlarda karıncalar, öncelikle bu yollara eşit olasılıkla dağılırlarken belli bir süre sonra en kısa olan yolda yoğunlaşmaktadır.

{% asset_img genetik_algoritamalar_1.png %} 

**Genetik Algoritmalar**, **John Holland** tarafından 1975 yılında, Charles Darwin’ in doğal evrim teorisinden esinlenilerek geliştirilmiştir. Bu algoritma, bir sonraki kuşağın yavrularını üretmek için en iyi bireylerin üreme için seçildiği doğal seleksiyon sürecini yansıtmaktadır. Geleneksel yöntemlerle çözümü çok zor olan veya imkansıza yakın olan problemlerin çözümünde kullanılmaktadır. Mühendislik alanında daha çok optimizasyon amaçlı kullanılmakta ve diğer geleneksel yöntemlere göre daha iyi sonuç vermektedir.

Genetik algoritmanın genel işleyişini iyi anlamak için öncelikle evrimsel süreci iyi anlamak gereklidir: Evrim, canlı türlerinin yani bir popülasyon içerisindeki her bir bireyin nesilden nesile kalıtsal değişime uğrayarak, ortamlara adaptasyonlarını sağlayan “**en iyi**“leştirme sürecidir. Bireylerin geçirdiği bu değişimler, bireylerin hayatları boyunca geçirdiği değişimler değildir, evrimsel süreç içerisinde nesillerde meydana gelen değişimlerdir. Evrimin temel dayanağı en iyinin hayatta kalması prensibidir. En iyi olamayan bireyler üreyemezler ve yok olurlar. Bu gidişatın sonucunda en iyilere sahip bir popülasyon meydana gelir.

Genetik algoritmanın genel evrim ilkeleri dışında belirgin standartları yoktur. Algoritma probleme göre bazı değişikliklere uğrayabilir. Örneğin; bireyin en iyi olup olmadığını (“en iyi” ifadesi görecelidir) kontrol etme tekniği probleme göre farklılık gösterebilir.

Genetik algoritma evrimsel süreci bilgisayar ortamında taklit eder. Tek bir çözüm geliştirilmesi yerine, çözümlerden meydana gelen bir küme oluşturur. Çözümlerden meydana gelen bu kümeye genetik algoritma jargonunda **popülasyon** veya **nüfus** olarak adlandırılır. Bir popülasyon **vektör**, **kromozom** veya **birey** adı verilen sayı dizilerinden oluşur. Birey içindeki her bir elemana **gen** adı verilir. Popülasyonda yer alacak olan bireylere, evrimsel süreç doğrultusunda genetik algoritma işlemleri belirler. Genetik algoritma kapsamında temel 3 işlem (operatör) vardır. Bunlar; **çaprazlama (crossover)**, **mutasyon (mutation)** ve **seçilim (selection) **işlemleridir.

Genetik algoritmada kullanılan temel kavramları açıklayacak olursak;

**Gen:** Genetik bilgi taşıyan en küçük yapıdır.

**Kromozom:** Genlerden meydana gelen diziye kromozom denir. Her bir kromozom, olası çözümleri gösterirler.

**Popülasyon:** Kromozomlardan meydana gelmiş topluluğa denir. Her bir popülasyon, alternatif çözüm kümesidir.

Bir sonraki makale: Genetik Algoritmada Kullanılan Operatörler
