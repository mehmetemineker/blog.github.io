---
published: true
layout: post
title: MSSQL Server Türkçe Karakter Destekli Veritabanı Oluşturmak
date: '2016-06-13 15:27:39 -0500'
categories:
  - SQL Server
  - Veritabanı
tags:
- mssql
---
Türkçe karakter destekli veritabanı için aşağıdaki SQL kodlarını kullanmanız yeterli olacaktır.
<!--more-->

ALTER DATABASE veritabani_adi SET SINGLE_USER WITH ROLLBACK IMMEDIATE
ALTER DATABASE veritabani_adi COLLATE TURKISH_CI_AS
ALTER DATABASE veritabani_adi SET MULTI_USER

> Olur ya bir gün görüşemezsek iyi günler, iyi akşamlar ve iyi geceler…
