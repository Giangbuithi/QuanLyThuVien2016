/****** Object:  Table [dbo].[tb_NhanVien]    Script Date: 07/25/2016 00:34:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_NhanVien]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_NhanVien](
	[MaNV] [nvarchar](5) NOT NULL,
	[TenNV] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[DienThoai] [int] NULL,
 CONSTRAINT [PK_tb_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[tb_NhanVien] ([MaNV], [TenNV], [DiaChi], [DienThoai]) VALUES (N'NV001', N'Nguyễn Tuân', N'112 Nguyễn Kiệm', 1684625244)
INSERT [dbo].[tb_NhanVien] ([MaNV], [TenNV], [DiaChi], [DienThoai]) VALUES (N'NV002', N'Lê Khôi', N'10 Lê lai', 1883500740)
INSERT [dbo].[tb_NhanVien] ([MaNV], [TenNV], [DiaChi], [DienThoai]) VALUES (N'NV003', N'Trần Phú', N'33 Trần Cảnh', 1225860337)
/****** Object:  Table [dbo].[tb_DocGia]    Script Date: 07/25/2016 00:34:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_DocGia]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_DocGia](
	[MaDG] [nvarchar](5) NOT NULL,
	[TenDG] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[NgayCapThe] [date] NULL,
	[NgayHetHan] [date] NULL,
	[DiaChi] [nvarchar](50) NULL,
 CONSTRAINT [PK_tb_DocGia] PRIMARY KEY CLUSTERED 
(
	[MaDG] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[tb_DocGia] ([MaDG], [TenDG], [NgaySinh], [NgayCapThe], [NgayHetHan], [DiaChi]) VALUES (N'DG001', N'Bùi Thị Giang', CAST(0x211D0B00 AS Date), CAST(0x8F390B00 AS Date), CAST(0xC33C0B00 AS Date), N'33 Nguyễn Thiệu lâu')
INSERT [dbo].[tb_DocGia] ([MaDG], [TenDG], [NgaySinh], [NgayCapThe], [NgayHetHan], [DiaChi]) VALUES (N'DG002', N'Trần Thị Kim Loan', CAST(0xBB1C0B00 AS Date), CAST(0x9B3B0B00 AS Date), CAST(0xFE3E0B00 AS Date), N'55 Tân Quý')
INSERT [dbo].[tb_DocGia] ([MaDG], [TenDG], [NgaySinh], [NgayCapThe], [NgayHetHan], [DiaChi]) VALUES (N'DG003', N'Nguyễn Thị Diệu Ngân', CAST(0xBB1C0B00 AS Date), CAST(0x693B0B00 AS Date), CAST(0x623E0B00 AS Date), N'77 Nguyễn Sơn')
INSERT [dbo].[tb_DocGia] ([MaDG], [TenDG], [NgaySinh], [NgayCapThe], [NgayHetHan], [DiaChi]) VALUES (N'DG004', N'Nguyễn Lê Viết', CAST(0x46110B00 AS Date), CAST(0x6C3A0B00 AS Date), CAST(0x473D0B00 AS Date), N'371 Nguyễn Kiệm')
INSERT [dbo].[tb_DocGia] ([MaDG], [TenDG], [NgaySinh], [NgayCapThe], [NgayHetHan], [DiaChi]) VALUES (N'DG005', N'Nguyễn Kim Ngân', CAST(0xB5190B00 AS Date), CAST(0x693B0B00 AS Date), CAST(0x473D0B00 AS Date), N'56 Hòa Bình')
INSERT [dbo].[tb_DocGia] ([MaDG], [TenDG], [NgaySinh], [NgayCapThe], [NgayHetHan], [DiaChi]) VALUES (N'DG006', N'Bùi Anh Khoa', CAST(0x1F250B00 AS Date), CAST(0x8F390B00 AS Date), CAST(0x053B0B00 AS Date), N'90 Nguyễn Văn Trỗi')
/****** Object:  Table [dbo].[tb_ViTri]    Script Date: 07/25/2016 00:34:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_ViTri]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_ViTri](
	[MaVT] [nvarchar](5) NOT NULL,
	[TenKe] [nvarchar](50) NULL,
 CONSTRAINT [PK_tb_ViTri] PRIMARY KEY CLUSTERED 
(
	[MaVT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[tb_ViTri] ([MaVT], [TenKe]) VALUES (N'VT001', N'Kệ 1')
INSERT [dbo].[tb_ViTri] ([MaVT], [TenKe]) VALUES (N'VT002', N'Kệ 2')
INSERT [dbo].[tb_ViTri] ([MaVT], [TenKe]) VALUES (N'VT003', N'Kệ 3')
INSERT [dbo].[tb_ViTri] ([MaVT], [TenKe]) VALUES (N'VT004', N'Kệ 4')
INSERT [dbo].[tb_ViTri] ([MaVT], [TenKe]) VALUES (N'VT005', N'Kệ 5')
/****** Object:  Table [dbo].[tb_TheLoai]    Script Date: 07/25/2016 00:34:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_TheLoai]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_TheLoai](
	[MaTL] [nvarchar](5) NOT NULL,
	[TenTL] [nvarchar](50) NULL,
 CONSTRAINT [PK_tb_TheLoai] PRIMARY KEY CLUSTERED 
(
	[MaTL] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[tb_TheLoai] ([MaTL], [TenTL]) VALUES (N'TL001', N'Truyện tranh')
INSERT [dbo].[tb_TheLoai] ([MaTL], [TenTL]) VALUES (N'TL002', N'Tiểu Thuyết')
INSERT [dbo].[tb_TheLoai] ([MaTL], [TenTL]) VALUES (N'TL003', N'Giáo khoa')
INSERT [dbo].[tb_TheLoai] ([MaTL], [TenTL]) VALUES (N'TL004', N'Kỹ năng')
INSERT [dbo].[tb_TheLoai] ([MaTL], [TenTL]) VALUES (N'TL005', N'Tiếng anh')
INSERT [dbo].[tb_TheLoai] ([MaTL], [TenTL]) VALUES (N'TL006', N'Từ điển')
/****** Object:  Table [dbo].[tb_Sach]    Script Date: 07/25/2016 00:34:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_Sach]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_Sach](
	[MaSach] [nvarchar](5) NOT NULL,
	[MaTL] [nvarchar](5) NULL,
	[MaVT] [nvarchar](5) NULL,
	[TenSach] [nvarchar](50) NULL,
	[NXB] [nvarchar](50) NULL,
	[GiaThue] [money] NULL,
 CONSTRAINT [PK_tb_Sach] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[tb_Sach] ([MaSach], [MaTL], [MaVT], [TenSach], [NXB], [GiaThue]) VALUES (N'SA001', N'TL001', N'VT001', N'Trạng Quỳnh 1', N'Hà Nội', 50000.0000)
INSERT [dbo].[tb_Sach] ([MaSach], [MaTL], [MaVT], [TenSach], [NXB], [GiaThue]) VALUES (N'SA002', N'TL001', N'VT001', N'Trạng Quỳnh 2', N'Hà Nội', 50000.0000)
INSERT [dbo].[tb_Sach] ([MaSach], [MaTL], [MaVT], [TenSach], [NXB], [GiaThue]) VALUES (N'SA003', N'TL001', N'VT001', N'Trạng Quỳnh 3', N'Hà Nội', 500000.0000)
INSERT [dbo].[tb_Sach] ([MaSach], [MaTL], [MaVT], [TenSach], [NXB], [GiaThue]) VALUES (N'SA004', N'TL002', N'VT002', N'Hoa Trong Ngục', N'TP HCM', 100000.0000)
INSERT [dbo].[tb_Sach] ([MaSach], [MaTL], [MaVT], [TenSach], [NXB], [GiaThue]) VALUES (N'SA005', N'TL002', N'VT002', N'Chuyện tình Bác Sĩ', N'TP HCM', 150000.0000)
INSERT [dbo].[tb_Sach] ([MaSach], [MaTL], [MaVT], [TenSach], [NXB], [GiaThue]) VALUES (N'SA006', N'TL003', N'VT003', N'Toán 1', N'hà nội', 50000.0000)
INSERT [dbo].[tb_Sach] ([MaSach], [MaTL], [MaVT], [TenSach], [NXB], [GiaThue]) VALUES (N'SA007', N'TL003', N'VT003', N'Tiếng Việt 1', N'Hà Nội', 60000.0000)
INSERT [dbo].[tb_Sach] ([MaSach], [MaTL], [MaVT], [TenSach], [NXB], [GiaThue]) VALUES (N'SA008', N'TL003', N'VT003', N'Tiếng Việt 2', N'Hà Nội', 40000.0000)
INSERT [dbo].[tb_Sach] ([MaSach], [MaTL], [MaVT], [TenSach], [NXB], [GiaThue]) VALUES (N'SA009', N'TL004', N'VT004', N'Quản Lý Thời Gian', N'TP HCM', 100000.0000)
INSERT [dbo].[tb_Sach] ([MaSach], [MaTL], [MaVT], [TenSach], [NXB], [GiaThue]) VALUES (N'SA010', N'TL004', N'VT004', N'Bốn Bước Thay đổi cuộc đời', N'TP HCM', 150000.0000)
/****** Object:  Table [dbo].[tb_PhieuMuon]    Script Date: 07/25/2016 00:34:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_PhieuMuon]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_PhieuMuon](
	[MaPM] [nvarchar](5) NOT NULL,
	[MaDG] [nvarchar](5) NULL,
	[MaNV] [nvarchar](5) NULL,
	[TienCoc] [money] NULL,
 CONSTRAINT [PK_tb_PhieuMuon] PRIMARY KEY CLUSTERED 
(
	[MaPM] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[tb_PhieuMuon] ([MaPM], [MaDG], [MaNV], [TienCoc]) VALUES (N'PM001', N'DG001', N'NV002', 500000.0000)
INSERT [dbo].[tb_PhieuMuon] ([MaPM], [MaDG], [MaNV], [TienCoc]) VALUES (N'PM002', N'DG003', N'NV001', 200000.0000)
INSERT [dbo].[tb_PhieuMuon] ([MaPM], [MaDG], [MaNV], [TienCoc]) VALUES (N'PM003', N'DG001', N'NV003', 400000.0000)
INSERT [dbo].[tb_PhieuMuon] ([MaPM], [MaDG], [MaNV], [TienCoc]) VALUES (N'PM004', N'DG002', N'NV003', 150000.0000)
INSERT [dbo].[tb_PhieuMuon] ([MaPM], [MaDG], [MaNV], [TienCoc]) VALUES (N'PM005', N'DG004', N'NV002', 250000.0000)
INSERT [dbo].[tb_PhieuMuon] ([MaPM], [MaDG], [MaNV], [TienCoc]) VALUES (N'PM006', N'DG005', N'NV002', 300000.0000)
INSERT [dbo].[tb_PhieuMuon] ([MaPM], [MaDG], [MaNV], [TienCoc]) VALUES (N'PM007', N'DG006', N'NV001', 50000.0000)
INSERT [dbo].[tb_PhieuMuon] ([MaPM], [MaDG], [MaNV], [TienCoc]) VALUES (N'PM008', N'DG002', N'NV001', 150000.0000)
INSERT [dbo].[tb_PhieuMuon] ([MaPM], [MaDG], [MaNV], [TienCoc]) VALUES (N'PM009', N'DG005', N'NV001', 400000.0000)
/****** Object:  Table [dbo].[tb_ChiTietPM]    Script Date: 07/25/2016 00:34:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_ChiTietPM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_ChiTietPM](
	[MaPM] [nvarchar](5) NOT NULL,
	[MaSach] [nvarchar](5) NOT NULL,
	[NgayMuon] [date] NULL,
	[NgayTra] [date] NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_tb_ChiTietPM] PRIMARY KEY CLUSTERED 
(
	[MaPM] ASC,
	[MaSach] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[tb_ChiTietPM] ([MaPM], [MaSach], [NgayMuon], [NgayTra], [GhiChu]) VALUES (N'PM001', N'SA001', CAST(0x5D3B0B00 AS Date), CAST(0xB93B0B00 AS Date), N'Không ghi chú')
INSERT [dbo].[tb_ChiTietPM] ([MaPM], [MaSach], [NgayMuon], [NgayTra], [GhiChu]) VALUES (N'PM002', N'SA002', CAST(0x7E3B0B00 AS Date), CAST(0xBB3B0B00 AS Date), NULL)
INSERT [dbo].[tb_ChiTietPM] ([MaPM], [MaSach], [NgayMuon], [NgayTra], [GhiChu]) VALUES (N'PM003', N'SA003', CAST(0xEF390B00 AS Date), CAST(0x6A3A0B00 AS Date), NULL)
INSERT [dbo].[tb_ChiTietPM] ([MaPM], [MaSach], [NgayMuon], [NgayTra], [GhiChu]) VALUES (N'PM004', N'SA004', CAST(0x083B0B00 AS Date), CAST(0xEE3B0B00 AS Date), NULL)
/****** Object:  ForeignKey [FK_tb_ChiTietPM_tb_PhieuMuon]    Script Date: 07/25/2016 00:34:18 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tb_ChiTietPM_tb_PhieuMuon]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_ChiTietPM]'))
ALTER TABLE [dbo].[tb_ChiTietPM]  WITH CHECK ADD  CONSTRAINT [FK_tb_ChiTietPM_tb_PhieuMuon] FOREIGN KEY([MaPM])
REFERENCES [dbo].[tb_PhieuMuon] ([MaPM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tb_ChiTietPM_tb_PhieuMuon]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_ChiTietPM]'))
ALTER TABLE [dbo].[tb_ChiTietPM] CHECK CONSTRAINT [FK_tb_ChiTietPM_tb_PhieuMuon]
GO
/****** Object:  ForeignKey [FK_tb_ChiTietPM_tb_Sach]    Script Date: 07/25/2016 00:34:18 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tb_ChiTietPM_tb_Sach]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_ChiTietPM]'))
ALTER TABLE [dbo].[tb_ChiTietPM]  WITH CHECK ADD  CONSTRAINT [FK_tb_ChiTietPM_tb_Sach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[tb_Sach] ([MaSach])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tb_ChiTietPM_tb_Sach]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_ChiTietPM]'))
ALTER TABLE [dbo].[tb_ChiTietPM] CHECK CONSTRAINT [FK_tb_ChiTietPM_tb_Sach]
GO
/****** Object:  ForeignKey [FK_tb_PhieuMuon_tb_DocGia]    Script Date: 07/25/2016 00:34:18 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tb_PhieuMuon_tb_DocGia]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_PhieuMuon]'))
ALTER TABLE [dbo].[tb_PhieuMuon]  WITH CHECK ADD  CONSTRAINT [FK_tb_PhieuMuon_tb_DocGia] FOREIGN KEY([MaDG])
REFERENCES [dbo].[tb_DocGia] ([MaDG])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tb_PhieuMuon_tb_DocGia]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_PhieuMuon]'))
ALTER TABLE [dbo].[tb_PhieuMuon] CHECK CONSTRAINT [FK_tb_PhieuMuon_tb_DocGia]
GO
/****** Object:  ForeignKey [FK_tb_PhieuMuon_tb_NhanVien]    Script Date: 07/25/2016 00:34:18 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tb_PhieuMuon_tb_NhanVien]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_PhieuMuon]'))
ALTER TABLE [dbo].[tb_PhieuMuon]  WITH CHECK ADD  CONSTRAINT [FK_tb_PhieuMuon_tb_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[tb_NhanVien] ([MaNV])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tb_PhieuMuon_tb_NhanVien]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_PhieuMuon]'))
ALTER TABLE [dbo].[tb_PhieuMuon] CHECK CONSTRAINT [FK_tb_PhieuMuon_tb_NhanVien]
GO
/****** Object:  ForeignKey [FK_tb_Sach_tb_TheLoai]    Script Date: 07/25/2016 00:34:18 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tb_Sach_tb_TheLoai]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_Sach]'))
ALTER TABLE [dbo].[tb_Sach]  WITH CHECK ADD  CONSTRAINT [FK_tb_Sach_tb_TheLoai] FOREIGN KEY([MaTL])
REFERENCES [dbo].[tb_TheLoai] ([MaTL])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tb_Sach_tb_TheLoai]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_Sach]'))
ALTER TABLE [dbo].[tb_Sach] CHECK CONSTRAINT [FK_tb_Sach_tb_TheLoai]
GO
/****** Object:  ForeignKey [FK_tb_Sach_tb_ViTri]    Script Date: 07/25/2016 00:34:18 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tb_Sach_tb_ViTri]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_Sach]'))
ALTER TABLE [dbo].[tb_Sach]  WITH CHECK ADD  CONSTRAINT [FK_tb_Sach_tb_ViTri] FOREIGN KEY([MaVT])
REFERENCES [dbo].[tb_ViTri] ([MaVT])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tb_Sach_tb_ViTri]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_Sach]'))
ALTER TABLE [dbo].[tb_Sach] CHECK CONSTRAINT [FK_tb_Sach_tb_ViTri]
GO
