---
published: true
layout: post
title: EF6 DbContext Unit Test Mock
date: '2020-06-24 08:55:00 -0500'
thumbnail: /gallery/thumbnails/unit-test.jpg
categories:   
- .Net
- 'C#'
- 'Unit Test'
tags: 
- unittest
- mock
- dbcontext
- ef6
---
Merhaba, çok uzun zamandır bir şeyler yazmıyordum. Tam anlamıyla bir yazı olmasa da bir başlangıç yapmak adına bu küçük paylaşımı yapmak istedim. Bu paylaşımımda EF6 DbContext Mock işlemi için hazırladığım kodu göreceksiniz.
<!--more-->
Bilindiği üzere unit test yazmanın en önemli ve en sıkıntılı noktalarından birisi mocklama işlemi. DbContext sınıfınız eğer test edilebilir olarak geliştirilmediyse bu süreç can sıkıcı olabiliyor. Var olan yapınızı da değiştirmek ürkütücü geliyorsa, paylaşmış olduğum kodlar ile çok fazla değişiklik yapmadan DbContext nesnemizi mocklayarak test edilebilir hale getirebilirsiniz.

Mocklama işlemi için [Moq](https://github.com/moq/moq4 "Moq") kütüphanesinden faydalandım. 
Olmazsa olmaz **Utility** sınıfımız ile kodlar şöyle :)

```csharp
public class Utility
{
    public static (Mock<D> mockDbContext, Mock<MockableDbSetWithExtensions<T>> mockDbSet) MockDb<D, T>(List<T> sourceList)
        where D : DbContext
        where T : class
    {
        var queryable = sourceList.AsQueryable();
        var mockDbContext = new Mock<D>();
        var mockDbSet = new Mock<MockableDbSetWithExtensions<T>>();

        mockDbSet.As<IQueryable<T>>().Setup(m => m.Provider).Returns(queryable.Provider);
        mockDbSet.As<IQueryable<T>>().Setup(m => m.Expression).Returns(queryable.Expression);
        mockDbSet.As<IQueryable<T>>().Setup(m => m.ElementType).Returns(queryable.ElementType);
        mockDbSet.As<IQueryable<T>>().Setup(m => m.GetEnumerator()).Returns(queryable.GetEnumerator());
        mockDbSet.Setup(d => d.Add(It.IsAny<T>())).Callback<T>((s) => sourceList.Add(s));

        return (mockDbContext, mockDbSet);
    }
}

public abstract class MockableDbSetWithExtensions<T> : DbSet<T> where T : class
{
    public abstract void AddOrUpdate(params T[] entities);
    public abstract void AddOrUpdate(Expression<Func<T, object>> identifierExpression, params T[] entities);
}
```

Bu metod 2 değişkenli [Tuple](https://docs.microsoft.com/tr-tr/dotnet/api/system.tuple?view=netframework-4.7.2 "Tuple") döndürüyor. **MockableDbSetWithExtensions** nesnesi ile **AddOrUpdate** metodlarını test ediyorum. Bunun yerine sadece DbSet nesnesini de kullanabilirsiniz. 

**Kullanımı**

```csharp
var fakeData = new List<MyDbSet>()
var (mockDbContext, mockDbSet) = Utility.MockDb<MyContext, MyDbSet>(fakeData);
mockDbContext.Setup(c => c.MyDbSet).Returns(mockDbSet.Object);
```

Bu tanımlamaları yaptıktan sonra test etmek istediğimiz metodun ait olduğu sınıfın yapıcı metoduna parametre olarak DbContext nesnemizi geçmemiz gerekiyor. DI kullanılıyorsa manuel olarak geçmemize gerek yok. Eğer yapımızı çok fazla değiştirmek istemiyorsanız yapıcı metoda parametre geçmek biraz daha kolay olacaktır.
