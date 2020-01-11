---
published: true
layout: post
title: Visual Studio ile SVN Kullanımı
date: '2016-07-30 15:27:39 -0500'
categories: ["Visual Studio"]
tags:
- visualstudio
- svn
---
VisualSVN kurulumu ve kullanımı hakkında.
-----------------------------------------
Bir önceki yazımda [Dropbox Üzerine SVN Kurulumu](/dropbox-uzerine-svn-kurulumu/)ndan bahsetmiştim. Bu yazımda da söz verdiğim üzere **Visual Studio** ortamındayken projenizde değişiklik yaptığınız alanları göstererek **commit** etminizi sağlayan **VisualSVN** eklentisinin kurulumunu ve kullanımını anlatacağım.
<!--more-->
**VisualSVN 5.1.4** sürümü ile **Visual Studio 2015** e kadar destekliyor.  VisualSVN eklentisini indirmek için bu linke tıklayın. [www.visualsvn.com](https://www.visualsvn.com/)

İndirme ve kurulum işlemleri bittikten sonra Visual Studio’ yu açtığımız pencerenin üstünde **VisualSVN** menüsünü gördüğümüzde kurulum başarılı olmuş demektir.

Daha önce oluşturduğumuz SVN klasörünün içerisine herhangi bir yeni proje oluşturalım. Oluşturduğumuz anda VisualSVN projenin SVN klasörü içerisinde yer aldığını anlayarak **Solution Explorer**‘ da değişiklik olan dosyaların sol tarafına bir simge atarak o dosyanın commit edilebilir olduğunu gösteriyor. Projemize sağ tıklayıp commit dediğimizde bütün proje commit edilmiş olur. Eğer sadece çalıştığınız dosyayı commit etmek istiyorsanız o dosyaya sağ tıklayıp aynı işlemleri yaptığınızda commit işlemi gerçekleştiriliyor.

> Olur ya bir gün görüşemezsek iyi günler, iyi akşamlar ve iyi geceler…
