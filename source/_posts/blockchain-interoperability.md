---
published: true
layout: post
title: Blockchain — Interoperability
date: '2021-01-18 12:00:00 -0500'
thumbnail: /gallery/thumbnails/blockchain.jpeg
categories:
  - Genel
tags:
  - blockchain
  - blockchain-interoperability
---
## Blockchain Nedir?
Basit bir ifadeyle; şifrelenmiş bir şekilde işlem takibi sağlayan ve merkezi olmayan büyük bir veritabanı olarak tanımlayabiliriz. Bu büyük veritabanında veriler bloklar halinde tutulur. Hiçbir şekilde verilerin değiştirilmesi söz konusu değildir. Sadece okuma ve yazma işlemleri yapılır. Eğer hatalı bir işlem yapıldıysa, bu hatalı işlem de bloklara eklenir. Çeşitli verilerin barındırıldığı bloklar bir araya geldiğinde block zinciri meydana gelir. Örneğin, para transfer işlemlerinde her adım bir bloğu karşılık gelir. Bu adımlar takip edilerek paranın alıcılar arasında nasıl bir yol izlediği görülür. Blockchain sayesinde, bir aracıya ihtiyaç duyulmayan ve güvenin maksimum edildiği bir ortam sağlanmış olur.

<!--more-->

{% asset_img image2.png %}
Şekil.1 — Örnek bir Blockchain

## Tarihçe
Biraz işin tarihçesinden bahsedelim; blockchain teknolojisi, 1980 yılında Ralph Merkle’in meşhur makalesi ile başlayan çözülmesi çok zor kripto para ve şifreli ağlar ile başladı. 1991 yılına gelindiğinde ise W. Scoot Stornetta ve Stuart Haber isimli iki bilim adamının dijital belgelerin zaman damgası ile karıştırılamaz ya da geriye dönük olarak değiştirilemez şekilde imzalanması fikri konuya dahil oldu. Bu gelişmelerin üzerine 1992 yılında Ralph Merkle’nin bahsetmiş olduğu Merkle Ağacı ya da Hash Ağacı olarak isimlendirilen yapıdan faydalanılarak birtakım belgelerin bir blok şeklinde bir arada toplanması sağlanmış ve bu durum sistemi daha verimli hale getirmiştir. Ancak tüm bu gelişmelere rağmen bu teknoloji kullanılmamış ve 2004 yılında sonlanmış.

2008 yılının son çeyreğine gelindiğinde, Lehman Brothers’ın iflasından sadece iki ay sonra, Bitcoin olarak isimlendirilen merkezi olmayan, eşler arası (P2P) dijital para sistemini açıklayan bir manifesto, Satoshi Nakamoto takma isimli kişi veya kişiler tarafından yayınlandı. 3 Ocak 2009 tarihinde Bitcoin’in ilk bloğu (Genesis) Satoshi Nakamoto tarafından oluşturuldu ve bu işlem ona 50 Bitcoin kazandırdı.

## Blockchain’in Temel Öğeleri
### Dağıtık Büyük Veritabanı
Ağdaki tüm katılımcılar, bu veritabanına ve değişmez işlem kayıtlarına erişebilirler. Paylaşılan bu veritabanında işlemler sadece bir kaydedilir.

### Değişmez Kayıtlar
Bir işlem, paylaşılan veritabanına kaydedildikten sonra hiçbir katılımcı tarafından değiştirilemez veya kurcalanamaz. Eğer bir işlem kaydı hata içeriyorsa, bu değiştirilemeyeceği için hatayı tersine çevirmek gerekir, bunun için yeni bir işlem eklenmelidir ve her iki işlem de görünür hale gelecektir.

### Akıllı Sözleşmeler
İşlemleri hızlandırmak için, akıllı sözleşme adı verilen bir dizi kural, Blockchain’de depolanır ve otomatik olarak yürütülür. Bir akıllı sözleşme, bloklarla ile ilgili olan her türlü şartı içerebilir.

