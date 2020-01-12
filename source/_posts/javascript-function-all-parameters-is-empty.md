---
published: true
layout: post
title: Javascript Function All Parameters Is Empty
date: '2017-06-18 15:27:39 -0500'
thumbnail: /gallery/thumbnails/javascript.jpg
categories: Javascript
tags:
- mssql
---
Bir fonksiyondaki parametrelerin hiçbiri girilmediyse bunun kontrolünü ES ile halledebiliriz.
<!--more-->

```javascript
function Test(a,b,c,...){
	if(arguments.length === 0){
		//Hiçbir paremetre girilmemiştir.
		//Tek tek sorgulamaya gerek kalmaz
	}
}
```