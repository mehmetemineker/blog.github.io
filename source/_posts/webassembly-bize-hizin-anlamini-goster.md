---
published: false
layout: post
title: WebAssembly - Bize Hızın Anlamını Göster
date: '2021-01-11 12:00:00 -0500'
categories:
  - Genel
  - Javascript
tags:
  - webassembly
  - blazor
---
WebAssembly, kısaca WASM ile web tarayıcılarda C,C++ ve Rust gibi yüksek seviyeli diller ile yazılımış programları derleyebilir, çalıştırabilir ve taşıyabiliriz. Javascript’in performans olarak yetersiz kaldığı noktalarda WASM ile 20 kat daha performanslı işler yapabiliriz.

<!--more-->

> Run Shadowfax WebAssembly, show us the meaning of haste. Gandalf

## WebAssembly
WebAssembly, kısaca WASM ile web tarayıcılarda C,C++ ve Rust gibi yüksek seviyeli diller ile yazılımış programları derleyebilir, çalıştırabilir ve taşıyabiliriz. Javascript’in performans olarak yetersiz kaldığı noktalarda WASM ile 20 kat daha performanslı işler yapabiliriz.

WASM, JavaScript'e eşlik eden bir araç olarak düşünülebilir. Javascript’ten tamamen vazgeçme durumu yok. JavaScript'in esnek olduğu, dinamik olarak yazılabildiği ve okunabilir kaynak koduyla sunulduğu durumlarda, WASM yüksek hızlı, güçlü bir şekilde yazılmıştır ve kompakt bir binary format aracılığıyla sunulmaktadır.

WASM'ın sunmuş olduğu native performansı kadar iyi olmasa da, modern JavaScript motorları da oldukça hızlıdır. Büyük miktarda veri sıkıştırması gerektirmeyen çoğu temel web uygulaması ve basit komut dosyaları için hala kabul edilebilir bir performans sergileyebilmektedirler. Temel komutları barındıran basit şeyler için WASM kullanmaya gerek yoktur. Örneğin, bir kullanıcı bir butona tıkladığında bir uyarının tetiklenmesi Javascript tarafından kolaylıkla yapılabilir, saniyede bir milyon kez çalıştırılacak kadar performanslı olması gerekmez ve kesinlikle C, C++ ya da Rust ile yazılmasına gerek yoktur.

Ancak, bir masaüstü uygulamasını bir web tarayıcısında çalıştırılacak şekilde geliştirmek istediğinizde, WASM tercih edilen format olacaktır. Yine de, JavaScript hala WASM yöntemlerini çağırmak için gereklidir.
Aşağıdaki görselde, face detection uygulamasının WASM ve Javascript kıyaslaması yapılmaktadır. FPS değerlerine bakıldığında WASM çok daha performanslı bir şekilde görüntü işlemesi gerçekleştirebilmektedir.

{% image5.png %} 

Yine bahsetmek gerekirse; masaüstü uygulamaların web uygulamalarına göre daha performanslı çalıştığı bilinir. Karmaşık ve yüksek CPU gerektiren işlemleri barındıran programlar genellikle masaüstü uygulamalarıdır. Masaüstü uygulamalarını native olarak sınıflandırırsak, WASM ile native performansa yakın ve web ortamında çalışan uygulamalar geliştirmek amaçlanmıştır. Günümüzde popüler bir çok web tarayıcısı WASM’ı desteklemektedir.

{% image10.png %}

WASM’dan önce Google’ın Native Client’ı ve Mozilla’nın da asm.js isimli teknolojileri ile native performansı sağlanmaktaydı. Tabii doğal olarak Google’ın odak noktası Chrome ve Mozilla’nınki ise Firefox’tu. Öncelikli olarak kendi tarayıcılarında çalışacak bir sistem geliştirmişlerdi. Bunlara kısaca değinmek gerekirse:

- Google, native kodu bir web tarayıcısında güvenli bir şekilde çalıştırmak amacıyla Native Client’ı (NaCl) geliştirmiştir. Yürütülebilir kod sanal bir alanda çalışır ve native kod yürütmenin performans avantajlarını sunabilmektedir. NaCl, belirli bir mimariye bağlıyken, Portable Native Client (PNaCl), herhangi bir platformda çalışmak üzere geliştirilmiş, NaCl'nin mimariden bağımsız bir versiyonudur. 

- Mozilla ise, asm.js'i 2013'te piyasaya sürdü ve geliştiricilere C veya C++ kaynak kodlarını JavaScript'e çevirmeleri için bir yol sağlamıştır. asm.js, derleyiciler için düşük seviyeli, verimli bir hedef dil olarak kullanılabilen katı bir JavaScript alt kümesi olarak tanımlanmaktadır.