### Interoperability
(Farklı Blockchain Ağlarının Birlikte Çalışabilmesi)
Günümüzde, blok zincirlerinin sayısı gitgide artıyor. Bununla birlikte bu blok zincirleri kendi izole ortamlarında çalışmaya ve büyümeye devam ediyor. Bir block zincirinin başka bir blok zincirindeki veriye olan ihtiyacı Interoperability kavramını ortaya çıkarmıştır. Buradan hareketle, Interoperability, kısaca, blockchain ağları arasında bilgileri kolayca paylaşma ve işlem yapma kabiliyetidir diyebiliriz. Başka bir ifadeyle, birlikte çalışabilirlik, tüm blockchain ağlarında serbestçe bilgi paylaşma yeteneğidir. En genel anlamıyla ise, Interoperability, farklı bilgi sistemlerinin, cihazların ve uygulamaların verilere, kurumsal, bölgesel ve ulusal sınırlar içinde ve ötesinde, koordineli bir şekilde, bilgiye zamanında, kesintisiz bir şekilde taşınabilirlik sağlama, erişme, bütünleştirme ve işbirliği içinde kullanma becerisidir diyebiliriz.

Tamamen birlikte çalışabilir bir ekosistemde, başka bir blok zincirinden bir kullanıcı, blok zincirine bir şey gönderirse, o kullanıcıyı kolayca tanıyıp ve etkileşime geçebiliriz.

Blok zincirlerinin birlikte çalışması bir nevi onların birleşmesi demektir. Bu birleşmedeki amaç, birlikten güç doğmasını sağlamak. Yani blok zincirlerindeki kullanıcı sayısını çoğaltmak. Birleşme sonucunda kullanıcılara pek çok pratik fayda sağlanır ve kullanıcı adaptasyonu artırılır.

Hali hazırda, blok zincirleri arasında birlikte çalışabilirliği sağlamak için üç teknik mevcut. Bunlar; Notary schemes, Sidechains / Relays ve Hash-Locking teknikleridir.

**Notary schemes (Noter şemaları)**, blok zincirleri arasında güvenilir bir varlık kullanılmaktadır. Buradaki noterin rolü, blok zincirinde bir olayın gerçekleştiğini doğrulamak ve bu bilgileri başka bir blok zincirine aktarmaktır. Noter şemasının bize sağladığı en büyük fayda, basitliğidir. Çünkü, blok zincirinin temel uygulamasında herhangi bir değişikliğe ihtiyaç duyulmaz. Dezavantajı ise, notere güvenmek zorunda olmamızdır.

**Sidechains (Yan zincirler) / Relays**, diğer blok zincirlerinin durumu hakkında bilgileri doğrulama ve işleme yeteneği sağlar. Bu işlem, teknik olarak, Simpliﬁed Payment Veriﬁcation (Basit Ödeme Doğrulaması) kullanılarak gerçekleştirilir. Simpliﬁed Payment Veriﬁcation, tüm defteri indirmek zorunda kalmadan başka bir blok zincirinde bir işlem olup olmadığını doğrulamak için blok başlıkları ve Merkle ağaçları kullanan bir sistemdir. Verilerin harici olarak bir blok zincirinden diğerine aktarılması gerekse de, bu işlem için gevene ihtiyaç duyulmaz.

{% asset_img image1.png %}
Şekil.2 — Sidechain (Yan zincir)

Bilindiği üzere, blok zincirlerinin kriptografik özellikleri nedeniyle, verilerin kurcalandığını anlamak kolaydır. Ayrıca, iki blok zinciri arasındaki değiş tokuşlar, “Pegged sidechains” ile etkinleştirilebilir. Bu şema, varlıkların bir blok zincirinde kilitlendiğine dair bir kanıt oluşturur, böylece ikinci bir blok zincirinde aynı miktarda işlem yapılabilir. Bunun yanında, bir yan zincir oluşturmak için akıllı sözleşme yetenekleri de gerekli. Tam birlikte çalışabilirlik sağlamak için, her blok zinciri, diğer tüm blok zincirlerini desteklemesi gereken bir yan zincire ihtiyaç duyar. Büyüyen bu sistemin bakımı doğal olarak büyük bir zorluk haline geliyor.

