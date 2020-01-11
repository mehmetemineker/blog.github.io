---
published: true
layout: post
title: EntityFramework AsNoTracking Nedir?
date: '2018-05-13 15:27:39 -0500'
categories:
  - .Net
  - 'C#'
tags:
- entityframework
- asnotracking
---
Merhaba arkadaşlar, bugün .Net Core projem için Generic Repository örneği yapıyordum. Github üzerinden örnek kodlara bakarken Entity sorgularındaki AsNoTracking ifadesini gördüm. Yaklaşık 4 yıldır MVC projelerinde görev alıyorum. AsNoTracking ifadesini şimdiye kadar fark edemediğim için üzüldüm, şimdi bunu keşfettiğim için de mutluyum. 🙂 Sizin de bundan faydalanmanızı istediğim için çok geciktirmeden blogumda paylaşmak istedim.

Bildiğiniz üzere EntityFramework ile bir select işlemi yaptığınızda, gelen data içeriğini güncelleyip SaveChanges yaparsak değişiklikler veritabanına yansır. Bu işlemi her zaman istemiyor olabilirsiniz. Bu durumda AsNoTracking ifadesi yardımımıza koşuyor. Bu ifade ile yaptığımız entity sorgusu sadece okumalıktır. Üzerinde değişiklik yapıp SaveChanges yaptığımızda veritabanında hiçbir değişiklik olmaz. Bu da bize minimum bellek kullanımı ve optimum performans sağlayacaktır. Çok hoj 🙂
<!--more-->
### AsNoTracking Performansı

AsNoTracking ifadesinin performansı ne kadar etkilediğine görsel olarak birlikte bakalım:

{% asset_img asnotracking-bulk-execution-time.png %} 

{% asset_img asnotracking-bulk-memory-usage.png %} 

{% asset_img asnotracking-bulk-relative-execution-time.png %} 

{% asset_img asnotracking-bulk-reletive-memory-usage.png %} 

### AsNoTracking Kullanımı

Bu ifadenin kullanımı ise aşağıda göreceğiniz üzere çok kolay:

> context.Set<TEntity>().AsNoTracking();

Diğer bir kullanım yönetimi ise DbContext ayarlarından yapılabilir. Bu da tüm queryler için geçerli olacaktır:

> context.ChangeTracker.QueryTrackingBehavior = QueryTrackingBehavior.NoTracking;

##### Kaynaklar:

1.  [http://blog.staticvoid.co.nz/2012/entity\_framework\_and\_asnotracking/](http://blog.staticvoid.co.nz/2012/entity\_framework\_and\_asnotracking/)
2.  [https://docs.microsoft.com/en-us/ef/core/querying/tracking](https://docs.microsoft.com/en-us/ef/core/querying/tracking)
