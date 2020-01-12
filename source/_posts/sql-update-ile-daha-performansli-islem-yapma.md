---
published: true
layout: post
title: SQL – Update İle Daha Performanslı İşlem Yapma
date: '2017-06-17 15:27:39 -0500'
categories:
  - Veritabanı
  - SQL Server
tags:
- sql
- update
---
Bir sorgu içerisinde herhangi bir kolunun değerini bir fonksiyon ile düzenleyip basarsak performans kaybı olur. Ancak ilk olarak kolona varsayılan değerini basıp daha sonra toplu bir update çekersek gözle görülür performans artışı olur.
<!--more-->
```sql
UPDATE upb 
SET upb.yas = Hesapla(yas) 
FROM TempTable_UyeProfilBilgileri upb
```