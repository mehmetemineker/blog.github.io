---
published: true
layout: post
title: Dropbox Üzerine SVN Kurulumu
date: '2016-06-19 15:27:39 -0500'
thumbnail: /gallery/thumbnails/dropbox-svn.jpg
categories: Genel
tags:
- dropbox
- svn
---
Freelancerlar ve küçük takımlar için Dropbox üzerine SVN kurulumu.
------------------------------------------------------------------

Geliştirdiğiniz projenin kaynak kodlarının kaybını en aza indirmek, versiyon kontrolü sağlamak ve takım halinde çalışırken çakışmaların önüne geçmek istiyorsanız, [SVN](https://tr.wikipedia.org/wiki/Apache_Subversion) kolay kurulumu ve kolay kullanımı ile yazılım geliştiricileri kendine çekmeyi başarıyor. Ben de Şubat 2016 dan beri SVN kullanıyorum. İlk başlarda temel amacını kavramakta zorlansam da artık kişisel projelerimde bile SVN kullanmaya karar verdim. Bu yazıyı yazmamdaki amaç server kurulum derdi olmadan direkt Dropbox üzerinde tanımladığım bir klasöre SVN bağlayıp kullanmak.
<!--more-->

_Kısa bir hatırlatma; ben Dropbox kullanıyorum. Dropbox şart değil. Google Drive, One Drive, Yandex gibi benzer depolama alanlarını da kullanabilirsiniz._

Şimdi kuruluma geçelim:

#### Kullanılan yazılımlar

*   [TortoiseSVN](https://tortoisesvn.net/)
*   [Dropbox](https://www.dropbox.com/install)

İndirime ve kurulum işlemleri tamamlandıktan sonra yapılması gerekenler;

Dropbox hesabımız ile oturum açıp Dropbox klasörünün içerisine yeni boş bir klasör oluşturalım.

{% asset_img dropbpx-svn-ss-1.png %} 

Klasörü oluşturduk. Şimdi sırada **SVN Repository** oluşturmak. Klasöre sağ tıklayıp açılan menüden **TortoiseSVN** > **Create repository here** tıklıyoruz.

{% asset_img dropbpx-svn-ss-2.png %} 

**Create repository here** a tıkladığımızda **Repository created** penceresi açıldı. Burda **Create folder structure** butonuna tıklıyoruz. **Success** sonucunu aldığımızda Dropbox ile olan işlemimizi başarıyla tamamlamış olduk.

{% asset_img dropbpx-svn-ss-3.png %} 

Şimdi oluşturduğum SVN klasörünü kendi local diskim üzerindeki bir klasöre bağlayacağım.

Herhangi bir boş klasöre gidip sağ tıklayıp açılan menüden **SVN Checkout…** diyorum.

{% asset_img dropbpx-svn-ss-4.png %} 

Sonra açılan **Checkout** penceresinden **URL of repository** alanına Dropbox üzerinde oluşturduğum SVN klasörünün yolunu belirtiyorum. **Checkout directory** ise bizim local diskimizdeki klasörün yolu.

{% asset_img dropbpx-svn-ss-5.png %} 

**OK** butonuna bastıktan sonra **Checkout Finished!** penceresi geliyor ve SVN klasörleri oluşturuluyor.

{% asset_img dropbpx-svn-ss-6.png %} 

**Soru: **Peki diğer geliştiriciler benim Dropbox üzerinde oluşturduğum SVN klasörüne nasıl bağlanacaklar?

**Cevap: **Çok basit. Dropbox hesap sahibi klasörü paylaşıma açacak.

Bir yazının daha sonuna geldik. Bir sonraki yazım Visual Studio ve SVN ile ilgili olacak.

[Visual Studio ile SVN Kullanımı](/visual-studio-ile-svn-kullanimi/) başlıklı yazıma gitmek ister misiniz?

> Olur ya bir gün görüşemezsek iyi günler, iyi akşamlar ve iyi geceler…
