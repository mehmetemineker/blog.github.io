---
published: true
layout: post
title: Yapay Zeka’ya Güvenebilir miyim? — Explainable AI
date: '2021-01-18 12:00:00 -0500'
thumbnail: /gallery/thumbnails/ai.png
categories:
  - Yapay Zeka
tags:
  - yapay-zeka
  - artificial-intelligence
  - explainable-ai
  - aciklanabilir-yapay-zeka
---
Asıl konumuza giriş yapmadan önce kısaca Yapay Zekanın ne demek olduğunu hatırlayalım; Yapay Zeka, bir çıktı elde etmek için insan zekası gibi davranan ve elde ettiği bilgilere göre yinelemeli olarak kendisini sürekli geliştirebilen sistem veya makinedir. Tekrarlanan öğrenme ve verisel keşif süreci ile birçok gizli katmana sahip sinir ağlarını kullanarak daha fazla ve daha derin verileri analiz eder. Bu noktada, Yapay Zekanın en önemli özelliği bağımsız öğrenme yeteneğidir diyebiliriz.

Yapay Zeka, bağımsız öğrenme yeteneği ile algoritmalar oluşturarak karar verir. Karar verme sürecinde faydalandığı algoritmanın tam olarak ne olduğunu ve aldığı kararın gerekçelerini tam olarak bilemeyiz. Bu da Yapay Zekanın arkasındaki kara kutudur. Bu kara kutunun içerisinde neler olup bittiğini bilemiyoruz.

Örneğin, aşağıdaki görselde de göreceğiniz üzere, daha önceden eğitilmiş bir Yapay Zekaya girdi olarak verilen bir fotoğrafın analiz süreci yer almaktadır. Kara kutu olarak belirtilen yer, Yapay Zekanın öğrenme sürecinde kendisine çıkardığı algoritma yer almaktadır. Buradaki algoritmanın nasıl işlediğini Yapay Zekayı geliştiren mühendis bile tam anlamıyla bilmemektedir.

Nuance yöneticisi Nils Lenke, Yapay Zekanın kara kutusu hakkında şöyle diyor; 

> İçerde ne olduğu her zaman açık değildir, siz Yapay Zekanın kendi kendini düzenlemesini sağlarsınız. Ancak bu durum, kendi geliştirirken size bunu nasıl yaptığını söyleyeceği demek değildir.

Image for post

1950’lerden günümüze kadar Yapay Zeka alanında birçok çalışma yapılmıştır. Bu doğrultuda Yapay Zekanın kullanım alanı her geçen gün daha da genişledi ve güvenlik, sağlık, otomotiv, otomasyon, bilgi teknolojileri ve finans gibi birçok sektörde kullanılmaya başlandı.

Gelişen teknoloji ve değişen ihtiyaçlar nedeniyle, her geçen gün Yapay Zekadan daha fazla şey beklenilmektedir. Bu ihtiyaçlardan bir tanesi de, Yapay Zekanın almış olduğu karara duyulan güvendir. Problemi çözmesinin yanı sıra Yapay Zekanın arkasında nelerin olup bittiğini açıklanması da beklenmektedir. Bu noktada işin içerisine, Yapay Zekanın kara kutusu içerisinde nelerin olup bittiğini, Açıklanabilir Yapay Zeka (Explainable AI — XAI) yaklaşımı ile ifade etme süreci devreye girmektedir.

Aşağıdaki görsellerde Açıklanabilir Yapay Zeka öncesi ve sonrası basit olarak ifade edilmiştir. “Önce” olarak isimlendirilen görsele Kara Kutu Yapay Zeka (Blackbox AI), “Sonra” olarak isimlendirilen görsele ise Açıklanabilir Yapay Zeka (Explainable AI) diyebiliriz.

Image for post
Image for post

Açıklanabilir Yapay Zeka sistemleri, ek bilgi sağlayan veya makine öğrenimi sisteminin iç işleyişine özgü verileri sunan bir arayüz sağlar. Bu sayede insanların bu karara Yapay Zeka tarafından nasıl ve neden ulaşıldığını anlamasına yardımcı olur.

