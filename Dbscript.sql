USE [master]
GO
/****** Object:  Database [Asp.net Mvc_Crud_Entityframework]    Script Date: 12/19/2022 2:12:10 PM ******/
CREATE DATABASE [Asp.net Mvc_Crud_Entityframework]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Asp.net Mvc_Crud_Entityframework', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Asp.net Mvc_Crud_Entityframework.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Asp.net Mvc_Crud_Entityframework_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Asp.net Mvc_Crud_Entityframework_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Asp.net Mvc_Crud_Entityframework] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Asp.net Mvc_Crud_Entityframework].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Asp.net Mvc_Crud_Entityframework] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Asp.net Mvc_Crud_Entityframework] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Asp.net Mvc_Crud_Entityframework] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Asp.net Mvc_Crud_Entityframework] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Asp.net Mvc_Crud_Entityframework] SET ARITHABORT OFF 
GO
ALTER DATABASE [Asp.net Mvc_Crud_Entityframework] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Asp.net Mvc_Crud_Entityframework] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Asp.net Mvc_Crud_Entityframework] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Asp.net Mvc_Crud_Entityframework] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Asp.net Mvc_Crud_Entityframework] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Asp.net Mvc_Crud_Entityframework] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Asp.net Mvc_Crud_Entityframework] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Asp.net Mvc_Crud_Entityframework] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Asp.net Mvc_Crud_Entityframework] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Asp.net Mvc_Crud_Entityframework] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Asp.net Mvc_Crud_Entityframework] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Asp.net Mvc_Crud_Entityframework] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Asp.net Mvc_Crud_Entityframework] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Asp.net Mvc_Crud_Entityframework] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Asp.net Mvc_Crud_Entityframework] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Asp.net Mvc_Crud_Entityframework] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [Asp.net Mvc_Crud_Entityframework] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Asp.net Mvc_Crud_Entityframework] SET RECOVERY FULL 
GO
ALTER DATABASE [Asp.net Mvc_Crud_Entityframework] SET  MULTI_USER 
GO
ALTER DATABASE [Asp.net Mvc_Crud_Entityframework] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Asp.net Mvc_Crud_Entityframework] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Asp.net Mvc_Crud_Entityframework] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Asp.net Mvc_Crud_Entityframework] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Asp.net Mvc_Crud_Entityframework] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Asp.net Mvc_Crud_Entityframework', N'ON'
GO
USE [Asp.net Mvc_Crud_Entityframework]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 12/19/2022 2:12:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 12/19/2022 2:12:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 12/19/2022 2:12:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 12/19/2022 2:12:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 12/19/2022 2:12:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 12/19/2022 2:12:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[records]    Script Date: 12/19/2022 2:12:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[records](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.records] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  View [dbo].[viewdata]    Script Date: 12/19/2022 2:12:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[viewdata]
as
select * from records
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202212110508586_init_Migration', N'Asp.net_Mvc_Crud_Entityframework.Migrations.Configuration', 0x1F8B0800000000000400DD5CDB6EE436127D0F907F10F4940D9C962F99C1ACD19DC069DB4963C7174C7B827D33D812BB2D8C442914E5B1B1C897E5219FB4BFB0A444AA4552D4A5A5BE7811209896C853C5E221592C55F9BF7FFD3DFEF9250CAC6788133F4213FB64746C5B10B991E7A3D5C44EC9F2870FF6CF3F7DFBCDF8CA0B5FACDF45BB33D68EF644C9C47E22243E779CC47D82214846A1EFE228899664E446A103BCC8393D3EFEA77372E2400A61532CCB1A7F4A11F14398FDA03FA71172614C5210DC441E0C12FE9CBE9967A8D62D08611203174EEC8B241E21481E6F9EDDC7294EBDC72B0A455E979836F91AE12FA31CC2B62E021F50F5E63058DA164028228050E5CF3F27704E708456F3983E00C1C36B0C69BB250812C80775BE6EDE767CC7A76C7CCEBAA38072D384446147C093336E3047EDBE91D9EDC2A0D4A4B9BDD8A833B34E6C0CDD087BB6A58A3A9F0698356B6DF3518E7464F1F696A9FD51C1244A38F6DF91354D03926238413025180447D67DBA087CF75FF0F521FA02D104A541501E061D087D273DA08FEE7114434C5E3FC1251F9C4F07E6C8FD1CB563D1ADD4271FF80C91B353DBBAA5C2C12280054B4A469A9308C35F21821810E8DD034220A6933CF36036664DBA228BFD5F48A3B4A4CBCEB66EC0CB478856E46962D37FDAD6B5FF023DF1846BF019F97495D24E04A7B049C885E761982403CB193B6B2AD5124CD8E25314C03A9ADD141CA604BA8564243A8E72C8EB826F65C423AB75BF35EF4EDBF2EEEC64B13CFBF0EE3DF0CEDEFF08CFDE6DC2C1D9061C9C7935B37572FAA1D56C69BCEDC5C5D377EF07917A0B9EFD5536F58A7CBA33634AD24F30C8DE264F7E9CEFDFD27C3FF266D7380AD96F995FF9DBC7799462970D26323679007805494F4A33A8E1692D500F9FDA4C539DDE954DD98036590942C4AE5783D077BB725B33EE228EE9E465D4621619E2B856200FEADC7E2B7BE65508FC60804DB38514EA252F7D1CC26294BF4494A20075D6F91E24099D4EEF37903C6DDDF7984337C594447302C278EBD2EE9F22046FD370C156C8EE640D36350F5FA36BE05297F20AB15EBDF13E46EE97282557C8BBA4EEE967E20A40F6F3C10FDB030CA2CE85EB523FF49A92197AD3885E029B1CED7A38B66BEDDB699906C00FABBD16657F7D144DD79E4B750BCD7B3134ABF260EA54FD18AD7CD44E55D1D4AC6ADEA25155DEACABAA0CAC9DA6BCA559D1AC41A39E79ABC17CC26C8686770A33D8C3F70AFB1DDEDBBF74EFCBA5CCA68F09DDFAD99449FA1D04E9D0A2365A0DD92630FC6AC8600F7F35646AD2C7CFBEC7BC92165725D198C2B76A5F7D0B6B5E738A66BB5E0ED230772D7C377B8069B95C2449E4FAD92AA80892F11087AC3FF5E1ACE678473E1A356642074689EEB3238F3EA163B35552DDA14B184002AD0B378F524F41E2024F37231D90D7413171A25628B68E9DC8CA7DAFC9A44C87987502EC1294D095EA23A22F0B1FB97E0C82462B293D5B1E616CEC850CF5CD258C2162021B2DD1467875A8842950C85126A5C94263A7C4B87A221ABC56D39C37B9B0EB79D722183BE16483EF6CE025F7DFB642CC7A8BED809CF52669A38031ECB70F82F2BB4A5B02A817974323A87263321094BB543B21A86CB13D105436C99B23687E456D3BFFCA7DF5D0E8295F94777FACD79A6B0FDC94EC7160D4CC7D4FDA87D01E10EBF4BC5CB097F085545CCEA89EFC7E96705757A508039F43229C96ECE37F625B6B8F9733432418380D00792447EB2E3BB20D202A0BEB00D74C6D00E55F1C35206D4576504E04036BB5E36E48075811B8AB85E58787025B22918E5DFEF25A6A68FE3EABB2BBD5F5A51859C1066D95B4BA6D94702A08A1EE7EF2C05B18C514D8D50DD3C699EEE24E9706C627A3C6400DAEAFC1486230835B4950B3D94A551E5D179FAE979514FFCB60253198C1ADC439DA6CA40AAFA2835FD1CB44B20F30D06213A192E2B82ADE8D9D3C0D903F183B867CC1F10D88631FAD4AF983FC8935CF9307A73FCCBB27D0853986E32615797485B685241261B082CA5B2A9A6A7AEDE3845C02021680058AA65EA835AB3C9C0DDBBF10299FBFFA348A9340B467FFE6E4EB94D857E1DE70C86B3AE490F9485960BE440853478BA5768200E08AD4BB6914A42132A5EFD5F5CEBF0596FBE74FDA231499726590E2A18E3376140B684E9D667ECDF59667B3DD5C1BD67EFF99969CADEEF35DDFDD64F59932EB55EEF110B3BEA7D9D277C56DCE5CE1D56E3E7B6608D31C884B4D79164C171D338A887B96514CB1D0BDCDA6C9BDED3F83EA75A2FB0436226C6705F224A832007FD411A39447A38195DEB54795539DCA98F29BF6884A3E53195279D541CB72D692A464F9C54678068B56B7682F41CF532AA3EB6FDB2357642C95A12B5E6F805DA1B3FAAE83CFA0273549DE83FEBA3DF63AC349DD590FF88C335E72873DE4F2E048BF53CE80B19D6D729843B2944452062A3DEE88C5D3443430FEFC2029668C100C4BB13C50D68F62060CF31E25E564C85B546D228919534AB4908E81BA4413335E37226F952E5AD4406D52482FA2074A9460CC6FECCDA587DA153E6F625BC28CD405784D080C47ACC168FE47300D7CC8367CD1E006207F0913922717D9A7C7C71F9442C5C3291A7492C40B2A221E7AE5A03C5B3B28CBF3994D1B73007B543FA16780DD2780BF0BC1CB3FCA481B54DB75C0DAACA26E03F3F74BD01423D2D3A5063079C597A819F2E0CBC4FE4FD6EB3C8B49B27F658F8FAC59F219F97FA4F4C50335A8F5A79EFE3D4C014E8B92AF42D13FDF442D557B93CFFEFD98773DB2EE30DDC7CEAD63C5D09B4CBF5C61D5499BBC6B0F6D36AEBB7ABBAB4D2A55AA445556CBE695490B9F0C5295D46B1FAEAC3CEA8558515D3414DE202634550F6D8265AC1CF2E84F92550E751B6C7525D126AA19AB8832BFA0670D51FB6D48F4DCE33954717DDDC596B415FFEBB0CE26AD54A3D742D7CB31B6E915D6955CF47351DE5829C360476745A5C260D8FBE4FDD6CB130EA52261EDB4EFB7106197B507351F02FFAF4A0E0E2049B622676FFF8505BBE69A291E7FE0D9D9DDCA070E8C6CFC98DF7F91C0AEC9668ACC1F38D93A95021C18D7F6757EEE9969AD8FD0BD27F6EB2986EAB4CA79E3222F7FED032A09FBF9F70D7AE55F4474E2732F128B34FF9649E939313411F2EB2A417931777516A949D89A894681EB2666A1E6F45555B0B62A35B95A8B7AB1DDC6CABD89DAC1F236F5620D49DF75B2F9E1522B9BB7A9976D48A5DE473942653273558948C326599753F796CA0FA4913454BB3439C4B519186FA9DA6010A348ABC79033F0768A0B0631C9904BA7433181FEF99F1ECCA5BF4F4C9D83C45FAD21D85F2B46D0958EE4A2CD0C2D23E119281A89264AF8E70612E0D1F3FA02137F095C425FB3E876F6D728B28821FBC6B280DE0CDDA5244E091D320C1781144D631E469DFCAC6242D6797C17B35FC91043A06AFAECABC01DFA25F503AFD0FBBA22E0648060AE0B8F25B3B9242CA6BC7A2D906E23D412889BAFF0B81E601807142CB94373F00C37D18DD2EF235C01F7751D5E3481344F846CF6F1A50F56188409C758F7A73F2987BDF0E5A7FF0164BEE302A65B0000, N'6.2.0-61023')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202212150654207_CreateStoreProc', N'Asp.net_Mvc_Crud_Entityframework.Migrations.Configuration', 0x1F8B0800000000000400DD5CDB6EE436127D0F907F10F4940D9C962F99C1ACD19DC069DB4963C7174C7B827D33D812BB2D8C442914E5B1B1C897E5219FB4BFB0A444AA4552D4A5A5BE7811209896C853C5E221592C55F9BF7FFD3DFEF9250CAC6788133F4213FB64746C5B10B991E7A3D5C44EC9F2870FF6CF3F7DFBCDF8CA0B5FACDF45BB33D68EF644C9C47E22243E779CC47D82214846A1EFE228899664E446A103BCC8393D3EFEA77372E2400A61532CCB1A7F4A11F14398FDA03FA71172614C5210DC441E0C12FE9CBE9967A8D62D08611203174EEC8B241E21481E6F9EDDC7294EBDC72B0A455E979836F91AE12FA31CC2B62E021F50F5E63058DA164028228050E5CF3F27704E708456F3983E00C1C36B0C69BB250812C80775BE6EDE767CC7A76C7CCEBAA38072D384446147C093336E3047EDBE91D9EDC2A0D4A4B9BDD8A833B34E6C0CDD087BB6A58A3A9F0698356B6DF3518E7464F1F696A9FD51C1244A38F6DF91354D03926238413025180447D67DBA087CF75FF0F521FA02D104A541501E061D087D273DA08FEE7114434C5E3FC1251F9C4F07E6C8FD1CB563D1ADD4271FF80C91B353DBBAA5C2C12280054B4A469A9308C35F21821810E8DD034220A6933CF36036664DBA228BFD5F48A3B4A4CBCEB66EC0CB478856E46962D37FDAD6B5FF023DF1846BF019F97495D24E04A7B049C885E761982403CB193B6B2AD5124CD8E25314C03A9ADD141CA604BA8564243A8E72C8EB826F65C423AB75BF35EF4EDBF2EEEC64B13CFBF0EE3DF0CEDEFF08CFDE6DC2C1D9061C9C7935B37572FAA1D56C69BCEDC5C5D377EF07917A0B9EFD5536F58A7CBA33634AD24F30C8DE264F7E9CEFDFD27C3FF266D7380AD96F995FF9DBC7799462970D26323679007805494F4A33A8E1692D500F9FDA4C539DDE954DD98036590942C4AE5783D077BB725B33EE228EE9E465D4621619E2B856200FEADC7E2B7BE65508FC60804DB38514EA252F7D1CC26294BF4494A20075D6F91E24099D4EEF37903C6DDDF7984337C594447302C278EBD2EE9F22046FD370C156C8EE640D36350F5FA36BE05297F20AB15EBDF13E46EE97282557C8BBA4EEE967E20A40F6F3C10FDB030CA2CE85EB523FF49A92197AD3885E029B1CED7A38B66BEDDB699906C00FABBD16657F7D144DD79E4B750BCD7B3134ABF260EA54FD18AD7CD44E55D1D4AC6ADEA25155DEACABAA0CAC9DA6BCA559D1AC41A39E79ABC17CC26C8686770A33D8C3F70AFB1DDEDBBF74EFCBA5CCA68F09DDFAD99449FA1D04E9D0A2365A0DD92630FC6AC8600F7F35646AD2C7CFBEC7BC92165725D198C2B76A5F7D0B6B5E738A66BB5E0ED230772D7C377B8069B95C2449E4FAD92AA80892F11087AC3FF5E1ACE678473E1A356642074689EEB3238F3EA163B35552DDA14B184002AD0B378F524F41E2024F37231D90D7413171A25628B68E9DC8CA7DAFC9A44C87987502EC1294D095EA23A22F0B1FB97E0C82462B293D5B1E616CEC850CF5CD258C2162021B2DD1467875A8842950C85126A5C94263A7C4B87A221ABC56D39C37B9B0EB79D722183BE16483EF6CE025F7DFB642CC7A8BED809CF52669A38031ECB70F82F2BB4A5B02A817974323A87263321094BB543B21A86CB13D105436C99B23687E456D3BFFCA7DF5D0E8295F94777FACD79A6B0FDC94EC7160D4CC7D4FDA87D01E10EBF4BC5CB097F085545CCEA89EFC7E96705757A508039F43229C96ECE37F625B6B8F9733432418380D00792447EB2E3BB20D202A0BEB00D74C6D00E55F1C35206D4576504E04036BB5E36E48075811B8AB85E58787025B22918E5DFEF25A6A68FE3EABB2BBD5F5A51859C1066D95B4BA6D94702A08A1EE7EF2C05B18C514D8D50DD3C699EEE24E9706C627A3C6400DAEAFC1486230835B4950B3D94A551E5D179FAE979514FFCB60253198C1ADC439DA6CA40AAFA2835FD1CB44B20F30D06213A192E2B82ADE8D9D3C0D903F183B867CC1F10D88631FAD4AF983FC8935CF9307A73FCCBB27D0853986E32615797485B685241261B082CA5B2A9A6A7AEDE3845C02021680058AA65EA835AB3C9C0DDBBF10299FBFFA348A9340B467FFE6E4EB94D857E1DE70C86B3AE490F9485960BE440853478BA5768200E08AD4BB6914A42132A5EFD5F5CEBF0596FBE74FDA231499726590E2A18E3376140B684E9D667ECDF59667B3DD5C1BD67EFF99969CADEEF35DDFDD64F59932EB55EEF110B3BEA7D9D277C56DCE5CE1D56E3E7B6608D31C884B4D79164C171D338A887B96514CB1D0BDCDA6C9BDED3F83EA75A2FB0436226C6705F224A832007FD411A39447A38195DEB54795539DCA98F29BF6884A3E53195279D541CB72D692A464F9C54678068B56B7682F41CF532AA3EB6FDB2357642C95A12B5E6F805DA1B3FAAE83CFA0273549DE83FEBA3DF63AC349DD590FF88C335E72873DE4F2E048BF53CE80B19D6D729843B2944452062A3DEE88C5D3443430FEFC2029668C100C4BB13C50D68F62060CF31E25E564C85B546D228919534AB4908E81BA4413335E37226F952E5AD4406D52482FA2074A9460CC6FECCDA587DA153E6F625BC28CD405784D080C47ACC168FE47300D7CC8367CD1E006207F0913922717D9A7C727A74AA1E2E1140D3A49E20515110FBD72509EAD1D94E5F9CCA68D39803DAA9FD033C0EE13C0DF85E0E51F65A40DAAED3A606D5651B781F9FB25688A11E9E9520398BCE24BD40C79F06562FF27EB759EC524D9BFB2C747D62CF98CFC3F52FAE2811AD4FA534FFF1EA600A745C957A1E89F6FA296AABDC967FF7ECCBB1E597798EE63E7D6B162E84DA65FAEB0EAA44DDEB587361BD75DBDDDD526952A55A22AAB65F3CAA4854F06A94AEAB50F57561EF542ACA82E1A0A6F10139AAA8736C132560E79F427C92A87BA0DB6BA926813D58C5544995FD0B386A8FD36247AEEF11CAAB8BEEE624BDA8AFF7558679356AAD16BA1EBE518DBF40AEB4A2EFAB9286FAC9461B0A3B3A2526130EC7DF27EEBE509875291B076DAF75B88B0CBDA839A0F81FF5725070790245B91B3B7FFC2825D73CD148F3FF0ECEC6EE5030746367ECCEFBF4860D7643345E60F9C6C9D4A010E8C6BFB3A3FF7CCB4D647E8DE13FBF51443755AE5BC719197BFF6019584FDFCFB06BDF22F223AF1B91789459A7FCBA4F49C189A08F97595A0BC98BB3A8BD4246CCD44A3C07513B35073FAAA2A585B959A5CAD45BDD86E63E5DE44ED60799B7AB186A4EF3AD9FC70A995CDDBD4CB36A452EFA31CA13299B9AA44A46193ACCBA97B4BE507D2481AAA5D9A1CE2DA0C8CB7546D308851A4D563C819783BC505839864C8A5D3A19840FFFC4F0FE6D2DF27A6CE41E2AFD610ECAF1523E84A4772D166869691F00C148D441325FC730309F0E8797D8189BF042EA1AF59743BFB6B1459C4907D6359406F86EE5212A7840E19868B408AA6310FA34E7E563121EB3CBE8BD9AF64882150357DF655E00EFD92FA8157E87D5D1170324030D785C792D95C1216535EBD1648B7116A09C4CD57785C0F308C030A96DCA13978869BE846E9F711AE80FBBA0E2F9A409A274236FBF8D2072B0CC28463ACFBD39F94C35EF8F2D3FF0069EBEA68A65B0000, N'6.2.0-61023')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202212150851174_CreateStoreProc', N'Asp.net_Mvc_Crud_Entityframework.Migrations.Configuration', 0x1F8B0800000000000400DD5CDB6EE436127D0F907F10F4940D9C962F99C1ACD19DC069DB4963C7174C7B827D33D812BB2D8C442914E5B1B1C897E5219FB4BFB0A444AA4552D4A5A5BE7811209896C853C5E221592C55F9BF7FFD3DFEF9250CAC6788133F4213FB64746C5B10B991E7A3D5C44EC9F2870FF6CF3F7DFBCDF8CA0B5FACDF45BB33D68EF644C9C47E22243E779CC47D82214846A1EFE228899664E446A103BCC8393D3EFEA77372E2400A61532CCB1A7F4A11F14398FDA03FA71172614C5210DC441E0C12FE9CBE9967A8D62D08611203174EEC8B241E21481E6F9EDDC7294EBDC72B0A455E979836F91AE12FA31CC2B62E021F50F5E63058DA164028228050E5CF3F27704E708456F3983E00C1C36B0C69BB250812C80775BE6EDE767CC7A76C7CCEBAA38072D384446147C093336E3047EDBE91D9EDC2A0D4A4B9BDD8A833B34E6C0CDD087BB6A58A3A9F0698356B6DF3518E7464F1F696A9FD51C1244A38F6DF91354D03926238413025180447D67DBA087CF75FF0F521FA02D104A541501E061D087D273DA08FEE7114434C5E3FC1251F9C4F07E6C8FD1CB563D1ADD4271FF80C91B353DBBAA5C2C12280054B4A469A9308C35F21821810E8DD034220A6933CF36036664DBA228BFD5F48A3B4A4CBCEB66EC0CB478856E46962D37FDAD6B5FF023DF1846BF019F97495D24E04A7B049C885E761982403CB193B6B2AD5124CD8E25314C03A9ADD141CA604BA8564243A8E72C8EB826F65C423AB75BF35EF4EDBF2EEEC64B13CFBF0EE3DF0CEDEFF08CFDE6DC2C1D9061C9C7935B37572FAA1D56C69BCEDC5C5D377EF07917A0B9EFD5536F58A7CBA33634AD24F30C8DE264F7E9CEFDFD27C3FF266D7380AD96F995FF9DBC7799462970D26323679007805494F4A33A8E1692D500F9FDA4C539DDE954DD98036590942C4AE5783D077BB725B33EE228EE9E465D4621619E2B856200FEADC7E2B7BE65508FC60804DB38514EA252F7D1CC26294BF4494A20075D6F91E24099D4EEF37903C6DDDF7984337C594447302C278EBD2EE9F22046FD370C156C8EE640D36350F5FA36BE05297F20AB15EBDF13E46EE97282557C8BBA4EEE967E20A40F6F3C10FDB030CA2CE85EB523FF49A92197AD3885E029B1CED7A38B66BEDDB699906C00FABBD16657F7D144DD79E4B750BCD7B3134ABF260EA54FD18AD7CD44E55D1D4AC6ADEA25155DEACABAA0CAC9DA6BCA559D1AC41A39E79ABC17CC26C8686770A33D8C3F70AFB1DDEDBBF74EFCBA5CCA68F09DDFAD99449FA1D04E9D0A2365A0DD92630FC6AC8600F7F35646AD2C7CFBEC7BC92165725D198C2B76A5F7D0B6B5E738A66BB5E0ED230772D7C377B8069B95C2449E4FAD92AA80892F11087AC3FF5E1ACE678473E1A356642074689EEB3238F3EA163B35552DDA14B184002AD0B378F524F41E2024F37231D90D7413171A25628B68E9DC8CA7DAFC9A44C87987502EC1294D095EA23A22F0B1FB97E0C82462B293D5B1E616CEC850CF5CD258C2162021B2DD1467875A8842950C85126A5C94263A7C4B87A221ABC56D39C37B9B0EB79D722183BE16483EF6CE025F7DFB642CC7A8BED809CF52669A38031ECB70F82F2BB4A5B02A817974323A87263321094BB543B21A86CB13D105436C99B23687E456D3BFFCA7DF5D0E8295F94777FACD79A6B0FDC94EC7160D4CC7D4FDA87D01E10EBF4BC5CB097F085545CCEA89EFC7E96705757A508039F43229C96ECE37F625B6B8F9733432418380D00792447EB2E3BB20D202A0BEB00D74C6D00E55F1C35206D4576504E04036BB5E36E48075811B8AB85E58787025B22918E5DFEF25A6A68FE3EABB2BBD5F5A51859C1066D95B4BA6D94702A08A1EE7EF2C05B18C514D8D50DD3C699EEE24E9706C627A3C6400DAEAFC1486230835B4950B3D94A551E5D179FAE979514FFCB60253198C1ADC439DA6CA40AAFA2835FD1CB44B20F30D06213A192E2B82ADE8D9D3C0D903F183B867CC1F10D88631FAD4AF983FC8935CF9307A73FCCBB27D0853986E32615797485B685241261B082CA5B2A9A6A7AEDE3845C02021680058AA65EA835AB3C9C0DDBBF10299FBFFA348A9340B467FFE6E4EB94D857E1DE70C86B3AE490F9485960BE440853478BA5768200E08AD4BB6914A42132A5EFD5F5CEBF0596FBE74FDA231499726590E2A18E3376140B684E9D667ECDF59667B3DD5C1BD67EFF99969CADEEF35DDFDD64F59932EB55EEF110B3BEA7D9D277C56DCE5CE1D56E3E7B6608D31C884B4D79164C171D338A887B96514CB1D0BDCDA6C9BDED3F83EA75A2FB0436226C6705F224A832007FD411A39447A38195DEB54795539DCA98F29BF6884A3E53195279D541CB72D692A464F9C54678068B56B7682F41CF532AA3EB6FDB2357642C95A12B5E6F805DA1B3FAAE83CFA0273549DE83FEBA3DF63AC349DD590FF88C335E72873DE4F2E048BF53CE80B19D6D729843B2944452062A3DEE88C5D3443430FEFC2029668C100C4BB13C50D68F62060CF31E25E564C85B546D228919534AB4908E81BA4413335E37226F952E5AD4406D52482FA2074A9460CC6FECCDA587DA153E6F625BC28CD405784D080C47ACC168FE47300D7CC8367CD1E006207F0913922717D9A7C727A74AA1E2E1140D3A49E20515110FBD72509EAD1D94E5F9CCA68D39803DAA9FD033C0EE13C0DF85E0E51F65A40DAAED3A606D5651B781F9FB25688A11E9E9520398BCE24BD40C79F06562FF27EB759EC524D9BFB2C747D62CF98CFC3F52FAE2811AD4FA534FFF1EA600A745C957A1E89F6FA296AABDC967FF7ECCBB1E597798EE63E7D6B162E84DA65FAEB0EAA44DDEB587361BD75DBDDDD526952A55A22AAB65F3CAA4854F06A94AEAB50F57561EF542ACA82E1A0A6F10139AAA8736C132560E79F427C92A87BA0DB6BA926813D58C5544995FD0B386A8FD36247AEEF11CAAB8BEEE624BDA8AFF7558679356AAD16BA1EBE518DBF40AEB4A2EFAB9286FAC9461B0A3B3A2526130EC7DF27EEBE509875291B076DAF75B88B0CBDA839A0F81FF5725070790245B91B3B7FFC2825D73CD148F3FF0ECEC6EE5030746367ECCEFBF4860D7643345E60F9C6C9D4A010E8C6BFB3A3FF7CCB4D647E8DE13FBF51443755AE5BC719197BFF6019584FDFCFB06BDF22F223AF1B91789459A7FCBA4F49C189A08F97595A0BC98BB3A8BD4246CCD44A3C07513B35073FAAA2A585B959A5CAD45BDD86E63E5DE44ED60799B7AB186A4EF3AD9FC70A995CDDBD4CB36A452EFA31CA13299B9AA44A46193ACCBA97B4BE507D2481AAA5D9A1CE2DA0C8CB7546D308851A4D563C819783BC505839864C8A5D3A19840FFFC4F0FE6D2DF27A6CE41E2AFD610ECAF1523E84A4772D166869691F00C148D441325FC730309F0E8797D8189BF042EA1AF59743BFB6B1459C4907D6359406F86EE5212A7840E19868B408AA6310FA34E7E563121EB3CBE8BD9AF64882150357DF655E00EFD92FA8157E87D5D1170324030D785C792D95C1216535EBD1648B7116A09C4CD57785C0F308C030A96DCA13978869BE846E9F711AE80FBBA0E2F9A409A274236FBF8D2072B0CC28463ACFBD39F94C35EF8F2D3FF0069EBEA68A65B0000, N'6.2.0-61023')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202212160816014_Storeprocedures', N'Asp.net_Mvc_Crud_Entityframework.Migrations.Configuration', 0x1F8B0800000000000400DD5CDB6EE436127D0F907F10F4940D9C962F99C1ACD19DC069DB4963C7174C7B827D33D812BB2D8C442914E5B1B1C897E5219FB4BFB0A444AA4552D4A5A5BE7811209896C853C5E221592C55F9BF7FFD3DFEF9250CAC6788133F4213FB64746C5B10B991E7A3D5C44EC9F2870FF6CF3F7DFBCDF8CA0B5FACDF45BB33D68EF644C9C47E22243E779CC47D82214846A1EFE228899664E446A103BCC8393D3EFEA77372E2400A61532CCB1A7F4A11F14398FDA03FA71172614C5210DC441E0C12FE9CBE9967A8D62D08611203174EEC8B241E21481E6F9EDDC7294EBDC72B0A455E979836F91AE12FA31CC2B62E021F50F5E63058DA164028228050E5CF3F27704E708456F3983E00C1C36B0C69BB250812C80775BE6EDE767CC7A76C7CCEBAA38072D384446147C093336E3047EDBE91D9EDC2A0D4A4B9BDD8A833B34E6C0CDD087BB6A58A3A9F0698356B6DF3518E7464F1F696A9FD51C1244A38F6DF91354D03926238413025180447D67DBA087CF75FF0F521FA02D104A541501E061D087D273DA08FEE7114434C5E3FC1251F9C4F07E6C8FD1CB563D1ADD4271FF80C91B353DBBAA5C2C12280054B4A469A9308C35F21821810E8DD034220A6933CF36036664DBA228BFD5F48A3B4A4CBCEB66EC0CB478856E46962D37FDAD6B5FF023DF1846BF019F97495D24E04A7B049C885E761982403CB193B6B2AD5124CD8E25314C03A9ADD141CA604BA8564243A8E72C8EB826F65C423AB75BF35EF4EDBF2EEEC64B13CFBF0EE3DF0CEDEFF08CFDE6DC2C1D9061C9C7935B37572FAA1D56C69BCEDC5C5D377EF07917A0B9EFD5536F58A7CBA33634AD24F30C8DE264F7E9CEFDFD27C3FF266D7380AD96F995FF9DBC7799462970D26323679007805494F4A33A8E1692D500F9FDA4C539DDE954DD98036590942C4AE5783D077BB725B33EE228EE9E465D4621619E2B856200FEADC7E2B7BE65508FC60804DB38514EA252F7D1CC26294BF4494A20075D6F91E24099D4EEF37903C6DDDF7984337C594447302C278EBD2EE9F22046FD370C156C8EE640D36350F5FA36BE05297F20AB15EBDF13E46EE97282557C8BBA4EEE967E20A40F6F3C10FDB030CA2CE85EB523FF49A92197AD3885E029B1CED7A38B66BEDDB699906C00FABBD16657F7D144DD79E4B750BCD7B3134ABF260EA54FD18AD7CD44E55D1D4AC6ADEA25155DEACABAA0CAC9DA6BCA559D1AC41A39E79ABC17CC26C8686770A33D8C3F70AFB1DDEDBBF74EFCBA5CCA68F09DDFAD99449FA1D04E9D0A2365A0DD92630FC6AC8600F7F35646AD2C7CFBEC7BC92165725D198C2B76A5F7D0B6B5E738A66BB5E0ED230772D7C377B8069B95C2449E4FAD92AA80892F11087AC3FF5E1ACE678473E1A356642074689EEB3238F3EA163B35552DDA14B184002AD0B378F524F41E2024F37231D90D7413171A25628B68E9DC8CA7DAFC9A44C87987502EC1294D095EA23A22F0B1FB97E0C82462B293D5B1E616CEC850CF5CD258C2162021B2DD1467875A8842950C85126A5C94263A7C4B87A221ABC56D39C37B9B0EB79D722183BE16483EF6CE025F7DFB642CC7A8BED809CF52669A38031ECB70F82F2BB4A5B02A817974323A87263321094BB543B21A86CB13D105436C99B23687E456D3BFFCA7DF5D0E8295F94777FACD79A6B0FDC94EC7160D4CC7D4FDA87D01E10EBF4BC5CB097F085545CCEA89EFC7E96705757A508039F43229C96ECE37F625B6B8F9733432418380D00792447EB2E3BB20D202A0BEB00D74C6D00E55F1C35206D4576504E04036BB5E36E48075811B8AB85E58787025B22918E5DFEF25A6A68FE3EABB2BBD5F5A51859C1066D95B4BA6D94702A08A1EE7EF2C05B18C514D8D50DD3C699EEE24E9706C627A3C6400DAEAFC1486230835B4950B3D94A551E5D179FAE979514FFCB60253198C1ADC439DA6CA40AAFA2835FD1CB44B20F30D06213A192E2B82ADE8D9D3C0D903F183B867CC1F10D88631FAD4AF983FC8935CF9307A73FCCBB27D0853986E32615797485B685241261B082CA5B2A9A6A7AEDE3845C02021680058AA65EA835AB3C9C0DDBBF10299FBFFA348A9340B467FFE6E4EB94D857E1DE70C86B3AE490F9485960BE440853478BA5768200E08AD4BB6914A42132A5EFD5F5CEBF0596FBE74FDA231499726590E2A18E3376140B684E9D667ECDF59667B3DD5C1BD67EFF99969CADEEF35DDFDD64F59932EB55EEF110B3BEA7D9D277C56DCE5CE1D56E3E7B6608D31C884B4D79164C171D338A887B96514CB1D0BDCDA6C9BDED3F83EA75A2FB0436226C6705F224A832007FD411A39447A38195DEB54795539DCA98F29BF6884A3E53195279D541CB72D692A464F9C54678068B56B7682F41CF532AA3EB6FDB2357642C95A12B5E6F805DA1B3FAAE83CFA0273549DE83FEBA3DF63AC349DD590FF88C335E72873DE4F2E048BF53CE80B19D6D729843B2944452062A3DEE88C5D3443430FEFC2029668C100C4BB13C50D68F62060CF31E25E564C85B546D228919534AB4908E81BA4413335E37226F952E5AD4406D52482FA2074A9460CC6FECCDA587DA153E6F625BC28CD405784D080C47ACC168FE47300D7CC8367CD1E006207F0913922717D9A7C727A74AA1E2E1140D3A49E20515110FBD72509EAD1D94E5F9CCA68D39803DAA9FD033C0EE13C0DF85E0E51F65A40DAAED3A606D5651B781F9FB25688A11E9E9520398BCE24BD40C79F06562FF27EB759EC524D9BFB2C747D62CF98CFC3F52FAE2811AD4FA534FFF1EA600A745C957A1E89F6FA296AABDC967FF7ECCBB1E597798EE63E7D6B162E84DA65FAEB0EAA44DDEB587361BD75DBDDDD526952A55A22AAB65F3CAA4854F06A94AEAB50F57561EF542ACA82E1A0A6F10139AAA8736C132560E79F427C92A87BA0DB6BA926813D58C5544995FD0B386A8FD36247AEEF11CAAB8BEEE624BDA8AFF7558679356AAD16BA1EBE518DBF40AEB4A2EFAB9286FAC9461B0A3B3A2526130EC7DF27EEBE509875291B076DAF75B88B0CBDA839A0F81FF5725070790245B91B3B7FFC2825D73CD148F3FF0ECEC6EE5030746367ECCEFBF4860D7643345E60F9C6C9D4A010E8C6BFB3A3FF7CCB4D647E8DE13FBF51443755AE5BC719197BFF6019584FDFCFB06BDF22F223AF1B91789459A7FCBA4F49C189A08F97595A0BC98BB3A8BD4246CCD44A3C07513B35073FAAA2A585B959A5CAD45BDD86E63E5DE44ED60799B7AB186A4EF3AD9FC70A995CDDBD4CB36A452EFA31CA13299B9AA44A46193ACCBA97B4BE507D2481AAA5D9A1CE2DA0C8CB7546D308851A4D563C819783BC505839864C8A5D3A19840FFFC4F0FE6D2DF27A6CE41E2AFD610ECAF1523E84A4772D166869691F00C148D441325FC730309F0E8797D8189BF042EA1AF59743BFB6B1459C4907D6359406F86EE5212A7840E19868B408AA6310FA34E7E563121EB3CBE8BD9AF64882150357DF655E00EFD92FA8157E87D5D1170324030D785C792D95C1216535EBD1648B7116A09C4CD57785C0F308C030A96DCA13978869BE846E9F711AE80FBBA0E2F9A409A274236FBF8D2072B0CC28463ACFBD39F94C35EF8F2D3FF0069EBEA68A65B0000, N'6.2.0-61023')
SET IDENTITY_INSERT [dbo].[records] ON 

