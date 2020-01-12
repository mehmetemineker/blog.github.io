---
published: true
layout: post
title: MSSQL Server 2014 LocalDB Connection String
date: '2017-03-25 15:27:39 -0500'
categories:
  - .Net
  - Veritabanı
tags:
- mssql
---
Eski projelerimin bazılarında **SQL Server 2012** kullanarak LocalDB bağlantısını **(LocalDB)\\v11.0** şeklinde yaparak gerçekleştiriyordum. **SQL Server 2014** te ise bu bağlantı şekli değişmiş ve artık **(LocalDB)\\MSSQLLocalDB** olarak bağlantıyı sağlayabildim.
<!--more-->
Örnek connection stringler şu şekilde;

**SQL Server 2012 LocalDB Connection String**

```xml
<connectionStrings>
  <add name="DBContext" connectionString="Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;" providerName="System.Data.SqlClient" />
</connectionStrings>
```

**SQL Server 2014 LocalDB Connection String**

```xml
<connectionStrings>
  <add name="DBContext" connectionString="Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;" providerName="System.Data.SqlClient" />
</connectionStrings>
```

> Olur ya bir gün görüşemezsek iyi günler, iyi akşamlar ve iyi geceler…