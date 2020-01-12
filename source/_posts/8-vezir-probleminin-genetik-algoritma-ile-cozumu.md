---
published: true
layout: post
title: 8 Vezir Probleminin Genetik Algoritma ile Çözümü
date: '2018-06-04 15:27:39 -0500'
thumbnail: /gallery/thumbnails/chess.jpg
categories: Algoritmalar
tags: 
- algoritma
- genetik
---
Merhaba arkadaşlar, bu yazımda **algoritma severlerin** mutlaka bildiği **8 vezir problemi**nin **genetik algoritma** ile çözümünden bahsedeceğim.

Her ne kadar 8 vezir desek de asıl amacımız **n adet vezirin nxn’lik satranç tahtasına uygun bir şekilde yerleştirilmesi**ni sağlamaktır. Bu yüzden 8 vezir yerine, n vezir problemi demek daha doğru olacaktır.

#### n Vezir Problemi Amacı

Satranç oynayanlar bilir, bir vezir **yatay**, **dikey** ve **çapraz** hamleler yapabilir. Amacımız n adet veziri,  nxn’lik bir satranç tahtasına birbirini kesmeyecek şekilde yerleştirmek.
<!--more-->
#### **n Vezir Probleminin Geçmişi**

8 vezir problemi  ilk olarak 1848 yılında satranç oyuncusu **Max Bezzel** tarafından ortaya atılmıştır. **Gauss** ve **Georg Cantor** gibi pek çok matematikçi tarafından incelenmiştir. İlk çözümü **Franz Nauck** 1850’de ortaya atmıştır, aynı zamanda n vezir problemi haline getirmiştir.

### **n Vezir Probleminin Genetik Algoritma ile Çözümü**

Genetik algoritma ile ilgili daha önceden bir yazı yazmıştım. Temel seviyede bilgiyi şuradan edinebilirsiniz. [Evrimsel Sürecin Simülasyonu – Genetik Algoritmalar – 1](/evrimsel-surecin-simulasyonu-genetik-algoritmalar-1/)

#### **Fitness Function**

Bildiği üzere genetik algoritmada asıl işi yapan **Fitness Function**‘dır. İyi düşünülerek yazılmış bir fitness function sonuca ulaşmamızı büyük bir oranda etkiler. 8 vezir probleminde ise algoritmamız şu şekilde olacak:

1.  8×8’lik satranç tahtasının ilk sütunundan başlayarak bir vezir seçilir
2.  Seçilen veziri, tahtanın sağında yer alan kesmeyen vezir sayısı bulunur
3.  Bu kontrol tüm sütunlar için uygulanır ve toplam kesmeyen vezir sayısı bulunur

_Not: 8 vezirlik bir problemin en uygun fitness function sonucu 28 olarak hesaplanır._

**Problem için hazırladığım fitness function**
```csharp
public class MyProblemFitness : IFitnessFunction
{
    public double Evaluate(IChromosome chromosome)
    {
        var genes = ((PermutationChromosome)chromosome).Value;

        double result = 0;

        for (int x1 = 0; x1 < genes.Length - 1; x1++)
        {
            int y1 = genes[x1];

            int sagdakiVezirSayisi = genes.Length - 1 - x1;

            for (int x2 = x1 + 1; x2 < genes.Length; x2++)
            {
                int y2 = genes[x2];

                if (y1 == y2 || x1 - y1 == x2 - y2 || x1 + y1 == x2 + y2)
                {
                    sagdakiVezirSayisi -= 1;
                }
            }

            result += sagdakiVezirSayisi;
        }


        return result;
    }
}
```

#### Kromozom Yapısı

Örnek kromozom: **\[ 5, 1, 3, 0, 2, 7, 6, 4 \]**

Bu problem için permütasyon kodlamalı kromozom yapısı daha uygun olacaktır. Kromozomun birinci elamanı olan 5 değeri, vezirin **sıfırıncı sütun** ve **beşinci satırda** yer aldığını ifade etmektedir.

### C# ile Çözümü

Problemin çözümde kütüphane kullanmak çözüm süresinin uzamasını ve aynı işlerin (crossover, mutation, selection…) tekrarını önlemek açısından önemli. Bu yüzden [AForge.Net Genetic](http://www.aforgenet.com/framework/samples/genetic_algorithms.html) ve [GeneticSharp](https://github.com/giacomelli/GeneticSharp) kütüphanelerini kullandım. Problemi her iki kütüphane ile çözdüm. AForge.Net kütüphanesinin performası bu problem için daha uygun geldi bana. Tavsiyem AForge.Net Genetic.

Problemin çözümünü Github’ta paylaştım. İsterseniz inceleyebilirsiniz,

[https://github.com/mehmetemineker/Genetic8QueensSolutionWithAForge](https://github.com/mehmetemineker/Genetic8QueensSolutionWithAForge) – AForge.Net Genetic

[https://github.com/mehmetemineker/Genetic8QueensSolutionWithGeneticSharp](https://github.com/mehmetemineker/Genetic8QueensSolutionWithGeneticSharp) – GeneticSharp

Kaynak: [https://tr.wikipedia.org/wiki/Sekiz\_vezir\_bulmacas%C4%B1](https://tr.wikipedia.org/wiki/Sekiz_vezir_bulmacas%C4%B1)