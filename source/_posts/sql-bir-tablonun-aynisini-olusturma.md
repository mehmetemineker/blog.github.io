---
published: true
layout: post
title: SQL Bir Tablonun Aynısını Oluşturma
date: '2017-06-17 15:27:39 -0500'
categories:
  - SQL Server
  - Veritabanı
tags:
- mssql
- database
---
Bir tablonun aynı kolonlara sahip bir kopyasını oluşturmak istersek yazmamız gereken sorgu şu şekilde:
<!--more-->
> select top 0 * into table2 from table1

Bu sorgu ile table1 tablosunun aynısını table2 ismiyle oluşturur.