SAS başkan yardımcısı Keith Collins, Açıklanabilir Yapay Zekayı şöyle ifade etmektedir: Açıklanabilir Yapay Zeka terimi, insanların yapay zeka teknolojisinin bir karar vermek için izlediği yolu dinamik olarak oluşturulmuş grafikler veya metinsel açıklamalar aracılığıyla kolayca anlayabilmesini ifade eder.
Açıklanabilir Yapay Zeka yaklaşımı ile yorumlanabilirlik, şeffaflık ve açıklanabilirlik sağlanmaya çalışılmıştır. Ancak bilindiği üzere Yapay Zeka yapay sinir ağlarından oluşmaktadır. Küçük bir sinir ağını açıklamak nispeten daha kolayken, yüzlerce belki de binlerce katmana sahip bir derin sinir ağını açıklamak oldukça zor olmaktadır.

Bu noktada Yapay Zekadaki açıklanabilirlik karmaşıklığa bağlıdır diyebiliriz. Genel olarak, daha karmaşık Yapay Zeka sistemleri daha doğrudur ancak daha az açıklanabilirken, daha az karmaşık modeller ise daha az doğrudur ancak daha açıklanabilirdir. Kısaca, açıklanabilirlik ve karmaşıklık arasında ters orantı vardır. Açıklanabilir Yapay Zeka sistemlerinden bunun dengeli olması faydalı olacaktır.

Image for post

## Açıklanabilir Yapay Zekanın Mevcut ve Potansiyel Kullanım Alanları
Açıklanabilir Yapay Zekaya Yapay Zekanın kullanıldığı bir çok alanda ihtiyaç duyulabilir. Bu ihtiyacın ortaya çıkmasındaki asıl neden Yapay Zekaya duyulan güvendir. Yapay Zekanın, karar verme aşamasında tüm kontrolün bir algoritmalarda olması bazı problemlere neden olabilmektedir. Örneğin; otonom bir araç bir kazaya neden olursa bunun sorumlusu kim olacaktır? Yolcuları, Yapay Zekanın almış olduğu karardan sorumlu tutamayız. Ancak otonom araç almış olduğu kararları açıklayarak durumu netleştirebilir. Tabi böyle karmaşık bir durumu açıklamak üreticiler için bir hayli zor olacaktır. Benzer bir durum, bir hastanın iyileşme sürecinin kontrolüne otomatik olarak sahip olan Yapay Zeka uygulamaları için de söylenebilir. Kısacası, Açıklanabilir Yapay Zeka yaklaşımı Yapay Zekanın olduğu her yerde olabilir.

Yapay Zeka, pazarlamada, otomotivde, sigortacılık ve finansta, sağlıkta, siber güvenlikte, askeri savunmada ve aklımıza gelebilecek birçok alanda kullanılmaktadır. Bunların hepsinin temelinde Yapay Zeka ve dolayısıyla yapay sinir ağları vardır. Kara kutu olarak isimlendirdiğimiz Yapay Zekanın bilinmezinin açıklanması gerektiği tüm durumlarda Açıklanabilir Yapay Zeka kullanılabilir. Tabi burada Yapay Zeka sisteminin kullanıldığı sürecin kritiklik derecesine bağlı olarak değişebilmektedir.

Yapay Zekanın en önemli özelliği bağımsız öğrenme yeteneğidir. Bağımsız öğrenme yeteneği sayesinde girdi olarak verilen verileri analiz ederek çıkarımlarda bulunur. Daha öncede bahsettiğimiz üzere kara kutuda neler olup bittiğini kimse bilemez. Bu da Yapay Zekaya güven sorununu ortaya çıkarmaktadır.

Örneğin, Amazon tarafından iş başvurularını incelemek için geliştirilen bir Yapay Zeka sistemi, kadın adayları erkek adaylara kıyasla sürekli olarak geri plana atmıştır. Sistem, özellikle erkek adaylar tarafından aşırı doldurulan tarihsel veriler üzerine eğitilmiştir. Sonuç olarak, sistem kadınlara karşı önyargılı kararlar almıştır. İşin ilginç tarafı ise, cinsiyet belirleyici özellikler kaldırıldıktan sonra bile (örneğin ad ve cinsiyet) sistemin hala aynı sonucu vermesiydi. Sistem, erkek adayların kadın adayların kullanmadığı belirli kelimeleri veya cümleleri kullanma eğiliminde olduklarını tespit etmiştir. Erkek adaylar başarılarını anlatmak için daha özgüvenli ve otoriter bir dil kullanırken, kadın adaylar yetenekleri konusunda daha temkinli bir dil kullanmışlardı.

