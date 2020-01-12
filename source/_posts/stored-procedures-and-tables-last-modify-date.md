---
published: true
layout: post
title: Stored Procedures and Tables Last Modify Date
date: '2017-06-17 15:27:39 -0500'
categories:
  - SQL Server
  - Veritabanı
tags:
- sql
- storedprocedures
---
MSSQL **sys.objects** tablosundan üzerinde değişiklik yapılma tarihlerine göre **tabloları** ve **stored proceduresleri** listeleme sorgusu. **U** ile ifade edilenler tablo, **P** ile ifade edilenler ise SP.
<!--more-->
```sql
SELECT name, create_date, modify_date, type
FROM sys.objects
WHERE type = 'U' OR type = 'P'
ORDER BY modify_date DESC 
```