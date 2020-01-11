---
published: true
layout: post
title: Single Responsibility Principle (SRP) – Tek Sorumluluk Prensibi - 2
date: '2017-03-25 15:27:39 -0500'
categories:
  - .Net
  - 'C#'
tags:
- solid
---
Bir önceki blog yazımda [Nesne Yönelimli Tasarım Prensipleri – SOLID](/nesne-yonelimli-tasarim-prensipleri-solid-1/) üzerinde durmuştuk. Bu yazımda ise SOLID’in S’si olan Single Responsibility Principle (SRP) – Tek Sorumluluk Prensibi üzerinde duracağım.
<!--more-->
**Single Responsibility Principle (SRP) – Tek Sorumluluk Prensibi**

Bir sınıfın veya metodun sadece bir sorumluluğu vardır. Bu sayede bir değişiklik yapacağımız zaman sadece bir nedenimiz olur. Peki bu ne anlama geliyor?{% asset_img srp.jpg %}

Resimde birden fazla işi yapan bir alet (çakı) görüyorsunuz. Bu aletin o kadar fazla sorumluluğu var ki, yeni bir sorumluluk eklemek istediğimde ya da kırılan bir parçayı değiştirmek istediğimizde yapısına müdahale etmem gerekecek. Eğer alet sadece bıçak olsaydı ya da tornavida, yani tek bir sorumluluğu olmuş olsaydı, kırılan kısmını kolay bir şekilde değiştirebilecektim. Belki yerden tasarruf edemezdim ancak zamandan tasarruf edeceğim ortada. Yazılım geliştirmede amaç her zaman en basit yöntemler kullanarak, sade ve esnek yapılar oluşturmaktır, demiştik.

Yazılımsal açıdan bakarsak nasıl bir sonuca ulaşırız? Bir sınıfımız olsun ve bu sınıfın içerisinde Allah ne verdiyse yazdığımızı düşünelim. Bir süre sonra kodun binlerce satıra ulaştığını görüyoruz. Editör bile kodları gösterirken kasılır. Bir yeri değiştirmek canımıza okur ve geçmiş yazılımcılara sevmeler başlar. Seve seve biz de aynı şeklide kodumuzu yazarız. Sonuç; büyük ve karmaşık ve yönetimi zor kodlar, kırılgan ve esnek olmayan bir yapı.

Yalnızca kendi sorumluluğunu yerine getirecek şekilde parçalara bölseydik bu sonuç ile karşılaşmayacaktık.

**Örnek C# kodu:**

> public class FullStackDeveloper
> {
>  public void WriteCSharpCode()
>  {
>  Console.WriteLine("I can write C#.");
>  }
> 
>  public void WriteSQLCode()
>  {
>  Console.WriteLine("I can write SQL.");
>  }
> 
>  public void WriteJavaScriptCode()
>  {
>  Console.WriteLine("I can write JavaScript.");
>  }
> 
>  public void WriteCSSCode()
>  {
>  Console.WriteLine("I can write CSS.");
>  }
> }

“FullStackDeveloper” sınıfımız C#, SQL, JavaScript ve CSS kodu yazabilen bir yazılım geliştiricisini temsil etsin. Tek bir geliştiriciye bu kadar işin yüklenmesi geliştiricinin hata yapma olasılığını yükseltecektir. Çünkü, bir yerden sonra kafa çorbası içilmeye hazır hale gelecektir.

Olması gereken ise aslında şudur:

> public class BackEndDeveloper
> {
>  public void WriteCSharpCode()
>  {
>  Console.WriteLine("I can write C#.");
>  }
> }
> 
> public class FrontEndDeveloper
> {
>  public void WriteJavaScriptCode()
>  {
>  Console.WriteLine("I can write JavaScript.");
>  }
> 
>  public void WriteCSSCode()
>  {
>  Console.WriteLine("I can write CSS.");
>  }
> }
> 
> public class SQLDeveloper
> {
>  public void WriteSQLCode()
>  {
>  Console.WriteLine("I can write SQL.");
>  }
> }

Kısacası, herkes kendi işini yapmalıdır!

> Olur ya bir gün görüşemezsek iyi günler, iyi akşamlar ve iyi geceler…