Image for post

Benzer şekilde, 2018 UC Berkley çalışması, kredi başvurularını onaylamaya yönelik geleneksel ve makine tabanlı sistemlerin, Latin ve Afroamerikalı borçlulara eşdeğer bir Kafkas borçlusundan 6–9 baz puan daha yüksek faiz oranları uyguladığı sonucuna varmıştır. Bu sadece ahlaki açıdan yanlış değildir, görünüşte ten rengiyle bağlantılı tespitler yapmakla kalmıyor. Bu durumda, ahlaki açıdan adil olma, ancak aynı zamanda yasal olarak uyumlu olma ihtiyacı vardır.

## Açıklanabilir Yapay Zeka Alanında Yapılan Çalışmalar
Çok uzun zamandır bilim ve mühendislikte kullanılan klasik kara kutu analizi yaklaşımlarından Derin Sinir AğlarI için tasarlanmış en son yöntemlere kadar, açıklama üretmek için bir dizi yöntem mevcuttur. Bu alanda yapılan en önemli çalışmalar şunlardır;

### LIME
LIME (Local Interpretable Model-Agnostic Explanations), modelden bağımsızdır, yani herhangi bir makine öğrenimi modeline uygulanabilir. Teknik, veri örneklerinin girişini bozarak ve tahminlerin nasıl değiştiğini anlayarak modeli anlamaya çalışır.

Herhangi bir sınıflandırıcı veya regresörün tahminlerini yerel olarak yorumlanabilir bir modelle yaklaştırarak sadık bir şekilde açıklayabilen bir algoritmadır. Özellik değerlerini değiştirerek tek bir veri örneğini değiştirir ve sonuçta çıktı üzerindeki etkiyi gözlemler. Her veri örneğinden gelen tahminleri açıklamak için bir “açıklayıcı” rolünü yerine getirir. LIME çıktısı, her bir özelliğin tek bir örneklem için bir tahmine olan katkısını temsil eden bir dizi açıklama olup, bir yerel yorumlanabilirlik biçimidir.

LIME ile yorumlanabilir modeller, örneğin, iyi bir yerel yaklaşım sağlamak için orijinal modelin küçük düzensizlikleri (bu düzensizlikler; gürültü ekleme, sözcükleri çıkarma, görüntünün parçalarını gizleme olabilir) üzerine eğitilmiş doğrusal regresyon veya karar ağaçları olabilir.

### SHAP
SHAP, SHapley Additive Explanations’ın kısaltmasıdır. Herhangi bir makine öğrenimi modelinin çıktısını açıklamak için bir oyun teorisi yaklaşımıdır. Oyun teorisindeki klasik Shapley değerlerini ve bunlarla ilgili uzantıları kullanarak optimum kredi tahsisini yerel açıklamalarla birleştirir. Shapley değerleri, yaklaşım için bir ağırlıklandırma çekirdeği kullanan Kernel SHAP ve bunları yaklaştırmak için DeepLift kullanan DeepSHAP kullanılarak yaklaşık olarak hesaplanmaktadır.

### Fairlearn
Microsoft’un Fairlearn isimli projesi, veri bilimcilerinin ve geliştiricilerin yapay zeka sistemlerinin adilliğini değerlendirmelerini ve geliştirmelerini sağlayan popüler bir Açıklanabilir Yapay Zeka araç setidir. Araç setinin iki bileşeni vardır: etkileşimli bir görselleştirme panosu ve adaletsizliği azaltma algoritmaları. Esas olarak adalet ve model performansı arasındaki dengeyi sağlamaya yardımcı olmak için tasarlanmıştır. Açık kaynak araç seti, bir AI modelinin çeşitli insan grupları üzerindeki etkilerini değerlendirmek için hem sınıflandırma hem de regresyon görevlerini içeren geniş bir adalet ölçütleri yelpazesini desteklemektedir.

