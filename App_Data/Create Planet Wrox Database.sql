/****** Object:  Table [dbo].[Genre]    Script Date: 08/08/2012 14:32:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genre](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[SortOrder] [int] NOT NULL,
 CONSTRAINT [PK_Genre] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Genre] ON
INSERT [dbo].[Genre] ([Id], [Name], [SortOrder]) VALUES (1, N'Rap and Hip-Hop', 14)
INSERT [dbo].[Genre] ([Id], [Name], [SortOrder]) VALUES (2, N'Pop', 12)
INSERT [dbo].[Genre] ([Id], [Name], [SortOrder]) VALUES (3, N'Jazz', 8)
INSERT [dbo].[Genre] ([Id], [Name], [SortOrder]) VALUES (4, N'Hard Rock', 3)
INSERT [dbo].[Genre] ([Id], [Name], [SortOrder]) VALUES (5, N'Indie Rock', 7)
INSERT [dbo].[Genre] ([Id], [Name], [SortOrder]) VALUES (6, N'Punk', 1)
INSERT [dbo].[Genre] ([Id], [Name], [SortOrder]) VALUES (7, N'Rock', 2)
INSERT [dbo].[Genre] ([Id], [Name], [SortOrder]) VALUES (8, N'Grunge', 4)
INSERT [dbo].[Genre] ([Id], [Name], [SortOrder]) VALUES (9, N'Alternative Rock', 9)
INSERT [dbo].[Genre] ([Id], [Name], [SortOrder]) VALUES (10, N'Reggae', 11)
INSERT [dbo].[Genre] ([Id], [Name], [SortOrder]) VALUES (11, N'Industrial', 10)
INSERT [dbo].[Genre] ([Id], [Name], [SortOrder]) VALUES (12, N'Techno', 5)
SET IDENTITY_INSERT [dbo].[Genre] OFF
/****** Object:  Table [dbo].[Review]    Script Date: 08/08/2012 14:32:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Review](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](200) NOT NULL,
	[Summary] [nvarchar](max) NOT NULL,
	[Body] [nvarchar](max) NULL,
	[GenreId] [int] NOT NULL,
	[Authorized] [bit] NOT NULL,
	[CreateDateTime] [datetime] NOT NULL,
	[UpdateDateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_Review] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Review] ON
INSERT [dbo].[Review] ([Id], [Title], [Summary], [Body], [GenreId], [Authorized], [CreateDateTime], [UpdateDateTime]) VALUES (23, N'Sonic Youth: Daydream Nation live in Roundhouse, London', N'Summary for item 23', N'Body for item 23', 5, 1, CAST(0x000099E6011D6CC0 AS DateTime), CAST(0x000099E6011D6CC0 AS DateTime))
INSERT [dbo].[Review] ([Id], [Title], [Summary], [Body], [GenreId], [Authorized], [CreateDateTime], [UpdateDateTime]) VALUES (24, N'Sonic Youth: Daydream Nation live at Lowlands, Biddinghuizen', N'Summary for item 24', N'Body for item 24', 5, 1, CAST(0x000099E6011FD528 AS DateTime), CAST(0x000099E6011FD528 AS DateTime))
INSERT [dbo].[Review] ([Id], [Title], [Summary], [Body], [GenreId], [Authorized], [CreateDateTime], [UpdateDateTime]) VALUES (25, N'Norah Jones - Not Too Late', N'Summary for item 25', N'Body for item 25', 3, 1, CAST(0x00009A43015BB098 AS DateTime), CAST(0x00009A43015BB098 AS DateTime))
INSERT [dbo].[Review] ([Id], [Title], [Summary], [Body], [GenreId], [Authorized], [CreateDateTime], [UpdateDateTime]) VALUES (26, N'DJ Tiesto - In Search of Sunrise 6', N'Summary for item 26', N'Body for item 26', 12, 1, CAST(0x00009A5500EA2D9C AS DateTime), CAST(0x00009A5500EA2D9C AS DateTime))
INSERT [dbo].[Review] ([Id], [Title], [Summary], [Body], [GenreId], [Authorized], [CreateDateTime], [UpdateDateTime]) VALUES (27, N'DJ Tiesto - Elements of Life', N'Summary for item 27', N'Body for item 27', 12, 1, CAST(0x00009A56015D5FD8 AS DateTime), CAST(0x00009A59015D5FD8 AS DateTime))
INSERT [dbo].[Review] ([Id], [Title], [Summary], [Body], [GenreId], [Authorized], [CreateDateTime], [UpdateDateTime]) VALUES (28, N'Death Magnetic by Metallica', N'Summary for item 28', N'Body for item 28', 4, 0, CAST(0x00009B1500F4C7AC AS DateTime), CAST(0x00009B1500F4C7AC AS DateTime))
INSERT [dbo].[Review] ([Id], [Title], [Summary], [Body], [GenreId], [Authorized], [CreateDateTime], [UpdateDateTime]) VALUES (29, N'Day & Age by The Killers - Excellent album, but is it better than before?', N'Summary for item 29', N'Body for item 29', 5, 1, CAST(0x00009B5E016AFD00 AS DateTime), CAST(0x00009B5E016AFD00 AS DateTime))
INSERT [dbo].[Review] ([Id], [Title], [Summary], [Body], [GenreId], [Authorized], [CreateDateTime], [UpdateDateTime]) VALUES (30, N'Wait for Evolution by De Staat', N'Summary for item 30', N'Body for item 30', 2, 1, CAST(0x00009B9101595C1C AS DateTime), CAST(0x00009B9101595C1C AS DateTime))
INSERT [dbo].[Review] ([Id], [Title], [Summary], [Body], [GenreId], [Authorized], [CreateDateTime], [UpdateDateTime]) VALUES (31, N'Love Hate & Then There''s you by The Von Bondies ', N'Summary for item 31', N'Body for item 31', 9, 1, CAST(0x00009BA500DE40E0 AS DateTime), CAST(0x00009BA500DE40E0 AS DateTime))
INSERT [dbo].[Review] ([Id], [Title], [Summary], [Body], [GenreId], [Authorized], [CreateDateTime], [UpdateDateTime]) VALUES (32, N'The Pains of Being Pure at Heart - One of the best new British bands from the U.S.?', N'Summary for item 32', N'Body for item 32', 5, 1, CAST(0x00009BA500F31290 AS DateTime), CAST(0x00009BA500F31290 AS DateTime))
INSERT [dbo].[Review] ([Id], [Title], [Summary], [Body], [GenreId], [Authorized], [CreateDateTime], [UpdateDateTime]) VALUES (33, N'Invaders Must Die by The Prodigy - The Return Of The Prodigy', N'Summary for item 33', N'Body for item 33', 12, 0, CAST(0x00009BC1011B88C4 AS DateTime), CAST(0x00009BC1011B88C4 AS DateTime))
INSERT [dbo].[Review] ([Id], [Title], [Summary], [Body], [GenreId], [Authorized], [CreateDateTime], [UpdateDateTime]) VALUES (34, N'P.J. Harvey & John Parish - A Woman a Man Walked By', N'Summary for item 34', N'Body for item 34', 5, 0, CAST(0x00009BDE00D878CC AS DateTime), CAST(0x00009BDE00D878CC AS DateTime))
INSERT [dbo].[Review] ([Id], [Title], [Summary], [Body], [GenreId], [Authorized], [CreateDateTime], [UpdateDateTime]) VALUES (35, N'Eminem - Relapse - He''s back!!!', N'Summary for item 35', N'Body for item 35', 1, 1, CAST(0x00009BF0017B662C AS DateTime), CAST(0x00009BF0017B662C AS DateTime))
INSERT [dbo].[Review] ([Id], [Title], [Summary], [Body], [GenreId], [Authorized], [CreateDateTime], [UpdateDateTime]) VALUES (36, N'Travelling the Face of the Globe by Oi Va Voi - A genuinely fresh and enthralling sound', N'Summary for item 36', N'Body for item 36', 4, 1, CAST(0x00009C23011F4180 AS DateTime), CAST(0x00009C23011F4180 AS DateTime))
INSERT [dbo].[Review] ([Id], [Title], [Summary], [Body], [GenreId], [Authorized], [CreateDateTime], [UpdateDateTime]) VALUES (37, N'Battle for the Sun by Placebo - Possibly the best album of 2009 already', N'Summary for item 37', N'Body for item 37', 5, 1, CAST(0x00009C23015A7304 AS DateTime), CAST(0x00009C23015A7304 AS DateTime))
INSERT [dbo].[Review] ([Id], [Title], [Summary], [Body], [GenreId], [Authorized], [CreateDateTime], [UpdateDateTime]) VALUES (38, N'Sonic Youth: The Eternal - Takes time to get used but then....', N'Summary for item 38', N'Body for item 38', 5, 1, CAST(0x00009C2401634538 AS DateTime), CAST(0x00009C2401634538 AS DateTime))
INSERT [dbo].[Review] ([Id], [Title], [Summary], [Body], [GenreId], [Authorized], [CreateDateTime], [UpdateDateTime]) VALUES (39, N'Sixteen Billion Drum Kicks by Renato Cohen', N'Summary for item 39', N'Body for item 39', 12, 1, CAST(0x00009C2600D4475C AS DateTime), CAST(0x00009C2600D4475C AS DateTime))
INSERT [dbo].[Review] ([Id], [Title], [Summary], [Body], [GenreId], [Authorized], [CreateDateTime], [UpdateDateTime]) VALUES (40, N'Sounds Of The Universe by Depeche Mode - Overhyped or a master piece?', N'Summary for item 40', N'Body for item 40', 2, 1, CAST(0x00009C26016D59B0 AS DateTime), CAST(0x00009C26016D59B0 AS DateTime))
INSERT [dbo].[Review] ([Id], [Title], [Summary], [Body], [GenreId], [Authorized], [CreateDateTime], [UpdateDateTime]) VALUES (41, N'First Album by Miss Kittin & The Hacker', N'Summary for item 41', N'Body for item 41', 12, 0, CAST(0x00009C2A01577F28 AS DateTime), CAST(0x00009C2A01577F28 AS DateTime))
INSERT [dbo].[Review] ([Id], [Title], [Summary], [Body], [GenreId], [Authorized], [CreateDateTime], [UpdateDateTime]) VALUES (42, N'Farm by Dinosaur Jr', N'Summary for item 42', N'Body for item 42', 5, 1, CAST(0x00009C31017470EC AS DateTime), CAST(0x00009C31017470EC AS DateTime))
INSERT [dbo].[Review] ([Id], [Title], [Summary], [Body], [GenreId], [Authorized], [CreateDateTime], [UpdateDateTime]) VALUES (43, N'21st Century Breakdown by Green Day', N'Summary for item 43', N'Body for item 43', 6, 1, CAST(0x00009C3101754058 AS DateTime), CAST(0x00009C3101754058 AS DateTime))
INSERT [dbo].[Review] ([Id], [Title], [Summary], [Body], [GenreId], [Authorized], [CreateDateTime], [UpdateDateTime]) VALUES (44, N'Wait For Me by Moby', N'Summary for item 44', N'Body for item 44', 12, 1, CAST(0x00009C3801805B50 AS DateTime), CAST(0x00009C3801805B50 AS DateTime))
SET IDENTITY_INSERT [dbo].[Review] OFF
/****** Object:  Default [DF_Review_CreateDateTime]    Script Date: 08/08/2012 14:32:59 ******/
ALTER TABLE [dbo].[Review] ADD  CONSTRAINT [DF_Review_CreateDateTime]  DEFAULT (getdate()) FOR [CreateDateTime]
GO
/****** Object:  Default [DF_Review_UpdateDateTime]    Script Date: 08/08/2012 14:32:59 ******/
ALTER TABLE [dbo].[Review] ADD  CONSTRAINT [DF_Review_UpdateDateTime]  DEFAULT (getdate()) FOR [UpdateDateTime]
GO
/****** Object:  ForeignKey [FK_Review_Genre]    Script Date: 08/08/2012 14:32:59 ******/
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [FK_Review_Genre] FOREIGN KEY([GenreId])
REFERENCES [dbo].[Genre] ([Id])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [FK_Review_Genre]
GO