**Sidechains Avantajları;**
En önemli iki avantajları var. Sahip oldukları ilk avantaj, sonsuz olmalarıdır. Her seferinde bir tane kullanmanız gerektiğinde yeni bir Sidechain oluşturmanız gerekmez. Bir Sidechain oluşturulduktan sonra korunur ve ana zincirden belirli bir görevi yapan herkes tarafından kullanılabilir.
İkinci avantajı ise, farklı kripto para birimleri arasında etkileşim kurmayı kabul etmeleridir. Geliştiriciler, ana zincirde yayınlanmadan önce yazılım sürümlerini ve beta coin sürümlerini test etme şansına sahip olurlar.

**Sidechains Dezavantajları;**
Yan zincirlerin korunmasını sağlamak için madencilere ihtiyaç duyulur. Bu, yeni Sidechain’lerin düzenlenmesini pahalı bir girişim haline getiriyor. Herhangi bir yeni Sidechain oluşturulmadan önce büyük miktarlarda yatırım yapılmalıdır.

**Hash-Locking**, iki işlem veya aracısı olmayan daha fazla taraf arasındaki ticarete izin veren bir tekniktir. Bir başka ifadeyle, Lightning Networks’ten türetilen bir karma değerin düz metnini tahmin etmek için bir süre kilitleyerek ödeme yapmak için bir mekanizmadır.Çoğu senaryoda zincirler arası varlık alışverişini ve zincirler arası varlık yayılımını desteklese de, zincirler arası varlık taşınabilirliği ve zincirler arası akıllı sözleşme için kullanılamaz. Bu birlikte çalışabilirlik için en pratik teknik yöntemdir, ancak işlevsellik açısından da en sınırlayıcı olanıdır, sadece dijital varlık değişimini destekler. Bu teknik günümüzde çoğu merkezi olmayan borsa tarafından kullanılıyor.

**Hash-Locking dezavantajı;**
Blok zincirinin Hash-TimeLock Sözleşmesi (HTLC) adı verilen bu tür akıllı sözleşmeyi desteklemesi gerektiğidir. Ayrıca, işlemler esnasındaki bekleme süresi taraflar arasında düşen veya artan fiyatlar üzerinde spekülasyon yapılarak kullanılabilir.

## Interoperability Seviyeleri
**Foundational Level (Temel Seviye):**

Bir sistem veya uygulamanın güvenli bir şekilde diğerine veri iletmesi ve diğerinden veri alması için gereken bağlantılar arası gereksinimleri belirler.

**Structural Level (Yapısal Seviye):**

Yorumlama için veri alanı seviyesinde olmak üzere veri alışverişinin biçimini, sözdizimini ve organizasyonunu tanımlar.

**Semantic Level (Anlamsal Seviye):**

Ortak kullanılan modeller ve kodlama sağlar, veri halka açık değer kümelerinden standart tanımlamalar ve kodlama kelime dağarcığı kullanımı da dahil olmak üzere, kullanıcıya ortak bir anlayış ve anlam sağlar.

**Organizational Level (Örgütsel Seviye):**

Kuruluşlar, kurumlar ve bireyler arasında güvenli, kesintisiz ve zamanında iletişim ve veri kullanımını kolaylaştırmak için yönetişim, politika, sosyal, yasal ve organizasyonel hususları içerir. Bu bileşenler paylaşılan onay, güven ve entegre son kullanıcı süreçleri ve iş akışlarını mümkün kılar.

## Interoperability Neden Önemlidir?
Blok zincirinde, birlikte çalışabilirlik, kullanıcı dostu bir deneyim sağlar ve böylece benimsenmeyi artırır. Cüzdanlar aracılığıyla çok tokenli işlemler sağlar ve kullanıcıların tek bir pencerede birden fazla para birimiyle çalışmasını sağlamak için zincirler arası bilgi alışverişini sağlar. Birlikte çalışabilirlik olmadan, bağlantısız sistemler iletişim kurmadan veya işlem yapmadan birbirleriyle birlikte çalışan bağımsız silolar olacaktır.

Birlikte çalışabilir bir ekosistem, ayrı blok zinciri ağlarından gelen birden çok kullanıcının, alınan bilgileri tercüme etmek ve kesinti yaşamak için kaynak harcamadan etkileşim kurmasını sağlar. Bilgilerin işlenmesini ve buna göre bir yanıtın gönderilmesini sağlar.

Blockchain birlikte çalışabilirliğinin temel faydaları:

