USE [master]
GO
/****** Object:  Database [EmrullahYilmazHafta3Odev]    Script Date: 4.06.2022 20:09:47 ******/
CREATE DATABASE [EmrullahYilmazHafta3Odev]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EmrullahYilmazHafta3Odev', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\EmrullahYilmazHafta3Odev.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'EmrullahYilmazHafta3Odev_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\EmrullahYilmazHafta3Odev_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [EmrullahYilmazHafta3Odev] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EmrullahYilmazHafta3Odev].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EmrullahYilmazHafta3Odev] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EmrullahYilmazHafta3Odev] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EmrullahYilmazHafta3Odev] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EmrullahYilmazHafta3Odev] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EmrullahYilmazHafta3Odev] SET ARITHABORT OFF 
GO
ALTER DATABASE [EmrullahYilmazHafta3Odev] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EmrullahYilmazHafta3Odev] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EmrullahYilmazHafta3Odev] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EmrullahYilmazHafta3Odev] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EmrullahYilmazHafta3Odev] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EmrullahYilmazHafta3Odev] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EmrullahYilmazHafta3Odev] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EmrullahYilmazHafta3Odev] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EmrullahYilmazHafta3Odev] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EmrullahYilmazHafta3Odev] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EmrullahYilmazHafta3Odev] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EmrullahYilmazHafta3Odev] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EmrullahYilmazHafta3Odev] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EmrullahYilmazHafta3Odev] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EmrullahYilmazHafta3Odev] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EmrullahYilmazHafta3Odev] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EmrullahYilmazHafta3Odev] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EmrullahYilmazHafta3Odev] SET RECOVERY FULL 
GO
ALTER DATABASE [EmrullahYilmazHafta3Odev] SET  MULTI_USER 
GO
ALTER DATABASE [EmrullahYilmazHafta3Odev] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EmrullahYilmazHafta3Odev] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EmrullahYilmazHafta3Odev] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EmrullahYilmazHafta3Odev] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [EmrullahYilmazHafta3Odev] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'EmrullahYilmazHafta3Odev', N'ON'
GO
ALTER DATABASE [EmrullahYilmazHafta3Odev] SET QUERY_STORE = OFF
GO
USE [EmrullahYilmazHafta3Odev]
GO
/****** Object:  Table [dbo].[contact_requests]    Script Date: 4.06.2022 20:09:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contact_requests](
	[id] [int] NOT NULL,
	[users_id] [int] NOT NULL,
	[first_name] [varchar](50) NOT NULL,
	[last_name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_contact_requests] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contacts]    Script Date: 4.06.2022 20:09:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contacts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[users_id] [int] NOT NULL,
	[first_name] [varchar](50) NOT NULL,
	[last_name] [varchar](50) NOT NULL,
	[email] [varchar](255) NOT NULL,
 CONSTRAINT [PK_contacts] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[conversation]    Script Date: 4.06.2022 20:09:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[conversation](
	[id] [int] NOT NULL,
	[title] [varchar](40) NOT NULL,
	[creator_id] [int] NOT NULL,
	[channel_id] [varchar](40) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [PK_conversation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[deletedupdatedconversions]    Script Date: 4.06.2022 20:09:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[deletedupdatedconversions](
	[id] [int] NOT NULL,
	[conversation_id] [int] NOT NULL,
	[users_id] [int] NOT NULL,
	[deleted_at] [datetime] NOT NULL,
 CONSTRAINT [PK_deletedupdatedconversions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[deletedupdatedmessages]    Script Date: 4.06.2022 20:09:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[deletedupdatedmessages](
	[id] [int] NOT NULL,
	[messages_id] [int] NOT NULL,
	[users_id] [int] NOT NULL,
	[deleted_at] [datetime] NOT NULL,
	[message] [varchar](255) NOT NULL,
	[type] [varchar](20) NULL,
 CONSTRAINT [PK_deletedupdatedmessages] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[messages]    Script Date: 4.06.2022 20:09:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[messages](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[conversation_id] [int] NOT NULL,
	[sender_id] [int] NOT NULL,
	[participiants_id] [int] NOT NULL,
	[message_type] [varchar](20) NOT NULL,
	[message] [varchar](255) NOT NULL,
	[created_at] [datetime] NOT NULL,
 CONSTRAINT [PK_messages] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[participants]    Script Date: 4.06.2022 20:09:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[participants](
	[id] [int] NOT NULL,
	[conversation_id] [int] NOT NULL,
	[users_id] [int] NOT NULL,
	[type] [varchar](20) NOT NULL,
 CONSTRAINT [PK_participiants] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 4.06.2022 20:09:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[password] [varchar](40) NOT NULL,
	[first_name] [varchar](50) NOT NULL,
	[last_name] [varchar](50) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[is_active] [bit] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[contact_requests]  WITH CHECK ADD  CONSTRAINT [FK_contact_requests_users] FOREIGN KEY([users_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[contact_requests] CHECK CONSTRAINT [FK_contact_requests_users]
GO
ALTER TABLE [dbo].[contacts]  WITH CHECK ADD  CONSTRAINT [FK_contacts_users] FOREIGN KEY([users_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[contacts] CHECK CONSTRAINT [FK_contacts_users]
GO
ALTER TABLE [dbo].[conversation]  WITH CHECK ADD  CONSTRAINT [FK_conversation_users] FOREIGN KEY([creator_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[conversation] CHECK CONSTRAINT [FK_conversation_users]
GO
ALTER TABLE [dbo].[deletedupdatedconversions]  WITH CHECK ADD  CONSTRAINT [FK_deletedupdatedconversions_conversation] FOREIGN KEY([conversation_id])
REFERENCES [dbo].[conversation] ([id])
GO
ALTER TABLE [dbo].[deletedupdatedconversions] CHECK CONSTRAINT [FK_deletedupdatedconversions_conversation]
GO
ALTER TABLE [dbo].[deletedupdatedconversions]  WITH CHECK ADD  CONSTRAINT [FK_deletedupdatedconversions_users] FOREIGN KEY([users_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[deletedupdatedconversions] CHECK CONSTRAINT [FK_deletedupdatedconversions_users]
GO
ALTER TABLE [dbo].[deletedupdatedmessages]  WITH CHECK ADD  CONSTRAINT [FK_deletedupdatedmessages_messages] FOREIGN KEY([messages_id])
REFERENCES [dbo].[messages] ([id])
GO
ALTER TABLE [dbo].[deletedupdatedmessages] CHECK CONSTRAINT [FK_deletedupdatedmessages_messages]
GO
ALTER TABLE [dbo].[deletedupdatedmessages]  WITH CHECK ADD  CONSTRAINT [FK_deletedupdatedmessages_users] FOREIGN KEY([users_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[deletedupdatedmessages] CHECK CONSTRAINT [FK_deletedupdatedmessages_users]
GO
ALTER TABLE [dbo].[messages]  WITH CHECK ADD  CONSTRAINT [FK_messages_conversation] FOREIGN KEY([conversation_id])
REFERENCES [dbo].[conversation] ([id])
GO
ALTER TABLE [dbo].[messages] CHECK CONSTRAINT [FK_messages_conversation]
GO
ALTER TABLE [dbo].[messages]  WITH CHECK ADD  CONSTRAINT [FK_messages_participants] FOREIGN KEY([participiants_id])
REFERENCES [dbo].[participants] ([id])
GO
ALTER TABLE [dbo].[messages] CHECK CONSTRAINT [FK_messages_participants]
GO
ALTER TABLE [dbo].[participants]  WITH CHECK ADD  CONSTRAINT [FK_participants_conversation] FOREIGN KEY([conversation_id])
REFERENCES [dbo].[conversation] ([id])
GO
ALTER TABLE [dbo].[participants] CHECK CONSTRAINT [FK_participants_conversation]
GO
ALTER TABLE [dbo].[participants]  WITH CHECK ADD  CONSTRAINT [FK_participants_users] FOREIGN KEY([users_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[participants] CHECK CONSTRAINT [FK_participants_users]
GO
/****** Object:  StoredProcedure [dbo].[contactrequests]    Script Date: 4.06.2022 20:09:47 ******/
Create procedure friendrequests
	   @users_id                     int			 = NULL   , 
       @first_name                   varchar(50)     = NULL   , 
       @last_name                    varchar(50)     = NULL    
       
AS 
BEGIN
SET NOCOUNT ON 
INSERT INTO contact_requests
			(
				users_id,
				first_name,
				last_name
			)
VALUES	
			(
				@users_id,
			    @first_name,
				@last_name
			)
END
GO
/****** Object:  Trigger [dbo].[messages]    Script Date: 4.06.2022 20:09:47 ******/
CREATE TRIGGER deletedmessage
 
ON messages
 
AFTER UPDATE
 
AS
 
Begin
 
insert into deletedupdatedmessages select sender_id,message,message_type,created_at from messages
 
End
GO
/****** Function ******/
SELECT TOP 10 id,COUNT(sender_id) as 'count_of_messages' 
FROM messages 
GROUP BY sender_id
ORDER BY 2 DESC
END
GO
USE [master]
GO
ALTER DATABASE [EmrullahYilmazHafta3Odev] SET  READ_WRITE 
GO
