---
published: true
layout: post
title: .Net Projelerinde Otomatik Versiyonlama
date: '2016-10-22 15:27:39 -0500'
categories:
  - .Net
tags:
- otomatik
- versiyonlama
---
Yeni bir .Net projesini Visual Studio ortamında oluşturduğumuzda projenin özellikleri altında AssemblyInfo adlı bir dosya da varsayılan olarak oluşturulmaktadır. Bu dosyada projenin derleme bilgileri (projenin adı, versiyon bilgileri gibi) tutulur. Biz de bu dosyada yer alan AssemblyVersion özelliğine, SVN revision numarasını otomatik atayacağız.
<!--more-->
Öncelikle .Net projelerinde versiyonlama standartını görelim;

Versiyon ({**Major**}.{**Minor**}.{**Build Number**}.{**Revision**}) şeklindedir.

**Major Version:** Büyük yeniliklerde manuel olarak artırılır.
**Minor Version:** Küçük değişikliklerde manuel olarak artırılır.
**Build Number:** Derme numarası otomatik olarak atanacak.
**Revision:** Her commit sonrası SVN tarafından otomatik gelen değer.

Kısa bir açıklamadan sonra şimdi işe koyulabiliriz.

Versiyonlama sistemi için açık kaynak kodlu olan [MSBuild Community Tasks](https://github.com/loresoft/msbuildtasks) kütüphanesini kullanacağız.

Nuget:

```
PM> Install-Package MSBuildTasks
```
Paketi ekledikten sonra projemizin .csproj dosyasını açıp aşağıdaki özellikleri eklemeliyiz.

<Target Name="BeforeBuild">
<SvnVersion LocalPath="$(MSBuildProjectDirectory)" ToolPath="$(ProgramFiles)\\VisualSVN\\bin">
<Output TaskParameter="Revision" PropertyName="Revision" />
</SvnVersion>
<FileUpdate Files="Properties\\AssemblyInfo.cs" Regex="(\\d+)\\.(\\d+)\\.(\\d+)\\.(\\d+)" ReplacementText="$1.$2.$3.$(Revision)" />
</Target>

Not: Kullandığımız SVN programının bulunduğu yolu belirtmeliyiz ve SVN programının tam yüklü olması gereklidir.

Projemizi derlediğimiz zaman AssemblyVersion bilgisinin x.x.x.Revision şeklinde olduğunu göreceğiz.

Bu yazı da bu kadar olsun artık. Kısa ve öz. 🙂

> Olur ya bir gün görüşemezsek iyi günler, iyi akşamlar ve iyi geceler…
