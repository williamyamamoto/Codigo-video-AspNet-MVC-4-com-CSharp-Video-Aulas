
USE [Escola]
GO
/****** Object:  Table [dbo].[cursos]    Script Date: 08/23/2016 17:11:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cursos](
	[idcurso] [int] IDENTITY(1,1) NOT NULL,
	[descricao] [varchar](50) NULL,
 CONSTRAINT [PK_cursos] PRIMARY KEY CLUSTERED 
(
	[idcurso] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[cursos] ON
INSERT [dbo].[cursos] ([idcurso], [descricao]) VALUES (1, N'Administração')
INSERT [dbo].[cursos] ([idcurso], [descricao]) VALUES (2, N'Matemática')
INSERT [dbo].[cursos] ([idcurso], [descricao]) VALUES (3, N'Contabilidade')
INSERT [dbo].[cursos] ([idcurso], [descricao]) VALUES (4, N'Secretariado')
SET IDENTITY_INSERT [dbo].[cursos] OFF
/****** Object:  Table [dbo].[alunos]    Script Date: 08/23/2016 17:11:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[alunos](
	[idaluno] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](100) NULL,
	[email] [varchar](100) NULL,
	[dtcadastro] [date] NULL,
	[idcurso] [int] NOT NULL,
	[valor] [numeric](15, 2) NULL,
 CONSTRAINT [PK_alunos] PRIMARY KEY CLUSTERED 
(
	[idaluno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[alunos] ON
INSERT [dbo].[alunos] ([idaluno], [nome], [email], [dtcadastro], [idcurso], [valor]) VALUES (1, N'Antonio', N'antonio@codigoexpresso.com.br', CAST(0x663A0B00 AS Date), 3, CAST(15.00 AS Numeric(15, 2)))
INSERT [dbo].[alunos] ([idaluno], [nome], [email], [dtcadastro], [idcurso], [valor]) VALUES (2, N'Carlos', N'carlos@teste.com.br', CAST(0xF13B0B00 AS Date), 2, CAST(622.50 AS Numeric(15, 2)))
INSERT [dbo].[alunos] ([idaluno], [nome], [email], [dtcadastro], [idcurso], [valor]) VALUES (4, N'Carlos Andrade', N'contato@codigoexpresso.com.br', CAST(0xC63B0B00 AS Date), 1, CAST(115.23 AS Numeric(15, 2)))
SET IDENTITY_INSERT [dbo].[alunos] OFF