2015 yılında, web standartları geliştirmek için kurulmuş uluslararası bir topluluk olan World Wide Web Consortium’un (W3C) organize etmiş olduğu ve Google, Mozilla, Apple ve Microsoft’un katılımlarıyla gerçekleştirilen WebAssembly Community Group buluşmasıyla WASM’ın temelleri atılmış oldu. Artık navite performansı popüler tarayıcıların hepsinde desteklenir hale gelmiştir. Web tarayıcılarında WASM desteğinin uygulanması asm.js’e ve PNaCl'nin dağıtılmış yürütülebilir dosya konseptine dayanmaktadır.

Aşağıdaki görselde yine aynı face detection uygulamasının WASM, asm.js ve Javascript kıyaslaması yapılmaktadır. FPS değerlerine bakıldığında WASM çok daha performanslı bir şekilde görüntü işlemesi gerçekleştirebilmektedir.

{% image5.png %}

## WebAssembly Nasıl Çalışır?
WASM, yaratıcılarının deyimiyle bir "derleme hedefi" dir. Doğrudan WebAssembly yazmamıza gerek yoktur. Seçtiğimiz yüksek seviyeli dilde yazarız ve daha sonra WASM bayt kodu olarak derlenir. Bayt kod daha sonra client üzerinde çalıştırılır ve burada yerel makine koduna çevrilir ve yüksek hızda yürütülür.

{% image5.png %}

WASM herhangi bir özel makine için tasarlanmadığı için tam anlamıyla bir assembly dili değildir. Tarayıcılar içindir ve tarayıcıda yürütülecek kodu teslim ederken, kodunuzun ne tür makinelerde çalışacağını bilemeyiz. Tarayıcı WASM kodunu indirdiğinde, kodu hızla herhangi bir makinenin anlayabileceği bir dile dönüştürür.

{% image5.png %}

C, C++ veya Rust ile yazdığımız kodlar WASM metin formatı olan .wat dosyalarına dönüştürülür. Tarayıcıya ise bu dosyanın binary hali olan .wasm dosyası sunulmaktadır. 

Örneğin, aşağıdaki kod parçasında C++ ile faktöriyel hesaplaması yapan recursive bir fonksiyonu .wat ve .wasm formatına dönüştürülmüş halini görebilirsiniz. Binary olan .wasm, text olan ise .wat dosyasına aittir. .wasm ve .wat dosyalarını herhangi bir WasmExplorer aracılığıyla elde edebilirsiniz.

{% image5.png %}

Ayrıca, Emscripten kullanarak da derleme yapabilirsiniz. Emscripten, hıza, boyuta ve Web platformuna özel odaklanan, LLVM kullanan, WASM için eksiksiz bir derleyici toolchain’dir. 

Emscripten kurulumunu yaptıktan sonra aşağıdaki basit CLI komutu ile C ile yazdığınız kodu WASM dosyasına dönüştürerek tarayıcı üzerinden kullanılabilir hale getirebilirsiniz.

> emcc hello.c -s WASM=1 -o hello.html

{% image5.png %}

## Gerçek Dünyadan Güzel Bir Örnek
Bir çoğumuzun bildiği sanal seyahat imkanı sunan Google Earth, Haziran 2019’daki Medium yazısına (Preview Google Earth on web across browsers) göre WASM ile beta sürümünü yayınladı. Google Earth, önceki versiyonunda NaCI kullanıldığı için, sadece Chrome tarayıcılarda kullanılabiliyordu, artık sadece Chrome’da değil Opera, Edge ve Firefox tarayıcılarda da kullanılabilir hale getirildi. Safari tarayıcısında da desteklenmesi için çalışmalar hala devam etmektedir. 

{% image5.png %}

Aşağıdaki görselde göreceğiniz üzere Google Earth Web uygulamasını tarayıcımızda açtığımızda yüklenen dosyalar arasında .wasm dosyasını da görebilirsiniz.

{% image5.png %}

## Son Birkaç Söz
WebAssembly ile C, C++ ve Rust dillerinin dışında diğer popüler dillerle de geliştirme yapmak mümkün. Örneğin; 

- C# ile Blazor
- F# ile Bolero
- Haxe ile WebIDL
- Java ile TeaVM ya da Bytecoder
- Kotlin ile TeaVM
- TypeScript ile AssemblyScript

WebAssembly konusunda çok fazla detaya girmeden, olabildiğince sade anlatmaya çalıştım. Detaylara girdikçe işin içerisinden çıkmak çok mümkün olmuyor. :) Umarım faydalı olmuştur.

## Kaynaklar
- https://www.infoworld.com/article/3291780/what-is-webassembly-the-next-generation-web-platform-explained.html
- https://webassembly.org/docs/faq/
- https://medium.com/google-earth/google-earth-comes-to-more-browsers-thanks-to-webassembly-1877d95810d6
- https://hacks.mozilla.org/2017/09/bootcamps-webassembly-and-computer-vision/
- https://blog.logrocket.com/webassembly-how-and-why-559b7f96cd71/



