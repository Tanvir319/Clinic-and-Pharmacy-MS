USE [master]
GO
/****** Object:  Database [C#Pharma]    Script Date: 17/05/2020 22:16:17 ******/
CREATE DATABASE [C#Pharma]

GO
ALTER DATABASE [C#Pharma] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [C#Pharma] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [C#Pharma] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [C#Pharma] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [C#Pharma] SET ARITHABORT OFF 
GO
ALTER DATABASE [C#Pharma] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [C#Pharma] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [C#Pharma] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [C#Pharma] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [C#Pharma] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [C#Pharma] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [C#Pharma] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [C#Pharma] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [C#Pharma] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [C#Pharma] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [C#Pharma] SET  DISABLE_BROKER 
GO
ALTER DATABASE [C#Pharma] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [C#Pharma] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [C#Pharma] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [C#Pharma] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [C#Pharma] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [C#Pharma] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [C#Pharma] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [C#Pharma] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [C#Pharma] SET  MULTI_USER 
GO
ALTER DATABASE [C#Pharma] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [C#Pharma] SET DB_CHAINING OFF 
GO
ALTER DATABASE [C#Pharma] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [C#Pharma] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [C#Pharma]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 17/05/2020 22:16:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[AdminId] [nchar](15) NOT NULL,
	[name] [nvarchar](50) NULL,
	[phone] [nchar](12) NULL,
	[password] [nvarchar](50) NOT NULL,
	[hiredate] [date] NULL,
	[resigndate] [date] NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[AdminId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Appointment]    Script Date: 17/05/2020 22:16:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Appointment](
	[AppointmentId] [nchar](15) NOT NULL,
	[PatientName] [nvarchar](50) NULL,
	[PatientAge] [int] NULL,
	[phone] [nchar](12) NULL,
	[DoctorId] [nchar](15) NOT NULL,
	[ReceptionistId] [nchar](15) NOT NULL,
	[Date] [date] NULL,
 CONSTRAINT [PK_Appointment] PRIMARY KEY CLUSTERED 
(
	[AppointmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Doctor]    Script Date: 17/05/2020 22:16:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctor](
	[DoctorId] [nchar](15) NOT NULL,
	[name] [nvarchar](50) NULL,
	[phone] [nchar](12) NULL,
	[AdminId] [nchar](15) NULL,
	[hiredate] [date] NULL,
	[resigndate] [date] NULL,
 CONSTRAINT [PK_Doctor] PRIMARY KEY CLUSTERED 
(
	[DoctorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Medicine]    Script Date: 17/05/2020 22:16:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicine](
	[MedicineId] [nchar](15) NOT NULL,
	[name] [nvarchar](50) NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
	[AdminId] [nchar](15) NOT NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[MedicineId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MedicineList]    Script Date: 17/05/2020 22:16:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicineList](
	[SalesId] [nchar](15) NULL,
	[MedicineId] [nchar](15) NULL,
	[Quantity] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pharmacist]    Script Date: 17/05/2020 22:16:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pharmacist](
	[PharmacistId] [nchar](15) NOT NULL,
	[name] [nvarchar](50) NULL,
	[phone] [nchar](12) NULL,
	[password] [nvarchar](50) NOT NULL,
	[AdminId] [nchar](15) NULL,
	[hiredate] [date] NULL,
	[resigndate] [date] NULL,
 CONSTRAINT [PK_Pharmacist] PRIMARY KEY CLUSTERED 
(
	[PharmacistId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Receptionist]    Script Date: 17/05/2020 22:16:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receptionist](
	[ReceptionistId] [nchar](15) NOT NULL,
	[name] [nvarchar](50) NULL,
	[phone] [nchar](12) NULL,
	[password] [nvarchar](50) NOT NULL,
	[AdminId] [nchar](15) NOT NULL,
	[hiredate] [date] NULL,
	[resigndate] [date] NULL,
 CONSTRAINT [PK_Reciptionist] PRIMARY KEY CLUSTERED 
(
	[ReceptionistId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SalesRecord]    Script Date: 17/05/2020 22:16:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesRecord](
	[SalesID] [nchar](15) NOT NULL,
	[PharmacistId] [nchar](15) NULL,
	[TotalCost] [float] NULL,
	[date] [smalldatetime] NULL,
 CONSTRAINT [PK_SalesRecord] PRIMARY KEY CLUSTERED 
(
	[SalesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Admin] ([AdminId], [name], [phone], [password], [hiredate], [resigndate]) VALUES (N'A100           ', N'Fayyadh Kabir', N'01911111112 ', N'1234', CAST(0x63400B00 AS Date), NULL)
INSERT [dbo].[Admin] ([AdminId], [name], [phone], [password], [hiredate], [resigndate]) VALUES (N'A101           ', N'Mozammel Hossain', N'01923923923 ', N'123', CAST(0x5D400B00 AS Date), NULL)
INSERT [dbo].[Admin] ([AdminId], [name], [phone], [password], [hiredate], [resigndate]) VALUES (N'A102           ', N'Chisty', N'01959137247 ', N'popol', CAST(0x14410B00 AS Date), NULL)
INSERT [dbo].[Admin] ([AdminId], [name], [phone], [password], [hiredate], [resigndate]) VALUES (N'A103           ', N'Moshiur Rahman', N'01949283492 ', N'popol', CAST(0x14410B00 AS Date), NULL)
INSERT [dbo].[Admin] ([AdminId], [name], [phone], [password], [hiredate], [resigndate]) VALUES (N'A104           ', N'Bruce Wayne', N'01545454878 ', N'123456', CAST(0x14410B00 AS Date), NULL)
INSERT [dbo].[Admin] ([AdminId], [name], [phone], [password], [hiredate], [resigndate]) VALUES (N'A105           ', N'Dio', N'01548898989 ', N'lolo', CAST(0x18410B00 AS Date), NULL)
INSERT [dbo].[Appointment] ([AppointmentId], [PatientName], [PatientAge], [phone], [DoctorId], [ReceptionistId], [Date]) VALUES (N'AP100          ', N'Ahmed', 20, N'01365497862 ', N'D100           ', N'R100           ', CAST(0xF6400B00 AS Date))
INSERT [dbo].[Appointment] ([AppointmentId], [PatientName], [PatientAge], [phone], [DoctorId], [ReceptionistId], [Date]) VALUES (N'AP101          ', N'chisty', 75, N'01959137247 ', N'D102           ', N'R100           ', CAST(0x18410B00 AS Date))
INSERT [dbo].[Appointment] ([AppointmentId], [PatientName], [PatientAge], [phone], [DoctorId], [ReceptionistId], [Date]) VALUES (N'AP102          ', N'Leo', 62, N'01844545421 ', N'D103           ', N'R100           ', CAST(0x18410B00 AS Date))
INSERT [dbo].[Appointment] ([AppointmentId], [PatientName], [PatientAge], [phone], [DoctorId], [ReceptionistId], [Date]) VALUES (N'AP103          ', N'Popol', 54, N'01595454545 ', N'D102           ', N'R100           ', CAST(0xF6410B00 AS Date))
INSERT [dbo].[Appointment] ([AppointmentId], [PatientName], [PatientAge], [phone], [DoctorId], [ReceptionistId], [Date]) VALUES (N'AP104          ', N'AMY', 45, N'01154545545 ', N'D105           ', N'R100           ', CAST(0x19410B00 AS Date))
INSERT [dbo].[Doctor] ([DoctorId], [name], [phone], [AdminId], [hiredate], [resigndate]) VALUES (N'D100           ', N'DR.AMANUL HAQ', N'01865324567 ', N'A100           ', NULL, NULL)
INSERT [dbo].[Doctor] ([DoctorId], [name], [phone], [AdminId], [hiredate], [resigndate]) VALUES (N'D101           ', N'MD.KHURSHED ALAM', N'01574879657 ', N'A100           ', CAST(0xBA400B00 AS Date), CAST(0x19410B00 AS Date))
INSERT [dbo].[Doctor] ([DoctorId], [name], [phone], [AdminId], [hiredate], [resigndate]) VALUES (N'D102           ', N'Dr.Nazmul Haq', N'01236587654 ', N'A100           ', CAST(0xBA400B00 AS Date), NULL)
INSERT [dbo].[Doctor] ([DoctorId], [name], [phone], [AdminId], [hiredate], [resigndate]) VALUES (N'D103           ', N'Dr.Shafiul Alam', N'01928394952 ', N'A100           ', CAST(0x18410B00 AS Date), NULL)
INSERT [dbo].[Doctor] ([DoctorId], [name], [phone], [AdminId], [hiredate], [resigndate]) VALUES (N'D104           ', N'Mafiur Rahman', N'01959137247 ', N'A100           ', CAST(0x18410B00 AS Date), NULL)
INSERT [dbo].[Doctor] ([DoctorId], [name], [phone], [AdminId], [hiredate], [resigndate]) VALUES (N'D105           ', N'Monirul Haq', N'01548885545 ', N'A100           ', CAST(0x18410B00 AS Date), NULL)
INSERT [dbo].[Doctor] ([DoctorId], [name], [phone], [AdminId], [hiredate], [resigndate]) VALUES (N'D106           ', N'Dr Salim Uddin', N'01233564646 ', N'A100           ', CAST(0x19410B00 AS Date), NULL)
INSERT [dbo].[Medicine] ([MedicineId], [name], [price], [quantity], [AdminId]) VALUES (N'M100           ', N'Napa', 20, 105, N'A100           ')
INSERT [dbo].[Medicine] ([MedicineId], [name], [price], [quantity], [AdminId]) VALUES (N'M101           ', N'Nitrogen', 24, 189, N'A100           ')
INSERT [dbo].[Medicine] ([MedicineId], [name], [price], [quantity], [AdminId]) VALUES (N'M102           ', N'Potasium', 100, 37, N'A100           ')
INSERT [dbo].[Medicine] ([MedicineId], [name], [price], [quantity], [AdminId]) VALUES (N'M103           ', N'Critical', 234, 18, N'A100           ')
INSERT [dbo].[Medicine] ([MedicineId], [name], [price], [quantity], [AdminId]) VALUES (N'M104           ', N'Napa', 25, 100, N'A100           ')
INSERT [dbo].[Medicine] ([MedicineId], [name], [price], [quantity], [AdminId]) VALUES (N'M105           ', N'Moxal', 45, 2, N'A101           ')
INSERT [dbo].[Medicine] ([MedicineId], [name], [price], [quantity], [AdminId]) VALUES (N'M106           ', N'Lysol', 23, 12, N'A100           ')
INSERT [dbo].[MedicineList] ([SalesId], [MedicineId], [Quantity]) VALUES (N'S100           ', N'M100           ', 2)
INSERT [dbo].[MedicineList] ([SalesId], [MedicineId], [Quantity]) VALUES (N'S102           ', N'M101           ', 7)
INSERT [dbo].[MedicineList] ([SalesId], [MedicineId], [Quantity]) VALUES (N'S101           ', N'M101           ', 2)
INSERT [dbo].[MedicineList] ([SalesId], [MedicineId], [Quantity]) VALUES (N'S102           ', N'M102           ', 2)
INSERT [dbo].[MedicineList] ([SalesId], [MedicineId], [Quantity]) VALUES (N'S102           ', N'M103           ', 2)
INSERT [dbo].[MedicineList] ([SalesId], [MedicineId], [Quantity]) VALUES (N'S103           ', N'M101           ', 1)
INSERT [dbo].[MedicineList] ([SalesId], [MedicineId], [Quantity]) VALUES (N'S103           ', N'M102           ', 2)
INSERT [dbo].[MedicineList] ([SalesId], [MedicineId], [Quantity]) VALUES (N'S103           ', N'M103           ', 1)
INSERT [dbo].[MedicineList] ([SalesId], [MedicineId], [Quantity]) VALUES (N'S104           ', N'M102           ', 1)
INSERT [dbo].[MedicineList] ([SalesId], [MedicineId], [Quantity]) VALUES (N'S104           ', N'M103           ', 2)
INSERT [dbo].[Pharmacist] ([PharmacistId], [name], [phone], [password], [AdminId], [hiredate], [resigndate]) VALUES (N'P100           ', N'Tausif', N'01755445588 ', N'1234', N'A100           ', CAST(0xEE400B00 AS Date), NULL)
INSERT [dbo].[Pharmacist] ([PharmacistId], [name], [phone], [password], [AdminId], [hiredate], [resigndate]) VALUES (N'P101           ', N'Chisty', N'01545454232 ', N'123456', N'A101           ', CAST(0x14410B00 AS Date), NULL)
INSERT [dbo].[Pharmacist] ([PharmacistId], [name], [phone], [password], [AdminId], [hiredate], [resigndate]) VALUES (N'P102           ', N'Muzammel Hossain', N'01959137249 ', N'kaja', N'A100           ', CAST(0x19410B00 AS Date), NULL)
INSERT [dbo].[Receptionist] ([ReceptionistId], [name], [phone], [password], [AdminId], [hiredate], [resigndate]) VALUES (N'R100           ', N'Randy', N'01955778845 ', N'1234', N'A100           ', CAST(0x9F3F0B00 AS Date), NULL)
INSERT [dbo].[Receptionist] ([ReceptionistId], [name], [phone], [password], [AdminId], [hiredate], [resigndate]) VALUES (N'R101           ', N'Chisty', N'01545454871 ', N'123456', N'A101           ', CAST(0x14410B00 AS Date), NULL)
INSERT [dbo].[Receptionist] ([ReceptionistId], [name], [phone], [password], [AdminId], [hiredate], [resigndate]) VALUES (N'R102           ', N'Check', N'01548949545 ', N'1234', N'A100           ', CAST(0x18410B00 AS Date), NULL)
INSERT [dbo].[Receptionist] ([ReceptionistId], [name], [phone], [password], [AdminId], [hiredate], [resigndate]) VALUES (N'R103           ', N'Orton', N'01545487895 ', N'12345', N'A100           ', CAST(0x18410B00 AS Date), NULL)
INSERT [dbo].[SalesRecord] ([SalesID], [PharmacistId], [TotalCost], [date]) VALUES (N'S100           ', N'P100           ', 0, CAST(0xABB902D0 AS SmallDateTime))
INSERT [dbo].[SalesRecord] ([SalesID], [PharmacistId], [TotalCost], [date]) VALUES (N'S101           ', N'P100           ', 462, CAST(0xABB902D0 AS SmallDateTime))
INSERT [dbo].[SalesRecord] ([SalesID], [PharmacistId], [TotalCost], [date]) VALUES (N'S102           ', N'P100           ', 2285, CAST(0xABB902D0 AS SmallDateTime))
INSERT [dbo].[SalesRecord] ([SalesID], [PharmacistId], [TotalCost], [date]) VALUES (N'S103           ', N'P100           ', 665, CAST(0xABB902D0 AS SmallDateTime))
INSERT [dbo].[SalesRecord] ([SalesID], [PharmacistId], [TotalCost], [date]) VALUES (N'S104           ', N'P100           ', 568, CAST(0xABBE04E6 AS SmallDateTime))
ALTER TABLE [dbo].[Appointment]  WITH CHECK ADD  CONSTRAINT [FK_Appointment_Doctor] FOREIGN KEY([DoctorId])
REFERENCES [dbo].[Doctor] ([DoctorId])
GO
ALTER TABLE [dbo].[Appointment] CHECK CONSTRAINT [FK_Appointment_Doctor]
GO
ALTER TABLE [dbo].[Appointment]  WITH CHECK ADD  CONSTRAINT [FK_Appointment_Reciptionist] FOREIGN KEY([ReceptionistId])
REFERENCES [dbo].[Receptionist] ([ReceptionistId])
GO
ALTER TABLE [dbo].[Appointment] CHECK CONSTRAINT [FK_Appointment_Reciptionist]
GO
ALTER TABLE [dbo].[Doctor]  WITH CHECK ADD  CONSTRAINT [FK_Doctor_Admin] FOREIGN KEY([AdminId])
REFERENCES [dbo].[Admin] ([AdminId])
GO
ALTER TABLE [dbo].[Doctor] CHECK CONSTRAINT [FK_Doctor_Admin]
GO
ALTER TABLE [dbo].[Medicine]  WITH CHECK ADD  CONSTRAINT [FK_Medicine_Admin] FOREIGN KEY([AdminId])
REFERENCES [dbo].[Admin] ([AdminId])
GO
ALTER TABLE [dbo].[Medicine] CHECK CONSTRAINT [FK_Medicine_Admin]
GO
ALTER TABLE [dbo].[MedicineList]  WITH CHECK ADD FOREIGN KEY([MedicineId])
REFERENCES [dbo].[Medicine] ([MedicineId])
GO
ALTER TABLE [dbo].[MedicineList]  WITH CHECK ADD FOREIGN KEY([SalesId])
REFERENCES [dbo].[SalesRecord] ([SalesID])
GO
ALTER TABLE [dbo].[Pharmacist]  WITH CHECK ADD  CONSTRAINT [FK_Pharmacist_Admin] FOREIGN KEY([AdminId])
REFERENCES [dbo].[Admin] ([AdminId])
GO
ALTER TABLE [dbo].[Pharmacist] CHECK CONSTRAINT [FK_Pharmacist_Admin]
GO
ALTER TABLE [dbo].[Receptionist]  WITH CHECK ADD  CONSTRAINT [FK_Reciptionist_Admin] FOREIGN KEY([AdminId])
REFERENCES [dbo].[Admin] ([AdminId])
GO
ALTER TABLE [dbo].[Receptionist] CHECK CONSTRAINT [FK_Reciptionist_Admin]
GO
USE [master]
GO
ALTER DATABASE [C#Pharma] SET  READ_WRITE 
GO