- Katılımcı blok zincirleri arasında kesintisiz bilgi alışverişi sağlanır.
- Akıllı sözleşmeler zahmetsizce yapılabilir.
- Blok zinciri ekosistemi içinde ortaklıklar geliştirilebilir.
- BT personeli, bazı önde gelen standartlar hakkında iyi bir anlayış geliştirebilir.

## Blockchain Ağlarının Dış Sistemler ile Entegrasyonunda Dikkat Edilmesi Gerekenler

Blok zinciri ağlarının üç türü vardır, bunlar; Public Blockchain (Genel Blokzincir), Private Blockchain (Özel Blokzincir) ve Federated/Consortium Blockchain (Birleşik / Konsorsiyum Blokzincir)’dir.

**Genel bir blokzincir**, Bitcoin tarafından tanıtıldığı gibi hepimizin bildiği ve sevdiği standart blokzincir ağıdır. Adından da anlaşılacağı gibi, ağ herkese açıktır ve merkezi bir yönetim yoktur. Sistem şu şekilde çalışır: Herkes ağa erişebilir ve tamamen merkezi olmayan, izinsiz ve açık kaynaklı bir sistem olduğu için blok zincirini okuma, yazma ve denetlemeye katılabilir. Ayrıca, herkes belirli bir noktada işlem oluşturabilir, doğrulayabilir ve görüntüleyebilir. İşlemleri doğrulamak için, karar alma Çalışma Kanıtı (PoW) veya Kanıt Kanıtı (PoS) gibi bir konsensüs algoritması ile gerçekleşir. Ağ halka açık olmasına rağmen, katılımcıların kimliği takma addır. Bununla birlikte, katılımcıların anonimliği, hem avantaj hem de dezavantajdır, çünkü bu, kötü niyetli işlemleri içerebilir ve sistemin itibarını tehdit edebilir. Halka açık blokzincir ağını kullanan blokzincir uygulamalarına örnek olarak Bitcoin, Litecoin, Ethereum ve bilinen diğer tüm alternatif dijital para birimleri verilebilir.

**Özel bir blokzincir**, bir kişiye veya kuruluşa ait izin verilen ve kapalı bir sistemdir. Bu tür sistemde, sadece tek yetkili ağ blok zincirini okuyabilir, yazabilir ve denetleyebilir. Merkezi yetkili ayrıca, yalnızca belirli noktalarda işlem yapmak, doğrulamak ve görüntülemek için seçilen düğümlere izinli erişim sağlayabilir. Esasen özel olduğu için konsensüs, sorumlu kişinin takdirine bağlı olarak veya bir oylama veya çok partili konsensüs algoritması ile elde edilir. Özel blokzincir ağları genellikle veritabanı yönetimi ve denetimi gibi tek bir özel şirketin dahili sistemlerine uygulanır.

Özel blok zincirleri, kriptografik denetim ve bilinen kimliklerin avantajını sunar. Bu tür bir sistemin doğası, verileri kurcalamayı zorlaştırır, ancak işlemleri doğrulamayı kolaylaştırır, böylece sistemi daha hızlı ve daha uygun maliyetli hale getirir.

Özel bir blokzincir ağına dayanan blokzincir uygulamalarına örnek olarak Bankchain, Monax ve Hyperledger verilebilir.

Bir birleşik / konsorsiyum blokzincir, tek özerkliğin kaldırıldığı izin verilen ve gruba ait bir sistemdir ve bunun yerine izinler bir grup şirkete veya bireye verilir. Bu tip sistemde, blok zincirini okumak, yazmak ve denetlemek için önceden seçilmiş düğümlere erişim sağlayacak birden fazla merkez vardır. Yalnızca konsorsiyum üyeleri işlemleri yapabilir, doğrulayabilir ve inceleyebilir. Konsensüs, kuralları katılımcıların anlaşmasına bağlı olan bir oylama veya çok partili konsensüs algoritması ile elde edilir.

**Birleşik / konsorsiyum blokzincirleri**, özel blok zincirlerinin sunduğu aynı faydaları, yani işlemlerin etkinliği ve gizliliği sunar. Bununla birlikte, sadece bir şirkete güç konsolidasyonunu ortadan kaldırma avantajı sağlar. Bu tip blokzincir ağı, organizasyonel işbirliği için idealdir.

