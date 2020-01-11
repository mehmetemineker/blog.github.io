---
published: true
layout: post
title: SQL Trigger Toplu Update Sorunu
date: '2017-06-17 15:27:39 -0500'
categories:
  - SQL Server
  - Veritabanı
tags:
- mssql
---
Bazen triggerlarda where kullandığımız sorgular varsa, bu sorgular toplu update işlemi sırasında hata oluşturuyor. Where yerine Join kullanmak sorunu çözebilir.