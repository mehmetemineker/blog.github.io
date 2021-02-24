---
published: true
layout: post
title: Stryker Mutator ile Mutation Testing ve Azure Pipelines Entegrasyonu
date: '2021-02-24 15:27:39 -0500'
thumbnail: /gallery/thumbnails/chess.jpg
categories: Devops
tags:
  - devops
---
Yazmış olduğumuz bir unit testin kalitesini anlamak için, testi yazılan kod parçacığı üzerinde değişiklikler yaptığımızda, unit testin sonucuna bir etkisi olup olmadığını analiz ederek kalitesini ve kapsamını kontrol edebiliriz. Bu şekilde yapmış olduğumuz işleme bir nevi **"testin testini yapmak"** diyebiliriz. Bu yapılan işleme **Mutation Testing** denilmektedir. Kod parçacıklarının mutasyona uğratılması sonucunda kalite ve kapsam analizi yapılmaktadır. Yeni unit testler yazmak ve mevcut unit testlerin kalitesini değerlendirmek için Mutation Testing yapılmalıdır. 
<!--more-->
Mutation Testing, bir kod parçacığını küçük şekillerde değiştirmeyi amaçlar. Bu değişiklikler, aritmetik operatör, eşiklik veya mantıksal ifadelerin değiştirilmesi gibi işlemlerdir. Değişikliklerin sonucunda oluşan her bir yeni kod parçacığına **"Mutant"** denilir. Burada beklenilen durum, unit test çalıştığı zaman oluşan mutantın ölmesidir. Eğer mutant ölmez ise unit testimizin kapsamadığı bir durum var demektir. Kod parçacığı üzerinde ileride yapılacak bir değişiklik muhtemelen unit testimizi etkilemeyecektir. Mutation Testing manuel olarak yapılabileceği gibi otomatik olarak araçlar kullanılarak da yapılabilir.

Mutation Testing temelde 3 türe ayrılabilir. Bunlar; ifade mutasyonu (statement mutation), karar mutasyonu (decision mutation) ve değer mutasyonudur (value mutation).

> Bilgi
Mutation Testing ilk olarak Richard Lipton tarafından 1971'de önerildi. Bir Mutation Testing aracının ilk uygulaması, 1980 yılında Timothy Budd tarafından yapıldı.

Otomatik olarak Mutation Testing yapmamızı sağlayan araçlardan bir tanesi Stryker Mutator'dır. Stryker Mutator ile kod parçacıklarını mutasyona uğratarak yani değiştirerek mutation testing işlemini yapmamızı kolaylaştıran bir araçtır. Bu araç sayesinde, daha kaliteli ve dayanıklı, kapsamı geniş unit testler yazabiliriz. .NET desteği ile CLI üzerinden testimizi analiz ettirebiliriz. 