### WhiteNoise
WhiteNoise, Harvard Üniversitesindeki araştırmacılarla işbirliği içinde Microsoft tarafından geliştirilen, küresel farklı özel sistemler oluşturmak için farklı bileşenler içeren farklı bir gizlilik platformudur. Microsoft, Build 2020 konferansı sırasında daha açıklanabilir yapay zeka sistemlerine yönelme çabasıyla bu aracı açık kaynaklı olarak kullanmıştır.

Core ve System gibi iki üst düzey bileşenden oluşan açık kaynaklı bir projedir. Core kütüphane, farklı şekilde özel bir sistemi uygulamak için gizlilik mekanizmaları içerir, System kütüphanesi ise, tablo şeklinde ve ilişkisel verilerle çalışmak için araçlar ve hizmetler sağlar.

### ERASER
ERASER (Rationales And Simple English Reasoning), Salesforce tarafından geliştirilen, rasyonelleştirilmiş doğal dil işleme (NLP) modellerinin değerlendirilmesine yardımcı olan Açıklanabilir Yapay Zeka çalışmasıdır. Kıyaslama, yedi farklı NLP veri setinden ve tahminler için destekleyici kanıt olarak açıklamaların insan açıklamalarını içeren görevlerden oluşur.
ERASER’a dahil edilen tüm veri kümeleri, farklı sayıda etiketle diğerlerinin yanı sıra duyarlılık analizi, doğal dil çıkarımı ve soru cevaplama görevlerini içeren sınıflandırma görevleridir ve bazılarının farklı sınıf etiketleri vardır. Ayrıca, kıyaslama, doğru çıktıyı tahmin etmek için yeterli kanıt sağlayan görevin kaynak belgesinden çıkarılan metin parçacıkları olan “gerekçelere” odaklanır.

### COVID-Net
Son zamanlarda, AI şirketi olan DarwinAI, Açıklanabilir Yapay Zeka platformlarında COVID-Net ve COVIDNet-S’yi geliştirdi. 2020 Mart ayında, COVID-Net, COVID-19 vakalarının göğüs röntgeni (CXR) görüntülerinden algılanması için özel olarak tasarlanmış derin bir evrişimli sinir ağı tasarımıdır. Araştırmacılar, modelin yanı sıra, 13870 hasta vakasında 13975 CXR görüntüsünü içeren, oluşturulan açık erişimli bir karşılaştırma veri kümesi olan açık kaynaklı COVIDx’i de kullandı.

2020 Eylül ayında DarwinAI, COVID-19'un hastalık şiddetini değerlendirmek için Açıklanabilir Yapay Zeka platformlarında tasarlanmış bir derin öğrenme modelleri paketi olan COVIDNet-S’yi duyurdu. COVIDNet-S, göğüs röntgeninin temel görsel göstergelerini analiz ederek hastanın akciğerlerindeki coğrafi ve opasite boyutunu nicel olarak puanlayabilir. Sistem, 10000'den fazla göğüs röntgeni kullanılarak geliştirildi ve bunların yüzlercesi kapsamlı akciğer hastalığı şiddet değerlendirmelerine sahip COVID-19 pozitif hastalardan oluşuyor.

## Kaynaklar
- https://www.oracle.com/tr/artificial-intelligence/what-is-artificial-intelligence.html
- https://bilimfili.com/yapay-zekanin-kalbindeki-karanlik-sir
- https://www.sas.com/tr_tr/insights/analytics/yapay-zeka-nedir.html
- https://www.karel.com.tr/blog/yapay-zeka-karsilastigi-sorunlari-asabilecek-mi
- https://lawtomated.medium.com/explainable-ai-all-you-need-to-know-the-what-how-why-of-explainable-ai-dcf2287a9f6c
- https://www.sunsavunma.net/darpa-yapay-zeka-projesi/
- https://analyticsindiamag.com/top-milestones-on-explainable-ai-in-2020/