INSERT [dbo].[records] ([id], [Name], [Address]) VALUES (1, N'imran', N'kpk')
INSERT [dbo].[records] ([id], [Name], [Address]) VALUES (3, N'rehan2', N'kpk')
INSERT [dbo].[records] ([id], [Name], [Address]) VALUES (1002, N'rehan23', N'kpk')
INSERT [dbo].[records] ([id], [Name], [Address]) VALUES (1005, N'rehan34', N'kpk')
SET IDENTITY_INSERT [dbo].[records] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 12/19/2022 2:12:12 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 12/19/2022 2:12:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 12/19/2022 2:12:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 12/19/2022 2:12:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 12/19/2022 2:12:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 12/19/2022 2:12:12 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
/****** Object:  StoredProcedure [dbo].[sp_AddRecord]    Script Date: 12/19/2022 2:12:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_AddRecord]
    @Name [nvarchar](max),
    @Address [nvarchar](max)
AS
BEGIN
    INSERT into [dbo].[records]( [Name], [Address])  
    VALUES ( @Name, @Address)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Deleterecord]    Script Date: 12/19/2022 2:12:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Deleterecord]
    @Id [int]
AS
BEGIN
    Delete from [dbo].[records]           
    WHERE ([Id] = @Id)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_getrecord]    Script Date: 12/19/2022 2:12:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_getrecord]
AS
BEGIN
    Select * from records
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Updaterecord]    Script Date: 12/19/2022 2:12:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Updaterecord]
    @Id [int],
    @Name [nvarchar](max),
    @Address [nvarchar](max)
AS
BEGIN
    UPDATE [dbo].[records]  
    SET [Name] = @Name, [Address] = @Address
    WHERE ([Id] = @Id)
END
GO
/****** Object:  StoredProcedure [dbo].[view_getrecord]    Script Date: 12/19/2022 2:12:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[view_getrecord]
 @Id [int]
AS
BEGIN
    Select * from viewdata
END


GO
USE [master]
GO
ALTER DATABASE [Asp.net Mvc_Crud_Entityframework] SET  READ_WRITE 
GO
