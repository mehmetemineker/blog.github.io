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

Resim

Yine bahsetmek gerekirse; masaüstü uygulamaların web uygulamalarına göre daha performanslı çalıştığı bilinir. Karmaşık ve yüksek CPU gerektiren işlemleri barındıran programlar genellikle masaüstü uygulamalarıdır. Masaüstü uygulamalarını native olarak sınıflandırırsak, WASM ile native performansa yakın ve web ortamında çalışan uygulamalar geliştirmek amaçlanmıştır. Günümüzde popüler bir çok web tarayıcısı WASM’ı desteklemektedir.

Resim

WASM’dan önce Google’ın Native Client’ı ve Mozilla’nın da asm.js isimli teknolojileri ile native performansı sağlanmaktaydı. Tabii doğal olarak Google’ın odak noktası Chrome ve Mozilla’nınki ise Firefox’tu. Öncelikli olarak kendi tarayıcılarında çalışacak bir sistem geliştirmişlerdi. Bunlara kısaca değinmek gerekirse:

- Google, native kodu bir web tarayıcısında güvenli bir şekilde çalıştırmak amacıyla Native Client’ı (NaCl) geliştirmiştir. Yürütülebilir kod sanal bir alanda çalışır ve native kod yürütmenin performans avantajlarını sunabilmektedir. NaCl, belirli bir mimariye bağlıyken, Portable Native Client (PNaCl), herhangi bir platformda çalışmak üzere geliştirilmiş, NaCl'nin mimariden bağımsız bir versiyonudur. 

- Mozilla ise, asm.js'i 2013'te piyasaya sürdü ve geliştiricilere C veya C++ kaynak kodlarını JavaScript'e çevirmeleri için bir yol sağlamıştır. asm.js, derleyiciler için düşük seviyeli, verimli bir hedef dil olarak kullanılabilen katı bir JavaScript alt kümesi olarak tanımlanmaktadır.



