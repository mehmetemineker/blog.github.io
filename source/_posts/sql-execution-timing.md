---
published: true
layout: post
title: Sql Execution Timing
date: '2017-06-18 15:27:39 -0500'
categories:
  - SQL Server
  - Veritabanı
tags:
- mssql
- database
---
MSSQL 2008 ve üzeri sorgu süresini hesaplama
<!--more-->
```sql
Declare @StartTime DateTime = GetDate()

-- my SQL calls

Print 'Time taken was ' + cast(DateDiff(millisecond, @StartTime, GetDate()) as varchar) + 'ms'
```