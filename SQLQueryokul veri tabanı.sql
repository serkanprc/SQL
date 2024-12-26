
CREATE TABLE [dbo].[bolumler](
	[bolumno] [bigint] NOT NULL,
	[bolumad] [nvarchar](45) NOT NULL,
	[fakulteno] [bigint] NOT NULL,
 CONSTRAINT [PK_bolumler] PRIMARY KEY CLUSTERED 
(
	[bolumno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dersler]    Script Date: 28.11.2022 13:55:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dersler](
	[derskodu] [bigint] NOT NULL,
	[dersadi] [nvarchar](45) NOT NULL,
	[teorikkredi] [bigint] NOT NULL,
	[uygulamakredi] [bigint] NOT NULL,
 CONSTRAINT [PK_dersler] PRIMARY KEY CLUSTERED 
(
	[derskodu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[fakulteler]    Script Date: 28.11.2022 13:55:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fakulteler](
	[fakulteno] [bigint] NOT NULL,
	[fakultead] [nvarchar](45) NOT NULL,
 CONSTRAINT [PK_fakulteler] PRIMARY KEY CLUSTERED 
(
	[fakulteno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[notlar]    Script Date: 28.11.2022 13:55:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[notlar](
	[ogrno] [bigint] NOT NULL,
	[derskodu] [bigint] NOT NULL,
	[vize] [bigint] NOT NULL,
	[final] [bigint] NOT NULL,
	[but] [bigint] NOT NULL,
	[durum] [nvarchar](45) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ogrenciler]    Script Date: 28.11.2022 13:55:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ogrenciler](
	[ogrno] [bigint] NOT NULL,
	[ograd] [nvarchar](50) NOT NULL,
	[ogrsoyad] [nvarchar](50) NOT NULL,
	[cinsiyet] [nvarchar](50) NOT NULL,
	[dogumtarihi] [date] NOT NULL,
	[bolumkod] [bigint] NOT NULL,
	[adres] [nvarchar](50) NULL,
 CONSTRAINT [PK_ogrenciler] PRIMARY KEY CLUSTERED 
(
	[ogrno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[bolumler] ([bolumno], [bolumad], [fakulteno]) VALUES (10, N'Sýnýf Öðretmenliði', 1)
INSERT [dbo].[bolumler] ([bolumno], [bolumad], [fakulteno]) VALUES (15, N'Matematik Öðretmenliði', 1)
INSERT [dbo].[bolumler] ([bolumno], [bolumad], [fakulteno]) VALUES (20, N'Okul Öðrencisi Öðretmenliði', 1)
INSERT [dbo].[bolumler] ([bolumno], [bolumad], [fakulteno]) VALUES (30, N'Kimya', 5)
INSERT [dbo].[bolumler] ([bolumno], [bolumad], [fakulteno]) VALUES (40, N'Biyoloji', 5)
INSERT [dbo].[bolumler] ([bolumno], [bolumad], [fakulteno]) VALUES (50, N'Tarih', 5)
INSERT [dbo].[bolumler] ([bolumno], [bolumad], [fakulteno]) VALUES (60, N'Fizik', 5)
INSERT [dbo].[bolumler] ([bolumno], [bolumad], [fakulteno]) VALUES (70, N'Felsefe', 5)
INSERT [dbo].[bolumler] ([bolumno], [bolumad], [fakulteno]) VALUES (90, N'Müzik', 6)
INSERT [dbo].[bolumler] ([bolumno], [bolumad], [fakulteno]) VALUES (100, N'Resim', 6)
INSERT [dbo].[bolumler] ([bolumno], [bolumad], [fakulteno]) VALUES (120, N'Bilgisayar Mühendisliði', 3)
INSERT [dbo].[bolumler] ([bolumno], [bolumad], [fakulteno]) VALUES (125, N'Elektrik Mühendisliði', 3)
INSERT [dbo].[bolumler] ([bolumno], [bolumad], [fakulteno]) VALUES (130, N'Bilgisayar Öðretmenliði', 1)
INSERT [dbo].[bolumler] ([bolumno], [bolumad], [fakulteno]) VALUES (180, N'Týp', 8)
INSERT [dbo].[dersler] ([derskodu], [dersadi], [teorikkredi], [uygulamakredi]) VALUES (15, N'matematik', 3, 0)
INSERT [dbo].[dersler] ([derskodu], [dersadi], [teorikkredi], [uygulamakredi]) VALUES (25, N'fizik', 3, 1)
INSERT [dbo].[dersler] ([derskodu], [dersadi], [teorikkredi], [uygulamakredi]) VALUES (30, N'programlama', 3, 2)
INSERT [dbo].[dersler] ([derskodu], [dersadi], [teorikkredi], [uygulamakredi]) VALUES (40, N'veritabaný', 3, 2)
INSERT [dbo].[dersler] ([derskodu], [dersadi], [teorikkredi], [uygulamakredi]) VALUES (50, N'TBT', 3, 1)
INSERT [dbo].[fakulteler] ([fakulteno], [fakultead]) VALUES (1, N'Teknik Eðitim Fakültesi')
INSERT [dbo].[fakulteler] ([fakulteno], [fakultead]) VALUES (3, N'Mühendislik Fakültesi')
INSERT [dbo].[fakulteler] ([fakulteno], [fakultead]) VALUES (4, N'Orman Fakültesi')
INSERT [dbo].[fakulteler] ([fakulteno], [fakultead]) VALUES (5, N'Fen Edebiyat Fakültesi')
INSERT [dbo].[fakulteler] ([fakulteno], [fakultead]) VALUES (6, N'Eðitim Fakültesi')
INSERT [dbo].[fakulteler] ([fakulteno], [fakultead]) VALUES (7, N'Ýktisadi ve Ýdari Bilimler Fakultesi')
INSERT [dbo].[fakulteler] ([fakulteno], [fakultead]) VALUES (8, N'Týp Fakultesi')
INSERT [dbo].[notlar] ([ogrno], [derskodu], [vize], [final], [but], [durum]) VALUES (12, 40, 56, 85, 15, N'0')
INSERT [dbo].[notlar] ([ogrno], [derskodu], [vize], [final], [but], [durum]) VALUES (12, 50, 71, 85, 80, N'0')
INSERT [dbo].[notlar] ([ogrno], [derskodu], [vize], [final], [but], [durum]) VALUES (15, 40, 31, 65, 70, N'0')
INSERT [dbo].[notlar] ([ogrno], [derskodu], [vize], [final], [but], [durum]) VALUES (15, 30, 61, 70, 70, N'0')
INSERT [dbo].[notlar] ([ogrno], [derskodu], [vize], [final], [but], [durum]) VALUES (22, 30, 100, 100, 90, N'0')
INSERT [dbo].[notlar] ([ogrno], [derskodu], [vize], [final], [but], [durum]) VALUES (22, 50, 66, 75, 75, N'0')
INSERT [dbo].[notlar] ([ogrno], [derskodu], [vize], [final], [but], [durum]) VALUES (28, 25, 100, 50, 60, N'0')
INSERT [dbo].[notlar] ([ogrno], [derskodu], [vize], [final], [but], [durum]) VALUES (66, 30, 91, 50, 80, N'0')
INSERT [dbo].[notlar] ([ogrno], [derskodu], [vize], [final], [but], [durum]) VALUES (85, 15, 90, 40, 75, N'0')
INSERT [dbo].[notlar] ([ogrno], [derskodu], [vize], [final], [but], [durum]) VALUES (99, 15, 60, 70, 55, N'0')
INSERT [dbo].[notlar] ([ogrno], [derskodu], [vize], [final], [but], [durum]) VALUES (91, 40, 30, 53, 60, N'0')
INSERT [dbo].[notlar] ([ogrno], [derskodu], [vize], [final], [but], [durum]) VALUES (29, 40, 80, 100, 100, N'0')
INSERT [dbo].[notlar] ([ogrno], [derskodu], [vize], [final], [but], [durum]) VALUES (29, 30, 70, 90, 60, N'0')
INSERT [dbo].[ogrenciler] ([ogrno], [ograd], [ogrsoyad], [cinsiyet], [dogumtarihi], [bolumkod], [adres]) VALUES (2, N'Mehmet', N'yýlmaz', N'erkek', CAST(0x3B140B00 AS Date), 120, NULL)
INSERT [dbo].[ogrenciler] ([ogrno], [ograd], [ogrsoyad], [cinsiyet], [dogumtarihi], [bolumkod], [adres]) VALUES (5, N'ahmet', N'kaya', N'erkek', CAST(0x53F30A00 AS Date), 30, NULL)
INSERT [dbo].[ogrenciler] ([ogrno], [ograd], [ogrsoyad], [cinsiyet], [dogumtarihi], [bolumkod], [adres]) VALUES (6, N'mahmut', N'solmaz', N'erkek', CAST(0xB2110B00 AS Date), 100, NULL)
INSERT [dbo].[ogrenciler] ([ogrno], [ograd], [ogrsoyad], [cinsiyet], [dogumtarihi], [bolumkod], [adres]) VALUES (12, N'aykut', N'saka', N'erkek', CAST(0x57160B00 AS Date), 60, NULL)
INSERT [dbo].[ogrenciler] ([ogrno], [ograd], [ogrsoyad], [cinsiyet], [dogumtarihi], [bolumkod], [adres]) VALUES (15, N'arif', N'sakarya', N'erkek', CAST(0xCA0E0B00 AS Date), 60, NULL)
INSERT [dbo].[ogrenciler] ([ogrno], [ograd], [ogrsoyad], [cinsiyet], [dogumtarihi], [bolumkod], [adres]) VALUES (22, N'ali veli', N'solaz', N'erkek', CAST(0x6BFF0A00 AS Date), 100, NULL)
INSERT [dbo].[ogrenciler] ([ogrno], [ograd], [ogrsoyad], [cinsiyet], [dogumtarihi], [bolumkod], [adres]) VALUES (28, N'suna', N'kaya', N'kadýn', CAST(0xD8190B00 AS Date), 120, NULL)
INSERT [dbo].[ogrenciler] ([ogrno], [ograd], [ogrsoyad], [cinsiyet], [dogumtarihi], [bolumkod], [adres]) VALUES (29, N'emine', N'solmaz', N'kadýn', CAST(0x4A100B00 AS Date), 60, NULL)
INSERT [dbo].[ogrenciler] ([ogrno], [ograd], [ogrsoyad], [cinsiyet], [dogumtarihi], [bolumkod], [adres]) VALUES (30, N'fatma', N'yýldýrým', N'kadýn', CAST(0x82240B00 AS Date), 10, NULL)
INSERT [dbo].[ogrenciler] ([ogrno], [ograd], [ogrsoyad], [cinsiyet], [dogumtarihi], [bolumkod], [adres]) VALUES (66, N'idil', N'kayapýnar', N'kadýn', CAST(0xFBF60A00 AS Date), 15, NULL)
INSERT [dbo].[ogrenciler] ([ogrno], [ograd], [ogrsoyad], [cinsiyet], [dogumtarihi], [bolumkod], [adres]) VALUES (70, N'burhanettin', N'gümüþ', N'erkek', CAST(0x4BF60A00 AS Date), 20, NULL)
INSERT [dbo].[ogrenciler] ([ogrno], [ograd], [ogrsoyad], [cinsiyet], [dogumtarihi], [bolumkod], [adres]) VALUES (71, N'hatice', N'güneþ', N'kadýn', CAST(0xBDFB0A00 AS Date), 30, NULL)
INSERT [dbo].[ogrenciler] ([ogrno], [ograd], [ogrsoyad], [cinsiyet], [dogumtarihi], [bolumkod], [adres]) VALUES (72, N'Hatice', N'Güngör', N'kadýn', CAST(0x7EF20A00 AS Date), 40, NULL)
INSERT [dbo].[ogrenciler] ([ogrno], [ograd], [ogrsoyad], [cinsiyet], [dogumtarihi], [bolumkod], [adres]) VALUES (80, N'Arif', N'Doðan', N'Erkek', CAST(0xCCD50A00 AS Date), 60, NULL)
INSERT [dbo].[ogrenciler] ([ogrno], [ograd], [ogrsoyad], [cinsiyet], [dogumtarihi], [bolumkod], [adres]) VALUES (83, N'Seda', N'Savcý', N'kadýn', CAST(0xCBFF0A00 AS Date), 90, NULL)
INSERT [dbo].[ogrenciler] ([ogrno], [ograd], [ogrsoyad], [cinsiyet], [dogumtarihi], [bolumkod], [adres]) VALUES (85, N'Veli', N'Doðan', N'Erkek', CAST(0x9C050B00 AS Date), 70, NULL)
INSERT [dbo].[ogrenciler] ([ogrno], [ograd], [ogrsoyad], [cinsiyet], [dogumtarihi], [bolumkod], [adres]) VALUES (88, N'Ali', N'olgun', N'Erkek', CAST(0xCB000B00 AS Date), 120, NULL)
INSERT [dbo].[ogrenciler] ([ogrno], [ograd], [ogrsoyad], [cinsiyet], [dogumtarihi], [bolumkod], [adres]) VALUES (90, N'Serdar', N'karaman', N'Erkek', CAST(0xB4230B00 AS Date), 10, NULL)
INSERT [dbo].[ogrenciler] ([ogrno], [ograd], [ogrsoyad], [cinsiyet], [dogumtarihi], [bolumkod], [adres]) VALUES (91, N'Selami', N'akkaya', N'Erkek', CAST(0x04120B00 AS Date), 20, NULL)
INSERT [dbo].[ogrenciler] ([ogrno], [ograd], [ogrsoyad], [cinsiyet], [dogumtarihi], [bolumkod], [adres]) VALUES (92, N'Merve', N'sarp', N'kadýn', CAST(0x150E0B00 AS Date), 50, NULL)
INSERT [dbo].[ogrenciler] ([ogrno], [ograd], [ogrsoyad], [cinsiyet], [dogumtarihi], [bolumkod], [adres]) VALUES (93, N'Bülent', N'kaya', N'Erkek', CAST(0xDF140B00 AS Date), 90, NULL)
INSERT [dbo].[ogrenciler] ([ogrno], [ograd], [ogrsoyad], [cinsiyet], [dogumtarihi], [bolumkod], [adres]) VALUES (94, N'Sinan', N'karaca', N'Erkek', CAST(0xD7FF0A00 AS Date), 100, NULL)
INSERT [dbo].[ogrenciler] ([ogrno], [ograd], [ogrsoyad], [cinsiyet], [dogumtarihi], [bolumkod], [adres]) VALUES (95, N'Emrah', N'yener', N'Erkek', CAST(0x1D230B00 AS Date), 180, NULL)
INSERT [dbo].[ogrenciler] ([ogrno], [ograd], [ogrsoyad], [cinsiyet], [dogumtarihi], [bolumkod], [adres]) VALUES (96, N'Ali', N'veli', N'Erkek', CAST(0xCD1E0B00 AS Date), 120, NULL)
INSERT [dbo].[ogrenciler] ([ogrno], [ograd], [ogrsoyad], [cinsiyet], [dogumtarihi], [bolumkod], [adres]) VALUES (97, N'Fatma', N'yýlmaz', N'kadýn', CAST(0xB6210B00 AS Date), 50, NULL)
INSERT [dbo].[ogrenciler] ([ogrno], [ograd], [ogrsoyad], [cinsiyet], [dogumtarihi], [bolumkod], [adres]) VALUES (98, N'Mehmet', N'kayalý', N'Erkek', CAST(0x49200B00 AS Date), 20, NULL)
INSERT [dbo].[ogrenciler] ([ogrno], [ograd], [ogrsoyad], [cinsiyet], [dogumtarihi], [bolumkod], [adres]) VALUES (99, N'Memnune', N'solmaz', N'kadýn', CAST(0x23230B00 AS Date), 10, NULL)
INSERT [dbo].[ogrenciler] ([ogrno], [ograd], [ogrsoyad], [cinsiyet], [dogumtarihi], [bolumkod], [adres]) VALUES (100, N'Salih', N'durmaz', N'Erkek', CAST(0x15180B00 AS Date), 50, NULL)
ALTER TABLE [dbo].[bolumler]  WITH CHECK ADD  CONSTRAINT [FK_bolumler_fakulteler] FOREIGN KEY([fakulteno])
REFERENCES [dbo].[fakulteler] ([fakulteno])
GO
ALTER TABLE [dbo].[bolumler] CHECK CONSTRAINT [FK_bolumler_fakulteler]
GO
ALTER TABLE [dbo].[notlar]  WITH CHECK ADD  CONSTRAINT [FK_notlar_dersler] FOREIGN KEY([derskodu])
REFERENCES [dbo].[dersler] ([derskodu])
GO
ALTER TABLE [dbo].[notlar] CHECK CONSTRAINT [FK_notlar_dersler]
GO
ALTER TABLE [dbo].[notlar]  WITH CHECK ADD  CONSTRAINT [FK_notlar_ogrenciler] FOREIGN KEY([ogrno])
REFERENCES [dbo].[ogrenciler] ([ogrno])
GO
ALTER TABLE [dbo].[notlar] CHECK CONSTRAINT [FK_notlar_ogrenciler]
GO
ALTER TABLE [dbo].[ogrenciler]  WITH CHECK ADD  CONSTRAINT [FK_ogrenciler_bolumler] FOREIGN KEY([bolumkod])
REFERENCES [dbo].[bolumler] ([bolumno])
GO
ALTER TABLE [dbo].[ogrenciler] CHECK CONSTRAINT [FK_ogrenciler_bolumler]
GO
