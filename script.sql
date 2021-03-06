USE [QLTCT]
GO
/****** Object:  Table [dbo].[CHUCVU]    Script Date: 03-Jan-22 4:12:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHUCVU](
	[MACV] [int] IDENTITY(1,1) NOT NULL,
	[CHUCVU] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__CHUCVU__603F18341B573A7F] PRIMARY KEY CLUSTERED 
(
	[MACV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_HOADON]    Script Date: 03-Jan-22 4:12:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_HOADON](
	[MACTHD] [int] IDENTITY(1,1) NOT NULL,
	[SOLUONG] [int] NULL,
	[MADV] [int] NOT NULL,
	[MAHD] [int] NOT NULL,
 CONSTRAINT [PK__CT_HOADO__F50CB4CB1A34EFD9] PRIMARY KEY CLUSTERED 
(
	[MACTHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DICHVU]    Script Date: 03-Jan-22 4:12:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DICHVU](
	[MADV] [int] IDENTITY(1,1) NOT NULL,
	[GIA] [float] NOT NULL,
	[TENDV] [nvarchar](50) NOT NULL,
	[TRANGTHAI] [bit] NULL,
 CONSTRAINT [PK__DICHVU__603F00558B2FA77B] PRIMARY KEY CLUSTERED 
(
	[MADV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 03-Jan-22 4:12:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[MAHD] [int] IDENTITY(1,1) NOT NULL,
	[NGAY] [datetime] NULL,
	[TONGTIEN] [float] NOT NULL,
	[MAKH] [int] NULL,
	[MANV] [int] NOT NULL,
 CONSTRAINT [PK__HOADON__603F20CE2672D055] PRIMARY KEY CLUSTERED 
(
	[MAHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 03-Jan-22 4:12:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MAKH] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](30) NOT NULL,
	[HO] [nvarchar](30) NOT NULL,
	[PHAI] [bit] NULL,
	[SDT] [varchar](10) NOT NULL,
	[TEN] [nvarchar](30) NOT NULL,
	[MALOAI] [int] NOT NULL,
 CONSTRAINT [PK__KHACHHAN__603F592C6519A613] PRIMARY KEY CLUSTERED 
(
	[MAKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHUYENMAI]    Script Date: 03-Jan-22 4:12:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHUYENMAI](
	[MAKM] [int] IDENTITY(1,1) NOT NULL,
	[GIAMGIA] [varchar](3) NULL,
	[MOTA] [nvarchar](100) NULL,
	[NGAYBD] [date] NULL,
	[NGAYKT] [date] NULL,
	[MADV] [int] NOT NULL,
 CONSTRAINT [PK__KHUYENMA__603F592BBC63F567] PRIMARY KEY CLUSTERED 
(
	[MAKM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAIKH]    Script Date: 03-Jan-22 4:12:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAIKH](
	[MALOAI] [int] IDENTITY(1,1) NOT NULL,
	[DIEUKIEN] [numeric](19, 0) NOT NULL,
	[TENLOAI] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__LOAIKH__2F633F23666395A3] PRIMARY KEY CLUSTERED 
(
	[MALOAI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 03-Jan-22 4:12:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MANV] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](30) NOT NULL,
	[HO] [nvarchar](30) NOT NULL,
	[SDT] [varchar](10) NOT NULL,
	[TEN] [nvarchar](30) NOT NULL,
	[TRANGTHAI] [bit] NULL,
	[MACV] [int] NOT NULL,
 CONSTRAINT [PK__NHANVIEN__603F5114776A5776] PRIMARY KEY CLUSTERED 
(
	[MANV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUYEN]    Script Date: 03-Jan-22 4:12:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUYEN](
	[MAQ] [int] IDENTITY(1,1) NOT NULL,
	[QUYEN] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__QUYEN__C79077FF3C6115BD] PRIMARY KEY CLUSTERED 
(
	[MAQ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 03-Jan-22 4:12:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[Email] [varchar](30) NOT NULL,
	[Password] [varchar](100) NOT NULL,
	[MAQ] [int] NOT NULL,
 CONSTRAINT [PK__TAIKHOAN__A9D10535BDFFDC85] PRIMARY KEY CLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CHUCVU] ON 

INSERT [dbo].[CHUCVU] ([MACV], [CHUCVU]) VALUES (1, N'ADMIN')
INSERT [dbo].[CHUCVU] ([MACV], [CHUCVU]) VALUES (2, N'Thợ cắt tóc')
INSERT [dbo].[CHUCVU] ([MACV], [CHUCVU]) VALUES (3, N'Thợ sấy tóc')
INSERT [dbo].[CHUCVU] ([MACV], [CHUCVU]) VALUES (4, N'Thợ nhuộm')
SET IDENTITY_INSERT [dbo].[CHUCVU] OFF
GO
SET IDENTITY_INSERT [dbo].[CT_HOADON] ON 

INSERT [dbo].[CT_HOADON] ([MACTHD], [SOLUONG], [MADV], [MAHD]) VALUES (1, 1, 1, 1)
INSERT [dbo].[CT_HOADON] ([MACTHD], [SOLUONG], [MADV], [MAHD]) VALUES (2, 1, 1, 2)
INSERT [dbo].[CT_HOADON] ([MACTHD], [SOLUONG], [MADV], [MAHD]) VALUES (7, 1, 2, 9)
INSERT [dbo].[CT_HOADON] ([MACTHD], [SOLUONG], [MADV], [MAHD]) VALUES (8, 1, 7, 10)
INSERT [dbo].[CT_HOADON] ([MACTHD], [SOLUONG], [MADV], [MAHD]) VALUES (9, 1, 7, 11)
INSERT [dbo].[CT_HOADON] ([MACTHD], [SOLUONG], [MADV], [MAHD]) VALUES (10, 1, 8, 12)
INSERT [dbo].[CT_HOADON] ([MACTHD], [SOLUONG], [MADV], [MAHD]) VALUES (11, 1, 7, 13)
INSERT [dbo].[CT_HOADON] ([MACTHD], [SOLUONG], [MADV], [MAHD]) VALUES (12, 1, 8, 14)
INSERT [dbo].[CT_HOADON] ([MACTHD], [SOLUONG], [MADV], [MAHD]) VALUES (13, 1, 8, 15)
INSERT [dbo].[CT_HOADON] ([MACTHD], [SOLUONG], [MADV], [MAHD]) VALUES (14, 1, 8, 16)
INSERT [dbo].[CT_HOADON] ([MACTHD], [SOLUONG], [MADV], [MAHD]) VALUES (15, 1, 8, 17)
INSERT [dbo].[CT_HOADON] ([MACTHD], [SOLUONG], [MADV], [MAHD]) VALUES (16, 1, 8, 18)
SET IDENTITY_INSERT [dbo].[CT_HOADON] OFF
GO
SET IDENTITY_INSERT [dbo].[DICHVU] ON 

INSERT [dbo].[DICHVU] ([MADV], [GIA], [TENDV], [TRANGTHAI]) VALUES (1, 100000, N'Nhuộm', 1)
INSERT [dbo].[DICHVU] ([MADV], [GIA], [TENDV], [TRANGTHAI]) VALUES (2, 50000, N'Cắt tóc nam', 1)
INSERT [dbo].[DICHVU] ([MADV], [GIA], [TENDV], [TRANGTHAI]) VALUES (3, 70000, N'Cắt tóc nữ', 1)
INSERT [dbo].[DICHVU] ([MADV], [GIA], [TENDV], [TRANGTHAI]) VALUES (7, 5000, N'Cạo', 1)
INSERT [dbo].[DICHVU] ([MADV], [GIA], [TENDV], [TRANGTHAI]) VALUES (8, 500000, N'Cắt Uốn Gội Nhuộm (Combo)', 1)
SET IDENTITY_INSERT [dbo].[DICHVU] OFF
GO
SET IDENTITY_INSERT [dbo].[HOADON] ON 

INSERT [dbo].[HOADON] ([MAHD], [NGAY], [TONGTIEN], [MAKH], [MANV]) VALUES (1, CAST(N'2021-07-09T00:00:00.000' AS DateTime), 100000, 1, 3)
INSERT [dbo].[HOADON] ([MAHD], [NGAY], [TONGTIEN], [MAKH], [MANV]) VALUES (2, CAST(N'2021-07-09T00:00:00.000' AS DateTime), 100000, 1, 3)
INSERT [dbo].[HOADON] ([MAHD], [NGAY], [TONGTIEN], [MAKH], [MANV]) VALUES (9, CAST(N'2021-07-19T00:00:00.000' AS DateTime), 50000, 6, 11)
INSERT [dbo].[HOADON] ([MAHD], [NGAY], [TONGTIEN], [MAKH], [MANV]) VALUES (10, CAST(N'2021-07-20T00:00:00.000' AS DateTime), 5000, 10, 11)
INSERT [dbo].[HOADON] ([MAHD], [NGAY], [TONGTIEN], [MAKH], [MANV]) VALUES (11, CAST(N'2021-07-23T00:00:00.000' AS DateTime), 5000, 10, 11)
INSERT [dbo].[HOADON] ([MAHD], [NGAY], [TONGTIEN], [MAKH], [MANV]) VALUES (12, CAST(N'2021-07-23T00:00:00.000' AS DateTime), 500000, 6, 11)
INSERT [dbo].[HOADON] ([MAHD], [NGAY], [TONGTIEN], [MAKH], [MANV]) VALUES (13, CAST(N'2021-08-10T00:00:00.000' AS DateTime), 4500, 11, 11)
INSERT [dbo].[HOADON] ([MAHD], [NGAY], [TONGTIEN], [MAKH], [MANV]) VALUES (14, CAST(N'2021-08-10T00:00:00.000' AS DateTime), 500000, 11, 11)
INSERT [dbo].[HOADON] ([MAHD], [NGAY], [TONGTIEN], [MAKH], [MANV]) VALUES (15, CAST(N'2021-08-10T00:00:00.000' AS DateTime), 500000, 6, 11)
INSERT [dbo].[HOADON] ([MAHD], [NGAY], [TONGTIEN], [MAKH], [MANV]) VALUES (16, CAST(N'2021-08-10T00:00:00.000' AS DateTime), 450000, 6, 11)
INSERT [dbo].[HOADON] ([MAHD], [NGAY], [TONGTIEN], [MAKH], [MANV]) VALUES (17, CAST(N'2021-08-10T00:00:00.000' AS DateTime), 500000, 6, 11)
INSERT [dbo].[HOADON] ([MAHD], [NGAY], [TONGTIEN], [MAKH], [MANV]) VALUES (18, CAST(N'2021-08-10T00:00:00.000' AS DateTime), 500000, 6, 11)
SET IDENTITY_INSERT [dbo].[HOADON] OFF
GO
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 

INSERT [dbo].[KHACHHANG] ([MAKH], [email], [HO], [PHAI], [SDT], [TEN], [MALOAI]) VALUES (1, N'abc@gmail.com', N'le', 0, N'123456789', N'a', 2)
INSERT [dbo].[KHACHHANG] ([MAKH], [email], [HO], [PHAI], [SDT], [TEN], [MALOAI]) VALUES (2, N'bcg@gmail.com', N'tran', 1, N'0123123123', N'b', 3)
INSERT [dbo].[KHACHHANG] ([MAKH], [email], [HO], [PHAI], [SDT], [TEN], [MALOAI]) VALUES (6, N'nguyenva230500@gmail.com', N'Lee', 1, N'068686861', N'N1', 3)
INSERT [dbo].[KHACHHANG] ([MAKH], [email], [HO], [PHAI], [SDT], [TEN], [MALOAI]) VALUES (10, N'azx@gmail.com', N'Quach', 0, N'0341212331', N'Na', 3)
INSERT [dbo].[KHACHHANG] ([MAKH], [email], [HO], [PHAI], [SDT], [TEN], [MALOAI]) VALUES (11, N'test123@gmail.com', N'Lee', NULL, N'0123456789', N'Na122', 2)
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
GO
SET IDENTITY_INSERT [dbo].[KHUYENMAI] ON 

INSERT [dbo].[KHUYENMAI] ([MAKM], [GIAMGIA], [MOTA], [NGAYBD], [NGAYKT], [MADV]) VALUES (12, N'20', N'New', CAST(N'2021-07-01' AS Date), CAST(N'2021-07-03' AS Date), 2)
INSERT [dbo].[KHUYENMAI] ([MAKM], [GIAMGIA], [MOTA], [NGAYBD], [NGAYKT], [MADV]) VALUES (13, N'12', N'ggg', CAST(N'2021-07-10' AS Date), CAST(N'2021-07-12' AS Date), 3)
INSERT [dbo].[KHUYENMAI] ([MAKM], [GIAMGIA], [MOTA], [NGAYBD], [NGAYKT], [MADV]) VALUES (14, N'10', N'dds', CAST(N'2021-08-10' AS Date), CAST(N'2021-08-10' AS Date), 7)
INSERT [dbo].[KHUYENMAI] ([MAKM], [GIAMGIA], [MOTA], [NGAYBD], [NGAYKT], [MADV]) VALUES (15, N'10', N'', CAST(N'2021-08-08' AS Date), CAST(N'2021-08-08' AS Date), 8)
SET IDENTITY_INSERT [dbo].[KHUYENMAI] OFF
GO
SET IDENTITY_INSERT [dbo].[LOAIKH] ON 

INSERT [dbo].[LOAIKH] ([MALOAI], [DIEUKIEN], [TENLOAI]) VALUES (2, CAST(200000 AS Numeric(19, 0)), N'Khách hàng mới')
INSERT [dbo].[LOAIKH] ([MALOAI], [DIEUKIEN], [TENLOAI]) VALUES (3, CAST(500000 AS Numeric(19, 0)), N'Khách hàng thường xuyên')
SET IDENTITY_INSERT [dbo].[LOAIKH] OFF
GO
SET IDENTITY_INSERT [dbo].[NHANVIEN] ON 

INSERT [dbo].[NHANVIEN] ([MANV], [email], [HO], [SDT], [TEN], [TRANGTHAI], [MACV]) VALUES (2, N'giangquach200400@gmail.com', N'Quach', N'0386165800', N'Giang', 1, 1)
INSERT [dbo].[NHANVIEN] ([MANV], [email], [HO], [SDT], [TEN], [TRANGTHAI], [MACV]) VALUES (3, N'bcxc@gmail.com', N'ggg', N'0220202022', N'e', 1, 2)
INSERT [dbo].[NHANVIEN] ([MANV], [email], [HO], [SDT], [TEN], [TRANGTHAI], [MACV]) VALUES (4, N'test@gmail.com', N'Lee', N'0123456789', N'Na', 1, 3)
INSERT [dbo].[NHANVIEN] ([MANV], [email], [HO], [SDT], [TEN], [TRANGTHAI], [MACV]) VALUES (8, N'asd@gmail.com', N'TRAN THI', N'0123456789', N'GTT', 1, 3)
INSERT [dbo].[NHANVIEN] ([MANV], [email], [HO], [SDT], [TEN], [TRANGTHAI], [MACV]) VALUES (11, N'giangquach619@gmail.com', N'Trần', N'0123456789', N'Naa', 1, 4)
SET IDENTITY_INSERT [dbo].[NHANVIEN] OFF
GO
SET IDENTITY_INSERT [dbo].[QUYEN] ON 

INSERT [dbo].[QUYEN] ([MAQ], [QUYEN]) VALUES (1, N'ADMIN')
INSERT [dbo].[QUYEN] ([MAQ], [QUYEN]) VALUES (2, N'EMPLOYEE')
INSERT [dbo].[QUYEN] ([MAQ], [QUYEN]) VALUES (3, N'MEMBER')
SET IDENTITY_INSERT [dbo].[QUYEN] OFF
GO
INSERT [dbo].[TAIKHOAN] ([Email], [Password], [MAQ]) VALUES (N'giangquach200400@gmail.com', N'$2a$12$sK89eas4ZTEuA2PLITYPB.UjHdm/ik7BrK6Er846MJgdzWucyDVQW', 1)
INSERT [dbo].[TAIKHOAN] ([Email], [Password], [MAQ]) VALUES (N'giangquach619@gmail.com', N'$2a$12$yNyDmr29IRz6kfBwGKuZ2.fBLrMuMV/EHdhvNwm4t.Zyo7wamIGde', 2)
INSERT [dbo].[TAIKHOAN] ([Email], [Password], [MAQ]) VALUES (N'nguyenva230500@gmail.com', N'$2a$12$W2206XCTo6GUeO7m0aYXqeStsPeVxhVRUlXajTdznQUh2f72tCWhi', 3)
INSERT [dbo].[TAIKHOAN] ([Email], [Password], [MAQ]) VALUES (N'test@gmail.com', N'$2a$12$H2QZsoHgphELOscV1Oua2.T1IzHRRYcZqrCayZtr8dO3v/gqUscRy', 2)
GO
ALTER TABLE [dbo].[DICHVU] ADD  CONSTRAINT [DF_DICHVU_TENDV]  DEFAULT ((1)) FOR [TENDV]
GO
ALTER TABLE [dbo].[DICHVU] ADD  CONSTRAINT [DF_DICHVU_TRANGTHAI]  DEFAULT ((1)) FOR [TRANGTHAI]
GO
ALTER TABLE [dbo].[HOADON] ADD  CONSTRAINT [DF_HOADON_NGAY]  DEFAULT (getdate()) FOR [NGAY]
GO
ALTER TABLE [dbo].[KHACHHANG] ADD  CONSTRAINT [DF_KHACHHANG_PHAI]  DEFAULT ((0)) FOR [PHAI]
GO
ALTER TABLE [dbo].[KHUYENMAI] ADD  CONSTRAINT [DF_KHUYENMAI_NGAYBD]  DEFAULT (getdate()) FOR [NGAYBD]
GO
ALTER TABLE [dbo].[KHUYENMAI] ADD  CONSTRAINT [DF_KHUYENMAI_NGAYKT]  DEFAULT (getdate()) FOR [NGAYKT]
GO
ALTER TABLE [dbo].[NHANVIEN] ADD  CONSTRAINT [DF_NHANVIEN_TRANGTHAI]  DEFAULT ((1)) FOR [TRANGTHAI]
GO
ALTER TABLE [dbo].[CT_HOADON]  WITH CHECK ADD  CONSTRAINT [FK_CT_HOADON_DICHVU] FOREIGN KEY([MADV])
REFERENCES [dbo].[DICHVU] ([MADV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CT_HOADON] CHECK CONSTRAINT [FK_CT_HOADON_DICHVU]
GO
ALTER TABLE [dbo].[CT_HOADON]  WITH CHECK ADD  CONSTRAINT [FK_CT_HOADON_HOADON] FOREIGN KEY([MAHD])
REFERENCES [dbo].[HOADON] ([MAHD])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CT_HOADON] CHECK CONSTRAINT [FK_CT_HOADON_HOADON]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_KHACHHANG] FOREIGN KEY([MAKH])
REFERENCES [dbo].[KHACHHANG] ([MAKH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_KHACHHANG]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_NHANVIEN] FOREIGN KEY([MANV])
REFERENCES [dbo].[NHANVIEN] ([MANV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_NHANVIEN]
GO
ALTER TABLE [dbo].[KHACHHANG]  WITH CHECK ADD  CONSTRAINT [FK_KHACHHANG_LOAIKH] FOREIGN KEY([MALOAI])
REFERENCES [dbo].[LOAIKH] ([MALOAI])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KHACHHANG] CHECK CONSTRAINT [FK_KHACHHANG_LOAIKH]
GO
ALTER TABLE [dbo].[KHUYENMAI]  WITH CHECK ADD  CONSTRAINT [FK_KHUYENMAI_DICHVU] FOREIGN KEY([MADV])
REFERENCES [dbo].[DICHVU] ([MADV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KHUYENMAI] CHECK CONSTRAINT [FK_KHUYENMAI_DICHVU]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [FK_NHANVIEN_CHUCVU] FOREIGN KEY([MACV])
REFERENCES [dbo].[CHUCVU] ([MACV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [FK_NHANVIEN_CHUCVU]
GO
ALTER TABLE [dbo].[TAIKHOAN]  WITH CHECK ADD  CONSTRAINT [FK_TAIKHOAN_QUYEN] FOREIGN KEY([MAQ])
REFERENCES [dbo].[QUYEN] ([MAQ])
GO
ALTER TABLE [dbo].[TAIKHOAN] CHECK CONSTRAINT [FK_TAIKHOAN_QUYEN]
GO
