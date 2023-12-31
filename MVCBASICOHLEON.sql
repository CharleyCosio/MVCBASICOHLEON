USE [cursomvc]
GO
/****** Object:  Table [dbo].[cstate]    Script Date: 23/07/2023 04:42:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cstate](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
 CONSTRAINT [PK_cstate] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 23/07/2023 04:42:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](50) NULL,
	[password] [varchar](100) NULL,
	[idState] [int] NULL,
	[edad] [int] NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[cstate] ON 

INSERT [dbo].[cstate] ([id], [name]) VALUES (1, N'Activo')
INSERT [dbo].[cstate] ([id], [name]) VALUES (2, N'Inactivo')
INSERT [dbo].[cstate] ([id], [name]) VALUES (3, N'Eliminado')
SET IDENTITY_INSERT [dbo].[cstate] OFF
SET IDENTITY_INSERT [dbo].[user] ON 

INSERT [dbo].[user] ([id], [email], [password], [idState], [edad]) VALUES (1, N'contacto@gmail.com', N'123', 1, 20)
INSERT [dbo].[user] ([id], [email], [password], [idState], [edad]) VALUES (2, N'contacto2@gmil.com', N'a', 1, 23)
SET IDENTITY_INSERT [dbo].[user] OFF
ALTER TABLE [dbo].[user]  WITH CHECK ADD  CONSTRAINT [FK_user_cstate] FOREIGN KEY([idState])
REFERENCES [dbo].[cstate] ([id])
GO
ALTER TABLE [dbo].[user] CHECK CONSTRAINT [FK_user_cstate]
GO