Özetle, özel ve birleşik / konsorsiyum blokzinciri ağlarının her ikisi de, işlem hızı açısından genel blokzincirlerine göre bir avantaj sunmaktadır. Bununla birlikte, bu ağların hesap verebilirlik ve genel yön gibi kendi sınırlamaları da vardır. Bu yeni blokzinciri ağlarının sundukları, orjinal blokzinciri çerçevesini kullanmaya devam ederken, haklar ve erişim yönetimi için alternatif seçenekler vardır.

Diğer bir taraftan, internet dünyasının genelinde görülen güvenlik sorunları blokzinciri sistemleri içinde de geçerlidir. Siber ataklar blokzincirlerini tehdit etmektedir. Örneğin ağ denetiminin büyük çoğunluğu siber saldırı sonucu kötü niyetli bireylerin eline geçerse işlemlerin sıralamasının değiştirilmesi veya bazı işlemlerin kasıtlı olarak işlem dışı bırakılması sağlanabilir veya kişisel veriler tehlikeye girebilir.

Birlikte çalışabilirlik konusuna, geliştiriciler açısından bakıldığında; geliştiriciler daha fazla özgürlük için bir blokzinciri oluştururken standartları genellikle yok sayarlar, ancak bu birlikte çalışabilirlik ve iletişim sorunlarına neden olabilir. Birlikte çalışabilirlik için en büyük zorluk, uzlaşma modelleri, akıllı sözleşme işlevselliği ve işlem şemaları gibi farklı parametrelere sahip çoklu blokzinciri ağlarıdır. Bu durumu düzeltmek için devam etmekte olan birkaç standartlaştırma çabası var. IBM ve Microsoft, birlikte çalışabilir bir blok zinciri sağlamak için GS1 tarafından geliştirilen mevcut bir standardı kullanıyor. Bununla birlikte, Enterprise Ethereum Alliance sıfırdan bir standart geliştirmiştir.

Blokzincirinin birlikte çalışabilirlik standartlaştırma çabaları iki gruba ayrılabilir:

**Open protocols (Açık protokoller):** üçüncü bir taraf olmadan blok zincirleri arasında iletişime izin veren standart protokoller veya gerekli güven süreçleri. En iyi bilinen açık protokol Atomic takastır.

**Multi-chain frameworks (Çok zincirli çerçeveler):** Genellikle “blokzincirlerinin interneti” olarak adlandırılır, bunlar açık protokollerden daha karmaşıktır. Blok zincirler standartlaştırılmış bir ekosistemin parçası olabilir ve bir birbirleriyle veri ve değer aktarımı yapabilir.

## Kaynaklar
https://www.ibm.com/tr-tr/blockchain/what-is-blockchain
https://startuphukuku.com/blockchain-nedir/
http://www3.weforum.org/docs/WEF_A_Framework_for_Blockchain_Interoperability_2020.pdf
https://bkm.com.tr/wp-content/uploads/2015/06/Sorularlablockchain.pdf
https://bkm.com.tr/wp-content/uploads/2019/08/15082019_kitap.pdf
https://cointral.com/tr/blockchain-nedir/
https://medium.com/@ahmetseyhan/blockchain-teknolojisine-giri%C5%9F-4d2cbb452342
https://www.wanchain.org/blog/the-importance-of-blockchain-interoperability/
https://files.ifi.uzh.ch/CSG/staff/scheid/extern/publications/LCN2019-Bifrost.pdf
https://medium.com/@harish_6956/sidechain-blockchain-641da3474ab3
https://medium.com/coinmonks/intervalues-cross-chain-technology-and-multi-chain-integration-will-realize-value-interconnection-698cd04b9b5f
https://www.himss.org/what-interoperability
https://www.primafelicitas.com/the-challenges-of-blockchain-interoperability/
https://www2.deloitte.com/content/dam/Deloitte/tr/Documents/consulting/blokzincir-potansiyelinin-kesfi.pdf
https://www.infineon.com/dgdl/Infineon-whitepaper-Bringing-security-to-the-world-of-blockchain-Whitepaper-v01_00-EN.pdf?fileId=5546d4626afcd350016b2d605e927265
https://www.cnnturk.com/2010/turkiye/03/04/50.milyon.kisinin.kimligi.internette.iddiasi/566233.0/index.html
