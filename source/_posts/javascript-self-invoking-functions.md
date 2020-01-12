---
published: true
layout: post
title: Javascript Self Invoking Functions
date: '2017-06-18 15:27:39 -0500'
thumbnail: /gallery/thumbnails/javascript.jpg
categories: Javascript
tags:
- javascript
---
Javascript ile oluşturduğumuz bir fonksiyonu otomatik olarak çağırma.
<!--more-->
```javascript
//Normal çağırma
var test = function(name){
	return ('Hello ' + name);
};

test('Mehmet'); 

//Otomatik çağırma
var test = function(name){
	return ('Hello ' + name);
}('Mehmet');
```