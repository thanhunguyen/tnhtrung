/*
Navicat SQL Server Data Transfer

Source Server         : Trung
Source Server Version : 110000
Source Host           : HTRUNG-PC\HOANGTRUNG:1433
Source Database       : QLBHLapTop
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 110000
File Encoding         : 65001

Date: 2016-06-10 03:40:53
*/


-- ----------------------------
-- Table structure for Manufacturer
-- ----------------------------
DROP TABLE [dbo].[Manufacturer]
GO
CREATE TABLE [dbo].[Manufacturer] (
[ManufacturerID] int NOT NULL IDENTITY(1,1) ,
[ManufacturerName] nvarchar(50) NOT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[Manufacturer]', RESEED, 33)
GO

-- ----------------------------
-- Records of Manufacturer
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Manufacturer] ON
GO
INSERT INTO [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (N'1', N'Acer')
GO
GO
INSERT INTO [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (N'2', N'Asus')
GO
GO
INSERT INTO [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (N'3', N'Dell')
GO
GO
INSERT INTO [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (N'4', N'HP-Compad')
GO
GO
INSERT INTO [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (N'5', N'Lenovo')
GO
GO
SET IDENTITY_INSERT [dbo].[Manufacturer] OFF
GO

-- ----------------------------
-- Table structure for OrderDetails
-- ----------------------------
DROP TABLE [dbo].[OrderDetails]
GO
CREATE TABLE [dbo].[OrderDetails] (
[ID] int NOT NULL IDENTITY(1,1) ,
[OrderID] int NOT NULL ,
[ProID] int NOT NULL ,
[Quantity] int NOT NULL ,
[Price] money NOT NULL ,
[Amount] money NOT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[OrderDetails]', RESEED, 4)
GO

-- ----------------------------
-- Records of OrderDetails
-- ----------------------------
SET IDENTITY_INSERT [dbo].[OrderDetails] ON
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO

-- ----------------------------
-- Table structure for Orders
-- ----------------------------
DROP TABLE [dbo].[Orders]
GO
CREATE TABLE [dbo].[Orders] (
[OrderID] int NOT NULL IDENTITY(1,1) ,
[OrderDate] datetime NOT NULL ,
[UserID] int NOT NULL ,
[Total] money NOT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[Orders]', RESEED, 2)
GO

-- ----------------------------
-- Records of Orders
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Orders] ON
GO
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO

-- ----------------------------
-- Table structure for Products
-- ----------------------------
DROP TABLE [dbo].[Products]
GO
CREATE TABLE [dbo].[Products] (
[ProID] int NOT NULL IDENTITY(1,1) ,
[ProName] nvarchar(255) NOT NULL ,
[TinyDes] nvarchar(255) NOT NULL ,
[FullDes] ntext NOT NULL ,
[Price] money NOT NULL ,
[ManufacturerID] int NOT NULL ,
[Quantity] int NOT NULL DEFAULT ((0)) ,
[Views] int NOT NULL DEFAULT ((0)) 
)


GO
DBCC CHECKIDENT(N'[dbo].[Products]', RESEED, 48)
GO

-- ----------------------------
-- Records of Products
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Products] ON
GO
INSERT INTO [dbo].[Products] ([ProID], [ProName], [TinyDes], [FullDes], [Price], [ManufacturerID], [Quantity], [Views]) VALUES (N'1', N'Acer ES1 431 N3050/4GB/500GB/Win10
', N'Laptop Acer ES1 431 N3050/4GB/500GB/Win10', N'<P>Thông số kĩ thuật<P>
<DL>
	<DT>HĐH:				Windows 10 Home</DT>
	<DT>CPU:                         Intel, Celeron, N3050, 1.60 GHz</DT>
	<DT>RAM:                        DDR3L (1 khe RAM), 4 GB, 1600 MHz</DT>
	<DT>Đĩa cứng:                 HDD, 500 GB</DT>
	<DT>Màn hình rộng:      14 inch, HD (1366 x 768 pixels)</DT>
	<DT>Cảm ứng:                Không</DT>
	<DT>Ðồ hoạ:                    Intel® HD Graphics, Share (Dùng chung bộ nhớ với RAM)</DT>
	<DT>Ðĩa quang:               Không</DT>
	<DT>Webcam:                 0.3 MP</DT>
	<DT>Chất liệu vỏ:            Vỏ nhựa</DT>
	<DT>Cổng giao tiếp:       HDMI, LAN (RJ45), USB 2.0, USB 3.0</DT>
	<DT>Kết nối khác:           Bluetooth</DT>
	<DT>PIN/Battery:            Li-Ion 4 cell</DT>
	<DT>Trọng lượng(Kg):   2.1 kg</DT>
</DL>', N'5990000.0000', N'1', N'6', N'0')
GO
GO
INSERT INTO [dbo].[Products] ([ProID], [ProName], [TinyDes], [FullDes], [Price], [ManufacturerID], [Quantity], [Views]) VALUES (N'2', N'Acer ES1 431 N3060/4GB/500GB/Win10
', N'Laptop Acer ES1 431 N3060/4GB/500GB/Win10', N'<P>Thông số kĩ thuật<P>
<DL>
	<DT>HĐH:				Windows 10 Home</DT>
	<DT>CPU:                         Intel, Celeron, N3060, 1.60 GHz</DT>
	<DT>RAM:                        DDR3L (1 khe RAM), 4 GB, 1600 MHz</DT>
	<DT>Đĩa cứng:                 HDD, 500 GB</DT>
	<DT>Màn hình rộng:      14 inch, HD (1366 x 768 pixels)</DT>
	<DT>Cảm ứng:                Không</DT>
	<DT>Ðồ hoạ:                    Intel® HD Graphics, Share (Dùng chung bộ nhớ với RAM)</DT>
	<DT>Ðĩa quang:               Không</DT>
	<DT>Webcam:                 0.3 MP</DT>
	<DT>Chất liệu vỏ:            Vỏ nhựa</DT>
	<DT>Cổng giao tiếp:       HDMI, LAN (RJ45), USB 2.0, USB 3.0</DT>
	<DT>Kết nối khác:           Bluetooth</DT>
	<DT>PIN/Battery:            Li-Ion 4 cell</DT>
	<DT>Trọng lượng(Kg):   2.1 kg</DT>
</DL>', N'6290000.0000', N'1', N'15', N'0')
GO
GO
INSERT INTO [dbo].[Products] ([ProID], [ProName], [TinyDes], [FullDes], [Price], [ManufacturerID], [Quantity], [Views]) VALUES (N'3', N'Acer ES1 431 N3700/4GB/500GB/Win10
', N'Laptop Acer ES1 431 N3700/4GB/500GB/Win10', N'<P>Thông số kĩ thuật<P>
<DL>
	<DT>HĐH:				Windows 10 Home</DT>	
	<DT>CPU:                         Intel, Pentium, N3700, 1.60 GHz</DT>
	<DT>RAM:                        DDR3L (1 khe RAM), 4 GB, 1600 MHz</DT>
	<DT>Đĩa cứng:                 HDD, 500 GB</DT>
	<DT>Màn hình rộng:      14 inch, HD (1366 x 768 pixels)</DT>
	<DT>Cảm ứng:                Không</DT>
	<DT>Ðồ hoạ:                    Intel® HD Graphics, Share (Dùng chung bộ nhớ với RAM)</DT>
	<DT>Ðĩa quang:               Không</DT>
	<DT>Webcam:                 0.3 MP</DT>
	<DT>Chất liệu vỏ:            Vỏ nhựa</DT>
	<DT>Cổng giao tiếp:       HDMI, LAN (RJ45), USB 2.0, USB 3.0</DT>
	<DT>Kết nối khác:           Bluetooth</DT>
	<DT>PIN/Battery:            Li-Ion 4 cell</DT>
	<DT>Trọng lượng(Kg):   2.1 kg</DT>
</DL>', N'6990000.0000', N'1', N'8', N'0')
GO
GO
INSERT INTO [dbo].[Products] ([ProID], [ProName], [TinyDes], [FullDes], [Price], [ManufacturerID], [Quantity], [Views]) VALUES (N'4', N'Acer ES1 431 N3710/4GB/500GB/Win10
', N'Laptop Acer ES1 431 N3710/4GB/500GB/Win10', N'<P>Thông số kĩ thuật<P>
<DL>
	<DT>HĐH:				Windows 10 Home</DT>	
	<DT>CPU:                         Intel, Pentium, N3710, 1.60 GHz</DT>
	<DT>RAM:                        DDR3L (1 khe RAM), 4 GB, 1600 MHz</DT>
	<DT>Đĩa cứng:                 HDD, 500 GB</DT>
	<DT>Màn hình rộng:      14 inch, HD (1366 x 768 pixels)</DT>
	<DT>Cảm ứng:                Không</DT>
	<DT>Ðồ hoạ:                    Intel® HD Graphics, Share (Dùng chung bộ nhớ với RAM)</DT>
	<DT>Ðĩa quang:               Không</DT>
	<DT>Webcam:                 0.3 MP</DT>
	<DT>Chất liệu vỏ:            Vỏ nhựa</DT>
	<DT>Cổng giao tiếp:       HDMI, LAN (RJ45), USB 2.0, USB 3.0</DT>
	<DT>Kết nối khác:           Bluetooth</DT>
	<DT>PIN/Battery:            Li-Ion 4 cell</DT>
	<DT>Trọng lượng(Kg):   2.1 kg</DT>
</DL>', N'6990000.0000', N'1', N'8', N'0')
GO
GO
INSERT INTO [dbo].[Products] ([ProID], [ProName], [TinyDes], [FullDes], [Price], [ManufacturerID], [Quantity], [Views]) VALUES (N'5', N'Acer Aspire Z1402 30BA i3 5005U/4GB/500GB/Win10
', N'Laptop Acer Aspire Z1402 30BA i3 5005U/4GB/500GB/Win10', N'<P>Thông số kĩ thuật<P>
<DL>
	<DT>HĐH:				Windows 10 Home</DT>	
	<DT>CPU:                         Intel, Core i3 Broadwell, 5005U, 2.00 GHz</DT>
	<DT>RAM:                        DDR3L (1 khe RAM), 4 GB, 1600 MHz</DT>
	<DT>Đĩa cứng:                 HDD, 500 GB</DT>
	<DT>Màn hình rộng:      14 inch, HD (1366 x 768 pixels)</DT>
	<DT>Cảm ứng:                Không</DT>
	<DT>Ðồ hoạ:                    	Intel® HD Graphics 5500, Share (Dùng chung bộ nhớ với RAM)</DT>
	<DT>Ðĩa quang:               DVD Super Multi Double Layer</DT>
	<DT>Webcam:                 0.3 MP</DT>
	<DT>Chất liệu vỏ:            Vỏ nhựa</DT>
	<DT>Cổng giao tiếp:       HDMI, LAN (RJ45), USB 2.0, USB 3.0</DT>
	<DT>Kết nối khác:           Bluetooth</DT>
	<DT>PIN/Battery:            Li-Ion 3 cell</DT>
	<DT>Trọng lượng(Kg):   2.1 kg</DT>
</DL>', N'8490000.0000', N'1', N'9', N'0')
GO
GO
INSERT INTO [dbo].[Products] ([ProID], [ProName], [TinyDes], [FullDes], [Price], [ManufacturerID], [Quantity], [Views]) VALUES (N'6', N'Acer Aspire E5 473 i3 5005U/4G/500G/Win10
', N'Laptop Acer Aspire E5 473 i3 5005U/4G/500G/Win10', N'<P>Thông số kĩ thuật<P>
<DL>
	<DT>HĐH:				Windows 10 Home</DT>
	<DT>CPU:                         Intel, Core i3 Broadwell, 5005U, 2.00 GHz</DT>
	<DT>RAM:                        DDR3L (2 khe RAM), 4 GB, 1600 MHz</DT>
	<DT>Đĩa cứng:                 HDD, 500 GB</DT>
	<DT>Màn hình rộng:      14 inch, HD (1366 x 768 pixels)</DT>
	<DT>Cảm ứng:                Không</DT>
	<DT>Ðồ hoạ:                    Intel® HD Graphics 5500, Share (Dùng chung bộ nhớ với RAM)</DT>
	<DT>Ðĩa quang:               Không</DT>
	<DT>Webcam:                 0.9 MP(16:9)</DT>
	<DT>Chất liệu vỏ:            Vỏ nhựa</DT>
	<DT>Cổng giao tiếp:       	2 x USB 3.0, HDMI, LAN (RJ45), USB 2.0, VGA (D-Sub)</DT>
	<DT>Kết nối khác:           Bluetooth</DT>
	<DT>PIN/Battery:            Li-Ion 4 cell</DT>
	<DT>Trọng lượng(Kg):   2.1 kg</DT>
</DL>', N'8890000.0000', N'1', N'4', N'0')
GO
GO
INSERT INTO [dbo].[Products] ([ProID], [ProName], [TinyDes], [FullDes], [Price], [ManufacturerID], [Quantity], [Views]) VALUES (N'7', N'Acer Aspire E5 573 i3 5005U/4GB/500GB/Win 10
', N'Laptop Acer Aspire E5 573 i3 5005U/4GB/500GB/Win 10', N'<P>Thông số kĩ thuật<P>
<DL>
	<DT>HĐH:				Windows 10 Home</DT>
	<DT>CPU:                         Intel, Core i3 Broadwell, 5005U, 2.00 GHz</DT>
	<DT>RAM:                        DDR3L (2 khe RAM), 4 GB, 1600 MHz</DT>
	<DT>Đĩa cứng:                 HDD, 500 GB</DT>
	<DT>Màn hình rộng:      15.6 inch, FHD (1920 x 1080 pixels)</DT>
	<DT>Cảm ứng:                Không</DT>
	<DT>Ðồ hoạ:                    Intel® HD Graphics 5500, Share (Dùng chung bộ nhớ với RAM)</DT>
	<DT>Ðĩa quang:               DVD Super Multi Double Layer</DT>
	<DT>Webcam:                 0.9 MP(16:9)</DT>
	<DT>Chất liệu vỏ:            Vỏ nhựa</DT>
	<DT>Cổng giao tiếp:       2 x USB 3.0, HDMI, LAN (RJ45), USB 2.0, VGA (D-Sub)</DT>
	<DT>Kết nối khác:           Bluetooth</DT>
	<DT>PIN/Battery:            Li-Ion 4 cell</DT>
	<DT>Trọng lượng(Kg):   2.4 kg</DT>
</DL>', N'9690000.0000', N'1', N'8', N'0')
GO
GO
INSERT INTO [dbo].[Products] ([ProID], [ProName], [TinyDes], [FullDes], [Price], [ManufacturerID], [Quantity], [Views]) VALUES (N'8', N'Acer V3 574 i3 5005U/4GB/500GB/Win10
', N'Laptop Acer V3 574 i3 5005U/4GB/500GB/Win10', N'<P>Thông số kĩ thuật<P>
<DL>
	<DT>HĐH:				Windows 10 Home</DT>	
	<DT>CPU:                         Intel, Core i3 Broadwell, 5005U, 2.00 GHz</DT>
	<DT>RAM:                        DDR3L (2 khe RAM), 4 GB, 1600 MHz</DT>
	<DT>Đĩa cứng:                 HDD, 500 GB</DT>
	<DT>Màn hình rộng:      15.6 inch, FHD (1920 x 1080 pixels)</DT>
	<DT>Cảm ứng:                Không</DT>
	<DT>Ðồ hoạ:                    Intel® HD Graphics 5500, Share (Dùng chung bộ nhớ với RAM)</DT>
	<DT>Ðĩa quang:               DVD Super Multi Double Layer</DT>
	<DT>Webcam:                 0.9 MP(16:9)</DT>
	<DT>Chất liệu vỏ:            Vỏ nhựa - nắp lưng bằng kim loại</DT>
	<DT>Cổng giao tiếp:       2 x USB 3.0, HDMI, LAN (RJ45), USB 2.0, VGA (D-Sub)</DT>
	<DT>Kết nối khác:           Bluetooth</DT>
	<DT>PIN/Battery:            Li-Ion 4 cell</DT>
	<DT>Trọng lượng(Kg):   2.4 kg</DT>
</DL>', N'10990000.0000', N'1', N'12', N'0')
GO
GO
INSERT INTO [dbo].[Products] ([ProID], [ProName], [TinyDes], [FullDes], [Price], [ManufacturerID], [Quantity], [Views]) VALUES (N'9', N'Acer Aspire Z1402 52KX i5 5200U/4GB/500GB/Win10
', N'Laptop Acer Aspire Z1402 52KX i5 5200U/4GB/500GB/Win10', N'<P>Thông số kĩ thuật<P>
<DL>
	<DT>HĐH:				Windows 10 Home</DT>	
	<DT>CPU:                         Intel, Core i5 Broadwell, 5200U, 2.20 GHz</DT>
	<DT>RAM:                        DDR3L (1 khe RAM), 4 GB, 1600 MHz</DT>
	<DT>Đĩa cứng:                 HDD, 500 GB</DT>
	<DT>Màn hình rộng:      14 inch, HD (1366 x 768 pixels)</DT>
	<DT>Cảm ứng:                Không</DT>
	<DT>Ðồ hoạ:                    Intel® HD Graphics 5500, Share (Dùng chung bộ nhớ với RAM)</DT>
	<DT>Ðĩa quang:               DVD Super Multi Double Layer</DT>
	<DT>Webcam:                 0.3 MP</DT>
	<DT>Chất liệu vỏ:            Vỏ nhựa</DT>
	<DT>Cổng giao tiếp:       HDMI, LAN (RJ45), USB 2.0, USB 3.0</DT>
	<DT>Kết nối khác:           Bluetooth</DT>
	<DT>PIN/Battery:            Li-Ion 3 cell</DT>
	<DT>Trọng lượng(Kg):   2.1 kg</DT>
</DL>', N'11490000.0000', N'1', N'9', N'0')
GO
GO
INSERT INTO [dbo].[Products] ([ProID], [ProName], [TinyDes], [FullDes], [Price], [ManufacturerID], [Quantity], [Views]) VALUES (N'10', N'Acer E5 573G i7 4510U/4GB/500GB/VGA2GB/Win10
', N'Laptop Acer E5 573G i7 4510U/4GB/500GB/VGA2GB/Win10', N'<P>Thông số kĩ thuật<P>
<DL>
	<DT>HĐH:				Windows 10 Home</DT>	
	<DT>CPU:                         Intel, Core i7 Haswell, 4510U, 2.00 GHz</DT>
	<DT>RAM:                        DDR3L (2 khe RAM), 4 GB, 1600 MHz</DT>
	<DT>Đĩa cứng:                 HDD, 500 GB</DT>
	<DT>Màn hình rộng:      15.6 inch, HD (1366 x 768 pixels)</DT>
	<DT>Cảm ứng:                Không</DT>
	<DT>Ðồ hoạ:                    	NVIDIA® GeForce® 920M, 2 GB</DT>
	<DT>Ðĩa quang:               DVD Super Multi Double Layer</DT>
	<DT>Webcam:                 0.9 MP(16:9)</DT>
	<DT>Chất liệu vỏ:            Vỏ nhựa</DT>
	<DT>Cổng giao tiếp:		  2 x USB 3.0, HDMI, LAN (RJ45), USB 2.0, VGA (D-Sub)</DT>
	<DT>Kết nối khác:           Bluetooth</DT>
	<DT>PIN/Battery:            Li-Ion 4 cell</DT>
	<DT>Trọng lượng(Kg):   2.14 kg</DT>
</DL>', N'12990000.0000', N'1', N'8', N'0')
GO
GO
INSERT INTO [dbo].[Products] ([ProID], [ProName], [TinyDes], [FullDes], [Price], [ManufacturerID], [Quantity], [Views]) VALUES (N'11', N'Asus E402MA N2840/2GB/500GB/Win10
', N'Laptop Asus E402MA N2840/2GB/500GB/Win10', N'<P>Thông số kĩ thuật<P>
<DL>
	<DT>HĐH:				Windows 10 Home</DT>
	<DT>CPU:                         Intel, Celeron, N2840, 2.16 GHz</DT>
	<DT>RAM:                        DDR3L (1 khe RAM), 2 GB, 1600 MHz</DT>
	<DT>Đĩa cứng:                 HDD, 500 GB</DT>
	<DT>Màn hình rộng:      14 inch, HD (1366 x 768 pixels)</DT>
	<DT>Cảm ứng:                Không</DT>
	<DT>Ðồ hoạ:                    	Integrated Graphics, Share (Dùng chung bộ nhớ với RAM)</DT>
	<DT>Ðĩa quang:               Không</DT>
	<DT>Webcam:                 0.3 MP</DT>
	<DT>Chất liệu vỏ:            Vỏ nhựa</DT>
	<DT>Cổng giao tiếp:       HDMI, LAN (RJ45), USB 2.0, USB 3.0, VGA (D-Sub)</DT>
	<DT>Kết nối khác:           Không</DT>
	<DT>PIN/Battery:            Li-Ion 2 cell</DT>
	<DT>Trọng lượng(Kg):   1.65 kg</DT>
</DL>', N'5990000.0000', N'2', N'6', N'0')
GO
GO
INSERT INTO [dbo].[Products] ([ProID], [ProName], [TinyDes], [FullDes], [Price], [ManufacturerID], [Quantity], [Views]) VALUES (N'12', N'Asus X553MA N2840/2GB/500GB/Win10
', N'Laptop Asus X553MA N2840/2GB/500GB/Win10', N'<P>Thông số kĩ thuật<P>
<DL>
	<DT>HĐH:				Windows 10 Home</DT>
	<DT>CPU:                         Intel, Celeron, N2840, 2.16 GHz</DT>
	<DT>RAM:                        DDR3L (1 khe RAM), 2 GB, 1600 MHz</DT>
	<DT>Đĩa cứng:                 HDD, 500 GB</DT>
	<DT>Màn hình rộng:      15.6 inch, HD (1366 x 768 pixels)</DT>
	<DT>Cảm ứng:                Không</DT>
	<DT>Ðồ hoạ:                    Integrated Graphics, Share (Dùng chung bộ nhớ với RAM)</DT>
	<DT>Ðĩa quang:               DVD Super Multi Double Layer</DT>
	<DT>Webcam:                 0.3 MP</DT>
	<DT>Chất liệu vỏ:            Vỏ nhựa</DT>
	<DT>Cổng giao tiếp:       HDMI, LAN (RJ45), USB 2.0, USB 3.0, VGA (D-Sub)</DT>
	<DT>Kết nối khác:           Không</DT>
	<DT>PIN/Battery:            Li-Ion 2 cell</DT>
	<DT>Trọng lượng(Kg):   2.2 kg</DT>
</DL>', N'5990000.0000', N'2', N'15', N'0')
GO
GO
INSERT INTO [dbo].[Products] ([ProID], [ProName], [TinyDes], [FullDes], [Price], [ManufacturerID], [Quantity], [Views]) VALUES (N'13', N'Asus E402SA N3050/2GB/500GB/Win10
', N'Laptop Asus E402SA N3050/2GB/500GB/Win10', N'<P>Thông số kĩ thuật<P>
<DL>
	<DT>HĐH:				Windows 10 Home</DT>	
	<DT>CPU:                         Intel, Celeron, N3050, 1.60 GHz</DT>
	<DT>RAM:                        DDR3L (1 khe RAM), 2 GB, 1600 MHz</DT>
	<DT>Đĩa cứng:                 HDD, 500 GB</DT>
	<DT>Màn hình rộng:      14 inch, HD (1366 x 768 pixels)</DT>
	<DT>Cảm ứng:                Không</DT>
	<DT>Ðồ hoạ:                    Integrated Graphics, Share (Dùng chung bộ nhớ với RAM)</DT>
	<DT>Ðĩa quang:               Không</DT>
	<DT>Webcam:                 0.3 MP</DT>
	<DT>Chất liệu vỏ:            Vỏ nhựa</DT>
	<DT>Cổng giao tiếp:       HDMI, LAN (RJ45), USB 2.0, USB 3.0, VGA (D-Sub)</DT>
	<DT>Kết nối khác:           Không</DT>
	<DT>PIN/Battery:            Li-Ion 2 cell</DT>
	<DT>Trọng lượng(Kg):   1.65 kg</DT>
</DL>', N'6290000.0000', N'2', N'8', N'0')
GO
GO
INSERT INTO [dbo].[Products] ([ProID], [ProName], [TinyDes], [FullDes], [Price], [ManufacturerID], [Quantity], [Views]) VALUES (N'14', N'Asus X553MA N3540/2GB/500GB/Win 8.1
', N'Laptop Asus X553MA N3540/2GB/500GB/Win 8.1', N'<P>Thông số kĩ thuật<P>
<DL>
	<DT>HĐH:				Windows 8.1 Bing</DT>	
	<DT>CPU:                         Intel, Pentium, N3540, 2.16 GHz</DT>
	<DT>RAM:                        DDR3L (1 khe RAM), 2 GB, 1600 MHz</DT>
	<DT>Đĩa cứng:                 HDD, 500 GB</DT>
	<DT>Màn hình rộng:      15.6 inch, HD (1366 x 768 pixels)</DT>
	<DT>Cảm ứng:                Không</DT>
	<DT>Ðồ hoạ:                    Intel® HD Graphics, Share (Dùng chung bộ nhớ với RAM)</DT>
	<DT>Ðĩa quang:               DVD Super Multi Double Layer</DT>
	<DT>Webcam:                 0.3 MP</DT>
	<DT>Chất liệu vỏ:            Vỏ nhựa</DT>
	<DT>Cổng giao tiếp:       HDMI, LAN (RJ45), USB 2.0, USB 3.0, VGA (D-Sub)</DT>
	<DT>Kết nối khác:           Không</DT>
	<DT>PIN/Battery:            Li-Ion 2 cell</DT>
	<DT>Trọng lượng(Kg):   2.2 kg</DT>
</DL>', N'6990000.0000', N'2', N'8', N'0')
GO
GO
INSERT INTO [dbo].[Products] ([ProID], [ProName], [TinyDes], [FullDes], [Price], [ManufacturerID], [Quantity], [Views]) VALUES (N'15', N'Asus X453MA N3540/2GB/500GB/Win10
', N'Laptop Asus X453MA N3540/2GB/500GB/Win10', N'<P>Thông số kĩ thuật<P>
<DL>
	<DT>HĐH:				Windows 10 Home</DT>	
	<DT>CPU:                         	Intel, Pentium, N3540, 2.16 GHz</DT>
	<DT>RAM:                        DDR3L (1 khe RAM), 2 GB, 1600 MHz</DT>
	<DT>Đĩa cứng:                 HDD, 500 GB</DT>
	<DT>Màn hình rộng:      14 inch, HD (1366 x 768 pixels)</DT>
	<DT>Cảm ứng:                Không</DT>
	<DT>Ðồ hoạ:                    	Intel® HD Graphics, Share (Dùng chung bộ nhớ với RAM)</DT>
	<DT>Ðĩa quang:               DVD Super Multi Double Layer</DT>
	<DT>Webcam:                 VGA (0.3 MP)</DT>
	<DT>Chất liệu vỏ:            Vỏ nhựa</DT>
	<DT>Cổng giao tiếp:       HDMI, LAN (RJ45), USB 2.0, USB 3.0, VGA (D-Sub)</DT>
	<DT>Kết nối khác:           Không</DT>
	<DT>PIN/Battery:            Li-Ion 2 cell</DT>
	<DT>Trọng lượng(Kg):   1.87 kg</DT>
</DL>', N'6990000.0000', N'2', N'9', N'0')
GO
GO
INSERT INTO [dbo].[Products] ([ProID], [ProName], [TinyDes], [FullDes], [Price], [ManufacturerID], [Quantity], [Views]) VALUES (N'16', N'Asus F454LA i3 4005U/4GB/500GB/Win10
', N'Laptop Asus F454LA i3 4005U/4GB/500GB/Win10', N'<P>Thông số kĩ thuật<P>
<DL>
	<DT>HĐH:				Windows 10 Home</DT>
	<DT>CPU:                         Intel, Core i3 Broadwell, 5005U, 2.00 GHz</DT>
	<DT>RAM:                        DDR3L(On board+1Khe), 4 GB, 1600 MHz</DT>
	<DT>Đĩa cứng:                 HDD, 500 GB</DT>
	<DT>Màn hình rộng:      14 inch, HD (1366 x 768 pixels)</DT>
	<DT>Cảm ứng:                Không</DT>
	<DT>Ðồ hoạ:                    Intel HD Graphics 4400, Share (Dùng chung bộ nhớ với RAM)</DT>
	<DT>Ðĩa quang:               DVD Super Multi Double Layer</DT>
	<DT>Webcam:                 0.3 MP</DT>
	<DT>Chất liệu vỏ:            Vỏ nhựa</DT>
	<DT>Cổng giao tiếp:       	HDMI, LAN (RJ45), USB 2.0, USB 3.0</DT>
	<DT>Kết nối khác:           Không</DT>
	<DT>PIN/Battery:            Li-Ion 2 cell</DT>
	<DT>Trọng lượng(Kg):   1.98 kg</DT>
</DL>', N'9190000.0000', N'2', N'20', N'0')
GO
GO
INSERT INTO [dbo].[Products] ([ProID], [ProName], [TinyDes], [FullDes], [Price], [ManufacturerID], [Quantity], [Views]) VALUES (N'17', N'Asus A540LA i3 4005U/4GB/500GB/Win10
', N'Laptop Asus A540LA i3 4005U/4GB/500GB/Win10', N'<P>Thông số kĩ thuật<P>
<DL>
	<DT>HĐH:				Windows 10 Home</DT>
	<DT>CPU:                         Intel, Core i3 Haswell, 4005U, 1.70 GHz</DT>
	<DT>RAM:                        DDR3L(On board+1Khe), 4 GB, 1600 MHz</DT>
	<DT>Đĩa cứng:                 HDD, 500 GB</DT>
	<DT>Màn hình rộng:      15.6 inch, HD (1366 x 768 pixels)</DT>
	<DT>Cảm ứng:                Không</DT>
	<DT>Ðồ hoạ:                    Intel HD Graphics 4400, Share (Dùng chung bộ nhớ với RAM)</DT>
	<DT>Ðĩa quang:               DVD Super Multi Double Layer</DT>
	<DT>Webcam:                 0.3 MP</DT>
	<DT>Chất liệu vỏ:            Vỏ nhựa</DT>
	<DT>Cổng giao tiếp:       HDMI, LAN (RJ45), USB 2.0, USB 3.0</DT>
	<DT>Kết nối khác:           Không</DT>
	<DT>PIN/Battery:            Li-Ion 3 cell</DT>
	<DT>Trọng lượng(Kg):   1.9 kg</DT>
</DL>', N'9490000.0000', N'2', N'8', N'0')
GO
GO
INSERT INTO [dbo].[Products] ([ProID], [ProName], [TinyDes], [FullDes], [Price], [ManufacturerID], [Quantity], [Views]) VALUES (N'18', N'Asus K455LA i3 5010U/4GB/500GB/Win10
', N'Laptop Asus K455LA i3 5010U/4GB/500GB/Win10', N'<P>Thông số kĩ thuật<P>
<DL>
	<DT>HĐH:				Windows 10 Home</DT>	
	<DT>CPU:                         Intel, Core i3 Broadwell, 5010U, 2.10 GHz</DT>
	<DT>RAM:                        DDR3L (1 khe RAM), 4 GB, 1600 MHz</DT>
	<DT>Đĩa cứng:                 HDD, 500 GB</DT>
	<DT>Màn hình rộng:      14 inch, HD (1366 x 768 pixels)</DT>
	<DT>Cảm ứng:                Không</DT>
	<DT>Ðồ hoạ:                    	Intel® HD Graphics 5500, Share (Dùng chung bộ nhớ với RAM)</DT>
	<DT>Ðĩa quang:               DVD Super Multi Double Layer</DT>
	<DT>Webcam:                 0.3 MP</DT>
	<DT>Chất liệu vỏ:            Vỏ nhựa - nắp lưng bằng kim loại</DT>
	<DT>Cổng giao tiếp:       2 x USB 2.0, HDMI, LAN (RJ45), USB 3.0, VGA (D-Sub)</DT>
	<DT>Kết nối khác:           Không</DT>
	<DT>PIN/Battery:            Li-Ion 2 cell</DT>
	<DT>Trọng lượng(Kg):   1.9 kg</DT>
</DL>', N'10990000.0000', N'2', N'12', N'0')
GO
GO
INSERT INTO [dbo].[Products] ([ProID], [ProName], [TinyDes], [FullDes], [Price], [ManufacturerID], [Quantity], [Views]) VALUES (N'19', N'Asus TP301UA i5 6200U/4GB/500GB/Win10
', N'Laptop Asus TP301UA i5 6200U/4GB/500GB/Win10', N'<P>Thông số kĩ thuật<P>
<DL>
	<DT>HĐH:				Windows 10 Home</DT>	
	<DT>CPU:                         Intel, Core i5 Skylake, 6200U, 2.30 GHz</DT>
	<DT>RAM:                        DDR3L(On board+1Khe), 4 GB, 1600 MHz</DT>
	<DT>Đĩa cứng:                 HDD, 500 GB</DT>
	<DT>Màn hình rộng:      13.3 inch, FHD (1920 x 1080 pixels)</DT>
	<DT>Cảm ứng:                Có</DT>
	<DT>Ðồ hoạ:                    	Intel® HD Graphics 520, Share (Dùng chung bộ nhớ với RAM)</DT>
	<DT>Ðĩa quang:               Không</DT>
	<DT>Webcam:                 0.3 MP</DT>
	<DT>Chất liệu vỏ:            Vỏ kim loại</DT>
	<DT>Cổng giao tiếp:       2 x USB 3.0, HDMI, LAN (RJ45), USB 2.0, USB-C</DT>
	<DT>Kết nối khác:           Bluetooth v4.0</DT>
	<DT>PIN/Battery:            Li-Ion 3 cell</DT>
	<DT>Trọng lượng(Kg):   1.5 kg</DT>
</DL>', N'16990000.0000', N'2', N'17', N'0')
GO
GO
INSERT INTO [dbo].[Products] ([ProID], [ProName], [TinyDes], [FullDes], [Price], [ManufacturerID], [Quantity], [Views]) VALUES (N'20', N'Asus K501UX i5 6200U/4GB/1TB/VGA 4G/Win10
', N'Laptop Asus K501UX i5 6200U/4GB/1TB/VGA 4G/Win10', N'<P>Thông số kĩ thuật<P>
<DL>
	<DT>HĐH:				Windows 10 Home</DT>	
	<DT>CPU:                         Intel, Core i5 Skylake, 6200U, 2.30 GHz</DT>
	<DT>RAM:                        DDR3L(On board+1Khe), 4 GB, 1600 MHz</DT>
	<DT>Đĩa cứng:                 HDD, 1 TB</DT>
	<DT>Màn hình rộng:      15.6 inch, 4K/UHD (3840 x 2160 pixels)</DT>
	<DT>Cảm ứng:                Không</DT>
	<DT>Ðồ hoạ:                    	NVIDIA® GeForce® GTX 950M, 4 GB</DT>
	<DT>Ðĩa quang:               Không</DT>
	<DT>Webcam:                 0.3 MP</DT>
	<DT>Chất liệu vỏ:            Vỏ kim loại</DT>
	<DT>Cổng giao tiếp:		  2 x USB 2.0, 2 x USB 3.0, HDMI, LAN (RJ45)</DT>
	<DT>Kết nối khác:           Bluetooth v4.0+LE</DT>
	<DT>PIN/Battery:            Li-Ion 3 cell</DT>
	<DT>Trọng lượng(Kg):   2.0 kg</DT>
</DL>', N'19990000.0000', N'2', N'10', N'0')
GO
GO
INSERT INTO [dbo].[Products] ([ProID], [ProName], [TinyDes], [FullDes], [Price], [ManufacturerID], [Quantity], [Views]) VALUES (N'21', N'Dell Inspiron 3552 N3050/2GB/500GB/Win10
', N'Laptop Dell Inspiron 3552 N3050/2GB/500GB/Win10', N'<P>Thông số kĩ thuật<P>
<DL>
	<DT>HĐH:				Windows 10 Home</DT>
	<DT>CPU:                         Intel, Celeron, N3050, 1.60 GHz</DT>
	<DT>RAM:                        DDR3L (1 khe RAM), 2 GB, 1600 MHz</DT>
	<DT>Đĩa cứng:                 HDD, 500 GB</DT>
	<DT>Màn hình rộng:      15.6 inch, HD (1366 x 768 pixels)</DT>
	<DT>Cảm ứng:                Không</DT>
	<DT>Ðồ hoạ:                    Intel® HD Graphics, Share (Dùng chung bộ nhớ với RAM)</DT>
	<DT>Ðĩa quang:               Không</DT>
	<DT>Webcam:                 0.9 MP(16:9)</DT>
	<DT>Chất liệu vỏ:            Vỏ nhựa</DT>
	<DT>Cổng giao tiếp:       2 x USB 2.0, HDMI, USB 3.0</DT>
	<DT>Kết nối khác:           Bluetooth v4.0</DT>
	<DT>PIN/Battery:            Li-Ion 4 cell</DT>
	<DT>Trọng lượng(Kg):   2.14 kg</DT>
</DL>', N'6690000.0000', N'3', N'21', N'0')
GO
GO
INSERT INTO [dbo].[Products] ([ProID], [ProName], [TinyDes], [FullDes], [Price], [ManufacturerID], [Quantity], [Views]) VALUES (N'22', N'Dell Inspiron 3452 N3700/4GB/500GB/Win10
', N'Laptop Dell Inspiron 3452 N3700/4GB/500GB/Win10', N'<P>Thông số kĩ thuật<P>
<DL>
	<DT>HĐH:				Windows 10 Home</DT>
	<DT>CPU:                         Intel, Pentium, N3700, 1.60 GHz</DT>
	<DT>RAM:                        DDR3L (1 khe RAM), 4 GB, 1600 MHz</DT>
	<DT>Đĩa cứng:                 HDD, 500 GB</DT>
	<DT>Màn hình rộng:      14 inch, HD (1366 x 768 pixels)</DT>
	<DT>Cảm ứng:                Không</DT>
	<DT>Ðồ hoạ:                    Intel® HD Graphics, Share (Dùng chung bộ nhớ với RAM)</DT>
	<DT>Ðĩa quang:               Không</DT>
	<DT>Webcam:                 0.9 MP(16:9)</DT>
	<DT>Chất liệu vỏ:            Vỏ nhựa</DT>
	<DT>Cổng giao tiếp:       2 x USB 2.0, HDMI, USB 3.0</DT>
	<DT>Kết nối khác:            Bluetooth v4.0</DT>
	<DT>PIN/Battery:            Li-Ion 4 cell</DT>
	<DT>Trọng lượng(Kg):   1.9 kg</DT>
</DL>', N'7490000.0000', N'3', N'27', N'0')
GO
GO
INSERT INTO [dbo].[Products] ([ProID], [ProName], [TinyDes], [FullDes], [Price], [ManufacturerID], [Quantity], [Views]) VALUES (N'23', N'Dell Inspiron 3458 i3 5005U/4GB/500GB/Win10
', N'Laptop Dell Inspiron 3458 i3 5005U/4GB/500GB/Win10', N'<P>Thông số kĩ thuật<P>
<DL>
	<DT>HĐH:				Windows 10 Home</DT>	
	<DT>CPU:                         Intel, Core i3 Broadwell, 5005U, 2.00 GHz</DT>
	<DT>RAM:                        DDR3L (1 khe RAM), 4 GB, 1600 MHz</DT>
	<DT>Đĩa cứng:                 HDD, 500 GB</DT>
	<DT>Màn hình rộng:      14 inch, HD (1366 x 768 pixels)</DT>
	<DT>Cảm ứng:                Không</DT>
	<DT>Ðồ hoạ:                    Intel® HD Graphics 5500, Share (Dùng chung bộ nhớ với RAM)</DT>
	<DT>Ðĩa quang:               Không</DT>
	<DT>Webcam:                 0.9 MP(16:9)</DT>
	<DT>Chất liệu vỏ:            Vỏ nhựa</DT>
	<DT>Cổng giao tiếp:       2 x USB 2.0, HDMI, LAN (RJ45), USB 3.0</DT>
	<DT>Kết nối khác:           Bluetooth® (4.0 + HS)</DT>
	<DT>PIN/Battery:            Li-Ion 4 cell</DT>
	<DT>Trọng lượng(Kg):   1.8 kg</DT>
</DL>', N'10490000.0000', N'3', N'9', N'0')
GO
GO
INSERT INTO [dbo].[Products] ([ProID], [ProName], [TinyDes], [FullDes], [Price], [ManufacturerID], [Quantity], [Views]) VALUES (N'24', N'Dell Inspiron 3558 i3 5005U/4GB/500GB/Win10/KhôngDVD
', N'Laptop Dell Inspiron 3558 i3 5005U/4GB/500GB/Win10/KhôngDVD', N'<P>Thông số kĩ thuật<P>
<DL>
	<DT>HĐH:				Windows 10 Home</DT>	
	<DT>CPU:                         Intel, Core i3 Broadwell, 5005U, 2.00 GHz</DT>
	<DT>RAM:                        DDR3L (2 khe RAM), 4 GB, 1600 MHz</DT>
	<DT>Đĩa cứng:                 HDD, 500 GB</DT>
	<DT>Màn hình rộng:      15.6 inch, HD (1366 x 768 pixels)</DT>
	<DT>Cảm ứng:                Không</DT>
	<DT>Ðồ hoạ:                    Intel® HD Graphics 5500, Share (Dùng chung bộ nhớ với RAM)</DT>
	<DT>Ðĩa quang:               Không</DT>
	<DT>Webcam:                 0.9 MP(16:9)</DT>
	<DT>Chất liệu vỏ:            Vỏ nhựa</DT>
	<DT>Cổng giao tiếp:       2 x USB 2.0, HDMI, USB 3.0</DT>
	<DT>Kết nối khác:           Bluetooth v4.0</DT>
	<DT>PIN/Battery:            Li-Ion 4 cell</DT>
	<DT>Trọng lượng(Kg):   2.4 kg</DT>
</DL>', N'10690000.0000', N'3', N'11', N'0')
GO
GO
INSERT INTO [dbo].[Products] ([ProID], [ProName], [TinyDes], [FullDes], [Price], [ManufacturerID], [Quantity], [Views]) VALUES (N'25', N'Dell Vostro 3558 i3 4005U/4GB/500GB/Win10
', N'Laptop Dell Vostro 3558 i3 4005U/4GB/500GB/Win10', N'<P>Thông số kĩ thuật<P>
<DL>
	<DT>HĐH:				Windows 10 Home</DT>	
	<DT>CPU:                         Intel, Core i3 Haswell, 4005U, 1.70 GHz</DT>
	<DT>RAM:                        DDR3L (2 khe RAM), 4 GB, 1600 MHz</DT>
	<DT>Đĩa cứng:                 HDD, 500 GB</DT>
	<DT>Màn hình rộng:      15.6 inch, HD (1366 x 768 pixels)</DT>
	<DT>Cảm ứng:                Không</DT>
	<DT>Ðồ hoạ:                    	Intel HD Graphics 4400, Share (Dùng chung bộ nhớ với RAM)</DT>
	<DT>Ðĩa quang:               DVD Super Multi Double Layer</DT>
	<DT>Webcam:                 0.9 MP(16:9)</DT>
	<DT>Chất liệu vỏ:            Vỏ nhựa</DT>
	<DT>Cổng giao tiếp:       2 x USB 2.0, LAN (RJ45), USB 3.0, VGA (D-Sub)</DT>
	<DT>Kết nối khác:           Bluetooth v4.0</DT>
	<DT>PIN/Battery:            Li-Ion 4 cell</DT>
	<DT>Trọng lượng(Kg):   2.24 kg</DT>
</DL>', N'11290000.0000', N'3', N'30', N'0')
GO
GO
INSERT INTO [dbo].[Products] ([ProID], [ProName], [TinyDes], [FullDes], [Price], [ManufacturerID], [Quantity], [Views]) VALUES (N'26', N'Dell Inspiron 3558 i3 5005U/4GB/500GB/Win10
', N'Laptop Dell Inspiron 3558 i3 5005U/4GB/500GB/Win10', N'<P>Thông số kĩ thuật<P>
<DL>
	<DT>HĐH:				Windows 10 Home</DT>
	<DT>CPU:                         Intel, Core i3 Broadwell, 5005U, 2.00 GHz</DT>
	<DT>RAM:                        DDR3L (2 khe RAM), 4 GB, 1600 MHz</DT>
	<DT>Đĩa cứng:                 HDD, 500 GB</DT>
	<DT>Màn hình rộng:      15.6 inch, HD (1366 x 768 pixels)</DT>
	<DT>Cảm ứng:                Không</DT>
	<DT>Ðồ hoạ:                    Intel® HD Graphics 5500, Share (Dùng chung bộ nhớ với RAM)</DT>
	<DT>Ðĩa quang:               DVD Super Multi Double Layer</DT>
	<DT>Webcam:                 0.9 MP(16:9)</DT>
	<DT>Chất liệu vỏ:            Vỏ nhựa</DT>
	<DT>Cổng giao tiếp:       	2 x USB 2.0, HDMI, USB 3.0</DT>
	<DT>Kết nối khác:           Bluetooth v4.0</DT>
	<DT>PIN/Battery:            Li-Ion 4 cell</DT>
	<DT>Trọng lượng(Kg):   2.4 kg</DT>
</DL>', N'11390000.0000', N'3', N'7', N'0')
GO
GO
INSERT INTO [dbo].[Products] ([ProID], [ProName], [TinyDes], [FullDes], [Price], [ManufacturerID], [Quantity], [Views]) VALUES (N'27', N'Dell Inspiron 3458 i3 4005U/4G/500G/VGA2GB/Win8.1
', N'Laptop Dell Inspiron 3458 i3 4005U/4G/500G/VGA2GB/Win8.1', N'<P>Thông số kĩ thuật<P>
<DL>
	<DT>HĐH:				Windows 8.1 Single language</DT>
	<DT>CPU:                         Intel, Core i3 Haswell, 4005U, 1.70 GHz</DT>
	<DT>RAM:                        DDR3L (1 khe RAM), 4 GB, 1600 MHz</DT>
	<DT>Đĩa cứng:                 HDD, 500 GB</DT>
	<DT>Màn hình rộng:      14 inch, HD (1366 x 768 pixels)</DT>
	<DT>Cảm ứng:                Không</DT>
	<DT>Ðồ hoạ:                    	NVIDIA® GeForce® 820M, 2 GB</DT>
	<DT>Ðĩa quang:               Không</DT>
	<DT>Webcam:                 0.9 MP(16:9)</DT>
	<DT>Chất liệu vỏ:            Vỏ nhựa</DT>
	<DT>Cổng giao tiếp:       2 x USB 2.0, HDMI, LAN (RJ45), USB 3.0</DT>
	<DT>Kết nối khác:           Bluetooth® (4.0 + HS)</DT>
	<DT>PIN/Battery:            Li-Ion 4 cell</DT>
	<DT>Trọng lượng(Kg):   1.8 kg</DT>
</DL>', N'11790000.0000', N'3', N'16', N'0')
GO
GO
INSERT INTO [dbo].[Products] ([ProID], [ProName], [TinyDes], [FullDes], [Price], [ManufacturerID], [Quantity], [Views]) VALUES (N'28', N'Dell Inspiron 5458 i3 5005U/4GB/500GB/Win10/Office365
', N'Laptop Dell Inspiron 5458 i3 5005U/4GB/500GB/Win10/Office365', N'<P>Thông số kĩ thuật<P>
<DL>
	<DT>HĐH:				Windows 10 Home</DT>	
	<DT>CPU:                         Intel, Core i3 Broadwell, 5005U, 2.00 GHz</DT>
	<DT>RAM:                        DDR3L (2 khe RAM), 4 GB, 1600 MHz</DT>
	<DT>Đĩa cứng:                 HDD, 500 GB</DT>
	<DT>Màn hình rộng:      14 inch, HD (1366 x 768 pixels)</DT>
	<DT>Cảm ứng:                Không</DT>
	<DT>Ðồ hoạ:                    Intel® HD Graphics 5500, Share (Dùng chung bộ nhớ với RAM)</DT>
	<DT>Ðĩa quang:               DVD Super Multi Double Layer</DT>
	<DT>Webcam:                 0.9 MP(16:9)</DT>
	<DT>Chất liệu vỏ:            Vỏ nhựa</DT>
	<DT>Cổng giao tiếp:       2 x USB 2.0, HDMI, LAN (RJ45), USB 3.0</DT>
	<DT>Kết nối khác:           Bluetooth v4.0</DT>
	<DT>PIN/Battery:            Li-Ion 4 cell</DT>
	<DT>Trọng lượng(Kg):   2.0 kg</DT>
</DL>', N'12490000.0000', N'3', N'15', N'0')
GO
GO
INSERT INTO [dbo].[Products] ([ProID], [ProName], [TinyDes], [FullDes], [Price], [ManufacturerID], [Quantity], [Views]) VALUES (N'29', N'Dell Inspiron 3558 i5 5200U/4GB/500GB/VGA2GB/Win8.1
', N'Laptop Dell Inspiron 3558 i5 5200U/4GB/500GB/VGA2GB/Win8.1', N'<P>Thông số kĩ thuật<P>
<DL>
	<DT>HĐH:				Windows 8.1 SL</DT>	
	<DT>CPU:                         Intel, Core i5 Broadwell, 5200U, 2.20 GHz</DT>
	<DT>RAM:                        DDR3L (2 khe RAM), 4 GB, 1600 MHz</DT>
	<DT>Đĩa cứng:                 HDD, 500 GB</DT>
	<DT>Màn hình rộng:      15.6 inch, HD (1366 x 768 pixels)</DT>
	<DT>Cảm ứng:                Không</DT>
	<DT>Ðồ hoạ:                    	NVIDIA® GeForce® 820M, 2 GB</DT>
	<DT>Ðĩa quang:               Không</DT>
	<DT>Webcam:                 0.9 MP(16:9)</DT>
	<DT>Chất liệu vỏ:            Vỏ nhựa</DT>
	<DT>Cổng giao tiếp:       	2 x USB 2.0, HDMI, USB 3.0</DT>
	<DT>Kết nối khác:           Bluetooth v4.0</DT>
	<DT>PIN/Battery:            Li-Ion 4 cell</DT>
	<DT>Trọng lượng(Kg):   2.4 kg</DT>
</DL>', N'13690000.0000', N'3', N'8', N'0')
GO
GO
INSERT INTO [dbo].[Products] ([ProID], [ProName], [TinyDes], [FullDes], [Price], [ManufacturerID], [Quantity], [Views]) VALUES (N'30', N'Dell Inspiron 3558 i5 5200U/4GB/1TB/Win10
', N'Laptop Dell Inspiron 3558 i5 5200U/4GB/1TB/Win10', N'<P>Thông số kĩ thuật<P>
<DL>
	<DT>HĐH:				Windows 10 Home</DT>	
	<DT>CPU:                         Intel, Core i5 Broadwell, 5200U, 2.20 GHz</DT>
	<DT>RAM:                        DDR3L (2 khe RAM), 4 GB, 1600 MHz</DT>
	<DT>Đĩa cứng:                 HDD, 1 TB</DT>
	<DT>Màn hình rộng:      15.6 inch, HD (1366 x 768 pixels)</DT>
	<DT>Cảm ứng:                Không</DT>
	<DT>Ðồ hoạ:                    	Intel® HD Graphics 5500, Share (Dùng chung bộ nhớ với RAM)</DT>
	<DT>Ðĩa quang:               Không</DT>
	<DT>Webcam:                 0.9 MP(16:9)</DT>
	<DT>Chất liệu vỏ:            Vỏ nhựa</DT>
	<DT>Cổng giao tiếp:		  2 x USB 2.0, HDMI, USB 3.0</DT>
	<DT>Kết nối khác:           Bluetooth v4.0</DT>
	<DT>PIN/Battery:            Li-Ion 4 cell</DT>
	<DT>Trọng lượng(Kg):   2.4 kg</DT>
</DL>', N'13690000.0000', N'3', N'11', N'0')
GO
GO
INSERT INTO [dbo].[Products] ([ProID], [ProName], [TinyDes], [FullDes], [Price], [ManufacturerID], [Quantity], [Views]) VALUES (N'31', N'HP Pavilion 11 S001TU N3050/2GB/500GB/Win10
', N'Laptop HP Pavilion 11 S001TU N3050/2GB/500GB/Win10', N'<P>Thông số kĩ thuật<P>
<DL>
	<DT>HĐH:				Windows 10 Home</DT>
	<DT>CPU:                         Intel, Celeron, N3050, 1.60 GHz</DT>
	<DT>RAM:                        DDR3L(On board), 2 GB, 1600 MHz</DT>
	<DT>Đĩa cứng:                 HDD, 500 GB</DT>
	<DT>Màn hình rộng:      11.6 inch, HD (1366 x 768 pixels)</DT>
	<DT>Cảm ứng:                Không</DT>
	<DT>Ðồ hoạ:                    Intel® HD Graphics, Share (Dùng chung bộ nhớ với RAM)</DT>
	<DT>Ðĩa quang:               Không</DT>
	<DT>Webcam:                 0.9 MP(16:9)</DT>
	<DT>Chất liệu vỏ:            Vỏ nhựa</DT>
	<DT>Cổng giao tiếp:       HDMI, USB 2.0, USB 3.0, VGA (D-Sub)</DT>
	<DT>Kết nối khác:           Bluetooth v4.0</DT>
	<DT>PIN/Battery:            Li-Ion 2 cell</DT>
	<DT>Trọng lượng(Kg):   1.23 kg</DT>
</DL>', N'5990000.0000', N'4', N'7', N'0')
GO
GO
INSERT INTO [dbo].[Products] ([ProID], [ProName], [TinyDes], [FullDes], [Price], [ManufacturerID], [Quantity], [Views]) VALUES (N'32', N'HP 14 ac145TU 3825U/2GB/500GB/Win10
', N'Laptop HP 14 ac145TU 3825U/2GB/500GB/Win10', N'<P>Thông số kĩ thuật<P>
<DL>
	<DT>HĐH:				Windows 10 Home</DT>
	<DT>CPU:                         Intel, Pentium, 3825U, 1.90 GHz</DT>
	<DT>RAM:                        DDR3L (2 khe RAM), 2 GB, 1600 MHz</DT>
	<DT>Đĩa cứng:                 HDD, 500 GB</DT>
	<DT>Màn hình rộng:      14 inch, HD (1366 x 768 pixels)</DT>
	<DT>Cảm ứng:                Không</DT>
	<DT>Ðồ hoạ:                    Intel® HD Graphics, Share (Dùng chung bộ nhớ với RAM)</DT>
	<DT>Ðĩa quang:               DVD Super Multi Double Layer</DT>
	<DT>Webcam:                 0.9 MP(16:9)</DT>
	<DT>Chất liệu vỏ:            Vỏ nhựa</DT>
	<DT>Cổng giao tiếp:       2 x USB 2.0, HDMI, LAN (RJ45), USB 3.0, VGA (D-Sub)</DT>
	<DT>Kết nối khác:           Bluetooth v4.0</DT>
	<DT>PIN/Battery:            Li-Ion 4 cell</DT>
	<DT>Trọng lượng(Kg):   2.0 kg</DT>
</DL>', N'7290000.0000', N'4', N'19', N'0')
GO
GO
INSERT INTO [dbo].[Products] ([ProID], [ProName], [TinyDes], [FullDes], [Price], [ManufacturerID], [Quantity], [Views]) VALUES (N'33', N'HP 15 ac152TU i3 5005U/4GB/500GB/Win10
', N'Laptop HP 15 ac152TU i3 5005U/4GB/500GB/Win10', N'<P>Thông số kĩ thuật<P>
<DL>
	<DT>HĐH:				Windows 10 Home</DT>	
	<DT>CPU:                         Intel, Core i3 Broadwell, 5005U, 2.00 GHz</DT>
	<DT>RAM:                        DDR3L (2 khe RAM), 4 GB, 1600 MHz</DT>
	<DT>Đĩa cứng:                 HDD, 500 GB</DT>
	<DT>Màn hình rộng:      15.6 inch, HD (1366 x 768 pixels)</DT>
	<DT>Cảm ứng:                Không</DT>
	<DT>Ðồ hoạ:                    Intel® HD Graphics 5500, Share (Dùng chung bộ nhớ với RAM)</DT>
	<DT>Ðĩa quang:               DVD Super Multi Double Layer</DT>
	<DT>Webcam:                 0.9 MP(16:9)</DT>
	<DT>Chất liệu vỏ:            Vỏ nhựa</DT>
	<DT>Cổng giao tiếp:       2 x USB 2.0, HDMI, LAN (RJ45), USB 3.0</DT>
	<DT>Kết nối khác:           Bluetooth v4.0</DT>
	<DT>PIN/Battery:            Li-Ion 4 cell</DT>
	<DT>Trọng lượng(Kg):   2.14 kg</DT>
</DL>', N'10290000.0000', N'4', N'20', N'0')
GO
GO
INSERT INTO [dbo].[Products] ([ProID], [ProName], [TinyDes], [FullDes], [Price], [ManufacturerID], [Quantity], [Views]) VALUES (N'34', N'HP Pavilion 14 ab132TU i3 5020U/4GB/500GB/Win10
', N'Laptop HP Pavilion 14 ab132TU i3 5020U/4GB/500GB/Win10', N'<P>Thông số kĩ thuật<P>
<DL>
	<DT>HĐH:				Windows 10 Home</DT>	
	<DT>CPU:                         Intel, Core i3 Broadwell, 5020U, 2.20 GHz</DT>
	<DT>RAM:                        DDR3L (2 khe RAM), 4 GB, 1600 MHz</DT>
	<DT>Đĩa cứng:                 HDD, 500 GB</DT>
	<DT>Màn hình rộng:      14 inch, HD (1366 x 768 pixels)</DT>
	<DT>Cảm ứng:                Không</DT>
	<DT>Ðồ hoạ:                    	Intel® HD Graphics 5500, Share 1792 MB</DT>
	<DT>Ðĩa quang:               DVD Super Multi Double Layer</DT>
	<DT>Webcam:                 0.9 MP(16:9)</DT>
	<DT>Chất liệu vỏ:            Vỏ nhựa</DT>
	<DT>Cổng giao tiếp:       2 x USB 3.0, HDMI, LAN (RJ45), USB 2.0</DT>
	<DT>Kết nối khác:           Bluetooth v4.0</DT>
	<DT>PIN/Battery:            Li-Ion 4 cell</DT>
	<DT>Trọng lượng(Kg):   1.96 kg</DT></DT>
</DL>', N'11690000.0000', N'4', N'11', N'0')
GO
GO
INSERT INTO [dbo].[Products] ([ProID], [ProName], [TinyDes], [FullDes], [Price], [ManufacturerID], [Quantity], [Views]) VALUES (N'35', N'HP Pavilion 14 ab117TU i3 6100U/4GB/500GB/Win10
', N'Laptop HP Pavilion 14 ab117TU i3 6100U/4GB/500GB/Win10', N'<P>Thông số kĩ thuật<P>
<DL>
	<DT>HĐH:				Windows 10 Home</DT>	
	<DT>CPU:                         Intel, Core i3 Skylake, 6100U, 2.30 GHz</DT>
	<DT>RAM:                        DDR3L (2 khe RAM), 4 GB, 1600 MHz</DT>
	<DT>Đĩa cứng:                 HDD, 500 GB</DT>
	<DT>Màn hình rộng:      14 inch, HD (1366 x 768 pixels)</DT>
	<DT>Cảm ứng:                Không</DT>
	<DT>Ðồ hoạ:                    	Intel® HD Graphics 520, Share (Dùng chung bộ nhớ với RAM)</DT>
	<DT>Ðĩa quang:               DVD Super Multi Double Layer</DT>
	<DT>Webcam:                 0.9 MP(16:9)</DT>
	<DT>Chất liệu vỏ:            Vỏ nhựa</DT>
	<DT>Cổng giao tiếp:       2 x USB 3.0, HDMI, LAN (RJ45), USB 2.0</DT>
	<DT>Kết nối khác:           Bluetooth v4.0</DT>
	<DT>PIN/Battery:            Li-Ion 4 cell</DT>
	<DT>Trọng lượng(Kg):   1.96 kg</DT>
</DL>', N'11990000.0000', N'4', N'8', N'0')
GO
GO
INSERT INTO [dbo].[Products] ([ProID], [ProName], [TinyDes], [FullDes], [Price], [ManufacturerID], [Quantity], [Views]) VALUES (N'36', N'HP 14 ac170TU i5 5200U/4GB/500GB/Win 10
', N'Laptop HP 14 ac170TU i5 5200U/4GB/500GB/Win 10', N'<P>Thông số kĩ thuật<P>
<DL>
	<DT>HĐH:				Windows 10 Home</DT>
	<DT>CPU:                         Intel, Core i5 Broadwell, 5200U, 2.20 GHz</DT>
	<DT>RAM:                        DDR3L (2 khe RAM), 4 GB, 1600 MHz</DT>
	<DT>Đĩa cứng:                 HDD, 500 GB</DT>
	<DT>Màn hình rộng:      14 inch, HD (1366 x 768 pixels)</DT>
	<DT>Cảm ứng:                Không</DT>
	<DT>Ðồ hoạ:                    Intel® HD Graphics 5500, Share (Dùng chung bộ nhớ với RAM)</DT>
	<DT>Ðĩa quang:               DVD Super Multi Double Layer</DT>
	<DT>Webcam:                 0.9 MP(16:9)</DT>
	<DT>Chất liệu vỏ:            Vỏ nhựa</DT>
	<DT>Cổng giao tiếp:       	2 x USB 2.0, HDMI, LAN (RJ45), USB 3.0</DT>
	<DT>Kết nối khác:           Bluetooth v4.0</DT>
	<DT>PIN/Battery:            Li-Ion 4 cell</DT>
	<DT>Trọng lượng(Kg):   2.14 kg</DT>
</DL>', N'12490000.0000', N'4', N'12', N'0')
GO
GO
INSERT INTO [dbo].[Products] ([ProID], [ProName], [TinyDes], [FullDes], [Price], [ManufacturerID], [Quantity], [Views]) VALUES (N'37', N'HP 14 ac180TU i5 6200U/4GB/500GB/Win10
', N'Laptop HP 14 ac180TU i5 6200U/4GB/500GB/Win10', N'<P>Thông số kĩ thuật<P>
<DL>
	<DT>HĐH:				Windows 10 Home</DT>
	<DT>CPU:                         Intel, Core i5 Skylake, 6200U, 2.30 GHz</DT>
	<DT>RAM:                        DDR3L (2 khe RAM), 4 GB, 1600 MHz</DT>
	<DT>Đĩa cứng:                 HDD, 500 GB</DT>
	<DT>Màn hình rộng:      14 inch, HD (1366 x 768 pixels)</DT>
	<DT>Cảm ứng:                Không</DT>
	<DT>Ðồ hoạ:                    Intel® HD Graphics 520, Share (Dùng chung bộ nhớ với RAM)</DT>
	<DT>Ðĩa quang:               DVD Super Multi Double Layer</DT>
	<DT>Webcam:                 0.9 MP(16:9)</DT>
	<DT>Chất liệu vỏ:            Vỏ nhựa</DT>
	<DT>Cổng giao tiếp:       2 x USB 2.0, HDMI, LAN (RJ45), USB 3.0</DT>
	<DT>Kết nối khác:           Bluetooth v4.0</DT>
	<DT>PIN/Battery:            Li-Ion 4 cell</DT>
	<DT>Trọng lượng(Kg):   2.14 kg</DT>
</DL>', N'12990000.0000', N'4', N'26', N'0')
GO
GO
INSERT INTO [dbo].[Products] ([ProID], [ProName], [TinyDes], [FullDes], [Price], [ManufacturerID], [Quantity], [Views]) VALUES (N'38', N'HP Pavilion 14 ab120TU i5 6200U/4GB/500GB/Win10
', N'Laptop HP Pavilion 14 ab120TU i5 6200U/4GB/500GB/Win10', N'<P>Thông số kĩ thuật<P>
<DL>
	<DT>HĐH:				Windows 10 Home</DT>	
	<DT>CPU:                         Intel, Core i5 Skylake, 6200U, 2.30 GHz</DT>
	<DT>RAM:                        DDR3L (2 khe RAM), 4 GB, 1600 MHz</DT>
	<DT>Đĩa cứng:                 HDD, 500 GB</DT>
	<DT>Màn hình rộng:      14 inch, HD (1366 x 768 pixels)</DT>
	<DT>Cảm ứng:                Không</DT>
	<DT>Ðồ hoạ:                    Intel® HD Graphics 520, Share (Dùng chung bộ nhớ với RAM)</DT>
	<DT>Ðĩa quang:               DVD Super Multi Double Layer</DT>
	<DT>Webcam:                 0.9 MP(16:9)</DT>
	<DT>Chất liệu vỏ:            Vỏ nhựa</DT>
	<DT>Cổng giao tiếp:       2 x USB 3.0, HDMI, LAN (RJ45), USB 2.0</DT>
	<DT>Kết nối khác:           Bluetooth v4.0</DT>
	<DT>PIN/Battery:            Li-Ion 4 cell</DT>
	<DT>Trọng lượng(Kg):   1.96 kg</DT>
</DL>', N'13990000.0000', N'4', N'30', N'0')
GO
GO
INSERT INTO [dbo].[Products] ([ProID], [ProName], [TinyDes], [FullDes], [Price], [ManufacturerID], [Quantity], [Views]) VALUES (N'39', N'HP 15 ac174TX i5 5200U/4GB/500GB/VGA2GB/Win10
', N'Laptop HP 15 ac174TX i5 5200U/4GB/500GB/VGA2GB/Win10', N'<P>Thông số kĩ thuật<P>
<DL>
	<DT>HĐH:				Windows 10 Home</DT>	
	<DT>CPU:                         Intel, Core i5 Broadwell, 5200U, 2.20 GHz</DT>
	<DT>RAM:                        DDR3L (2 khe RAM), 4 GB, 1600 MHz</DT>
	<DT>Đĩa cứng:                 HDD, 500 GB</DT>
	<DT>Màn hình rộng:      15.6 inch, HD (1366 x 768 pixels)</DT>
	<DT>Cảm ứng:                Không</DT>
	<DT>Ðồ hoạ:                    	AMD Radeon R5 M330, 2 GB</DT>
	<DT>Ðĩa quang:               DVD Super Multi Double Layer</DT>
	<DT>Webcam:                 0.9 MP(16:9)</DT>
	<DT>Chất liệu vỏ:            Vỏ nhựa</DT>
	<DT>Cổng giao tiếp:       2 x USB 2.0, HDMI, LAN (RJ45), USB 3.0</DT>
	<DT>Kết nối khác:           Bluetooth v4.0</DT>
	<DT>PIN/Battery:            Li-Ion 4 cell</DT>
	<DT>Trọng lượng(Kg):   2.14 kg</DT>
</DL>', N'14290000.0000', N'4', N'19', N'0')
GO
GO
INSERT INTO [dbo].[Products] ([ProID], [ProName], [TinyDes], [FullDes], [Price], [ManufacturerID], [Quantity], [Views]) VALUES (N'40', N'HP Pavilion 15 ab535TX i5 6200U/4GB/500GB/2GB 940M/Win10
', N'Laptop HP Pavilion 15 ab535TX i5 6200U/4GB/500GB/2GB 940M/Win10', N'<P>Thông số kĩ thuật<P>
<DL>
	<DT>HĐH:				Windows 10 Home</DT>	
	<DT>CPU:                         Intel, Core i5 Skylake, 6200U, 2.30 GHz</DT>
	<DT>RAM:                        DDR3L (2 khe RAM), 4 GB, 1600 MHz</DT>
	<DT>Đĩa cứng:                 HDD, 500 GB</DT>
	<DT>Màn hình rộng:      15.6 inch, HD (1366 x 768 pixels)</DT>
	<DT>Cảm ứng:                Không</DT>
	<DT>Ðồ hoạ:                    	NVIDIA® GeForce® 940M, 2 GB</DT>
	<DT>Ðĩa quang:               DVD Super Multi Double Layer</DT>
	<DT>Webcam:                 0.9 MP(16:9)</DT>
	<DT>Chất liệu vỏ:            Vỏ nhựa</DT>
	<DT>Cổng giao tiếp:		  2 x USB 3.0, HDMI, LAN (RJ45), USB 2.0</DT>
	<DT>Kết nối khác:           Bluetooth v4.0</DT>
	<DT>PIN/Battery:            Li-Ion 4 cell</DT>
	<DT>Trọng lượng(Kg):   2.1 kg</DT>
</DL>', N'15690000.0000', N'4', N'20', N'0')
GO
GO
INSERT INTO [dbo].[Products] ([ProID], [ProName], [TinyDes], [FullDes], [Price], [ManufacturerID], [Quantity], [Views]) VALUES (N'41', N'Lenovo IdeaPad 100S 11IBY Z3735/2GB/32GB/Win10
', N'Laptop Lenovo IdeaPad 100S 11IBY Z3735/2GB/32GB/Win10', N'<P>Thông số kĩ thuật<P>
<DL>
	<DT>HĐH:				Windows 10 Home</DT>
	<DT>CPU:                         Intel, Atom, Z3735F Quad-Core, 1.33 GHz</DT>
	<DT>RAM:                        DDR3L(On board), 2 GB, 1600 MHz</DT>
	<DT>Đĩa cứng:                 eMMC, 32 GB</DT>
	<DT>Màn hình rộng:      11.6 inch, WXGA+ (1366 x 768 pixels)</DT>
	<DT>Cảm ứng:                Không</DT>
	<DT>Ðồ hoạ:                    Intel® HD Graphics, Share (Dùng chung bộ nhớ với RAM)</DT>
	<DT>Ðĩa quang:               Không</DT>
	<DT>Webcam:                 0.3 MP</DT>
	<DT>Chất liệu vỏ:            Vỏ nhựa</DT>
	<DT>Cổng giao tiếp:       2 x USB 2.0, HDMI, Micro SD</DT>
	<DT>Kết nối khác:           Bluetooth v4.0</DT>
	<DT>PIN/Battery:            2 cell 8.400 mAh</DT>
	<DT>Trọng lượng(Kg):   1 kg</DT>
</DL>', N'3990000.0000', N'5', N'20', N'0')
GO
GO
INSERT INTO [dbo].[Products] ([ProID], [ProName], [TinyDes], [FullDes], [Price], [ManufacturerID], [Quantity], [Views]) VALUES (N'42', N'Lenovo IdeaPad 100 14IBY N2840/2GB/500GB/Win10
', N'Laptop Lenovo IdeaPad 100 14IBY N2840/2GB/500GB/Win10', N'<P>Thông số kĩ thuật<P>
<DL>
	<DT>HĐH:				Windows 10 Home</DT>
	<DT>CPU:                         Intel, Celeron, N2840, 2.16 GHz</DT>
	<DT>RAM:                        DDR3L (1 khe RAM), 2 GB, 1600 MHz</DT>
	<DT>Đĩa cứng:                 HDD, 500 GB</DT>
	<DT>Màn hình rộng:      14 inch, HD (1366 x 768 pixels)</DT>
	<DT>Cảm ứng:                Không</DT>
	<DT>Ðồ hoạ:                    Integrated Graphics, Share (Dùng chung bộ nhớ với RAM)</DT>
	<DT>Ðĩa quang:               Không</DT>
	<DT>Webcam:                 0.3 MP</DT>
	<DT>Chất liệu vỏ:            Vỏ nhựa</DT>
	<DT>Cổng giao tiếp:       HDMI, LAN (RJ45), USB 2.0, USB 3.0</DT>
	<DT>Kết nối khác:           Bluetooth v4.0</DT>
	<DT>PIN/Battery:            Li-Ion 2 cell</DT>
	<DT>Trọng lượng(Kg):   1.9 kg</DT>
</DL>', N'5490000.0000', N'5', N'9', N'0')
GO
GO
INSERT INTO [dbo].[Products] ([ProID], [ProName], [TinyDes], [FullDes], [Price], [ManufacturerID], [Quantity], [Views]) VALUES (N'43', N'Lenovo IdeaPad 100 14IBY N3540/2GB/500GB/Win10
', N'Laptop Lenovo IdeaPad 100 14IBY N3540/2GB/500GB/Win10', N'<P>Thông số kĩ thuật<P>
<DL>
	<DT>HĐH:				Windows 10 Home</DT>	
	<DT>CPU:                         Intel, Pentium, N3540, 2.16 GHz</DT>
	<DT>RAM:                        DDR3L (1 khe RAM), 2 GB, 1600 MHz</DT>
	<DT>Đĩa cứng:                 HDD, 500 GB</DT>
	<DT>Màn hình rộng:      14 inch, HD (1366 x 768 pixels)</DT>
	<DT>Cảm ứng:                Không</DT>
	<DT>Ðồ hoạ:                    Integrated Graphics, Share (Dùng chung bộ nhớ với RAM)</DT>
	<DT>Ðĩa quang:               Không</DT>
	<DT>Webcam:                 0.3 MP</DT>
	<DT>Chất liệu vỏ:            Vỏ nhựa</DT>
	<DT>Cổng giao tiếp:       HDMI, LAN (RJ45), USB 2.0, USB 3.0</DT>
	<DT>Kết nối khác:           Bluetooth v4.0</DT>
	<DT>PIN/Battery:            Li-Ion 2 cell</DT>
	<DT>Trọng lượng(Kg):   1.9 kg</DT>
</DL>', N'5990000.0000', N'5', N'11', N'0')
GO
GO
INSERT INTO [dbo].[Products] ([ProID], [ProName], [TinyDes], [FullDes], [Price], [ManufacturerID], [Quantity], [Views]) VALUES (N'44', N'Lenovo Yoga 300 11IBR N3710/4GB/32GB/Win10
', N'Laptop Lenovo Yoga 300 11IBR N3710/4GB/32GB/Win10', N'<P>Thông số kĩ thuật<P>
<DL>
	<DT>HĐH:				Windows 10 Home</DT>	
	<DT>CPU:                         Intel, Pentium, N3710, 1.60 GHz</DT>
	<DT>RAM:                        DDR3L (1 khe RAM), 4 GB, 1600 MHz</DT>
	<DT>Đĩa cứng:                 eMMC, 32 GB</DT>
	<DT>Màn hình rộng:      11.6 inch, HD (1366 x 768 pixels)</DT>
	<DT>Cảm ứng:                Có</DT>
	<DT>Ðồ hoạ:                    	Intel® HD Graphics 405, Share (Dùng chung bộ nhớ với RAM)</DT>
	<DT>Ðĩa quang:               Không</DT>
	<DT>Webcam:                 0.9 MP(16:9)</DT>
	<DT>Chất liệu vỏ:            Vỏ nhựa</DT>
	<DT>Cổng giao tiếp:       2 x USB 2.0, HDMI, LAN (RJ45), USB 3.0</DT>
	<DT>Kết nối khác:           Bluetooth v4.0</DT>
	<DT>PIN/Battery:            Li-Ion 2 cell</DT>
	<DT>Trọng lượng(Kg):   1.39 kg</DT>
</DL>', N'7990000.0000', N'5', N'34', N'0')
GO
GO
INSERT INTO [dbo].[Products] ([ProID], [ProName], [TinyDes], [FullDes], [Price], [ManufacturerID], [Quantity], [Views]) VALUES (N'45', N'Lenovo IdeaPad 100 14IBD i3 5005U/4GB/500GB/W10
', N'Laptop Lenovo IdeaPad 100 14IBD i3 5005U/4GB/500GB/W10', N'<P>Thông số kĩ thuật<P>
<DL>
	<DT>HĐH:				Windows 10 Home</DT>	
	<DT>CPU:                         Intel, Core i3 Broadwell, 5005U, 2.00 GHz</DT>
	<DT>RAM:                        DDR3L (1 khe RAM), 4 GB, 1600 MHz</DT>
	<DT>Đĩa cứng:                 HDD, 500 GB</DT>
	<DT>Màn hình rộng:      14 inch, HD (1366 x 768 pixels)</DT>
	<DT>Cảm ứng:                Không</DT>
	<DT>Ðồ hoạ:                    	Integrated Graphics, Share (Dùng chung bộ nhớ với RAM)</DT>
	<DT>Ðĩa quang:               DVD Super Multi Double Layer</DT>
	<DT>Webcam:                 0.3 MP</DT>
	<DT>Chất liệu vỏ:            Vỏ nhựa</DT>
	<DT>Cổng giao tiếp:       HDMI, LAN (RJ45), USB 2.0, USB 3.0</DT>
	<DT>Kết nối khác:           Bluetooth v4.0</DT>
	<DT>PIN/Battery:            Li-Ion 2 cell</DT>
	<DT>Trọng lượng(Kg):   1.9 kg</DT>
</DL>', N'8490000.0000', N'5', N'27', N'0')
GO
GO
INSERT INTO [dbo].[Products] ([ProID], [ProName], [TinyDes], [FullDes], [Price], [ManufacturerID], [Quantity], [Views]) VALUES (N'46', N'Yoga 500 14IBD i3 5020U/4GB/500GB/Touch/Win10
', N'Laptop Lenovo Yoga 500 14IBD i3 5020U/4GB/500GB/Touch/Win10', N'<P>Thông số kĩ thuật<P>
<DL>
	<DT>HĐH:				Windows 10 Home</DT>
	<DT>CPU:                         Intel, Core i3 Broadwell, 5020U, 2.20 GHz</DT>
	<DT>RAM:                        DDR3L (1 khe RAM), 4 GB, 1600 MHz</DT>
	<DT>Đĩa cứng:                 HDD, 500 GB</DT>
	<DT>Màn hình rộng:      14 inch, FHD (1920 x 1080 pixels)</DT>
	<DT>Cảm ứng:                Có</DT>
	<DT>Ðồ hoạ:                    Intel® HD Graphics 5500, Share (Dùng chung bộ nhớ với RAM)</DT>
	<DT>Ðĩa quang:               Không</DT>
	<DT>Webcam:                 0.9 MP(16:9)</DT>
	<DT>Chất liệu vỏ:            Vỏ nhựa</DT>
	<DT>Cổng giao tiếp:       	2 x USB 3.0, Micro HDMI, LAN (RJ45), USB 2.0</DT>
	<DT>Kết nối khác:           Bluetooth v4.0</DT>
	<DT>PIN/Battery:            Li-Ion 3 cell</DT>
	<DT>Trọng lượng(Kg):   1.8 kg</DT>
</DL>', N'11690000.0000', N'5', N'17', N'0')
GO
GO
INSERT INTO [dbo].[Products] ([ProID], [ProName], [TinyDes], [FullDes], [Price], [ManufacturerID], [Quantity], [Views]) VALUES (N'47', N'Lenovo Yoga 500 i5 6200U/4GB/500GB/Win10
', N'Laptop Lenovo Yoga 500 i5 6200U/4GB/500GB/Win10', N'<P>Thông số kĩ thuật<P>
<DL>
	<DT>HĐH:				Windows 10 Home</DT>
	<DT>CPU:                         Intel, Core i5 Skylake, 6200U, 2.30 GHz</DT>
	<DT>RAM:                        DDR3L (1 khe RAM), 4 GB, 1600 MHz</DT>
	<DT>Đĩa cứng:                 HDD, 500 GB</DT>
	<DT>Màn hình rộng:      15.6 inch, FHD (1920 x 1080 pixels)</DT>
	<DT>Cảm ứng:                Có</DT>
	<DT>Ðồ hoạ:                    Intel® HD Graphics 520, Share (Dùng chung bộ nhớ với RAM)</DT>
	<DT>Ðĩa quang:               Không</DT>
	<DT>Webcam:                 0.9 MP(16:9)</DT>
	<DT>Chất liệu vỏ:            Vỏ nhựa</DT>
	<DT>Cổng giao tiếp:       2 x USB 3.0, Micro HDMI, LAN (RJ45), USB 2.0</DT>
	<DT>Kết nối khác:           Bluetooth v4.0</DT>
	<DT>PIN/Battery:            Li-Ion 3 cell</DT>
	<DT>Trọng lượng(Kg):   2.1 kg</DT>
</DL>', N'14490000.0000', N'5', N'8', N'0')
GO
GO
INSERT INTO [dbo].[Products] ([ProID], [ProName], [TinyDes], [FullDes], [Price], [ManufacturerID], [Quantity], [Views]) VALUES (N'48', N'Lenovo ThinkPad E460 i5 6200U/4GB/500GB/Win10
', N'Laptop ThinkPad E460 i5 6200U/4GB/500GB/Win10', N'<P>Thông số kĩ thuật<P>
<DL>
	<DT>HĐH:				Windows 10 Home</DT>	
	<DT>CPU:                         Intel, Core i5 Skylake, 6200U, 2.30 GHz</DT>
	<DT>RAM:                        DDR3L (2 khe RAM), 4 GB, 1600 MHz</DT>
	<DT>Đĩa cứng:                 HDD, 500 GB</DT>
	<DT>Màn hình rộng:      14 inch, HD (1366 x 768 pixels)</DT>
	<DT>Cảm ứng:                Không</DT>
	<DT>Ðồ hoạ:                    Intel® HD Graphics 520, Share (Dùng chung bộ nhớ với RAM)</DT>
	<DT>Ðĩa quang:               Không</DT>
	<DT>Webcam:                 0.9 MP(16:9)</DT>
	<DT>Chất liệu vỏ:            Vỏ nhựa</DT>
	<DT>Cổng giao tiếp:       3 x USB 3.0, HDMI, LAN (RJ45)</DT>
	<DT>Kết nối khác:           Bluetooth v4.0</DT>
	<DT>PIN/Battery:            Khoảng 8 tiếng</DT>
	<DT>Trọng lượng(Kg):   1.9 kg</DT>
</DL>', N'14990000.0000', N'5', N'9', N'0')
GO
GO
SET IDENTITY_INSERT [dbo].[Products] OFF
GO

-- ----------------------------
-- Table structure for Users
-- ----------------------------
DROP TABLE [dbo].[Users]
GO
CREATE TABLE [dbo].[Users] (
[f_ID] int NOT NULL IDENTITY(1,1) ,
[f_Username] nvarchar(50) NOT NULL ,
[f_Password] nvarchar(255) NOT NULL ,
[f_Name] nvarchar(255) NOT NULL ,
[f_Email] nvarchar(255) NOT NULL ,
[f_DOB] datetime NOT NULL ,
[f_Permission] int NOT NULL DEFAULT ((0)) 
)


GO
DBCC CHECKIDENT(N'[dbo].[Users]', RESEED, 9)
GO

-- ----------------------------
-- Records of Users
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Users] ON
GO
INSERT INTO [dbo].[Users] ([f_ID], [f_Username], [f_Password], [f_Name], [f_Email], [f_DOB], [f_Permission]) VALUES (N'1', N'hoangtrung', N'5a9e19ec3556fac3a7a2ff564223f615', N'Tống 
Nguyễn Hoàng Trung', N'tnhtrung@gmail.com', N'2016-05-26 00:00:00.000', N'0')
GO
GO
INSERT INTO [dbo].[Users] ([f_ID], [f_Username], [f_Password], [f_Name], [f_Email], [f_DOB], [f_Permission]) VALUES (N'2', N'baodangkc', N'0c2f654a78e5adbc9b8fc465673b0a16', N'Đặng 
Duy Hoài Bảo', N'ddhbao@gmail.com', N'2016-05-27 00:00:00.000', N'0')
GO
GO
INSERT INTO [dbo].[Users] ([f_ID], [f_Username], [f_Password], [f_Name], [f_Email], [f_DOB], [f_Permission]) VALUES (N'3', N'abc', N'E10ADC3949BA59ABBE56E057F20F883E', N'abc', N'abc@gmail.com', N'2016-05-20 00:00:00.000', N'0')
GO
GO
INSERT INTO [dbo].[Users] ([f_ID], [f_Username], [f_Password], [f_Name], [f_Email], [f_DOB], [f_Permission]) VALUES (N'4', N'admin', N'0192023A7BBD73250516F069DF18B500', N'Nguyễn 
Huy Hoàng', N'nhhoang@gmail.com', N'2016-04-28 00:00:00.000', N'1')
GO
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO

-- ----------------------------
-- Indexes structure for table Manufacturer
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Manufacturer
-- ----------------------------
ALTER TABLE [dbo].[Manufacturer] ADD PRIMARY KEY ([ManufacturerID])
GO

-- ----------------------------
-- Indexes structure for table OrderDetails
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table OrderDetails
-- ----------------------------
ALTER TABLE [dbo].[OrderDetails] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table Orders
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Orders
-- ----------------------------
ALTER TABLE [dbo].[Orders] ADD PRIMARY KEY ([OrderID])
GO

-- ----------------------------
-- Indexes structure for table Products
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Products
-- ----------------------------
ALTER TABLE [dbo].[Products] ADD PRIMARY KEY ([ProID])
GO

-- ----------------------------
-- Indexes structure for table Users
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Users
-- ----------------------------
ALTER TABLE [dbo].[Users] ADD PRIMARY KEY ([f_ID])
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[OrderDetails]
-- ----------------------------
ALTER TABLE [dbo].[OrderDetails] ADD FOREIGN KEY ([OrderID]) REFERENCES [dbo].[Orders] ([OrderID]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] ADD FOREIGN KEY ([ProID]) REFERENCES [dbo].[Products] ([ProID]) ON DELETE CASCADE ON UPDATE CASCADE
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[Orders]
-- ----------------------------
ALTER TABLE [dbo].[Orders] ADD FOREIGN KEY ([UserID]) REFERENCES [dbo].[Users] ([f_ID]) ON DELETE CASCADE ON UPDATE CASCADE
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[Products]
-- ----------------------------
ALTER TABLE [dbo].[Products] ADD FOREIGN KEY ([ManufacturerID]) REFERENCES [dbo].[Manufacturer] ([ManufacturerID]) ON DELETE CASCADE ON UPDATE CASCADE
GO