Bir diğer araç ise [PIT Testing](https://pitest.org/). [PIT Testing ile SonarQube](https://www.triology.de/en/blog-entries/mutation-testing-sonarqube) üzerinden de analiz sonuçlarını görebiliriz. Stryker Mutator ile de Azure Pipelines entegrasyonu sayesinde SonarQube ihtiyacı olmadan da analiz sonuçlarını görmemiz mümkün.

İşin hikaye kısmını çok fazla uzatmadan artık örneğimize geçelim: 

## Stryker Mutator Kurulumu ve Kullanımı

Projemizin solution yapısı

Basit matematiksel işlemler yapan, **Calc** isimli bir class oluşturalım. Şimdilik sadece toplama işlemini eklememiz yeterli olacaktır. Unit Test Case'i oluşturmak amacıyla "Validate" isimli bir metod yazarak sadece pozitif tamsayılar üzerinde işlem yapılmasını sağladım. NUnit kullanarak unit test yazacağız.

```csharp
public class Calc
{
    public double Sum(int x, int y)
    {
        Validate(x, y);
        return x + y;
    }

    public void Validate(int x, int y)
    {
        if (x < 0 || y < 0)
        {
            throw new ArgumentException("Only positive integers can be used.");
        }
    }
}
```

Aşağıda da Calc clasımız için yazdığımız unit testleri görebilirsiniz.

```csharp
public class CalcTest
{
    Calc _testClass;

    [SetUp]
    public void Setup()
    {
        _testClass = new Calc();
    }

    [TestCase(0, 0, 0)]
    [TestCase(1, 0, 1)]
    [TestCase(1, 1, 2)]
    [TestCase(2, 1, 3)]
    [TestCase(9, 4, 13)]
    public void SumTest(int x, int y, int expectedResult)
    {
        var actualResult = _testClass.Sum(x, y);
        Assert.AreEqual(expectedResult, actualResult);
    }
}
```

Test Explorer üzerinden unit testlerimizi çalıştırdığımızda oluşan 5 case için tüm testlerin başarılı olduğunu gördük.

Buraya kadar olan kısım standart unit test geliştirme adımlarıydı. Siz de basit bir proje üzerinden denemeler yapabilirsiniz. 

Şimdi sıra geldi Stryker Mutator kurulumuna. Stryker Mutator kurulumunu gerçekleştirebilmek için 2 yöntem var. Bunlardan bir tanesi Nuget ile kurulumu diğeri ise .NET CLI üzerinden kurulumudur. Ben CLI üzerinden kurulumu tercih ettim. Global yükleyerek de tüm tüm projelerimde kullanıma hazır hale getirmiş oldum. Tabi bunun için "dotnet CLI" bilgisayarımızda yüklü olmalı.

Aşağıdaki komut ile Stryker Mutator global olarak bilgisayarıma yükleyebiliriz.

```csharp
dotnet tool install -g dotnet-stryker
```

Kurulumdan sonra **dotnet-stryker** komutu ile sağlamasını yapabiliriz.

Stryker Mutator'ı kullanıma hazır hale getirdikten sonra unit testlerimiz üzerinde analiz yapmaya başlayabiliriz.

Stryker Mutator, Unit Test projemizin bulunduğu dizinde çalıştırılmalıdır. Bu sayede ekstra parametreler girmek zorunda kalmayız. Developer Powershell'i Unit Test projemizin bulunduğu dizini göstererek başlatalım. 

Bundan sonrası ise çok kolay, sadece **dotnet-stryker** komutunu yazıp Enter tuşuna bastığımızda mutasyon işlemlerini başlatmış oluruz.

Mutasyon işlemleri bittiğinde ise yukarıdaki gibi bir ekran görüntüsü ile karşılaşırız. Burada toplan test case'i, oluşturulan mutant sayısını ve bizim için daha önemli olan mutasyon skorunu ve rapor çıktısını görüyoruz.

Örneğin, Calc sınıfımız için yazdığımız unit testler için mutasyon skoru %75 olarak belirlenmiş. Bu da şu demek oluyor: oluşturulan 8 mutanttan 6 tanesini yazmış olduğumuz unit testler öldürdü. 
Aşağıda da oluşturulan html formatındaki raporun ekran görüntüsünü görebilirsiniz.

"Calc.cs" sayfasını açtığımızda, 6 mutantın öldüğünü, 1 tanesinin hayatta kaldığını ve 1 tanesinin de kapsanmadığını görmekteyiz. 

Şimdi sırayla bu sorunları çözelim: 

**1. Kodun Unit Test ile kapsanmasını sağlayalım:**

	Kodumuzu incelediğimizde 15.satırdaki şartı sağlayan x veya y değeri sıfırdan küçük gönderilirse 17.satırın kapsanmasını sağlayabiliriz. Bunun için "Sum" metodu üzerinden unit test yazabileceğimiz gibi "Validate" metodu için ayrı bir unit test de yazabiliriz. Ben daha anlaşılır olması adına ayrı metod yazmayı tercih ettim.
    
```csharp
        [TestCase(-1, -1)]
        public void Validate_Only_Positive_Integers_Test(int x, int y)
        {
            var exception = Assert.Throws(Is.TypeOf<ArgumentException>(), () => _testClass.Validate(x, y));
            Assert.AreEqual("Only positive integers can be used.", exception.Message);
        }
```

Validate metodunu incelediğimizde x veya y değişkenlerinin negatif gelmesi durumunda exception fırlattığını görürüz. Unit Test'imizde de **ArgumentException** gelmesini ve mesajın da beklenilen içeriğe sahip olmasını kontrol etmiş olduk. Eğer mesajın değerini kontrol etmezsek yeni bir mutantın oluşmasına neden oluruz. 
Tekrar **dotnet-stryker** komutu ile rapor aldığımızda durum aşağıdaki gibi olacaktır:

Gördüğünüz üzere artık kapsanmayan kodumuz kalmadı ancak mutantı hala öldüremedik.

**2 Hayatta kalan mutantı öldürelim:**

	Yukarıda ekran görüntüsünde gördüğünüz 1 numaralı kırmızı kutu simgesine tıkladığımızda aşağıdaki gibi gözükecektir. Burada oluşturulan mutant ile [mantıksal operatör](https://stryker-mutator.io/docs/stryker-net/Mutators#logical-operators) değiştirilmiş ve bu değişikliğe rağmen unit testimiz hiçbir sorun çıkarmadan çalışmış. Bu da bizim istediğimiz bir durum değil.

"Validate" metodu için yazmış olduğumuz Unit Test'imizin TestCase'inde x ve y değişkenlerine -1 göndermiştik. Ancak mantıksal operatör değiştiğinde x ve y değişkenlerine göndermiş olduğumuz -1 değeri oluşan mutantın hayatta kalmasına neden olmaktadır. Test Case'ler arasına x ve y değişkenlerine sırasıyla (-1,-1) - (-1,1) ve (1,-1) değerlerini gönderdiğimizde, mantıksal operatör değişikliğinden ortaya çıkan mutantın ölmesini sağlayacaktır. 

```csharp
[TestCase(-1, -1)]
[TestCase(1, -1)]
[TestCase(-1, 1)]
public void Validate_Only_Positive_Integers_Test(int x, int y)
{
    var exception = Assert.Throws(Is.TypeOf<ArgumentException>(), () => _testClass.Validate(x, y));
    Assert.AreEqual("Only positive integers can be used.", exception.Message);
}
```

Unit Test'mizin son hali yukarıdaki gibi olacaktır. Bu değişiklikler sayesinde kod ileride parçacığı üzerinde yapılacak değişikliklerin Unit Test'lerimizi etkileme ihtimalini artımış oluyoruz. 

Yeniden **dotnet-stryker** komutunu çalıştırdığımda artık tüm mutantların öldürüldüğünü görebiliriz.

Şimdi de son dokunuşları yapalım artık :) Azure Pipelines üzerinde, Stryker Mutator ile almış olduğumuz raporu CI sürecinde görmemizi sağlayalım. 

## Azure Pipelines Entegrasyonu

Burada pipeline sürecinin halihazırda olduğunu varsayarak anlatmaya çalışacağım. Stryker Mutator'dan rapor alabilmek için aşağıdaki gibi 3 agent job tanımının olması gerekiyor. İlki Stryker Mutator kurulumunu, ikincisi çalıştırılması ve üçüncüsü de oluşturulan raporun publish edilmesi. 

Bu üç adımın YAML içerikleri şu şekilde olmalıdır:

**1. Install dotnet-stryker**

```csharp
steps:
- task: DotNetCoreCLI@2
  displayName: 'Install dotnet-stryker'
  inputs:
    command: custom
    custom: tool
    arguments: 'install dotnet-stryker --tool-path $(Agent.BuildDirectory)/tools'
```

**2. Run dotnet-stryker**

```csharp
steps:
- powershell: '$(Agent.BuildDirectory)/tools/dotnet-stryker'
  workingDirectory: StrykerMutatorSample.Calc.Test
  displayName: 'Run dotnet-stryker'
```


**3. Publish Mutation Test Report**

Bu adımda önemli olan, Mutation Report Publisher eklentisinin yüklenmesi.

```csharp
steps:
- task: stryker-mutator.mutation-report-publisher.44d9cfb7-7efd-48e2-b2ae-4750950271be.PublishMutationReport@0
  displayName: 'Publish Mutation Test Report'
```

Azure Pipelines kısmında yapacaklarımız sadece bu kadar. Pipeline'ımızı Run ettiğimizde aşağıdaki görseldeki gibi Mutation Report sekmesi gelecektir. Bu sekmenin detayında rapor sonucunu görebiliriz.

Faydalı olması dileğiyle, başka yazılarda görüşmek üzere :)
