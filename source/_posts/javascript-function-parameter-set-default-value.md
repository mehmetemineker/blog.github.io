---
published: true
layout: post
title: Javascript Function Parameter Set Default Value
date: '2017-06-18 15:27:39 -0500'
thumbnail: /gallery/thumbnails/javascript.jpg
categories: Javascript
tags:
- javascript
---
Bir fonksiyonun parametresine varsayılan değeri aşağıdaki gibi atıyoruz.
<!--more-->
```javascript
function Hello(name){
	var name = name || 'Mehmet';
	Console.log('Hello ' + name);
}

Hello();
Hello('Emin');
Hello(0);

/*
Result:
-> Hello Mehmet
-> Hello Emin
-> Hello Mehmet 
*/
```
