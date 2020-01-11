---
published: true
layout: post
title: 'C# ToUpper ve ToLower Türkçe Karakter Sorunu'
date: '2017-06-17 15:27:39 -0500'
categories:
  - .Net
  - 'C#'
tags:
- solid
---
ToUpper ve ToLower kullandığınızda Türkçe karakterlerde sıkıntı yaşattığını gördüyseniz doğru yerdesiniz. CultureInfo ile bu sorunu giderebiliriz.
<!--more-->
string test =  test = test.ToUpper(new CultureInfo("tr-TR", false));