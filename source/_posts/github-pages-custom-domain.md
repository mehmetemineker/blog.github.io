---
layout: post
title:  "Github Pages Custom Domain"
date:   2016-08-06 15:27:39 -0500
categories: Genel
tags:
- github
- pages
- customdomain
---
Daha önceki yazım [Github Pages ile Geliştiricilere Ücretsiz Blog](/github-pages-ile-gelistiricilere-ucretsiz-blog/) üzerineydi. Bu yazımda da **{kullanıcı adım}.github.io** şeklinde olan alan adını istediğimiz bir alan alan adı ile açmayı anlatacağım.

Almış olduğumuz alan adının yönetim ekranından 2 adet **A** kaydı oluşturmamış gerekiyor. A kayıtlarının ikisine de alan adımızı yazıyoruz. Ip adreslerine ise **Github Pages Custom Domain IP**‘lerini yazmamız gerekiyor.
<!--more-->
**Github Pages Cutom Domain IPs**

*   **192.30.252.153**
*   **192.30.252.154**

Örnek A kaydı şu şekilde olacak:

*   **mht.ist – 192.30.252.153**
*   **mht.ist – 192.30.252.154**

A kaydını tamamladıktan sonra Daha önce oluşturduğumuz Github çalışma alanımıza gidip yeni bir dosya oluşturuyoruz. Dosyanın adına **CNAME** yazıyoruz. İçeriğine ise kendi alan adımızı yazıyoruz.

{% asset_img custom_domain.png %} 

Ve artık bloğumuza **{kullanıcı adım}.github.io** şeklide erişmek yerine direkt kendi belirlediğimiz alan adı ile erişiyoruz. Benim alan adım [mht.ist](http://mht.ist/).Burayı blog gibi değil de not defteri gibi kullanmaya çalışacağım. Belki ilerde sadece onu kullanırım.

Github Pages hakkında daha detaylı dökümantasyon için [şu adrese](https://help.github.com/articles/using-a-custom-domain-with-github-pages/) gidebilrisiniz.

> Olur ya bir gün görüşemezsek iyi günler, iyi akşamlar ve iyi geceler…