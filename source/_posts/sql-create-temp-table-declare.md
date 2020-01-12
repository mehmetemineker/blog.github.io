---
published: true
layout: post
title: SQL Create Temp Table Declare
date: '2017-06-17 15:27:39 -0500'
categories: Veritabanı
tags:
- mssql
- sql
---
Temp tablo oluşturmak için bir yöntem.
<!--more-->
```sql
DECLARE @TempTable TABLE(
    test1 INT,
    test2 NVARCHAR(MAX),
    test3 NVARCHAR(MAX)
)
```