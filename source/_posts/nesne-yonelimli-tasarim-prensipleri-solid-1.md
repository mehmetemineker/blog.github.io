---
published: true
layout: post
title: Nesne Yönelimli Tasarım Prensipleri – SOLID - 1
date: '2017-03-25 15:27:39 -0500'
categories:
  - .Net
  - 'C#'
tags:
- solid
---
Merhaba yazılımı seven ve gönül veren değerli arkadaşlar, bu blog yazımın konusu nesne yönelimli programlamada "olmazsa olmaz" diyemem ama "olması gereken" teknikler üzerinde duracağım.

Yazılım camiasında standart haline gelmiş SOLID prensipleri olarak anılan beş teknikten bahsedeceğim. Robert Cecil Martin’in (Nam-ı diğer Uncle Bob) sunumu ile yaygınlaşmaya başlayan SOLID, bir Dependency Managament (Bağımlılık Yönetimi) biçimidir. Uncle Bob ayrıca, 2000 senesinde Kent Beck ve 15 arkadaşı ile Agile Manifestonun oluşturulmasında yer almıştır.
<!--more-->
SOLID, **S**ingle Responsibility, **O**pen Closed, **L**iskov Substitutio, **I**nterface Segregation, **D**ependency Inversion prensiplerinden oluşur. Bu prensiplerin kullanılmasındaki temel amaç esnek ve geliştirilmesi kolay yazılımlar oluşturmaktır. Eğer bu prensipleri sadece uygulamış olmak için yaparsak kompleks bir yapı oluşacaktır. Bu yüzden projenin böyle bir şeye ihtiyacı olup olmadığını iyi analiz etmemiz gerekir.

Yazılım geliştirmede amaç her zaman en basit yöntemler kullanarak, sade ve esnek yapılar oluşturmak olmalıdır. Yerine göre SOLID’i kullanıp kullanmamak bize kalmıştır.

Bağımlılık seviyesi yüksek kötü tasarlanmış projelerin benzer üç özelliği vardır:

1.  (Rigidty) Esnek değillerdir. Geliştirmelere ve yeni eklentilere kapalıdırlar.
2.  (Fragility) Kırılgandırlar. Projenin herhangi bir yerinde yapacağım bir değişiklik başka yerleri etkiler.
3.  (Immobilty) Sabittirler. Tekrar kullanıma uygun değillerdir.

Bu kötü tasarımı SOLID ile ortadan kaldırabiliriz.

Bir sonraki yazım SOLID’in S’si olan [Single Responsibility Principle (SRP) – Tek Sorumluluk Prensibi](/single-responsibility-principle-srp-tek-sorumluluk-prensibi-2/)

> Olur ya bir gün görüşemezsek iyi günler, iyi akşamlar ve iyi geceler…