---
published: true
layout: post
title: Jquery Only Parent Click
date: '2017-06-18 15:22:39 -0500'
thumbnail: /gallery/thumbnails/jquery.jpg
categories:
  - Javascript
  - JQuery
tags:
- javascript
- jquery
---
Jquery ile sadece parent elemente tıklama eventı ekleme.
<!--more-->
```javascript
//Sadece Html elementine tıklandığında işlem yapar.
$('#outer').click(function(e) {
    if (e.target === this){
        console.log('Parent');
    }
});

//Html elementinin kendisine tıklanmadıysa işlem yapmadan dön.
$('#outer').click(function(e) {
     if(e.target != this) return;
});
```
