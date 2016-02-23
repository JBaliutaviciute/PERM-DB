SE [PERM_DB]
GO
/****** Object:  Table [dbo].[User]    Script Date: 2016-02-23 21:28:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[userName] [nvarchar](255) NOT NULL,
	[userPassword] [nvarchar](64) NOT NULL,
	[salt] [nvarchar](24) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[surname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__User__3214EC077F60ED59] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserSessions]    Script Date: 2016-02-23 21:28:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserSessions](
	[userID] [int] NOT NULL,
	[userSession] [nvarchar](24) NOT NULL,
	[sesionExpires] [datetime] NOT NULL
) ON [PRIMARY]

GO