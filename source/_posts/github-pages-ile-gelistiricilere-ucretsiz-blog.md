---
layout: post
title:  "Github Pages ile Geliştiricilere Ücretsiz Blog"
date:   2016-08-01 15:27:39 -0500
categories: Genel
tags:
- github
- pages
---
Geliştiriciler için basit ve hızlı blog oluşturma.
--------------------------------------------------

Geliştirici olan herkesin hayalidir bir blog tutmak. **Jekyll** ile bu çok kolay. Bu yazımda, **Github** üzerinde HTML sayfası nasıl görüntülenir? **Jekyll** nedir? Jekyll Nasıl kurulur? Jekyll Projesi Nasıl Oluşturulur? Nasıl yayınlanır? konuları üzerinde duracağım.
<!--more-->
#### Github Üzerinde HTML Sayfası Nasıl Görüntülenir?

İlk olarak Github hesabımıza giriş yaptıktan sonra **New repository** butonuna basarak yeni bir çalışma alanı oluşturalım.

{% asset_img yeni_repository_olusturmak.png %} 

**New repository** butonuna bastığımızda aşağıdaki **Create a new repository** sayfası açılacak. Bu sayfadan projemizin adını **{kullanıcı adım}.github.io** şeklinde veriyoruz. İsterseniz **README** dosyasını da ekleyebilirsiniz. Sonra **Create repository** butonuna bastığımızda yeni çalışma alanımız oluşmuş olacak.

{% asset_img github_pages_io_repository_olusturmak.png %} 

Github Pages’ ın yayına girip girmediğini kontrol etmek için çalışma alanının ayarlarına göz atmamız gerekiyor.

{% asset_img github_repository_olustu.png %} Ayarlar sayfasına girdiğimizde **Github Pages** alanında aşağıdaki resimde olduğu gibi gözüküyorsa Github Pages başarıyla yayına girmiştir.

{% asset_img github_pages_url.png %} 

Bu bağlantıya tıkladığımız zaman **404** sayfası ile karşılaşacağız. Çünkü **index.html** dosyası oluşturmadık.

{% asset_img github_pages_github_page_404.png %} 

Index.html dosyası oluşturmak için çalışma alanımıza geri dönüp **Create new file** butonuna basarak yeni bir dosya oluşturalım.

{% asset_img github_pages_create_new_file_index_html.png %} 

Açılan sayfadan dosyamızın adını **index.html** olarak belirledikten sonra içeriğine bir şeyler yazalım.

{% asset_img github_pages_index_html_tag.png %} 

Index.html dosyasının içeriğini hallettikten sonra aynı sayfanın hemen altında yer alan **Commit new file** butonuna tıklıyoruz.

{% asset_img github_pages_index_html_commit.png %} 

Index.html sayfamız oluştuğuna göre artık Github sayfamızı tekrar kontrol edebiliriz. Eğer oluşturduğunuz index.html dosyası görüntülendiyse doğru yoldasınız. Buraya kadar hiçbir sorun yaşamadan geldiyseniz devam edebiliriz.

#### Jekyll Nedir?

[Jekyll](https://jekyllrb.com), **Ruby** ile yazılmış bir uygulamadır. **Basit ama güçlü** bir alt yapıya sahip **statik site oluşturucusu**dur. [Markdown](https://daringfireball.net/projects/markdown/) veya [Textile](http://redcloth.org/textile) formatında yazdığınız sayfayı statik HTML sayfasına dönüştürür.

#### Jekyll Nasıl Kurulur?

Dikkat! Ben **Windows** kullandığım için Windows kurulumunu baz alıyorum.

İlk olarak **Ruby**‘yi indirip kurmamız gerekiyor. [www.ruby-lang.org/tr/downloads](https://www.ruby-lang.org/tr/downloads/)

Ruby’yi kurduktan sonra **RubyGems**‘i kurmamız gerekiyor. [rubygems.org/pages/download](https://rubygems.org/pages/download)

Kurulumun başarılı olup olmadığını anlamak için Komut Satırını (Nam-ı diğer Cemede) açıyoruz.

Ruby için aşağıdaki komutu yazıyoruz.

ruby -v

Eğer versiyon numarası gözükürse başarıyla yüklenmiştir

Aynı durum RubyGems için de geçerli. Bunun için de aşağıdaki komutu yazıyoruz.

gem -v

Versiyon numarasını gördüysek sıkıntı yok.

{% asset_img ruby_gem.png %} 

Ruby’yi ve RubyGems’i yükledikten sonra şimdi sıra **Jekyll**‘in yüklenmesine geldi. Bu sefer komut satırına aşağıdaki komutu yazıyoruz.

gem install jekyll

Jekyll’in yüklenmesi tamamlandığında yine versiyon kontrolü ile yüklenme durumuna bakabilirsiniz.

Bütün kurulumları tamamladık. Şimdi Jekyll ile ilk blogumuzu oluşturmaya hazırız.

#### Jekyll Projesi Nasıl Oluşturulur?

Yeni boş bir klasör açıp içerisinde komut satırını çalıştıralım ve aşağıdaki komutu çalıştıralım.

jekyll new {proje adı}

{% asset_img cmd_jekyll.png %} 

Projemiz oluştuktan sonra projemizin bulunduğu dizine geçelim.

cd {proje adı}

{% asset_img cmd_cd.png %} 

Projemizin bulunduğu dizine geçtikten sonra localhost üzerinde test edebiliriz. Bunun için yine komut satırına aşağıdaki komutu yazalım.

jekyll serve

{% asset_img jekyll_serve.png %} 

Bu komutu yazdığımızda **localhost:4000** adresinden projemizin çalışır halini görebiliriz.

{% asset_img localhost.png %} 

Projemizi oluşturduk. Şimdi sırada Github üzerindeki çalışma alanına atmak kaldı.

#### Nasıl yayınlanır?

Oluşturduğumuz Jekyll projemizi Github çalışma alanımıza atmak için **Github Desktop** uygulamasını indirip kurmamız gerekiyor. [desktop.github.com](https://desktop.github.com/)

**Github Desktop** uygulamasını kurduktan sonra Github üzerindeki projemize giderek **Clone or download** butonuna tıklayıp açılan yerden **Open in Desktop** butonuna tıkladığımızda Github Desktop uygulaması devreye girecek ve çalışma alanımızı nereye oluşturacağını seçtikten sonra çalışma alanımızın kendi diskimize klonlandığını göreceğiz. Jekyll projemizi klonladığımız Github çalışma alanına kopyala yapıştır yaptıktan sonra **Commit** ediyoruz. **Commit** ve **Sync** işlemlerini tamamladıktan sonra projemizin **{kullanıcı adım}.github.io** adresinden çalışıp çalışmadığını kontrol edebiliriz.

Bu yazım da burada son bulsun. Bir sonraki yazımda **{kullanıcı adım}.github.io** şeklinde olan adresi istediğimiz bir alan adı ile açma yani **Custom Domain** üzerine olacak.

[Github Pages Custom Domain](/github-pages-custom-domain/) üzerine yazdığım yazımı da okumak ister misin?

> Olur ya bir gün görüşemezsek iyi günler, iyi akşamlar ve iyi geceler…