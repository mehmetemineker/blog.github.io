---
published: true
layout: post
title: 'C# ToUpper ve ToLower Türkçe Karakter Sorunu'
date: '2017-06-17 15:27:39 -0500'
thumbnail: /gallery/thumbnails/csharp.jpg
categories:
  - .Net
  - 'C#'
tags:
- solid
---
ToUpper ve ToLower kullandığınızda Türkçe karakterlerde sıkıntı yaşattığını gördüyseniz doğru yerdesiniz. CultureInfo ile bu sorunu giderebiliriz.
<!--more-->
```csharp
string test =  test = test.ToUpper(new CultureInfo("tr-TR", false));
```