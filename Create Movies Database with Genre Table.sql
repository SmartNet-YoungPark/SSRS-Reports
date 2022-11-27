USE [master]
GO
/*
	This script and database are to be used only as an aide for doing exercises published on the Wise Owl website 
	or included in a Wise Owl course.  Neither this script nor the database it generates should be distributed in 
	whole or in part in any format whatsoever without the prior written permission of Wise Owl Business Solutions Ltd.  
*/

-- create the database
CREATE DATABASE Movies
GO

-- switch to it
USE Movies
GO

/****** Object:  Table [dbo].[tblActor]    Script Date: 02/03/2021 10:29:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblActor](
	[ActorID] [int] NOT NULL,
	[ActorName] [nvarchar](255) NULL,
	[ActorDOB] [datetime] NULL,
	[ActorGender] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCast]    Script Date: 02/03/2021 10:29:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCast](
	[CastID] [int] NOT NULL,
	[CastFilmID] [int] NULL,
	[CastActorID] [int] NULL,
	[CastCharacterName] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCertificate]    Script Date: 02/03/2021 10:29:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCertificate](
	[CertificateID] [int] NOT NULL,
	[Certificate] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCountry]    Script Date: 02/03/2021 10:29:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCountry](
	[CountryID] [int] NOT NULL,
	[CountryName] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDirector]    Script Date: 02/03/2021 10:29:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDirector](
	[DirectorID] [int] NOT NULL,
	[DirectorName] [nvarchar](255) NULL,
	[DirectorDOB] [datetime] NULL,
	[DirectorGender] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblFilm]    Script Date: 02/03/2021 10:29:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFilm](
	[FilmID] [int] NOT NULL,
	[FilmName] [nvarchar](255) NULL,
	[FilmReleaseDate] [datetime] NULL,
	[FilmDirectorID] [int] NULL,
	[FilmStudioID] [int] NULL,
	[FilmSynopsis] [nvarchar](max) NULL,
	[FilmCountryID] [int] NULL,
	[FilmLanguageID] [int] NULL,
	[FilmRunTimeMinutes] [int] NULL,
	[FilmGenreID] [int] NULL,
	[FilmCertificateID] [int] NULL,
	[FilmBudgetDollars] [int] NULL,
	[FilmBoxOfficeDollars] [int] NULL,
	[FilmOscarNominations] [int] NULL,
	[FilmOscarWins] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblGenre]    Script Date: 02/03/2021 10:29:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblGenre](
	[GenreID] [int] NOT NULL,
	[Genre] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLanguage]    Script Date: 02/03/2021 10:29:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLanguage](
	[LanguageID] [int] NOT NULL,
	[Language] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblStudio]    Script Date: 02/03/2021 10:29:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblStudio](
	[StudioID] [int] NOT NULL,
	[StudioName] [nvarchar](255) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (2, N'Sam Neill', CAST(N'1947-09-14T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (3, N'Laura Dern', CAST(N'1967-02-10T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (4, N'Jeff Goldblum', CAST(N'1952-10-22T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (5, N'Richard Attenborough', CAST(N'1923-08-29T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (6, N'Samuel L. Jackson', CAST(N'1948-12-21T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (7, N'Tobey Maguire', CAST(N'1975-06-27T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (8, N'Willem Dafoe', CAST(N'1955-07-22T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (9, N'Kirsten Dunst', CAST(N'1982-04-30T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (10, N'Naomi Watts', CAST(N'1968-09-28T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (11, N'Jack Black', CAST(N'1969-08-28T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (12, N'Adrien Brody', CAST(N'1973-04-14T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (13, N'Andy Serkis', CAST(N'1964-04-20T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (14, N'Brandon Routh', CAST(N'1979-10-09T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (15, N'Kate Bosworth', CAST(N'1983-01-02T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (16, N'Kevin Spacey', CAST(N'1959-07-26T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (17, N'Leonardo DiCaprio', CAST(N'1974-11-11T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (18, N'Kate Winslet', CAST(N'1975-10-05T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (19, N'Billy Zane', CAST(N'1966-02-24T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (20, N'Bill Paxton', CAST(N'1955-05-17T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (21, N'Steve Carell', CAST(N'1962-08-16T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (22, N'Morgan Freeman', CAST(N'1937-06-01T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (23, N'Kevin Costner', CAST(N'1955-01-18T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (24, N'Dennis Hopper', CAST(N'1936-05-17T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (25, N'Ben Affleck', CAST(N'1972-08-15T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (26, N'Josh Hartnett', CAST(N'1978-07-21T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (27, N'Kate Beckinsale', CAST(N'1973-07-26T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (28, N'Cuba Gooding Jr.', CAST(N'1968-01-02T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (29, N'Jon Voight', CAST(N'1938-12-29T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (30, N'Alec Baldwin', CAST(N'1958-04-03T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (31, N'Tom Sizemore', CAST(N'1961-11-29T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (32, N'Dan Aykroyd', CAST(N'1952-07-01T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (33, N'Shia LaBeouf', CAST(N'1986-06-11T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (34, N'John Turturro', CAST(N'1957-02-28T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (35, N'Peter Cullen', NULL, N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (36, N'Hugo Weaving', CAST(N'1960-04-04T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (37, N'Megan Fox', CAST(N'1986-05-16T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (38, N'Daniel Radcliffe', CAST(N'1989-07-23T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (39, N'Ralph Fiennes', CAST(N'1962-12-22T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (40, N'Brendan Gleeson', CAST(N'1955-03-29T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (41, N'Gary Oldman', CAST(N'1958-03-21T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (42, N'Michael Gambon', CAST(N'1940-10-19T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (43, N'Alan Rickman', CAST(N'1946-02-21T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (44, N'Emma Thompson', CAST(N'1959-04-15T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (45, N'Helena Bonham Carter', CAST(N'1966-05-26T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (46, N'Robbie Coltrane', CAST(N'1950-03-30T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (47, N'Emma Watson', CAST(N'1990-04-15T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (48, N'Rupert Grint', CAST(N'1988-08-24T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (49, N'Robin Wright Penn', CAST(N'1966-04-08T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (50, N'Anthony Hopkins', CAST(N'1937-12-31T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (51, N'John Malkovich', CAST(N'1953-12-09T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (52, N'Ray Winstone', CAST(N'1957-02-19T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (53, N'Angelina Jolie', CAST(N'1975-06-04T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (54, N'John Goodman', CAST(N'1952-06-20T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (55, N'Jerry Seinfeld', CAST(N'1954-04-29T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (56, N'Renee Zellweger', CAST(N'1969-04-25T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (57, N'Matthew Broderick', CAST(N'1962-03-21T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (58, N'Chris Rock', CAST(N'1965-02-07T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (59, N'Ray Liotta', CAST(N'1954-12-18T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (60, N'Rip Torn', CAST(N'1931-02-06T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (61, N'Johnny Depp', CAST(N'1963-06-09T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (62, N'Geoffrey Rush', CAST(N'1951-07-06T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (63, N'Orlando Bloom', CAST(N'1977-01-13T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (64, N'Keira Knightley', CAST(N'1985-03-26T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (65, N'Bill Nighy', CAST(N'1949-12-12T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (66, N'Jonathan Pryce', CAST(N'1947-06-01T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (67, N'Stellan Skarsgard', CAST(N'1951-06-13T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (68, N'Will Smith', CAST(N'1968-09-25T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (69, N'Patton Oswalt', CAST(N'1969-01-27T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (70, N'Ian Holm', CAST(N'1931-09-12T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (71, N'Brian Dennehy', CAST(N'1938-07-09T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (72, N'Peter O''Toole', CAST(N'1932-08-02T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (73, N'Brian Cox', CAST(N'1946-06-01T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (75, N'Brad Pitt', CAST(N'1963-12-18T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (76, N'Diane Kruger', CAST(N'1976-07-15T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (77, N'Eric Bana', CAST(N'1968-08-09T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (78, N'Christian Bale', CAST(N'1974-01-30T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (79, N'Michael Caine', CAST(N'1933-03-14T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (80, N'Liam Neeson', CAST(N'1952-06-07T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (81, N'Katie Holmes', CAST(N'1978-12-18T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (82, N'Rutger Hauer', CAST(N'1944-01-23T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (83, N'Ken Watanabe', CAST(N'1959-10-21T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (84, N'James Fox', CAST(N'1939-05-19T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (85, N'Christopher Lee', CAST(N'1922-05-27T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (86, N'Pierce Brosnan', CAST(N'1953-05-16T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (87, N'Halle Berry', CAST(N'1966-08-14T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (88, N'Rosamund Pike', CAST(N'1979-01-28T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (89, N'Judi Dench', CAST(N'1934-12-09T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (90, N'John Cleese', CAST(N'1939-10-27T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (91, N'Michael Madsen', CAST(N'1958-09-25T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (92, N'Samantha Bond', CAST(N'1961-11-27T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (93, N'Mel Gibson', CAST(N'1956-01-03T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (94, N'Danny Glover', CAST(N'1946-07-22T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (95, N'Joe Pesci', CAST(N'1943-02-09T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (96, N'Rene Russo', CAST(N'1954-02-17T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (97, N'Jet Li', CAST(N'1963-04-26T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (98, N'Bruce Willis', CAST(N'1955-03-19T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (99, N'Billy Bob Thornton', CAST(N'1955-08-04T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (100, N'Liv Tyler', CAST(N'1977-07-01T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (101, N'Steve Buscemi', CAST(N'1957-12-13T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (102, N'Owen Wilson', CAST(N'1968-11-18T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (103, N'Michael Clarke Duncan', CAST(N'1957-12-10T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (104, N'Peter Stormare', CAST(N'1953-08-27T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (105, N'Tommy Lee Jones', CAST(N'1946-09-15T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (106, N'Jamie Foxx', CAST(N'1967-12-13T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (107, N'Jessica Biel', CAST(N'1982-03-03T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (108, N'Ving Rhames', CAST(N'1959-05-12T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (109, N'Donald Sutherland', CAST(N'1935-07-17T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (110, N'James Woods', CAST(N'1947-04-18T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (111, N'Colin Farrell', CAST(N'1976-05-31T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (112, N'Ciaran Hinds', CAST(N'1953-02-09T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (113, N'Sophie Marceau', CAST(N'1966-11-17T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (114, N'Robert Carlyle', CAST(N'1961-04-14T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (115, N'Denise Richards', CAST(N'1971-02-17T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (116, N'Desmond Llewelyn', CAST(N'1913-09-12T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (117, N'Russell Crowe', CAST(N'1964-04-07T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (118, N'Paul Bettany', CAST(N'1971-05-27T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (119, N'Dakota Fanning', CAST(N'1994-02-23T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (120, N'Tim Robbins', CAST(N'1958-10-16T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (121, N'Matt Damon', CAST(N'1970-10-08T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (122, N'Julia Stiles', CAST(N'1981-03-28T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (123, N'David Strathairn', CAST(N'1949-01-26T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (124, N'Paddy Considine', CAST(N'1974-09-05T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (125, N'Albert Finney', CAST(N'1936-05-09T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (126, N'Monica Bellucci', CAST(N'1964-09-30T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (127, N'Laurence Fishburne', CAST(N'1961-07-30T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (128, N'Carrie-Anne Moss', CAST(N'1967-08-21T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (129, N'Keanu Reeves', CAST(N'1964-09-02T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (130, N'Tom Hanks', CAST(N'1956-07-09T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (131, N'Audrey Tautou', CAST(N'1976-08-09T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (132, N'Ian McKellen', CAST(N'1939-05-25T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (133, N'Jean Reno', CAST(N'1948-07-30T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (134, N'Jurgen Prochnow', CAST(N'1941-06-10T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (135, N'Richard Harris', CAST(N'1930-10-01T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (136, N'John Hurt', CAST(N'1940-01-22T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (137, N'Dennis Quaid', CAST(N'1954-04-09T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (138, N'Jake Gyllenhaal', CAST(N'1980-12-19T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (139, N'Billy Connolly', CAST(N'1942-11-24T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (140, N'Hiroyuki Sanada', CAST(N'1960-10-12T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (141, N'Cillian Murphy', CAST(N'1976-05-25T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (142, N'Michelle Yeoh', CAST(N'1962-08-06T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (143, N'George Clooney', CAST(N'1961-05-06T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (144, N'Mark Wahlberg', CAST(N'1971-06-05T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (145, N'John C. Reilly', CAST(N'1965-05-24T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (146, N'Mary Elizabeth Mastrantonio', CAST(N'1958-11-17T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (147, N'Michael Ironside', CAST(N'1950-02-12T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (148, N'Philip Seymour Hoffman', CAST(N'1967-07-23T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (149, N'Michelle Monaghan', CAST(N'1976-03-23T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (150, N'Simon Pegg', CAST(N'1970-02-14T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (151, N'Nicolas Cage', CAST(N'1964-01-07T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (152, N'Christian Slater', CAST(N'1969-08-18T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (153, N'Ewan McGregor', CAST(N'1971-03-31T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (154, N'Natalie Portman', CAST(N'1981-06-09T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (155, N'Hayden Christensen', CAST(N'1981-04-19T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (156, N'Frank Oz', CAST(N'1944-05-25T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (157, N'Ian McDiarmid', CAST(N'1944-08-11T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (158, N'Temuera Morrison', CAST(N'1960-12-26T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (159, N'Rena Owen', CAST(N'1962-07-22T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (160, N'Billy Crystal', CAST(N'1948-03-14T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (161, N'James Coburn', CAST(N'1928-08-31T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (162, N'Ray Park', CAST(N'1974-08-23T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (163, N'Anthony Daniels', CAST(N'1946-02-21T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (164, N'Kenny Baker', CAST(N'1934-08-24T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (165, N'Peter Mayhew', CAST(N'1944-05-19T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (166, N'Joe Don Baker', CAST(N'1936-02-12T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (167, N'Elliott Gould', CAST(N'1938-08-29T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (168, N'Andy Garcia', CAST(N'1956-04-12T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (169, N'Julia Roberts', CAST(N'1967-10-28T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (170, N'Don Cheadle', CAST(N'1964-11-29T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (171, N'Timothy Olyphant', CAST(N'1968-05-20T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (172, N'Jackie Chan', CAST(N'1954-04-07T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (173, N'Steve Coogan', CAST(N'1965-10-14T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (174, N'Arnold Schwarzenegger', CAST(N'1947-07-30T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (175, N'Maggie Q', CAST(N'1979-05-22T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (176, N'Sammo Hung', CAST(N'1952-01-07T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (177, N'Jim Broadbent', CAST(N'1949-05-24T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (178, N'Luke Wilson', CAST(N'1971-09-21T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (179, N'Jeremy Irons', CAST(N'1948-09-19T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (180, N'Edward Norton', CAST(N'1969-08-18T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (181, N'Vince Vaughan', CAST(N'1970-03-28T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (182, N'Cate Blanchett', CAST(N'1969-05-14T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (183, N'Jude Law', CAST(N'1972-12-29T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (184, N'Brent Spiner', CAST(N'1949-02-02T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (185, N'Viggo Mortensen', CAST(N'1958-10-20T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (186, N'Elijah Wood', CAST(N'1981-01-28T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (187, N'James Cromwell', CAST(N'1940-01-27T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (188, N'Bridget Moynahan', CAST(N'1971-04-28T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (189, N'Daniel Craig', CAST(N'1968-03-02T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (190, N'Max von Sydow', CAST(N'1929-04-10T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (191, N'Linda Hamilton', CAST(N'1956-09-26T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (192, N'Edward Furlong', CAST(N'1977-08-02T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (193, N'Robert Patrick', CAST(N'1958-11-05T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (194, N'Kenneth Branagh', CAST(N'1960-12-10T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (195, N'Denzel Washington', CAST(N'1954-12-28T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (196, N'Djimon Hounsou', CAST(N'1964-04-24T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (197, N'Jennifer Connelly', CAST(N'1970-12-12T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (198, N'Arnold Vosloo', CAST(N'1962-06-16T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (199, N'Joaquin Phoenix', CAST(N'1974-10-28T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (200, N'Connie Nielsen', CAST(N'1965-07-03T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (201, N'Oliver Reed', CAST(N'1937-02-13T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (202, N'Jamie Lee Curtis', CAST(N'1958-11-22T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (203, N'Tom Arnold', CAST(N'1959-03-06T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (204, N'Charlton Heston', CAST(N'1924-10-04T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (205, N'Tia Carrere', CAST(N'1967-01-02T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (206, N'Art Malik', CAST(N'1952-11-13T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (207, N'Eliza Dushku', CAST(N'1980-12-30T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (208, N'Daniel Day-Lewis', CAST(N'1957-04-29T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (209, N'Cameron Diaz', CAST(N'1972-08-30T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (210, N'Milla Jovovich', CAST(N'1975-12-17T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (211, N'Chris Tucker', CAST(N'1972-08-31T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (212, N'Sean Bean', CAST(N'1959-04-17T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (213, N'Karl Urban', CAST(N'1972-06-07T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (214, N'Linda Fiorentino', CAST(N'1958-03-09T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (215, N'Jack Nicholson', CAST(N'1937-04-22T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (216, N'Martin Sheen', CAST(N'1940-08-03T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (217, N'Paul Giamatti', CAST(N'1967-06-06T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (218, N'F. Murray Abraham', CAST(N'1939-10-24T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (219, N'Charles Dance', CAST(N'1946-10-10T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (221, N'Catherine Zeta-Jones', CAST(N'1969-09-25T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (222, N'Adam Sandler', CAST(N'1966-09-09T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (223, N'Christopher Walken', CAST(N'1943-03-31T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (224, N'David Hasselhoff', CAST(N'1952-07-17T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (225, N'Henry Winkler', CAST(N'1945-10-30T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (226, N'Jim Carrey', CAST(N'1962-01-17T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (227, N'Jennifer Aniston', CAST(N'1969-02-11T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (228, N'Emmanuelle Beart', CAST(N'1963-08-14T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (229, N'Robert Duvall', CAST(N'1931-01-05T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (230, N'Tea Leoni', CAST(N'1966-02-25T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (231, N'Jon Favreau', CAST(N'1966-10-19T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (232, N'Vanessa Redgrave', CAST(N'1937-01-30T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (1, N'Tom Cruise', CAST(N'1962-07-03T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (233, N'Paul Newman', CAST(N'1925-01-26T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (234, N'Stanley Tucci', CAST(N'1960-11-11T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (235, N'Ed Harris', CAST(N'1950-11-28T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (236, N'Christopher Plummer', CAST(N'1929-12-13T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (237, N'Clive Owen', CAST(N'1964-10-03T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (238, N'Bill Pullman', CAST(N'1953-12-17T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (239, N'Mary McDonnell', CAST(N'1952-04-28T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (240, N'Randy Quaid', CAST(N'1950-10-01T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (241, N'Hugh Jackman', CAST(N'1968-10-12T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (242, N'Patrick Stewart', CAST(N'1940-07-13T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (243, N'Famke Janssen', CAST(N'1965-11-05T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (244, N'Sean Connery', CAST(N'1930-08-25T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (245, N'Michael Biehn', CAST(N'1956-07-31T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (246, N'Rachel Weisz', CAST(N'1971-03-07T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (247, N'Will Ferrell', CAST(N'1967-07-16T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (248, N'Sacha Baron Cohen', CAST(N'1971-10-13T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (249, N'Dan Castellaneta', CAST(N'1957-05-29T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (250, N'Julie Kavner', CAST(N'1950-09-07T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (251, N'Nancy Cartwright', CAST(N'1957-10-25T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (252, N'Yeardley Smith', CAST(N'1964-07-03T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (253, N'Patrick McGoohan', CAST(N'1928-03-19T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (254, N'William Hurt', CAST(N'1950-03-20T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (255, N'Sigourney Weaver', CAST(N'1949-10-08T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (256, N'Mike Myers', CAST(N'1963-05-25T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (257, N'Eddie Murphy', CAST(N'1961-04-03T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (258, N'Antonio Banderas', CAST(N'1960-08-10T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (259, N'Jonathan Frakes', CAST(N'1952-08-19T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (260, N'LeVar Burton', CAST(N'1957-02-16T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (261, N'Michael Dorn', CAST(N'1952-12-09T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (262, N'Gates McFadden', CAST(N'1949-03-02T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (263, N'Marina Sirtis', CAST(N'1955-03-29T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (264, N'Bob Hoskins', CAST(N'1942-10-26T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (265, N'Christopher Lloyd', CAST(N'1938-10-22T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (266, N'Kathleen Turner', CAST(N'1954-06-19T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (267, N'Christina Ricci', CAST(N'1980-02-12T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (268, N'Vin Diesel', CAST(N'1967-07-18T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (269, N'William Sadler', CAST(N'1950-04-13T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (270, N'Bonnie Bedelia', CAST(N'1948-03-25T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (271, N'Geena Davis', CAST(N'1956-01-21T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (272, N'Kevin Bacon', CAST(N'1958-07-08T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (273, N'Gary Sinise', CAST(N'1955-03-17T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (274, N'Sharon Stone', CAST(N'1958-03-10T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (275, N'Sylvester Stallone
advertisement', CAST(N'1946-07-06T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (276, N'John Lithgow', CAST(N'1945-10-19T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (277, N'Michael Rooker', CAST(N'1955-04-06T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (278, N'Harrison Ford', CAST(N'1942-07-13T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (279, N'Scarlett Johansson', CAST(N'1984-11-22T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (280, N'Hilary Swank', CAST(N'1974-07-30T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (281, N'Kathleen Quinlan', CAST(N'1954-11-19T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (282, N'Joely Richardson', CAST(N'1965-01-09T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (283, N'Sean Pertwee', CAST(N'1964-06-04T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (284, N'Ron Perlman', CAST(N'1950-04-13T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (285, N'Selma Blair', CAST(N'1972-06-23T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (286, N'Ben Stiller', CAST(N'1965-11-30T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (287, N'Juliette Lewis', CAST(N'1973-06-21T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (288, N'Fred Williamson', CAST(N'1938-03-05T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (289, N'Snoop Dogg', CAST(N'1971-10-20T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (290, N'Chris Penn', CAST(N'1965-10-10T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (291, N'Gerard Butler', CAST(N'1969-11-13T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (292, N'Dominic West', CAST(N'1969-10-15T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (293, N'David Wenham', CAST(N'1965-09-21T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (294, N'Lena Headey', CAST(N'1973-10-03T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (295, N'Malcolm McDowell', CAST(N'1943-06-13T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (296, N'James Doohan', CAST(N'1920-03-03T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (297, N'Walter Koenig', CAST(N'1936-09-14T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (298, N'William Shatner', CAST(N'1931-03-22T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (299, N'Leonard Nimoy', CAST(N'1931-03-26T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (300, N'DeForest Kelley', CAST(N'1920-01-20T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (301, N'George Takei', CAST(N'1937-04-20T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (302, N'Nichelle Nichols', CAST(N'1932-12-28T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (303, N'Ricardo Montalban', CAST(N'1920-11-25T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (305, N'Marlon Brando', CAST(N'1924-04-03T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (306, N'Gene Hackman', CAST(N'1930-01-30T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (307, N'Christopher Reeve', CAST(N'1952-09-25T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (308, N'Margot Kidder', CAST(N'1948-10-17T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (309, N'James Gandolfini', CAST(N'1961-09-18T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (310, N'Val Kilmer', CAST(N'1959-12-31T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (311, N'Jim Caviezel', CAST(N'1968-09-26T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (312, N'Uma Thurman', CAST(N'1970-04-29T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (313, N'Lucy Liu', CAST(N'1968-12-02T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (314, N'Daryl Hannah', CAST(N'1960-12-03T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (315, N'David Carradine', CAST(N'1936-12-08T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (316, N'Charles S. Dutton', CAST(N'1951-01-30T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (317, N'Pete Postlethwaite', CAST(N'1946-02-16T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (318, N'Wesley Snipes', CAST(N'1962-07-31T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (319, N'Kris Kristofferson', CAST(N'1936-06-22T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (320, N'Donnie Yen', CAST(N'1963-07-27T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (321, N'Ryan Phillippe', CAST(N'1974-09-10T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (322, N'Robert De Niro', CAST(N'1943-08-17T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (323, N'John Rhys-Davies', CAST(N'1944-05-05T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (324, N'Stephen Dorff', CAST(N'1973-07-29T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (325, N'James Earl Jones', CAST(N'1931-01-17T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (326, N'Julianne Moore', CAST(N'1960-12-03T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (327, N'Joe Pantoliano', CAST(N'1951-09-12T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (328, N'Madeleine Stowe', CAST(N'1958-08-18T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (329, N'Russell Means', CAST(N'1939-11-10T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (330, N'Wes Studi', CAST(N'1947-12-17T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (331, N'Rudy Youngblood', CAST(N'1982-09-21T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (332, N'Dalia Hernandez', CAST(N'1985-08-14T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (333, N'Rachel McAdams', CAST(N'1976-10-07T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (334, N'Isla Fisher', CAST(N'1976-02-03T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (335, N'Jane Seymour', CAST(N'1951-02-15T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (336, N'Michael J. Fox', CAST(N'1961-06-09T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (337, N'Thomas F. Wilson', CAST(N'1959-04-15T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (338, N'Timothy Dalton', CAST(N'1944-03-21T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (339, N'Benicio Del Toro', CAST(N'1967-02-19T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (340, N'Robert Brown', CAST(N'1921-07-23T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblActor] ([ActorID], [ActorName], [ActorDOB], [ActorGender]) VALUES (341, N'David Hedison', CAST(N'1927-05-20T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (59, 13, 56, N'Vanessa Bloome')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (60, 13, 57, N'Adam Flayman')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (61, 13, 54, N'Layton T. Montgomery')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (62, 13, 58, N'Mooseblood')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (63, 13, 59, N'Ray Liotta')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (64, 13, 60, N'Lou Lo Duca')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (65, 14, 61, N'Captain Jack Sparrow')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (66, 14, 62, N'Captain Barbossa')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (67, 14, 63, N'Will Turner')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (68, 14, 64, N'Elizabeth Swann')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (69, 14, 65, N'Davy Jones')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (70, 14, 66, N'Governor Weatherby Swann')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (71, 14, 67, N'''Bootstrap'' Bill Turner')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (72, 15, 68, N'Robert Neville')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (73, 15, 44, N'Dr. Alice Krippin')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (74, 16, 69, N'Remy')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (75, 16, 70, N'Skinner')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (76, 16, 71, N'Django')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (77, 16, 72, N'Anton Ego')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (78, 17, 73, N'Agamemnon')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (79, 17, 75, N'Achilles')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (80, 17, 40, N'Menelaus')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (81, 17, 76, N'Helen')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (82, 17, 77, N'Hector')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (83, 17, 63, N'Paris')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (84, 18, 38, N'Harry Potter')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (85, 18, 47, N'Hermione Granger')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (86, 18, 48, N'Ron Weasley')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (87, 18, 46, N'Rubeus Hagrid')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (88, 18, 42, N'Albus Dumbledore')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (89, 18, 43, N'Severus Snape')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (90, 18, 40, N'Professor Alastor ''Mad­Eye'' Moody')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (91, 18, 41, N'Sirius Black')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (92, 18, 39, N'Lord Voldemort')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (93, 19, 78, N'Bruce Wayne')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (94, 19, 79, N'Alfred')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (95, 19, 80, N'Henri Ducard')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (96, 19, 81, N'Rachel Dawes')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (97, 19, 41, N'Jim Gordon')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (98, 19, 82, N'Earle')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (99, 19, 83, N'Ra''s Al Ghul')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (100, 19, 22, N'Lucius Fox')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (101, 20, 61, N'Willy Wonka')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (102, 20, 45, N'Mrs. Bucket')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (103, 20, 84, N'Mr. Salt')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (104, 20, 85, N'Dr. Wonka')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (105, 21, 61, N'Captain Jack Sparrow')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (106, 21, 63, N'Will Turner')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (107, 21, 64, N'Elizabeth Swann')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (108, 21, 65, N'Davy Jones')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (109, 21, 66, N'Governor Weatherby Swann')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (110, 21, 67, N'''Bootstrap'' Bill Turner')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (111, 22, 86, N'James Bond')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (112, 22, 89, N'M')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (113, 22, 90, N'R')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (114, 22, 87, N'Jinx')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (115, 22, 88, N'Miranda Frost')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (116, 22, 91, N'Damian Falco')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (117, 22, 92, N'Miss Moneypenny')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (118, 23, 93, N'Martin Riggs')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (119, 23, 94, N'Roger Murtaugh')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (120, 23, 95, N'Leo Getz')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (121, 23, 96, N'Lorna Cole')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (122, 23, 58, N'Detective Lee Butters')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (123, 23, 97, N'Wah Sing Ku')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (124, 24, 98, N'Harry S. Stamper')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (125, 24, 99, N'Dan Truman')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (126, 24, 25, N'A.J. Frost')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (127, 24, 100, N'Grace Stamper')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (128, 24, 101, N'Rockhound')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (129, 24, 102, N'Oscar Choi')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (130, 24, 103, N'Jayotis ''Bear'' Kurleenbear')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (131, 24, 104, N'Lev Andropov')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (132, 25, 68, N'Agent Jay')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (133, 25, 105, N'Agent Kay')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (134, 25, 60, N'Zed')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (135, 26, 7, N'Peter Parker')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (136, 26, 9, N'Mary Jane Watson')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (137, 27, 7, N'Peter Parker')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (138, 27, 9, N'Mary Jane Watson')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (139, 27, 8, N'Norman Osborn')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (140, 28, 106, N'Lt. Henry Purcell')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (141, 28, 107, N'Lt. Kara Wade')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (142, 29, 30, N'Captain Gray Edwards')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (143, 29, 108, N'Sgt. Ryan Whitaker')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (144, 29, 101, N'Officer Neil Fleming')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (145, 29, 109, N'Dr. Cid')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (146, 29, 110, N'General Hein')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (147, 30, 111, N'Sonny Crockett')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (148, 30, 106, N'Ricardo Tubbs')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (149, 30, 112, N'FBI Agent Fujima')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (150, 31, 86, N'James Bond')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (151, 31, 113, N'Elektra')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (152, 31, 114, N'Renard')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (153, 31, 115, N'Christmas Jones')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (154, 31, 46, N'Valentin Zukovsky')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (155, 31, 116, N'Q')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (156, 31, 89, N'M')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (157, 31, 90, N'R')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (158, 31, 92, N'Miss Moneypenny')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (159, 32, 117, N'Captain Jack Aubrey')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (160, 32, 118, N'Dr. Stephen Maturin')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (5, 1, 5, N'John Hammond')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (6, 1, 6, N'Ray Arnold')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (7, 2, 7, N'Peter Parker')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (8, 2, 8, N'Norman Osborn')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (9, 2, 9, N'Mary Jane Watson')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (10, 3, 10, N'Ann Darrow')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (11, 3, 11, N'Carl Denham')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (12, 3, 12, N'Jack Driscoll')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (13, 3, 13, N'Kong')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (14, 5, 14, N'Clark Kent')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (15, 5, 15, N'Lois Lane')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (16, 5, 16, N'Lex Luthor')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (17, 6, 17, N'Jack Dawson')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (18, 6, 18, N'Rose DeWitt Bukater')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (19, 6, 19, N'Caledon ''Cal'' Hockley')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (20, 6, 20, N'Brock Lovett')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (21, 7, 21, N'Evan Baxter')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (22, 7, 22, N'God')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (23, 8, 23, N'Mariner')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (24, 8, 24, N'Deacon')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (25, 8, 11, N'Pilot')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (26, 9, 25, N'Captain Rafe McCawley')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (27, 9, 26, N'Captain Danny Walker')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (28, 9, 27, N'Nurse Lt. Evelyn Johnson')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (29, 9, 28, N'Petty Officer Doris Miller')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (30, 9, 29, N'President Franklin Delano Roosevelt')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (31, 9, 30, N'Lt. Col. James Doolittle')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (32, 9, 31, N'Sgt. Earl Sistern')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (33, 9, 32, N'Captain Thurman')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (34, 10, 33, N'Sam Witwicky')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (35, 10, 37, N'Mikaela Banes')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (36, 10, 29, N'Defense Secretary John Keller')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (37, 10, 34, N'Agent Simmons')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (38, 10, 35, N'Optimus Prime')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (39, 10, 36, N'Megatron')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (40, 11, 38, N'Harry Potter')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (41, 11, 39, N'Lord Voldemort')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (42, 11, 40, N'Alastor ''Mad-Eye'' Moody')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (43, 11, 41, N'Sirius Black')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (44, 11, 47, N'Hermione Granger')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (45, 11, 48, N'Ron Weasley')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (46, 11, 42, N'Albus Dumbledore')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (47, 11, 43, N'Severus Snape')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (48, 11, 44, N'Sybil Trelawney')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (49, 11, 45, N'Bellatrix Lestrange')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (50, 11, 46, N'Rubeus Hagrid')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (51, 12, 49, N'Wealthow')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (52, 12, 50, N'Hrothgar')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (53, 12, 51, N'Unferth')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (54, 12, 52, N'Beowulf')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (55, 12, 40, N'Wiglaf')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (56, 12, 53, N'Grendel''s Mother')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (57, 7, 54, N'Congressman Long')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (58, 13, 55, N'Barry B. Benson')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (161, 33, 119, N'Rachel Ferrier')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (162, 33, 120, N'Harlan Ogilvy')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (163, 34, 121, N'Jason Bourne')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (164, 34, 122, N'Nicky Parsons')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (165, 34, 123, N'Deputy Director Noah Vosen')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (166, 34, 124, N'Simon Ross')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (167, 34, 125, N'Dr. Albert Hirsch')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (168, 35, 38, N'Harry Potter')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (169, 35, 47, N'Hermione Granger')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (170, 35, 48, N'Ron Weasley')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (171, 35, 41, N'Sirius Black')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (172, 35, 43, N'Professor Severus Snape')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (173, 35, 46, N'Rubeus Hagrid')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (174, 35, 44, N'Professor Sybil Trelawney')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (175, 36, 126, N'Persephone')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (176, 36, 127, N'Morpheus')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (177, 36, 128, N'Trinity')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (178, 36, 129, N'Neo')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (179, 36, 36, N'Agent Smith')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (180, 37, 130, N'Dr. Robert Langdon')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (181, 37, 131, N'Agent Sophie Neveu')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (182, 37, 132, N'Sir Leigh Teabing')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (183, 37, 133, N'Captain Bezu Fache')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (184, 37, 118, N'Silas')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (185, 37, 134, N'Andre Vernet')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (186, 38, 135, N'Professor Albus Dumbledore')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (187, 38, 46, N'Rubeus Hagrid')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (188, 38, 38, N'Harry Potter')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (189, 38, 136, N'Mr. Ollivander')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (190, 38, 48, N'Ron Weasley')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (191, 38, 47, N'Hermione Granger')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (192, 38, 90, N'Nearly Headless Nick')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (193, 38, 43, N'Professor Severus Snape')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (194, 39, 137, N'Jack Hall')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (195, 39, 138, N'Sam Hall')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (196, 39, 70, N'Terry Rapson')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (197, 40, 61, N'Captain Jack Sparrow')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (198, 40, 63, N'Will Turner')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (199, 40, 64, N'Elizabeth Swann')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (200, 40, 66, N'Governor Weatherby Swann')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (201, 40, 62, N'Captain Barbossa')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (202, 41, 1, N'Nathan Algren')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (203, 41, 83, N'Katsumoto')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (204, 264, 140, N'Kaneda')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (205, 264, 141, N'Capa')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (206, 264, 142, N'Corazon')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (207, 19, 141, N'Dr. Jonathan Crane')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (208, 41, 140, N'Ujio')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (209, 41, 139, N'Zebulon Gant')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (210, 42, 143, N'Captain Billy Tyne')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (211, 42, 144, N'Bobby Shatford')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (212, 42, 145, N'Dale ''Murph'' Murphy')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (213, 42, 146, N'Linda Greenlaw')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (214, 42, 147, N'Bob Brown')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (215, 43, 1, N'Ethan Hunt')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (216, 43, 148, N'Owen Davian')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (217, 43, 108, N'Luther')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (218, 43, 149, N'Julia')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (219, 43, 150, N'Benji')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (220, 43, 127, N'Theodore Brassel')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (221, 44, 1, N'Ethan Hunt')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (222, 44, 108, N'Luther Stickell')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (223, 44, 40, N'John C. McCloy')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (224, 45, 151, N'Christian Slater')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (225, 45, 104, N'Gunnery Sergeant Hjelmstad')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (226, 45, 152, N'Sgt. Pete ''Ox'' Anderson')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (227, 46, 153, N'Obi-Wan Kenobi')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (228, 46, 154, N'Senator Padme Amidala')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (229, 46, 155, N'Anakin Skywalker')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (230, 46, 85, N'Count Dooku')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (231, 46, 6, N'Mace Windu')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (232, 46, 156, N'Yoda')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (233, 46, 157, N'Chancellor Palpatine')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (234, 46, 158, N'Jango Fett')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (235, 265, 158, N'Jake Heke')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (236, 265, 159, N'Beth Heke')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (237, 47, 54, N'James P. "Sulley" Sullivan')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (238, 47, 160, N'Mike Wazowski')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (239, 47, 101, N'Randall Boggs')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (240, 47, 161, N'Henry J. Waternoose')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (241, 47, 156, N'Fungus')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (242, 48, 80, N'Qui-Gon Jinn')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (243, 48, 153, N'Obi-Wan Kenobi')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (244, 48, 154, N'Queen Padme Amidala')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (245, 48, 156, N'Yoda')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (246, 48, 157, N'Senator Palpatine')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (247, 48, 162, N'Darth Maul')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (248, 48, 163, N'C-3PO')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (249, 48, 164, N'R2-D2')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (250, 48, 6, N'Mace Windu')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (251, 48, 64, N'Sabé')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (252, 49, 153, N'Obi-Wan Kenobi')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (253, 49, 154, N'Padme')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (254, 49, 155, N'Anakin Skywalker')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (255, 49, 157, N'Supreme Chancellor Palpatine')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (256, 49, 6, N'Mace Windu')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (257, 49, 156, N'Yoda')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (258, 49, 163, N'C-3PO')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (259, 49, 164, N'R2-D2')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (260, 49, 85, N'Count Dooku')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (261, 49, 158, N'Commander Cody')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (262, 49, 165, N'Chewbacca')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (263, 49, 159, N'Nee Alavar')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (264, 50, 126, N'Persephone')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (265, 50, 127, N'Morpheus')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (266, 50, 128, N'Trinity')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (267, 50, 129, N'Neo')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (268, 50, 36, N'Agent Smith')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (269, 51, 86, N'James Bond')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (270, 51, 66, N'Elliot Carver')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (271, 51, 142, N'Wai Lin')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (272, 51, 166, N'Jack Wade')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (273, 51, 89, N'M')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (274, 51, 116, N'Q')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (275, 51, 92, N'Miss Moneypenny')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (276, 52, 143, N'Danny Ocean')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (277, 52, 75, N'Rusty Ryan')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (278, 52, 167, N'Reuben Tishkoff')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (279, 52, 121, N'Linus Caldwell')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (280, 52, 168, N'Terry Benedict')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (281, 52, 169, N'Tess Ocean')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (282, 52, 170, N'Basher Tarr')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (283, 53, 98, N'John McClane')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (284, 53, 171, N'Thomas Gabriel')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (285, 53, 175, N'Mai')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (286, 54, 172, N'Passepartout')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (287, 54, 173, N'Phileas Fogg')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (288, 54, 177, N'Lord Kelvin')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (289, 54, 174, N'Prince Hapi')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (290, 54, 175, N'Female Agent')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (291, 54, 176, N'Wong Fei Hung')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (292, 54, 102, N'Wilbur Wright')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (293, 54, 90, N'Grizzled Sergeant')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (294, 54, 178, N'Orville Wright')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (295, 55, 80, N'Godfrey de Ibelin')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (296, 55, 63, N'Balian de Ibelin')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (297, 55, 40, N'Reynald')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (298, 55, 179, N'Tiberias')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (299, 55, 180, N'King Baldwin')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (300, 56, 75, N'John Smith')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (301, 56, 53, N'Jane Smith')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (302, 56, 181, N'Eddie')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (303, 56, 149, N'Gwen')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (304, 57, 17, N'Howard Hughes')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (305, 57, 182, N'Katharine Hepburn')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (306, 57, 27, N'Ava Gardner')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (307, 57, 145, N'Noah Dietrich')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (308, 57, 30, N'Juan Trippe')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (309, 57, 70, N'Professor Fitz')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (310, 57, 183, N'Errol Flynn')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (311, 57, 184, N'Robert Gross')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (312, 57, 8, N'Roland Sweet')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (313, 58, 68, N'Muhammad Ali')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (314, 58, 106, N'Drew ''Bundini'' Brown')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (315, 58, 29, N'Howard Cosell')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (316, 59, 182, N'Galadriel')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (317, 59, 63, N'Legolas Greenleaf')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (318, 59, 70, N'Bilbo Baggins')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (319, 59, 85, N'Saruman')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (320, 59, 13, N'Gollum')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (321, 59, 132, N'Gandalf the Grey')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (322, 59, 185, N'Aragorn')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (323, 59, 100, N'Arwen')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (324, 59, 36, N'Elrond')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (325, 59, 186, N'Frodo Baggins')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (326, 60, 68, N'Del Spooner')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (327, 60, 33, N'Farber')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (328, 60, 188, N'Susan Calvin')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (329, 60, 187, N'Dr. Alfred Lanning')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (330, 61, 189, N'James Bond')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (331, 61, 89, N'M')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (332, 62, 1, N'Chief John Anderton')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (333, 62, 190, N'Director Lamar Burgess')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (334, 62, 111, N'Danny Witwer')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (335, 62, 104, N'Dr. Solomon Eddie')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (336, 63, 174, N'The Terminator')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (337, 63, 191, N'Sarah Connor')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (338, 63, 192, N'John Connor')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (339, 63, 193, N'T-1000')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (340, 64, 87, N'Patience Phillips')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (341, 65, 38, N'Harry Potter')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (342, 65, 48, N'Ron Weasley')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (343, 65, 47, N'Hermione Granger')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (344, 65, 46, N'Rubeus Hagrid')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (345, 65, 194, N'Professor Gilderoy Lockhart')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (346, 65, 43, N'Professor Snape')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (347, 65, 135, N'Professor Albus Dumbledore')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (348, 65, 90, N'Nearly Headless Nick')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (349, 66, 195, N'Frank Lucas')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (350, 66, 117, N'Detective Richie Roberts')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (351, 67, 17, N'Danny Archer')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (352, 67, 196, N'Solomon Vandy')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (353, 67, 197, N'Maddy Bowen')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (354, 67, 198, N'Colonel Coetzee')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (355, 68, 117, N'Maximus')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (356, 68, 199, N'Commodus')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (357, 68, 200, N'Lucilla')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (358, 68, 201, N'Proximo')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (359, 68, 135, N'Marcus Aurelius')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (360, 68, 196, N'Juba')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (361, 69, 174, N'Harry Tasker')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (362, 69, 202, N'Helen Tasker')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (363, 69, 203, N'Albert Gibson')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (364, 69, 20, N'Simon')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (365, 69, 204, N'Spencer Trilby')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (366, 69, 205, N'Juno Skinner')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (367, 69, 206, N'Salim Abu Aziz')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (368, 69, 207, N'Dana Tasker')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (369, 70, 17, N'Amsterdam Vallon')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (370, 70, 208, N'Bill ''The Butcher'' Cutting')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (371, 70, 209, N'Jenny Everdeane')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (372, 70, 177, N'Boss Tweed')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (373, 70, 145, N'Happy Jack')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (374, 70, 80, N'''Priest'' Vallon')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (375, 70, 40, N'Walter ''Monk'' McGinn')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (376, 71, 26, N'Eversmann')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (377, 71, 153, N'Grimes')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (378, 71, 31, N'McKnight')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (379, 71, 77, N'Hoot')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (380, 72, 98, N'Korben Dallas')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (381, 72, 41, N'Jean-Baptiste Emanuel Zorg')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (382, 72, 70, N'Father Vito Cornelius')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (383, 72, 210, N'Leeloo')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (384, 72, 211, N'Ruby Rhod')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (385, 59, 212, N'Boromir')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (386, 73, 212, N'Boromir')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (387, 73, 182, N'Galadriel')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (388, 73, 63, N'Legolas Greenleaf')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (389, 73, 70, N'Bilbo Baggins')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (390, 73, 132, N'Gandalf the White')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (391, 73, 185, N'Aragorn')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (392, 73, 13, N'Gollum')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (393, 73, 100, N'Arwen')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (394, 73, 36, N'Elrond')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (395, 73, 186, N'Frodo Baggins')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (396, 73, 85, N'Saruman')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (397, 74, 182, N'Galadriel')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (398, 74, 63, N'Legolas Greenleaf')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (399, 74, 85, N'Saruman')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (400, 74, 132, N'Gandalf the White')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (401, 74, 185, N'Aragorn')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (402, 74, 13, N'Gollum')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (403, 74, 100, N'Arwen')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (404, 74, 213, N'Eomer')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (685, 225, 296, N'Commander Montgomery "Scotty" Scott')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (686, 225, 297, N'Commander Pavel Chekov')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (688, 225, 301, N'Commander Hikaru Sulu')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (689, 225, 302, N'Commander Uhura')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (690, 225, 303, N'Khan')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (700, 162, 296, N'Commander Montgomery "Scotty" Scott')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (701, 162, 297, N'Lt. Pavel Chekov')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (702, 162, 301, N'Lt. Commander Hikaru Sulu')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (703, 162, 302, N'Lt. Commander Uhura')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (704, 162, 298, N'Admiral James T. Kirk')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (705, 162, 299, N'Mr Spock')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (706, 162, 300, N'Dr. Leonard "Bones" McCoy')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (708, 201, 265, N'Commander Kruge')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (709, 201, 296, N'Commander Montgomery "Scotty" Scott')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (710, 201, 297, N'Commander Pavel Chekov')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (711, 201, 301, N'Commander Hikaru Sulu')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (712, 201, 302, N'Commander Uhura')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (713, 201, 298, N'Admiral James T. Kirk')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (714, 201, 299, N'Captain Spock')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (715, 201, 300, N'Dr. Leonard "Bones" McCoy')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (716, 174, 298, N'Captain James T. Kirk')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (717, 174, 299, N'Captain Spock')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (718, 174, 300, N'Dr. Leonard "Bones" McCoy')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (719, 174, 296, N'Captain Montgomery "Scotty" Scott')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (720, 174, 297, N'Commander Pavel Chekov')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (721, 174, 302, N'Commander Uhura')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (722, 174, 301, N'Commander Hikaru Sulu')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (723, 180, 298, N'Captain James T. Kirk')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (724, 180, 299, N'Captain Spock')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (725, 180, 300, N'Dr. Leonard "Bones" McCoy')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (726, 180, 296, N'Captain Montgomery "Scotty" Scott')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (727, 180, 297, N'Commander Pavel Chekov')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (728, 180, 302, N'Commander Uhura')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (729, 180, 301, N'Captain Hikaru Sulu')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (730, 180, 236, N'General Chang')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (731, 180, 261, N'Colonel Worf')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (732, 180, 152, N'Excelsior Communications Officer')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (733, 191, 298, N'Captain James T. Kirk')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (734, 191, 299, N'Captain Spock')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (735, 191, 300, N'Dr. Leonard "Bones" McCoy')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (736, 191, 296, N'Commander Montgomery "Scotty" Scott')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (737, 191, 301, N'Commander Hikaru Sulu')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (738, 191, 297, N'Commander Pavel Chekov')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (739, 191, 302, N'Commander Uhura')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (740, 130, 307, N'Clark Kent')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (741, 130, 305, N'Jor-El')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (742, 130, 306, N'Lex Luthor')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (743, 130, 308, N'Lois Lane')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (744, 131, 195, N'Lt. Commander Ron Hunter')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (745, 131, 306, N'Captain Frank Ramsey')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (746, 131, 185, N'Lt. Peter ''WEAPS'' Ince')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (747, 131, 309, N'Lt. Bobby Dougherty')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (748, 132, 195, N'Agent Doug Carlin')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (749, 132, 310, N'Agent Paul Pryzwarra')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (750, 132, 311, N'Carroll Oerstadt')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (751, 133, 195, N'Creasy')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (752, 133, 119, N'Pita')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (753, 133, 223, N'Rayburn')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (754, 134, 68, N'Robert Clayton Dean')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (755, 134, 306, N'Brill')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (756, 134, 29, N'Reynolds')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (757, 134, 11, N'Fiedler')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (758, 134, 31, N'Boss Paulie Pintero')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (759, 135, 312, N'The Bride')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (760, 135, 313, N'O-Ren Ishii')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (761, 135, 314, N'Elle Driver')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (762, 135, 315, N'Bill')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (763, 135, 91, N'Budd')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (764, 136, 255, N'Ellen Ripley')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (765, 136, 316, N'Dillon')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (766, 136, 219, N'Clemens')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (767, 136, 317, N'David')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (768, 137, 172, N'Chon Wang')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (769, 137, 102, N'Roy O''Bannon')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (770, 137, 313, N'Princess Pei Pei')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (771, 138, 312, N'The Bride')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (772, 138, 315, N'Bill')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (773, 138, 313, N'O-Ren Ishii')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (774, 138, 91, N'Budd')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (775, 138, 314, N'Elle Driver')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (776, 138, 6, N'Rufus')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (777, 139, 318, N'Blade')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (778, 139, 319, N'Abraham Whistler')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (779, 139, 284, N'Reinhardt')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (780, 139, 320, N'Snowman')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (781, 140, 321, N'John "Doc" Bradley')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (405, 73, 213, N'Eomer')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (406, 74, 36, N'Elrond')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (407, 74, 186, N'Frodo Baggins')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (408, 74, 212, N'Boromir')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (409, 75, 172, N'Chief Inspector Lee')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (410, 75, 211, N'Detective James Carter')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (411, 75, 190, N'Varden Reynard')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (412, 75, 140, N'Kenji')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (413, 76, 172, N'Chief Inspector Lee')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (414, 76, 211, N'Detective James Carter')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (415, 76, 175, N'Girl in Car')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (416, 76, 170, N'Kenny')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (417, 77, 105, N'Agent Kay')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (418, 77, 68, N'Agent Jay')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (419, 77, 60, N'Zed')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (420, 77, 214, N'Dr. Laurel Weaver')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (421, 78, 17, N'William M. ''Billy'' Costigan Jr.')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (422, 78, 121, N'Colin')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (423, 78, 215, N'Costello')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (424, 78, 144, N'Dignam')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (425, 78, 216, N'Queenan')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (426, 78, 52, N'Mr. French')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (427, 78, 30, N'Ellerby')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (428, 79, 98, N'John McClane')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (429, 79, 179, N'Simon Gruber')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (430, 79, 6, N'Zeus Carver')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (431, 80, 117, N'Jim Braddock')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (432, 80, 56, N'Mae Braddock')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (433, 80, 217, N'Joe Gould')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (434, 80, 124, N'Mike Wilson')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (435, 81, 121, N'Jason Bourne')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (436, 81, 73, N'Ward Abbott')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (437, 81, 122, N'Nicky Parsons')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (438, 81, 213, N'Kirill')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (439, 81, 149, N'Kim')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (440, 82, 174, N'Jack Slater')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (441, 82, 218, N'John Practice')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (442, 82, 132, N'Death')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (443, 82, 219, N'Benedict')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (444, 83, 130, N'Chuck Noland')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (445, 84, 75, N'Rusty Ryan')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (446, 84, 221, N'Isabel Lahiri')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (447, 84, 143, N'Danny Ocean')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (448, 84, 169, N'Tess Ocean')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (449, 84, 168, N'Terry Benedict')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (450, 84, 170, N'Basher Tarr')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (451, 84, 121, N'Linus Caldwell')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (452, 84, 167, N'Reuben Tishkoff')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (453, 84, 125, N'Gaspar LeMarque')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (454, 85, 222, N'Michael Newman')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (455, 85, 27, N'Donna Newman')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (456, 85, 223, N'Morty')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (457, 85, 224, N'Ammer')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (458, 85, 225, N'Ted Newman')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (459, 86, 226, N'Bruce Nolan')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (460, 86, 22, N'God')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (461, 86, 227, N'Grace Connelly')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (462, 86, 21, N'Evan Baxter')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (463, 87, 1, N'Ethan Hunt')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (464, 87, 29, N'Jim Phelps')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (465, 87, 228, N'Claire Phelps')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (466, 87, 133, N'Franz Krieger')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (467, 87, 108, N'Luther Stickell')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (468, 87, 232, N'Max')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (469, 88, 229, N'Captain Spurgeon ''Fish'' Tanner')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (470, 88, 230, N'Jenny Lerner')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (471, 88, 186, N'Leo Beiderman')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (472, 88, 232, N'Robin Lerner')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (473, 88, 22, N'President Tom Beck')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (474, 88, 187, N'Alan Rittenhouse')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (475, 88, 231, N'Dr. Gus Partenza')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (476, 89, 130, N'Michael Sullivan')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (477, 89, 233, N'John Rooney')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (478, 89, 189, N'Connor Rooney')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (479, 89, 112, N'Finn McGovern')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (480, 89, 183, N'Harlen Maguire')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (481, 89, 234, N'Frank Nitti')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (482, 90, 117, N'John Nash')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (483, 90, 235, N'Parcher')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (484, 90, 197, N'Alicia Nash')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (485, 90, 236, N'Dr. Rosen')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (486, 90, 118, N'Charles')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (487, 91, 79, N'Jasper')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (488, 91, 237, N'Theo Faron')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (489, 92, 77, N'Avner')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (490, 92, 189, N'Steve')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (491, 92, 112, N'Carl')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (492, 92, 62, N'Ephraim')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (493, 93, 68, N'Captain Steven Hiller')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (494, 93, 238, N'President Thomas J. Whitmore')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (495, 93, 4, N'David Levinson')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (496, 93, 239, N'First Lady Marilyn Whitmore')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (497, 93, 240, N'Russell Casse')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (498, 93, 184, N'Dr. Brackish Okun')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (499, 94, 241, N'Wolverine')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (500, 94, 242, N'Professor Charles Xavier')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (501, 94, 132, N'Magneto')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (502, 94, 243, N'Jean Grey')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (503, 94, 87, N'Storm')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (504, 94, 162, N'Toad')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (505, 95, 242, N'Professor Charles Xavier')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (506, 95, 241, N'Wolverine')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (507, 95, 132, N'Magneto')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (508, 95, 87, N'Storm')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (509, 95, 243, N'Jean Grey')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (510, 95, 73, N'William Stryker')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (511, 96, 244, N'John Patrick Mason')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (512, 96, 151, N'Dr. Stanley Goodspeed')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (513, 96, 235, N'Brigadier General Francis X. Hummel')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (514, 96, 245, N'Commander Anderson')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (515, 97, 129, N'John Constantine')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (516, 97, 246, N'Angela Dodson')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (517, 97, 33, N'Chas Kramer')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (518, 97, 196, N'Midnite')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (519, 97, 104, N'Satan')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (520, 98, 98, N'David Dunn')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (521, 98, 6, N'Elijah Price')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (522, 98, 49, N'Audrey Dunn')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (523, 99, 103, N'Lucius Washington')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (524, 99, 247, N'Ricky Bobby')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (525, 99, 145, N'Cal Naughton, Jr.')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (526, 99, 248, N'Jean Girard')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (527, 100, 249, N'Homer')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (528, 100, 251, N'Bart')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (529, 100, 250, N'Marge')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (530, 100, 252, N'Lisa')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (531, 101, 93, N'William Wallace')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (532, 101, 73, N'Argyle Wallace')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (533, 101, 253, N'King Edward I')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (534, 101, 113, N'Princess Isabelle')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (535, 101, 40, N'Hamish Campbell')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (536, 102, 138, N'Anthony Swofford')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (537, 102, 106, N'Staff Sergeant Sykes')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (538, 103, 199, N'Lucius Hunt')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (539, 103, 12, N'Noah Percy')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (540, 103, 254, N'Edward Walker')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (541, 103, 255, N'Alice Hunt')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (542, 103, 40, N'August Nicholson')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (543, 104, 256, N'Shrek')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (544, 104, 257, N'Donkey')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (545, 104, 258, N'Puss in Boots')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (546, 104, 90, N'King')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (547, 105, 256, N'Shrek')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (548, 105, 257, N'Donkey')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (549, 105, 258, N'Puss in Boots')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (550, 105, 90, N'King')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (551, 105, 209, N'Princess Fiona')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (552, 104, 209, N'Princess Fiona')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (553, 106, 235, N'Virgil ''Bud'' Brigman')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (554, 106, 146, N'Lindsey Brigman')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (555, 106, 245, N'Lt. Hiram Coffey')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (556, 107, 242, N'Captain Jean-Luc Picard')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (557, 107, 259, N'Commander William T. Riker')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (558, 107, 184, N'Lt. Commander Data')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (559, 107, 260, N'Lt. Commander Geordi La Forge')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (560, 107, 261, N'Lt. Commander Worf')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (561, 107, 262, N'Dr. Beverly Crusher')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (562, 107, 263, N'Commander Deanna Troi')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (563, 107, 218, N'Ad''har Ru''afo')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (564, 108, 264, N'Eddie Valiant')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (565, 108, 265, N'Judge Doom')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (566, 108, 266, N'Jessica Rabbit')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (567, 108, 251, N'Dipped Shoe')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (568, 109, 61, N'Ichabod Crane')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (569, 109, 267, N'Katrina Van Tassel')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (570, 109, 42, N'Baltus Van Tassel')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (571, 109, 157, N'Doctor Lancaster')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (572, 109, 223, N'Hessian Horseman')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (573, 109, 85, N'Burgomaster')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (574, 110, 268, N'Xander Cage')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (575, 110, 6, N'Agent Augustus Gibbons')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (576, 111, 98, N'John McClane')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (577, 111, 270, N'Holly McClane')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (578, 111, 269, N'Colonel Stuart')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (579, 111, 193, N'O''Reilly')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (580, 112, 271, N'Samantha Caine')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (581, 112, 6, N'Mitch Henessey')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (582, 112, 73, N'Dr. Nathan Waldman')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (583, 113, 130, N'Jim Lovell')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (584, 113, 20, N'Fred Haise')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (585, 113, 272, N'Jack Swigert')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (586, 113, 273, N'Ken Mattingly')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (587, 113, 235, N'Gene Kranz')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (588, 114, 130, N'Captain John H. Miller')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (589, 114, 31, N'Sergeant Mike Horvath')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (590, 114, 268, N'Private Adrian Caparzo')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (591, 114, 121, N'Private James Francis Ryan')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (592, 114, 217, N'Sergeant Hill')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (593, 115, 180, N'The Narrator')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (594, 115, 75, N'Tyler Durden')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (595, 115, 45, N'Marla Singer')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (596, 116, 129, N'Neo')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (597, 116, 128, N'Trinity')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (598, 116, 127, N'Morpheus')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (599, 116, 36, N'Agent Smith')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (600, 117, 174, N'Douglas Quaid')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (601, 64, 274, N'Laurel Hedare')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (602, 82, 274, N'Catherine Tramell')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (603, 117, 274, N'Lori')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (604, 117, 147, N'Richter')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (605, 118, 275, N'Gabe Walker')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (606, 118, 276, N'Eric Qualen')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (607, 118, 277, N'Hal Tucker')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (608, 119, 278, N'Jack Ryan')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (609, 119, 8, N'John Clark')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (610, 120, 86, N'James Bond')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (611, 120, 212, N'Alec Trevelyan')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (612, 120, 243, N'Xenia Zirgavna Onatopp')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (613, 120, 166, N'Jack Wade')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (614, 120, 89, N'M')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (615, 120, 116, N'Q')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (616, 120, 92, N'Miss Moneypenny')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (617, 121, 26, N'Dwight ''Bucky'' Bleichert')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (618, 121, 279, N'Kay Lake')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (619, 121, 280, N'Madeleine Linscott')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (620, 122, 226, N'Truman Burbank')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (621, 122, 235, N'Christof')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (622, 122, 217, N'Control Room Director')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (623, 123, 127, N'Captain Miller')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (624, 123, 2, N'Dr. William Weir')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (625, 123, 281, N'Peters, Med Tech')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (626, 113, 281, N'Marilyn Lovell')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (627, 123, 282, N'Lt. Starck')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (628, 123, 283, N'Smith')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (629, 124, 121, N'Jason Bourne')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (630, 124, 237, N'The Professor')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (631, 124, 73, N'Ward Abbott')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (632, 124, 122, N'Nicky Parsons')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (633, 125, 284, N'Hellboy')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (634, 125, 136, N'Trevor ''Broom'' Bruttenholm')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (635, 125, 285, N'Liz Sherman')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (637, 126, 102, N'Ken Hutchinson')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (638, 126, 286, N'David Starsky')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (639, 126, 289, N'Huggy Bear')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (640, 126, 288, N'Captain Doby')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (641, 126, 181, N'Reese Feldman')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (642, 126, 287, N'Kitty')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (643, 126, 290, N'Manetti')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (644, 126, 69, N'Disco DJ')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (645, 127, 143, N'Miles')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (646, 127, 221, N'Marylin')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (647, 127, 62, N'Donovan Donaly')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (648, 127, 99, N'Howard D. Doyle')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (649, 73, 293, N'Faramir')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (650, 74, 293, N'Faramir')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (651, 128, 291, N'King Leonidas')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (652, 128, 294, N'Queen Gorgo')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (653, 128, 292, N'Theron')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (654, 128, 293, N'Dilios')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (655, 129, 242, N'Captain Jean-Luc Picard')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (656, 129, 259, N'Commander William T. Riker')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (657, 129, 184, N'Lt. Commander Data')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (658, 129, 260, N'Lt. Commander Geordi La Forge')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (659, 129, 261, N'Lt. Commander Worf')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (660, 129, 262, N'Dr. Beverly Crusher')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (661, 129, 263, N'Commander Deanna Troi')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (662, 129, 284, N'The Reman Viceroy')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (663, 146, 242, N'Captain Jean-Luc Picard')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (664, 146, 259, N'Commander William T. Riker')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (665, 146, 184, N'Lt. Commander Data')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (666, 146, 260, N'Lt. Commander Geordi La Forge')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (667, 146, 261, N'Lt. Commander Worf')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (668, 146, 262, N'Dr. Beverly Crusher')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (669, 146, 263, N'Commander Deanna Troi')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (670, 146, 187, N'Dr. Zefram Cochrane')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (671, 160, 242, N'Captain Jean-Luc Picard')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (672, 160, 259, N'Commander William T. Riker')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (673, 160, 184, N'Lt. Commander Data')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (674, 160, 260, N'Lt. Commander Geordi La Forge')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (675, 160, 261, N'Lt. Commander Worf')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (676, 160, 262, N'Dr. Beverly Crusher')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (677, 160, 263, N'Commander Deanna Troi')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (678, 160, 298, N'Captain James T. Kirk')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (679, 160, 295, N'Dr. Tolian Soran')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (680, 160, 296, N'Captain Montgomery "Scotty" Scott')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (681, 160, 297, N'Commander Pavel Chekov')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (682, 225, 298, N'Admiral James T. Kirk')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (683, 225, 299, N'Captain Spock')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (684, 225, 300, N'Dr. Leonard "Bones" McCoy')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (782, 140, 193, N'Colonel Chandler Johnson')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (783, 141, 322, N'Sam ''Ace'' Rothstein')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (784, 141, 274, N'Ginger McKenna')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (785, 141, 95, N'Nicky Santoro')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (786, 141, 110, N'Lester Diamond')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (787, 142, 23, N'Robin of Locksley')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (788, 142, 22, N'Azeem')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (789, 142, 146, N'Marian Dubois')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (790, 142, 152, N'Will Scarlett')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (791, 142, 43, N'Sheriff of Nottingham')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (792, 142, 244, N'King Richard')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (793, 143, 256, N'Shrek')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (794, 143, 257, N'Donkey')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (795, 143, 209, N'Princess Fiona')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (796, 143, 276, N'Lord Farquaad')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (797, 144, 172, N'Chon Wang')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (798, 144, 102, N'Roy O''Bannon')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (799, 144, 320, N'Wu Chow')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (800, 145, 278, N'Indiana Jones')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (801, 145, 244, N'Professor Henry Jones')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (802, 145, 323, N'Sallah')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (803, 59, 323, N'Gimli')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (804, 73, 323, N'Gimli')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (805, 74, 323, N'Gimli')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (806, 147, 318, N'Blade')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (807, 147, 319, N'Abraham Whistler')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (808, 147, 324, N'Deacon Frost')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (809, 148, 278, N'Jack Ryan')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (810, 148, 212, N'Sean Miller')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (811, 148, 6, N'Lt. Cmdr. Robby Jackson')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (812, 148, 135, N'Paddy O''Neil')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (813, 148, 325, N'Admiral James Greer')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (814, 149, 278, N'Dr. Richard David Kimble')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (815, 149, 105, N'Marshal Samuel Gerard')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (816, 149, 326, N'Dr. Anne Eastman')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (817, 149, 327, N'Deputy Marshal Cosmo Renfro')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (818, 150, 241, N'Robert Angier')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (819, 150, 78, N'Alfred Borden')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (820, 150, 79, N'Cutter')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (821, 150, 279, N'Olivia Wenscombe')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (822, 150, 13, N'Alley')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (823, 151, 208, N'Hawkeye')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (824, 151, 328, N'Cora Munro')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (825, 151, 329, N'Chinachgook')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (826, 151, 330, N'Magua')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (827, 152, 331, N'Jaguar Paw')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (828, 152, 332, N'Seven')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (829, 153, 102, N'John Beckwith')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (830, 153, 181, N'Jeremy Grey')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (831, 153, 223, N'Secretary William Cleary')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (832, 153, 333, N'Claire Cleary')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (833, 153, 334, N'Gloria Cleary')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (834, 153, 335, N'Kathleen Cleary')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (835, 154, 336, N'Marty McFly')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (836, 154, 265, N'Dr. Emmett Brown')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (837, 154, 337, N'Buford ''Mad Dog'' Tannen')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (838, 155, 336, N'Marty McFly')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (839, 155, 265, N'Dr. Emmett Brown')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (840, 155, 337, N'Biff Tannen')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (841, 156, 338, N'James Bond')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (842, 156, 339, N'Dario')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (843, 156, 116, N'Q')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (844, 156, 340, N'M')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (845, 156, 341, N'Felix Leiter')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (1, 33, 1, N'Ray Ferrier')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (2, 1, 2, N'Dr. Alan Grant')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (3, 1, 3, N'Dr. Ellie Sattler')
GO
INSERT [dbo].[tblCast] ([CastID], [CastFilmID], [CastActorID], [CastCharacterName]) VALUES (4, 1, 4, N'Dr. Ian Malcolm')
GO
INSERT [dbo].[tblCertificate] ([CertificateID], [Certificate]) VALUES (1, N'U')
GO
INSERT [dbo].[tblCertificate] ([CertificateID], [Certificate]) VALUES (2, N'PG')
GO
INSERT [dbo].[tblCertificate] ([CertificateID], [Certificate]) VALUES (3, N'12')
GO
INSERT [dbo].[tblCertificate] ([CertificateID], [Certificate]) VALUES (4, N'12A')
GO
INSERT [dbo].[tblCertificate] ([CertificateID], [Certificate]) VALUES (5, N'15')
GO
INSERT [dbo].[tblCertificate] ([CertificateID], [Certificate]) VALUES (6, N'18')
GO
INSERT [dbo].[tblCountry] ([CountryID], [CountryName]) VALUES (48, N'China')
GO
INSERT [dbo].[tblCountry] ([CountryID], [CountryName]) VALUES (79, N'France')
GO
INSERT [dbo].[tblCountry] ([CountryID], [CountryName]) VALUES (118, N'Japan')
GO
INSERT [dbo].[tblCountry] ([CountryID], [CountryName]) VALUES (167, N'New Zealand')
GO
INSERT [dbo].[tblCountry] ([CountryID], [CountryName]) VALUES (240, N'United Kingdom')
GO
INSERT [dbo].[tblCountry] ([CountryID], [CountryName]) VALUES (241, N'United States')
GO
INSERT [dbo].[tblCountry] ([CountryID], [CountryName]) VALUES (257, N'Germany')
GO
INSERT [dbo].[tblCountry] ([CountryID], [CountryName]) VALUES (258, N'Russia')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (76, N'Zack Snyder', CAST(N'1966-03-01T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (77, N'Stuart Baird', CAST(N'1947-11-30T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (78, N'Tony Scott', CAST(N'1944-06-21T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (79, N'Quentin Tarantino', CAST(N'1963-03-27T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (80, N'Tom Dey', NULL, N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (81, N'David Dobkin', NULL, N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (82, N'Stephen Norrington', NULL, N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (83, N'Andrew Davis', CAST(N'1946-11-21T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (84, N'John Glen', CAST(N'1932-05-15T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (85, N'Frank Miller', CAST(N'1957-01-27T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (86, N'Joss Whedon', CAST(N'1964-06-23T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (87, N'David Carson', NULL, N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (88, N'Irvin Kershner', CAST(N'1923-04-29T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (89, N'Robert Wise', CAST(N'1914-09-10T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (90, N'Richard Marquand', CAST(N'1938-04-22T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (91, N'David Cronenberg', CAST(N'1943-03-15T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (92, N'Lewis Gilbert', CAST(N'1920-03-06T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (93, N'Andrew Dominik', NULL, N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (94, N'Ivan Reitman', CAST(N'1946-10-27T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (95, N'William Shatner', CAST(N'1931-03-22T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (96, N'Nicholas Meyer', CAST(N'1945-12-24T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (97, N'Paul Michael Glaser', CAST(N'1943-03-25T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (98, N'Kevin Costner', CAST(N'1955-01-18T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (99, N'Leonard Nimoy', CAST(N'1931-03-26T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (100, N'John Guillermin', CAST(N'1925-11-11T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (101, N'Richard Attenborough', CAST(N'1923-08-29T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (102, N'Kurt Wimmer', NULL, N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (103, N'Robert Rodriguez', CAST(N'1968-06-20T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (104, N'Larry Charles', CAST(N'1956-02-20T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (105, N'Yimou Zhang', CAST(N'1951-11-14T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (106, N'Edgar Wright', CAST(N'1974-04-18T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (107, N'Ang Lee', CAST(N'1954-10-23T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (108, N'Danny Boyle', CAST(N'1956-10-20T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (109, N'Oliver Hirschbiegel', CAST(N'1957-12-29T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (110, N'Val Guest', CAST(N'1911-12-11T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (111, N'Jean-Pierre Jeunet', CAST(N'1953-09-03T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (112, N'Terence Young', CAST(N'1915-06-20T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (113, N'Peter R. Hunt', CAST(N'1925-03-11T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (114, N'Stanley Tong', NULL, N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (115, N'Guy Hamilton', CAST(N'1922-09-16T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (116, N'George Clooney', CAST(N'1961-05-06T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (117, N'Michael Anderson', CAST(N'1920-01-30T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (118, N'Sammo Hung', CAST(N'1952-01-07T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (119, N'Timur Bekmambetov', CAST(N'1961-06-25T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (120, N'Florian Henckel von Donnersmarck', CAST(N'1973-05-02T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (121, N'Merian C. Cooper', CAST(N'1893-10-24T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (122, N'Akira Kurosawa', CAST(N'1910-10-23T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (123, N'Morgan Spurlock', CAST(N'1970-11-07T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (4, N'Steven Spielberg', CAST(N'1946-12-18T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (5, N'Joel Coen', CAST(N'1954-11-29T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (6, N'Ethan Coen', CAST(N'1957-09-21T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (7, N'George Lucas', CAST(N'1944-05-14T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (8, N'Ang Lee', CAST(N'1954-10-23T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (9, N'Martin Scorsese', CAST(N'1942-11-17T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (10, N'Clint Eastwood', CAST(N'1930-05-31T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (11, N'Sam Raimi', CAST(N'1959-10-23T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (12, N'Peter Jackson', CAST(N'1961-10-31T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (14, N'Bryan Singer', CAST(N'1965-09-17T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (15, N'James Cameron', CAST(N'1954-08-16T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (16, N'Tom Shadyac', CAST(N'1958-12-11T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (17, N'Kevin Reynolds', CAST(N'1952-01-17T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (18, N'Michael Bay', CAST(N'1965-02-17T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (19, N'David Yates', NULL, N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (20, N'Robert Zemeckis', CAST(N'1952-05-14T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (21, N'Steve Hickner', NULL, N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (22, N'Gore Verbinski', CAST(N'1964-03-16T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (23, N'Francis Lawrence', NULL, N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (24, N'Brad Bird', CAST(N'1957-09-11T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (25, N'Wolfgang Peterson', CAST(N'1941-03-14T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (26, N'Mike Newell', CAST(N'1942-03-28T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (27, N'Christopher Nolan', CAST(N'1970-07-30T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (28, N'Tim Burton', CAST(N'1958-08-25T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (29, N'Lee Tamahori', CAST(N'1950-06-17T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (30, N'Richard Donner', CAST(N'1930-04-24T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (31, N'Barry Sonnenfeld', CAST(N'1953-04-01T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (32, N'Rob Cohen', CAST(N'1949-03-12T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (33, N'Hironobu Sakaguchi', CAST(N'1962-11-14T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (34, N'Michael Mann', CAST(N'1943-02-05T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (35, N'Michael Apted', CAST(N'1941-02-10T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (36, N'Peter Weir', CAST(N'1944-08-21T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (37, N'Paul Greengrass', CAST(N'1955-08-13T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (38, N'Alfonso Cuaron', CAST(N'1961-11-28T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (39, N'Andy Wachowski', CAST(N'1967-12-29T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (40, N'Ron Howard', CAST(N'1954-03-01T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (41, N'Chris Columbus', CAST(N'1958-09-10T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (42, N'Roland Emmerich', CAST(N'1955-11-10T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (43, N'Edward Zwick', CAST(N'1952-10-08T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (44, N'J. J. Abrams', CAST(N'1966-06-27T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (45, N'John Woo', CAST(N'1946-09-23T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (46, N'Pete Docter', CAST(N'1968-08-10T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (47, N'Roger Spottiswoode', CAST(N'1945-01-05T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (48, N'Steven Soderbergh', CAST(N'1963-01-14T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (49, N'Len Wiseman', CAST(N'1973-03-04T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (50, N'Frank Coraci', CAST(N'1966-02-03T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (51, N'Ridley Scott', CAST(N'1937-11-30T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (52, N'Doug Liman', CAST(N'1965-07-24T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (53, N'Alex Proyas', CAST(N'1963-09-23T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (54, N'Martin Campbell', CAST(N'1940-10-24T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (55, N'Jean-Christophe Comar', CAST(N'1957-07-04T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (56, N'Luc Besson', CAST(N'1959-03-18T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (57, N'Brett Ratner', CAST(N'1969-03-28T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (58, N'John McTiernan', CAST(N'1951-01-08T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (59, N'Brian De Palma', CAST(N'1940-09-11T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (60, N'Mimi Leder', CAST(N'1952-01-26T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (61, N'Sam Mendes', CAST(N'1965-08-01T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (62, N'M. Night Shyamalan', CAST(N'1970-08-06T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (63, N'Adam McKay', NULL, N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (64, N'David Silverman', CAST(N'1957-03-15T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (65, N'Mel Gibson', CAST(N'1956-01-03T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (66, N'Chris Miller', NULL, N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (67, N'Andrew Adamson', CAST(N'1966-12-01T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (68, N'Jonathon Frakes', CAST(N'1952-08-19T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (69, N'Renny Harlin', CAST(N'1959-03-15T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (70, N'David Fincher', CAST(N'1962-08-28T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (71, N'Guillermo del Toro', CAST(N'1964-10-09T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (72, N'Paul Verhoeven', CAST(N'1938-07-18T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (73, N'Phillip Noyce', CAST(N'1950-04-29T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (74, N'Paul Anderson', CAST(N'1965-03-04T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblDirector] ([DirectorID], [DirectorName], [DirectorDOB], [DirectorGender]) VALUES (75, N'Todd Phillips', CAST(N'1970-12-20T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (2, N'Spider-Man', CAST(N'2002-06-14T00:00:00.000' AS DateTime), 11, 5, N'When bitten by a genetically modified spider, a nerdy, shy, and awkward high school student gains spider-like abilities that he eventually must use to fight evil as a superhero after tragedy befalls his family.', 241, 1, 121, 1, 4, 139000000, 821606375, 2, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (3, N'King Kong', CAST(N'2005-12-15T00:00:00.000' AS DateTime), 12, 1, N'In 1933 New York, an overly ambitious movie producer coerces his cast and hired ship crew to travel to mysterious Skull Island, where they encounter Kong, a giant ape who is immediately smitten with leading lady Ann Darrow.', 241, 1, 187, 8, 4, 207000000, 550316796, 4, 3)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (5, N'Superman Returns', CAST(N'2006-07-16T00:00:00.000' AS DateTime), 14, 6, N'After a long visit to the lost remains of the planet Krypton, the Man of Steel returns to earth to become the peoples savior once again and reclaim the love of Lois Lane.', 241, 1, 154, 1, 4, 204000000, 391120000, 1, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (6, N'Titanic', CAST(N'1998-01-23T00:00:00.000' AS DateTime), 15, 4, N'Fictional romantic tale of a rich girl and poor boy who meet on the ill-fated voyage of the ''unsinkable'' ship.', 241, 1, 194, 3, 3, 200000000, 1835400000, 14, 11)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (7, N'Evan Almighty', CAST(N'2007-08-03T00:00:00.000' AS DateTime), 16, 1, N'God (Freeman) contacts Congressman Evan Baxter (Carell) and tells him to build an ark in preparation for a great flood.', 241, 1, 95, 7, 2, 175000000, 173219280, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (8, N'Waterworld', CAST(N'1995-08-11T00:00:00.000' AS DateTime), 17, 1, N'In a future where the polar ice caps have melted and most of Earth is underwater, a mutated mariner fights starvation and outlaw "smokers," and reluctantly helps a woman and a young girl find dry land.', 241, 1, 136, 8, 3, 175000000, 264246220, 1, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (9, N'Pearl Harbor', CAST(N'2001-06-01T00:00:00.000' AS DateTime), 18, 7, N'Pearl Harbor follows the story of two best friends, Rafe and Danny, and their love lives as they go off to join the war.', 241, 1, 183, 5, 3, 151500000, 450500000, 4, 1)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (10, N'Transformers', CAST(N'2007-07-27T00:00:00.000' AS DateTime), 18, 8, N'A war re-erupts on Earth between two robotic clans, the heroic Autobots and the evil Decepticons, leaving the fate of mankind hanging in the balance.', 241, 1, 144, 6, 4, 151000000, 707675744, 3, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (11, N'Harry Potter and the Order of the Phoenix', CAST(N'2007-07-12T00:00:00.000' AS DateTime), 19, 6, N'With their warning about Lord Voldemort''s return scoffed at, Harry and Dumbledore are targeted by the Wizard authorities as an authoritarian bureaucrat slowly seizes power at Hogwarts.', 240, 1, 138, 12, 4, 150000000, 938454486, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (12, N'Beowulf', CAST(N'2007-11-16T00:00:00.000' AS DateTime), 20, 2, N'The warrior Beowulf must fight and defeat the monster Grendel who is terrorizing towns, and later, Grendel''s mother, who begins killing out of revenge.', 241, 1, 113, 12, 4, 150000000, 194995215, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (13, N'Bee Movie', CAST(N'2007-12-14T00:00:00.000' AS DateTime), 21, 8, N'Barry B. Benson, a bee who has just graduated from college, is disillusioned at his lone career choice: making honey. On a special trip outside the hive, Barry''s life is saved by Vanessa, a florist in New York City. As their relationship blossoms, he discovers humans actually eat honey, and subsequently decides to sue us.', 241, 1, 90, 11, 1, 150000000, 286758211, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (14, N'Pirates of the Caribbean: At World''s End', CAST(N'2007-05-24T00:00:00.000' AS DateTime), 22, 3, N'Captain Barbossa, Will Turner and Elizabeth Swann must sail off the edge of the map, navigate treachery and betrayal, and make their final alliances for one last decisive battle.', 241, 1, 168, 8, 4, 150000000, 952404152, 2, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (15, N'I am Legend', CAST(N'2007-12-26T00:00:00.000' AS DateTime), 23, 6, N'Years after a plague kills most of humanity and transforms the rest into monsters, the sole survivor in New York City struggles valiantly to find a cure.', 241, 1, 101, 10, 5, 150000000, 583527323, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (16, N'Ratatouille', CAST(N'2007-10-12T00:00:00.000' AS DateTime), 24, 10, N'Remy is a young rat in the French countryside who arrives in Paris, only to find out that his cooking idol is dead. When he makes an unusual alliance with a restaurant''s new garbage boy, the culinary and personal adventures begin despite Remy''s family''s skepticism and the rat-hating world of humans.', 241, 1, 106, 11, 1, 150000000, 617245654, 5, 1)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (17, N'Troy', CAST(N'2004-05-21T00:00:00.000' AS DateTime), 25, 6, N'An adaptation of Homer''s great epic, the film follows the assault on Troy by the united Greek forces and chronicles the fates of the men involved.', 241, 1, 163, 8, 5, 150000000, 497298577, 1, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (18, N'Harry Potter and the Goblet of Fire', CAST(N'2005-11-18T00:00:00.000' AS DateTime), 26, 6, N'Harry finds himself selected as an underaged competitor in a dangerous multi-wizardary school competition.', 241, 1, 157, 12, 4, 150000000, 896013036, 1, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (19, N'Batman Begins', CAST(N'2005-06-16T00:00:00.000' AS DateTime), 27, 6, N'The story of how Bruce Wayne became what he was destined to be: Batman.', 241, 1, 140, 1, 4, 150000000, 371824647, 1, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (20, N'Charlie and the Chocolate Factory', CAST(N'2005-07-29T00:00:00.000' AS DateTime), 28, 6, N'A young boy wins a tour through the most magnificent chocolate factory in the world, led by the world''s most unusual candy maker.', 241, 1, 115, 12, 2, 150000000, 473459076, 1, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (21, N'Pirates of the Caribbean: Dead Man''s Chest', CAST(N'2006-07-06T00:00:00.000' AS DateTime), 22, 3, N'Jack Sparrow races to recover the heart of Davy Jones to avoid enslaving his soul to Jones'' service, as other friends and foes seek the heart for their own agenda as well.', 241, 1, 150, 8, 4, 150000000, 1065659812, 4, 1)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (22, N'Die Another Day', CAST(N'2002-11-20T00:00:00.000' AS DateTime), 29, 11, N'James Bond is sent to investigate the connection between a North Korean terrorist and a diamond mogul who is funding the development of an international space weapon.', 240, 1, 133, 9, 4, 142000000, 431942139, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (23, N'Lethal Weapon 4', CAST(N'1998-09-18T00:00:00.000' AS DateTime), 30, 6, N'With personal crises and age weighing in on them, LAPD officers Riggs and Murtaugh must contend with a deadly Chinese crimelord trying to get his brother out of prison.', 241, 1, 127, 1, 5, 140000000, 285400000, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (24, N'Armageddon', CAST(N'1998-08-07T00:00:00.000' AS DateTime), 18, 7, N'When an asteroid the size of Texas is headed for Earth the world''s best deep core drilling team is sent to nuke the rock from the inside.', 241, 1, 150, 6, 3, 140000000, 554600000, 4, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (25, N'Men in Black 2', CAST(N'2002-08-02T00:00:00.000' AS DateTime), 31, 5, N'Agent J needs help so he is sent to find Agent K and restore his memory.', 241, 1, 88, 6, 2, 140000000, 441818803, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (26, N'Spider-Man 3', CAST(N'2007-05-04T00:00:00.000' AS DateTime), 11, 5, N'A strange black entity from another world bonds with Peter Parker and causes inner turmoil as he contends with new villains, temptations, and revenge.', 241, 1, 139, 1, 4, 258000000, 891930303, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (27, N'Spider-Man 2', CAST(N'2004-07-16T00:00:00.000' AS DateTime), 11, 5, N'Peter Parker is beset with troubles in his failing personal life as he battles a brilliant scientist named Doctor Otto Octavius, who becomes Doctor Octopus (aka Doc Ock), after an accident causes him to bond psychically with mechanical tentacles that do his bidding.', 241, 1, 127, 1, 4, 200000000, 784024485, 3, 1)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (28, N'Stealth', CAST(N'2005-08-05T00:00:00.000' AS DateTime), 32, 5, N'Deeply ensconced in a top-secret military program, three pilots struggle to bring an artificial intelligence program under control ... before it initiates the next world war.', 241, 1, 121, 1, 4, 138000000, 76416746, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (29, N'Final Fantasy: The Spirits Within', CAST(N'2001-08-03T00:00:00.000' AS DateTime), 33, 12, N'A female scientist makes a last stand on Earth with the help of a ragtag team of soldiers against an invasion of alien phantoms.', 118, 1, 106, 11, NULL, 137000000, 85131830, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (30, N'Miami Vice', CAST(N'2006-08-04T00:00:00.000' AS DateTime), 34, 1, N'Based on the 1980''s TV action/drama, this update focuses on vice detectives Crockett and Tubbs as their respective personal and professional lives become dangerously intertwined.', 241, 1, 134, 9, NULL, 135000000, 163818556, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (31, N'The World Is Not Enough', CAST(N'1999-11-26T00:00:00.000' AS DateTime), 35, 11, N'James Bond uncovers a nuclear plot when he protects an oil heiress from her former kidnapper, an international terrorist who can''t feel pain.', 240, 1, 128, 9, 3, 135000000, 361730660, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (32, N'Master and Commander: The Far Side of the World', CAST(N'2003-11-28T00:00:00.000' AS DateTime), 36, 4, N'During the Napoleonic Wars, a brash British captain pushes his ship and crew to their limits in pursuit of a formidable French war vessel around South America.', 241, 1, 138, 8, 4, 135000000, 209486484, 10, 2)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (33, N'War of the Worlds', CAST(N'2005-07-01T00:00:00.000' AS DateTime), 4, 2, N'As Earth is invaded by alien tripod fighting machines, one family fights for survival.', 241, 1, 116, 6, 4, 132000000, 591745532, 3, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (34, N'The Bourne Ultimatum', CAST(N'2007-08-17T00:00:00.000' AS DateTime), 37, 1, N'Bourne dodges new, superior assassins as he searches for his unknown past while a government agent tries to track him down.', 241, 1, 115, 9, 4, 130000000, 442748521, 3, 3)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (35, N'Harry Potter and the Prisoner of Azkaban', CAST(N'2004-05-31T00:00:00.000' AS DateTime), 38, 6, N'It''s Harry''s third year at Hogwarts; not only does he have a new "Defense Against the Dark Arts" teacher, but there is also trouble brewing. Convicted murderer Sirius Black has escaped the Wizards'' Prison and is coming after Harry.', 240, 1, 141, 12, 2, 130000000, 795538952, 2, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (213, N'Crouching Tiger, Hidden Dragon', CAST(N'2001-01-05T00:00:00.000' AS DateTime), 8, 5, N'Two warriors in pursuit of a stolen sword and a notorious fugitive are led to an impetuous, physically-skilled, teenage nobleman''s daughter, who is at a crossroads in her life.', 48, 5, 120, 17, NULL, 15000000, 213200000, 10, 4)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (214, N'Brokeback Mountain', CAST(N'2006-01-13T00:00:00.000' AS DateTime), 8, 2, N'Based on the ''E. Annie Proulx'' story about a forbidden and secretive relationship between two cowboys and their lives over the years.', 241, 1, 134, 2, NULL, 13900000, 180343761, 8, 3)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (215, N'Hulk', CAST(N'2003-07-18T00:00:00.000' AS DateTime), 8, 1, N'A geneticist''s experimental accident curses him with the tendency to become a powerful giant green brute under emotional stress.', 241, 1, 138, 1, NULL, 137000000, 245160047, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (216, N'Sense and Sensibility', CAST(N'1996-02-23T00:00:00.000' AS DateTime), 8, 5, N'Rich Mr. Dashwood dies, leaving his second wife and her daughters poor by the rules of inheritance. Two daughters are the titular opposites.', 240, 1, 136, 3, NULL, 16500000, 134993774, 7, 1)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (217, N'Ride with the Devil', CAST(N'1999-11-05T00:00:00.000' AS DateTime), 8, 1, N'Jake Roedel and Jack Bull Chiles are friends in Missouri when the Civil War starts.', 241, 1, 138, 4, NULL, 35000000, 630779, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (218, N'Twins', CAST(N'1989-03-17T00:00:00.000' AS DateTime), 94, 1, N'A physically perfect, but innocent, man goes in search of his twin brother, who is a short small-time crook.', 241, 1, 105, 7, NULL, 15000000, 216600000, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (219, N'28 Days Later…', CAST(N'2002-11-01T00:00:00.000' AS DateTime), 108, 32, N'Four weeks after a mysterious, incurable virus spreads throughout the UK, a handful of survivors try to find sanctuary.', 240, 1, 113, 10, NULL, 15000000, 82719885, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (220, N'The Beach', CAST(N'2000-02-11T00:00:00.000' AS DateTime), 108, 4, N'Twenty-something Richard travels to Thailand and finds himself in possession of a strange map. Rumours state that it leads to a solitary beach paradise, a tropical bliss - excited and intrigued, he sets out to find it.', 240, 1, 119, 2, NULL, 50000000, 39778599, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (221, N'Trainspotting', CAST(N'1996-02-23T00:00:00.000' AS DateTime), 108, 33, N'Renton, deeply immersed in the Edinburgh drug scene, tries to clean up and get out, despite the allure of the drugs and influence of friends.', 240, 1, 94, 2, NULL, 3100000, 24000785, 1, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (222, N'The Spy Who Loved Me', CAST(N'1977-08-03T00:00:00.000' AS DateTime), 92, 22, N'James Bond investigates the hijacking of British and Russian submarines carrying nuclear warheads with the help of a KGB agent whose lover he killed.', 240, 1, 125, 9, NULL, 14000000, 185400000, 3, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (223, N'Downfall', CAST(N'2005-04-01T00:00:00.000' AS DateTime), 109, 34, N'Traudl Junge (Lara), the final secretary for Adolf Hitler (Ganz), tells of the Nazi dictator''s final days in his Berlin bunker at the end of WWII.', 257, 4, 156, 5, NULL, 13500000, 93501940, 1, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (224, N'Letters from Iwo Jima', CAST(N'2007-02-23T00:00:00.000' AS DateTime), 10, 8, N'The story of the battle of Iwo Jima between the United States and Imperial Japan during World War II, as told from the perspective of the Japanese who fought it.', 241, 6, 141, 5, NULL, 13000000, 68356082, 4, 1)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (225, N'Star Trek II: The Wrath of Khan', CAST(N'1982-07-16T00:00:00.000' AS DateTime), 96, 2, N'Admiral Kirk''s midlife crisis is interrupted by the return of an old enemy looking for revenge and a potentially destructive device.', 241, 1, 113, 6, 3, 12000000, 96800000, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (226, N'House of Flying Daggers', CAST(N'2005-01-14T00:00:00.000' AS DateTime), 105, 29, N'A romantic warrior breaks a beautiful member of a rebel army out of prison to help her rejoin her fellows, but things are not what they seem.', 48, 5, 119, 17, NULL, 12000000, 93041228, 1, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (227, N'Das Boot', CAST(N'1982-02-10T00:00:00.000' AS DateTime), 25, NULL, N'The claustrophobic world of a WWII German U-boat; boredom, filth, and sheer terror.', 257, 4, 149, 5, NULL, 12000000, 84970337, 6, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (228, N'Casino Royale', CAST(N'1967-04-28T00:00:00.000' AS DateTime), 110, 5, N'In an early spy spoof, aging Sir James Bond (David Niven) comes out of retirement to take on SMERSH.', 240, 1, 131, 9, NULL, 12000000, 41744718, 1, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (229, N'Star Wars: Episode IV - A New Hope', CAST(N'1977-12-27T00:00:00.000' AS DateTime), 7, 13, N'Luke Skywalker leaves his home planet, teams up with other rebels, and tries to save Princess Leia from the evil clutches of Darth Vader.', 241, 1, 121, 6, NULL, 11000000, 797900000, 10, 6)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (230, N'E.T.: The Extra-Terrestrial', CAST(N'1982-12-09T00:00:00.000' AS DateTime), 4, 1, N'A group of Earth children help a stranded alien botanist return home.', 241, 1, 115, 6, NULL, 10500000, 792910554, 9, 4)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (231, N'Amelie', CAST(N'2001-10-05T00:00:00.000' AS DateTime), 111, 16, N'Amelie, an innocent and naive girl in Paris, with her own sense of justice, decides to help those around her and along the way, discovers love.', 79, 3, 122, 7, NULL, 10350000, 152637129, 5, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (232, N'You Only Live Twice', CAST(N'1967-06-13T00:00:00.000' AS DateTime), 92, 22, N'Agent 007 and the Japanese secret service ninja force must find and stop the true culprit of a series of spacejackings before nuclear war is provoked.', 241, 1, 117, 9, NULL, 9500000, 111600000, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (233, N'Thunderball', CAST(N'1965-12-29T00:00:00.000' AS DateTime), 112, 22, N'James Bond heads to The Bahamas to recover two nuclear warheads stolen by SPECTRE agent Emilio Largo in an international extortion scheme.', 240, 1, 130, 9, NULL, 9000000, 141200000, 1, 1)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (234, N'Alien', CAST(N'1979-09-06T00:00:00.000' AS DateTime), 51, 4, N'A mining ship, investigating a suspected SOS, lands on a distant planet. The crew discovers some strange creatures and investigates.', 241, 1, 117, 6, NULL, 9000000, 203630630, 2, 1)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (236, N'On Her Majesty''s Secret Service', CAST(N'1969-12-18T00:00:00.000' AS DateTime), 113, 22, N'James Bond woos a mob boss''s daughter and goes undercover to uncover the true reason for Blofeld''s allergy research in the Swiss Alps that involves beautiful women from around the world.', 240, 1, 140, 9, NULL, 8000000, 82000000, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (237, N'Pulp Fiction', CAST(N'1994-10-21T00:00:00.000' AS DateTime), 79, 16, N'The lives of two mob hit men, a boxer, a gangster''s wife, and a pair of diner bandits intertwine in four tales of violence and redemption.', 241, 1, 154, 14, NULL, 8000000, 212900000, 7, 1)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (238, N'Rumble in the Bronx', CAST(N'1997-07-04T00:00:00.000' AS DateTime), 114, 14, N'A young man visiting and helping his uncle in New York City finds himself forced to fight a street gang and the mob with his martial art skills.', 48, 2, 104, 17, NULL, 7500000, 36238752, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (239, N'Diamonds are Forever', CAST(N'1971-12-30T00:00:00.000' AS DateTime), 115, 22, N'A diamond smuggling investigation leads James Bond to Las Vegas, where he uncovers an extortion plot headed by his nemesis, Ernst Stavro Blofeld.', 240, 1, 120, 9, NULL, 7200000, 116000000, 1, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (240, N'Fargo', CAST(N'1996-05-31T00:00:00.000' AS DateTime), 5, 4, N'Jerry Lundegaard''s inept crime falls apart due to his and his henchmen''s bungling and the persistent police work of pregnant Marge Gunderson.', 241, 1, 98, 14, NULL, 7000000, 51567751, 7, 2)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (241, N'Live and Let Die', CAST(N'1973-07-06T00:00:00.000' AS DateTime), 115, 22, N'007 is sent to stop a diabolically brilliant heroin magnate armed with a complex organization and a reliable psychic tarot card reader.', 240, 1, 121, 9, NULL, 7000000, 161800000, 1, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (242, N'The Man with the Golden Gun', CAST(N'1974-12-20T00:00:00.000' AS DateTime), 115, 22, N'Bond is led to believe that he is targeted by the world''s most expensive assassin and must hunt him down to stop him.', 240, 1, 125, 9, NULL, 7000000, 97600000, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (243, N'Good Night, and Good Luck', CAST(N'2006-02-17T00:00:00.000' AS DateTime), 116, 6, N'Broadcast journalist Edward R. Murrow looks to bring down Senator Joseph McCarthy.', 241, 1, 93, 2, NULL, 7000000, 54601218, 6, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (244, N'Pale Rider', CAST(N'1985-06-28T00:00:00.000' AS DateTime), 10, 31, N'A mysterious preacher protects a humble prospector village from a greedy mining company trying to encroach on their land.', 241, 1, 116, 4, NULL, 6900000, 41410568, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (245, N'The Terminator', CAST(N'1985-01-11T00:00:00.000' AS DateTime), 15, 11, N'A human-looking, apparently unstoppable cyborg is sent from the future to kill Sarah Connor; Kyle Reese is sent to stop it.', 241, 1, 108, 6, NULL, 6400000, 78019031, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (136, N'Alien 3', CAST(N'1992-08-21T00:00:00.000' AS DateTime), 70, 4, N'Ripley continues to be stalked by a savage alien, after her escape pod crashes on a prison planet.', 241, 1, 114, 6, 6, 55000000, 158500000, 1, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (137, N'Shanghai Noon', CAST(N'2000-08-25T00:00:00.000' AS DateTime), 80, 7, N'Jackie Chan plays a Chinese man who travels to the Wild West to rescue a kidnapped princess. After teaming up with a train robber, the unlikely duo takes on a Chinese traitor and his corrupt boss.', 241, 1, 110, 17, 3, 55000000, 71189835, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (138, N'Kill Bill: Vol. 2', CAST(N'2004-04-23T00:00:00.000' AS DateTime), 79, 16, N'The murderous Bride continues her vengeance quest against her ex-boss, Bill, and his two remaining associates; his younger brother Budd, and Bill''s latest flame Elle.', 241, 1, 136, 17, 6, 55000000, 150907920, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (139, N'Blade II', CAST(N'2002-03-29T00:00:00.000' AS DateTime), 71, 14, N'Blade forms an uneasy alliance with the vampire council in order to combat the Reaper vampires who feed on vampires.', 241, 1, 117, 1, 6, 54000000, 154306865, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (140, N'Flags of our Fathers', CAST(N'2006-12-22T00:00:00.000' AS DateTime), 10, 8, N'The life stories of the six men who raised the flag at The Battle of Iwo Jima, a turning point in WWII.', 241, 1, 132, 5, 5, 53000000, 61902376, 2, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (141, N'Casino', CAST(N'1996-02-23T00:00:00.000' AS DateTime), 9, 1, N'Greed, deception, money, power, and murder occur between two mobster best friends and a trophy wife over a gambling empire.', 241, 1, 178, 14, 6, 52000000, 110400000, 1, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (142, N'Robin Hood: Prince of Thieves', CAST(N'1991-07-19T00:00:00.000' AS DateTime), 17, 6, N'When Robin and his Moorish companion come to England and the tyranny of the Sheriff of Nottingham, he decides to fight back as an outlaw.', 241, 1, 143, 8, 2, 50000000, 390500000, 1, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (143, N'Shrek', CAST(N'2001-06-29T00:00:00.000' AS DateTime), 67, 8, N'An ogre, in order to regain his swamp, travels along with an annoying donkey in order to bring a princess to a scheming lord, wishing himself King.', 241, 1, 90, 11, 1, 50000000, 479467267, 2, 1)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (144, N'Shanghai Knights', CAST(N'2003-04-04T00:00:00.000' AS DateTime), 81, 7, N'When a Chinese rebel murders Chon''s estranged father and escapes to England, Chon and Roy make their way to London with revenge on their minds.', 241, 1, 114, 17, 4, 50000000, NULL, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (145, N'Indiana Jones and the Last Crusade', CAST(N'1989-06-30T00:00:00.000' AS DateTime), 4, 13, N'When Dr. Henry Jones Sr. suddenly goes missing while pursuing the Holy Grail, eminent archaeologist Indiana Jones must follow in his father''s footsteps and stop the Nazis.', 241, 1, 127, 8, 2, 48000000, 474171806, 3, 1)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (146, N'Star Trek: First Contact', CAST(N'1996-12-13T00:00:00.000' AS DateTime), 68, 2, N'Capt. Picard and his crew pursue the Borg back in time to stop them from preventing Earth from initiating first contact with alien life.', 241, 1, 111, 6, 3, 46000000, 150000000, 1, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (147, N'Blade', CAST(N'1998-11-13T00:00:00.000' AS DateTime), 82, 14, N'A half-vampire, half-mortal man becomes a protector of the mortal race, while slaying evil vampires.', 241, 1, 120, 12, 6, 45000000, 131237688, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (148, N'Patriot Games', CAST(N'1992-09-25T00:00:00.000' AS DateTime), 73, 2, N'When CIA Analyst Jack Ryan interferes with an IRA assassination, a renegade faction targets him and his family for revenge.', 241, 1, 117, 9, 5, 45000000, 178100000, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (149, N'The Fugitive', CAST(N'1993-09-24T00:00:00.000' AS DateTime), 83, 6, N'Dr. Richard Kimble, unjustly accused of killing his wife, must find the real one-armed killer while avoiding Marshal Sam Gerard.', 241, 1, 130, 9, 3, 44000000, 368900000, 7, 1)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (150, N'The Prestige', CAST(N'2006-11-10T00:00:00.000' AS DateTime), 27, 7, N'Robert and Alfred are rival magicians. When Alfred performs the ultimate magic trick, Robert tries desperately to find out the secret to the trick.', 241, 1, 130, 18, 4, 40000000, 107896006, 2, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (151, N'The Last of the Mohicans', CAST(N'1992-11-06T00:00:00.000' AS DateTime), 34, 21, N'Three trappers protect a British Colonel''s daughters in the midst of the French and Indian War.', 241, 1, 112, 8, 3, 40000000, NULL, 1, 1)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (152, N'Apocalypto', CAST(N'2007-01-05T00:00:00.000' AS DateTime), 65, 7, N'As the Mayan kingdom faces its decline, the rulers insist the key to prosperity is to build more temples and offer human sacrifices. Jaguar Paw, a young man captured for sacrifice, flees to avoid his fate.', 241, 8, 139, 8, 6, 40000000, 117784857, 3, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (153, N'Wedding Crashers', CAST(N'2005-07-14T00:00:00.000' AS DateTime), 81, 14, N'John Beckwith and Jeremy Grey, a pair of committed womanizers who sneak into weddings to take advantage of the romantic tinge in the air, find themselves at odds with one another when John meets and falls for Claire Cleary.', 241, 1, 119, 7, 5, 40000000, 283218368, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (154, N'Back to the Future Part III', CAST(N'1990-07-11T00:00:00.000' AS DateTime), 20, 1, N'Doctor Emmet Brown was living in peace in 1885 until he was killed by Buford "Mad Dog" Tannen. Marty McFly travels back in time to save his friend.', 241, 1, 118, 6, 2, 40000000, 243700000, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (155, N'Back to the Future Part II', CAST(N'1989-11-24T00:00:00.000' AS DateTime), 20, 1, N'After visiting 2015, Marty must repeat his visit to 1955 to prevent disastrous changes to 1985... without interfering with his first trip.', 241, 1, 108, 6, 2, 40000000, 332000000, 1, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (156, N'Licence to Kill', CAST(N'1989-07-14T00:00:00.000' AS DateTime), 84, 22, N'James Bond leaves Her Majesty''s Secret Service to stop an evil drug lord and avenge his best friend, Felix Leiter.', 240, 1, 133, 9, NULL, 42000000, 156167015, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (157, N'The Living Daylights', CAST(N'1987-06-30T00:00:00.000' AS DateTime), 84, 22, N'James Bond is living on the edge to stop an evil arms dealer from starting another world war. Bond crosses all seven continents in order to stop the evil Whitaker and General Koskov.', 240, 1, 130, 9, NULL, 40000000, 191200000, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (158, N'Sin City', CAST(N'2005-06-03T00:00:00.000' AS DateTime), 85, 23, N'A film that explores the dark and miserable town Basin City and tells the story of three different people, all caught up in the violent corruption of the city.', 241, 1, 124, 14, NULL, 40000000, 159098862, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (159, N'Serenity', CAST(N'2005-10-07T00:00:00.000' AS DateTime), 86, 1, N'In the future, when a passenger with a deadly secret. Six rebels on the run. An assassin in pursuit.', 241, 1, 119, 6, NULL, 39000000, 38514517, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (160, N'Star Trek: Generations', CAST(N'1994-11-18T00:00:00.000' AS DateTime), 87, 2, N'Capt. Picard, with the help of supposedly dead Capt. Kirk, must stop a madman willing to murder on a planetary scale in order to enter a space matrix.', 241, 1, 118, 6, 2, 38000000, 120000000, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (161, N'Never Say Never Again', CAST(N'1983-12-15T00:00:00.000' AS DateTime), 88, 6, N'A SPECTRE agent has stolen two American nuclear warheads, and James Bond must find their targets before they are detonated.', 241, 1, 134, 9, NULL, 36000000, 160000000, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (162, N'Star Trek: The Motion Picture', CAST(N'1979-12-20T00:00:00.000' AS DateTime), 89, 2, N'When a destructive space entity is spotted approaching Earth, Admiral Kirk resumes command of the Starship Enterprise in order to intercept, examine, and hopefully stop it.', 241, 1, 132, 6, 1, 35000000, 139000000, 3, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (163, N'Rush Hour', CAST(N'1998-12-04T00:00:00.000' AS DateTime), 57, 14, N'Two cops team up to get back a kidnapped daughter.', 241, 1, 97, 1, NULL, 35000000, 245300000, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (164, N'Lethal Weapon 3', CAST(N'1992-08-14T00:00:00.000' AS DateTime), 30, 6, N'Martin Riggs finally meets his match in the form of Lorna Cole, a beautiful but tough policewoman.', 241, 1, 118, 1, NULL, 35000000, 319700000, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (165, N'Star Wars: Episode IV - Return of the Jedi', CAST(N'1983-05-25T00:00:00.000' AS DateTime), 90, 13, N'After rescuing Han Solo from the palace of Jabba the Hutt, the Rebels attempt to destroy the Second Death Star, while Luke Skywalker tries to bring his father back to the Light Side of the Force.', 241, 1, 134, 6, NULL, 32500000, 572700000, 4, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (166, N'A History of Violence', CAST(N'2005-09-30T00:00:00.000' AS DateTime), 91, 14, N'A mild-mannered man becomes a local hero through an act of violence, which sets off repercussions that will shake his family to its very core.', 241, 1, 96, 2, NULL, 32000000, 59993782, 2, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (167, N'Moonraker', CAST(N'1979-06-29T00:00:00.000' AS DateTime), 92, 22, N'James Bond investigates the mid-air theft of a space shuttle and discovers a plot to commit global genocide.', 240, 1, 126, 9, NULL, 31000000, 210300000, 1, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (206, N'Hot Fuzz', CAST(N'2007-02-14T00:00:00.000' AS DateTime), 106, 30, N'Jealous colleagues conspire to get a top London cop transferred to a small town and paired with a witless new partner. On the beat, the pair stumble upon a series of suspicious accidents and events.', 240, 1, 121, 7, NULL, 16000000, 79192988, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (207, N'Leon', CAST(N'1995-02-03T00:00:00.000' AS DateTime), 56, 18, N'Professional assassin Leon reluctantly takes care of 12-year-old Mathilda, a neighbor whose parents are killed, and teaches her his trade.', 79, 1, 110, 9, NULL, 16000000, 45284974, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (208, N'High Plains Drifter', CAST(N'1973-08-22T00:00:00.000' AS DateTime), 10, 31, N'A gunfighting stranger comes to the small settlement of Lago and is hired to bring the townsfolk together in an attempt to hold off three outlaws who are on their way.', 241, 1, 105, 4, NULL, 15700000, 15700000, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (209, N'Collateral', CAST(N'2004-09-17T00:00:00.000' AS DateTime), 34, 2, N'A cab driver finds himself the hostage of an engaging contract killer as he makes his rounds from hit to hit during one night in LA. He must find a way to save both himself and one last victim.', 241, 1, 120, 9, NULL, 60000000, 217670152, 2, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (210, N'American Beauty', CAST(N'2000-02-04T00:00:00.000' AS DateTime), 61, 8, N'Lester Burnham, a depressed suburban father in a mid-life crisis, decides to turn his hectic life around after developing an infatuation for his daughter''s attractive friend.', 241, 1, 122, 2, NULL, 15000000, 356258047, 8, 5)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (211, N'Lethal Weapon', CAST(N'1987-08-28T00:00:00.000' AS DateTime), 30, 6, N'A veteran cop, Murtough, is partnered with a young homicidal cop, Riggs. Both having one thing in common, hating working in pairs. Now they must learn to work with one and other to stop a gang of drug smugglers.', 241, 1, 110, 1, NULL, 15000000, 120192350, 1, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (212, N'Lethal Weapon 2', CAST(N'1989-09-15T00:00:00.000' AS DateTime), 30, 6, N'Riggs and Murtaugh are on the trail of South African diplomats who are using their immunity to engage in criminal activities.', 241, 1, 114, 1, NULL, 25000000, 140292000, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (246, N'Around the World in 80 Days', CAST(N'1956-10-17T00:00:00.000' AS DateTime), 117, 22, N'Adaptation of Jules Verne''s novel about a Victorian Englishman who bets that with the new steamships and railways he can do what the title says.', 241, 1, 167, 8, NULL, NULL, NULL, 8, 5)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (249, N'The Usual Suspects', CAST(N'1995-08-25T00:00:00.000' AS DateTime), 14, 11, N'A boat has been destroyed, criminals are dead, and the key to this mystery lies with the only survivor and his twisted, convoluted story beginning with five career crooks in a seemingly random police lineup.', 241, 1, 106, 14, NULL, 6000000, 23341568, 2, 2)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (250, N'Memento', CAST(N'2000-10-20T00:00:00.000' AS DateTime), 27, 5, N'A man, suffering from short-term memory loss, uses notes and tattoos to hunt for the man he thinks killed his wife.', 241, 1, 113, 9, NULL, 5000000, 39665950, 2, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (251, N'Shaun of the Dead', CAST(N'2004-04-09T00:00:00.000' AS DateTime), 106, 33, N'A man decides to turn his moribund life around by winning back his ex-girlfriend, reconciling his relationship with his mother, and dealing with an entire community that has returned from the dead to eat the living.', 240, 1, 99, 7, NULL, 5000000, 30039392, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (252, N'Four Weddings and a Funeral', CAST(N'1994-05-13T00:00:00.000' AS DateTime), 26, 33, N'Comedy-drama about a group of British friends... the title says the rest.', 240, 1, 117, 3, NULL, 4500000, 257700832, 2, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (253, N'Night Watch', CAST(N'2005-10-07T00:00:00.000' AS DateTime), 119, 4, N'A fantasy-thriller set in present-day Moscow where the respective forces that control daytime and nighttime do battle.', 258, 9, 114, 12, NULL, 4200000, 33923550, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (254, N'Goldfinger', CAST(N'1965-01-09T00:00:00.000' AS DateTime), 115, 22, N'Investigating a gold magnate''s gold smuggling, James Bond uncovers a plot to contaminate the Fort Knox gold reserve.', 241, 1, 110, 9, NULL, 3000000, 124900000, 1, 1)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (255, N'The Lives of Others', CAST(N'2007-04-13T00:00:00.000' AS DateTime), 120, 36, N'In 1984 East Berlin, an agent of the secret police, conducting surveillance on a writer and his lover, finds himself becoming increasingly absorbed by their lives.', 257, 4, 137, 2, NULL, 2000000, 70053813, 1, 1)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (256, N'From Russia with Love', CAST(N'1964-05-27T00:00:00.000' AS DateTime), 112, 22, N'James Bond willingly falls into an assassination ploy involving a naive Russian beauty in order to retrieve a Soviet encryption device that was stolen by SPECTRE.', 240, 1, 110, 9, NULL, 2000000, 78900000, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (257, N'Reservoir Dogs', CAST(N'1993-01-15T00:00:00.000' AS DateTime), 79, 16, N'After a simple jewelery heist goes terribly wrong, the surviving criminals begin to suspect that one of them is a police informant.', 241, 1, 99, 14, NULL, 1200000, 2832029, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (258, N'Dr. No', CAST(N'1963-05-08T00:00:00.000' AS DateTime), 112, 22, N'James Bond''s investigation of a missing colleague in Jamaica leads him to the island of the mysterious Dr. No and a scheme to end the US space program.', 240, 1, 110, 9, NULL, 1000000, 59567035, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (259, N'King Kong', CAST(N'1933-04-07T00:00:00.000' AS DateTime), 121, 37, N'A film crew goes to a tropical island for an exotic location shoot and discovers a colossal giant gorilla who takes a shine to their female blonde star.', 241, 1, 100, 8, NULL, 670000, 10000000, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (260, N'Seven Samurai', CAST(N'1956-11-19T00:00:00.000' AS DateTime), 122, 38, N'A poor village under attack by bandits recruits seven unemployed samurai to help them defend themselves.', 118, 6, 190, 1, NULL, 500000, 271736, 2, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (261, N'Super Size Me', CAST(N'2004-09-10T00:00:00.000' AS DateTime), 123, 39, N'An irreverent look at obesity in America and one of its sources - fast food corporations.', 241, 1, 100, 24, NULL, 65000, 29529368, 1, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (262, N'Kagemusha', CAST(N'1980-10-06T00:00:00.000' AS DateTime), 122, 38, N'When a powerful warlord in medieval Japan dies, a poor thief recruited to impersonate him finds difficulty', 118, 6, 179, 2, NULL, NULL, NULL, 2, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (263, N'Ran', CAST(N'1985-06-01T00:00:00.000' AS DateTime), 122, 38, N'An elderly lord abdicates to his three sons, and the two corrupt ones turn against him.', 118, 6, 160, 2, NULL, 12000000, NULL, 4, 1)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (264, N'Sunshine', CAST(N'2007-04-05T00:00:00.000' AS DateTime), 108, 4, N'A team of astronauts are sent to re-ignite the dying sun 50 years into the future.', 240, 1, 107, 6, 5, 40000000, 31959646, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (265, N'Once Were Warriors', CAST(N'1995-04-14T00:00:00.000' AS DateTime), 29, 40, N'A family descended from Maori warriors is bedeviled by a violent father and the societal problems of being treated as outcasts.', 167, 1, 99, 2, 6, 1000000, NULL, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (197, N'Raiders of the Lost Ark', CAST(N'1981-07-30T00:00:00.000' AS DateTime), 4, 13, N'Archeologist and adventurer Indiana Jones is hired by the US government to find the Ark of the Covenant, before the Nazis.', 241, 1, 115, 8, NULL, 20000000, 386800358, 8, 4)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (199, N'Back to the Future', CAST(N'1985-12-04T00:00:00.000' AS DateTime), 20, 1, N'In 1985, Doc Brown invented time travel, in 1955, Marty McFly accidentally prevented his parents from meeting, putting his own existence at stake.', 241, 1, 117, 6, NULL, 19000000, 381109762, 4, 1)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (200, N'Dances With Wolves', CAST(N'1991-02-08T00:00:00.000' AS DateTime), 98, 27, N'Lt. John Dunbar, exiled to a remote western Civil War outpost, befriends wolves and Indians, making him an intolerable aberration in the military.', 241, 1, 180, 4, NULL, 19000000, 424200000, 12, 7)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (201, N'Star Trek III: The Search For Spock', CAST(N'1984-07-27T00:00:00.000' AS DateTime), 99, 2, N'Admiral Kirk and his bridge crew risk their careers stealing the decommissioned Enterprise to return to the restricted Genesis planet to recover Spock''s body.', 241, 1, 105, 6, 2, 18000000, 87000000, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (202, N'Borat: Cultural Learnings of America for Make Benefit Glorious Nation of Kazakhstan', CAST(N'2006-11-02T00:00:00.000' AS DateTime), 104, 28, N'Kazakh TV talking head Borat is dispatched to the United States to report on the greatest country in the world. With a documentary crew in tow, Borat becomes more interested in locating and marrying Pamela Anderson.', 241, 1, 84, 7, NULL, 18000000, 261509089, 1, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (203, N'Raging Bull', CAST(N'1981-04-10T00:00:00.000' AS DateTime), 9, 22, N'An emotionally self-destructive boxer''s journey through life, as the violence and temper that leads him to the top in the ring, destroys his life outside it.', 241, 1, 129, 22, NULL, 18000000, 23380203, 8, 2)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (204, N'Aliens', CAST(N'1986-08-29T00:00:00.000' AS DateTime), 15, 4, N'The planet from Alien (1979) has been colonized, but contact is lost. This time, the rescue team has impressive firepower, enough?', 241, 1, 137, 6, NULL, 17000000, 183316455, 7, 2)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (205, N'Hero', CAST(N'2004-09-24T00:00:00.000' AS DateTime), 105, 29, N'A series of Rashomon-like flashback accounts shape the story of how one man defeated three assassins who sought to murder the most powerful warlord in pre-unified China.', 48, 5, 99, 17, NULL, 17000000, 177352140, 1, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (1, N'Jurassic Park', CAST(N'1993-07-16T00:00:00.000' AS DateTime), 4, 1, N'Scientists clone dinosaurs to populate a theme park which suffers a major security breakdown and releases the dinosaurs.', 241, 1, 127, 8, 2, 63000000, 920100000, 3, 3)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (36, N'The Matrix Reloaded', CAST(N'2003-05-21T00:00:00.000' AS DateTime), 39, 6, N'Neo and the rebel leaders estimate that they have 72 hours until 250,000 probes discover Zion and destroy it and its inhabitants. During this, Neo must decide how he can save Trinity from a dark fate in his dreams.', 241, 1, 138, 6, 5, 127000000, 738576929, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (37, N'The Da Vinci Code', CAST(N'2006-05-19T00:00:00.000' AS DateTime), 40, 5, N'A murder inside the Louvre and clues in Da Vinci paintings lead to the discovery of a religious mystery protected by a secret society for two thousand years -- which could shake the foundations of Christianity.', 241, 1, 149, 18, 4, 125000000, 757536138, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (38, N'Harry Potter and the Philosopher''s Stone', CAST(N'2001-11-16T00:00:00.000' AS DateTime), 41, 6, N'Rescued from the outrageous neglect of his aunt and uncle, a young boy with a great destiny proves his worth while attending Hogwarts School of Witchcraft and Wizardry.', 240, 1, 152, 12, 2, 125000000, 976457891, 3, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (39, N'The Day After Tomorrow', CAST(N'2004-05-27T00:00:00.000' AS DateTime), 42, 4, N'A climatologist tries to figure out a way to save the world from abrupt global warming. He must get to his young son in New York, which is being taken over by a new ice age.', 241, 1, 124, 9, 4, 125000000, 542740799, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (40, N'Pirates of the Caribbean: Curse of the Black Pearl', CAST(N'2003-08-08T00:00:00.000' AS DateTime), 22, 3, N'Blacksmith Will Turner teams up with eccentric pirate "Captain" Jack Sparrow to save his love, the governor''s daughter, from Jack''s former pirate allies, who are now undead.', 241, 1, 143, 8, 3, 125000000, 655011224, 5, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (41, N'The Last Samurai', CAST(N'2004-01-09T00:00:00.000' AS DateTime), 43, 6, N'An American military advisor embraces the Samurai culture he was hired to destroy after he is captured in battle.', 241, 1, 154, 8, 5, 120000000, 456810575, 4, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (42, N'The Perfect Storm', CAST(N'2000-07-28T00:00:00.000' AS DateTime), 25, 6, N'An unusually intense storm pattern catches some commercial fishermen unaware and puts them in mortal danger.', 241, 1, 130, 8, 3, 120000000, 328711434, 2, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (43, N'Mission: Impossible III', CAST(N'2006-05-04T00:00:00.000' AS DateTime), 44, 2, N'Ethan Hunt comes face to face with a dangerous and sadistic arms dealer while trying to keep his identity secret in order to protect his girlfriend.', 241, 1, 126, 9, 4, 150000000, 397501348, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (44, N'Mission: Impossible II', CAST(N'2000-07-07T00:00:00.000' AS DateTime), 45, 2, N'A secret agent is sent to Sydney, to find and destroy a genetically modified disease called "Chimera"', 241, 1, 123, 9, 5, 120000000, 546209889, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (45, N'Windtalkers', CAST(N'2002-08-30T00:00:00.000' AS DateTime), 45, 11, N'Two U.S. Marines in WWII are assigned to protect Navajo Marines who use their native language as an unbreakable radio cypher.', 241, 1, 134, 5, 5, 115000000, 77628265, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (46, N'Star Wars: Episode II - Attack of the Clones', CAST(N'2002-05-16T00:00:00.000' AS DateTime), 7, 13, N'Anakin Skywalker shares a forbidden romance with Padmé Amidala while his teacher, Obi-Wan Kenobi, makes an investigation of a separatist assassination attempt on Padmé which leads to the discovery of a secret Republican clone army.', 241, 1, 142, 6, 2, 115000000, 656695615, 1, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (47, N'Monsters, Inc.', CAST(N'2002-02-08T00:00:00.000' AS DateTime), 46, 10, N'Monsters generate their city''s power by scaring children, but they are terribly afraid themselves of being contaminated by children, so when one enters Monstropolis, top scarer Sulley find his world disrupted.', 241, 1, 92, 11, 1, 115000000, 525370172, 3, 1)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (48, N'Star Wars: Episode I - The Phantom Menace', CAST(N'1999-07-16T00:00:00.000' AS DateTime), 7, 13, N'The evil Trade Federation, led by Nute Gunray (Carson) is planning to take over the peaceful world of Naboo.', 241, 1, 133, 6, 1, 115000000, 924288297, 3, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (49, N'Star Wars: Episode III - Revenge of the Sith', CAST(N'2005-05-19T00:00:00.000' AS DateTime), 7, 13, N'After three years of fighting in the Clone Wars, Anakin Skywalker concludes his journey towards the Dark Side of the Force, putting his friendship with Obi Wan Kenobi and his marriage at risk.', 241, 1, 140, 6, 4, 115000000, 848470577, 1, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (50, N'The Matrix Revolutions', CAST(N'2003-11-05T00:00:00.000' AS DateTime), 39, 6, N'The human city of Zion defends itself against the massive invasion of the machines as Neo fights to end the war at another front while also opposing the rogue Agent Smith.', 241, 1, 129, 6, 5, 110000000, 424259759, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (51, N'Tomorrow Never Dies', CAST(N'1997-12-12T00:00:00.000' AS DateTime), 47, 11, N'James Bond heads to stop a media mogul''s plan to induce war between China and the UK in order to obtain exclusive global media coverage.', 240, 1, 119, 9, 3, 110000000, 339504276, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (52, N'Ocean''s Eleven', CAST(N'2002-02-15T00:00:00.000' AS DateTime), 48, 6, N'Danny Ocean and his ten accomplices plan to rob three Las Vegas casinos simultaneously.', 241, 1, 116, 14, 3, 110000000, 450728529, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (53, N'Live Free or Die Hard', CAST(N'2007-07-04T00:00:00.000' AS DateTime), 49, 4, N'John McClane takes on an Internet-based terrorist organization who is systematically shutting down the United States.', 241, 1, 130, 1, 5, 110000000, 383277179, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (54, N'Around the World in 80 Days', CAST(N'2004-07-09T00:00:00.000' AS DateTime), 50, 3, N'A bet pits a British inventor, a Chinese thief, and a French artist on a worldwide adventure that they can circle the globe in 80 days.', 241, 1, 120, 8, 2, 110000000, 72004159, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (55, N'Kingdom of Heaven', CAST(N'2005-05-06T00:00:00.000' AS DateTime), 51, 4, N'Balian of Ibelin travels to Jerusalem during the crusades of the 12th century, and there he finds himself as the defender of the city and its people.', 241, 1, 145, 8, 5, 110000000, 211398413, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (56, N'Mr. and Mrs. Smith', CAST(N'2005-06-10T00:00:00.000' AS DateTime), 52, 4, N'A bored married couple is surprised to learn that they are both assassins hired by competing agencies to kill each other.', 241, 1, 120, 1, 5, 110000000, 468336279, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (57, N'The Aviator', CAST(N'2005-01-06T00:00:00.000' AS DateTime), 9, 6, N'A biopic depicting the early years of legendary director and aviator Howard Hughes'' career, from the late 1920s to the mid-1940s.', 241, 1, 170, 19, 4, 110000000, 214608827, 11, 5)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (58, N'Ali', CAST(N'2002-02-22T00:00:00.000' AS DateTime), 34, 5, N'A biography of sports legend, Muhammad Ali, from his early days to his days in the ring', 241, 1, 157, 19, 5, 109000000, 85300000, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (59, N'The Lord of the Rings: Fellowship of the Ring', CAST(N'2001-12-19T00:00:00.000' AS DateTime), 12, 14, N'In a small village in the Shire a young Hobbit named Frodo has been entrusted with an ancient Ring. Now he must embark on an Epic quest to the Cracks of Doom in order to destroy it.', 167, 1, 178, 12, 2, 109000000, 868621686, 13, 4)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (60, N'I, Robot', CAST(N'2004-08-06T00:00:00.000' AS DateTime), 53, 4, N'In the year 2035 a techno-phobic cop investigates a crime that may have been perpetrated by a robot, which leads to a larger threat to humanity.', 241, 1, 115, 6, 4, 105000000, 348801023, 1, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (61, N'Casino Royale', CAST(N'2006-11-16T00:00:00.000' AS DateTime), 54, 11, N'In his first mission, James Bond must stop Le Chiffre, a banker to the world''s terrorist organizations, from winning a high-stakes poker tournament at Casino Royale in Montenegro.', 240, 1, 144, 9, 4, 102000000, 594165000, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (62, N'Minority Report', CAST(N'2002-07-04T00:00:00.000' AS DateTime), 4, 8, N'In the future, criminals are caught before the crimes they commit, but one of the officers in the special unit is accused of one such crime and sets out to prove his innocence.', 241, 1, 145, 6, 3, 102000000, 358814112, 1, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (63, N'Terminator 2: Judgement Day', CAST(N'1991-08-16T00:00:00.000' AS DateTime), 15, 15, N'The cyborg who once tried to kill Sarah Connor must now protect her teenager son, John Connor, from an even more powerful and advanced cyborg.', 241, 1, 137, 6, 5, 100000000, 516816151, 4, 6)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (64, N'Catwoman', CAST(N'2004-08-13T00:00:00.000' AS DateTime), 55, 6, N'A shy woman, endowed with the speed, reflexes, and senses of a cat, walks a thin line between criminal and hero, even as a detective doggedly pursues her, fascinated by both of her personas.', 241, 1, 104, 1, 4, 100000000, 73887903, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (65, N'Harry Potter and the Chamber of Secrets', CAST(N'2002-11-15T00:00:00.000' AS DateTime), 41, 6, N'Harry ignores warnings not to return to Hogwarts, only to find the school plagued by a series of mysterious attacks and a strange voice haunting him.', 240, 1, 161, 12, 2, 100000000, 878987880, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (66, N'American Gangster', CAST(N'2007-11-16T00:00:00.000' AS DateTime), 51, 1, N'In 1970s America, a detective works to bring down the drug empire of Frank Lucas, a heroin kingpin from Manhattan, who is smuggling the drug into the country from the Far East.', 241, 1, 157, 19, 6, 100000000, 264132214, 2, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (168, N'Get Shorty', CAST(N'1996-03-15T00:00:00.000' AS DateTime), 31, 11, N'A mobster travels to Hollywood to collect a debt and discovers that the movie business is much the same as his current job.', 241, 1, 105, 14, NULL, 30250000, 115021008, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (169, N'The Assassination of Jesse James by the Coward Robert Ford', CAST(N'2007-11-30T00:00:00.000' AS DateTime), 93, 6, N'Robert Ford, who''s idolized Jesse James since childhood, tries hard to join the reforming gang of the Missouri outlaw, but gradually becomes resentful of the bandit leader.', 241, 1, 160, 4, NULL, 30000000, 11128555, 2, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (170, N'Million Dollar Baby', CAST(N'2005-01-14T00:00:00.000' AS DateTime), 10, 6, N'A hardened trainer/manager works with a determined woman in her attempt to establish herself as a boxer.', 241, 1, 132, 22, NULL, 30000000, 216763646, 7, 4)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (171, N'Se7en', CAST(N'1996-01-05T00:00:00.000' AS DateTime), 70, 14, N'Police drama about two cops, one new and one about to retire, after a serial killer using the seven deadly sins as his MO.', 241, 1, 127, 9, NULL, 30000000, 328125643, 1, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (172, N'The Hunt For Red October', CAST(N'1990-04-20T00:00:00.000' AS DateTime), 58, 2, N'In 1984, the USSR''s best submarine captain in their newest sub violates orders and heads for the USA. Is he trying to defect, or to start a war?', 241, 1, 134, 9, NULL, 30000000, 200500000, 3, 1)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (173, N'Ghost Busters', CAST(N'1984-12-07T00:00:00.000' AS DateTime), 94, 5, N'Three unemployed parapsychology professors set up shop as a unique ghost removal service.', 241, 1, 105, 7, NULL, 30000000, 291632124, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (174, N'Star Trek V: The Final Frontier', CAST(N'1989-10-20T00:00:00.000' AS DateTime), 95, 2, N'Capt. Kirk and his crew must deal with Mr. Spock''s half brother who hijacks the Enterprise for an obsessive search for God.', 241, 1, 107, 6, NULL, 30000000, 70200000, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (175, N'Indiana Jones and the Temple of Doom', CAST(N'1984-06-15T00:00:00.000' AS DateTime), 4, 13, N'After arriving in India, Indiana Jones is asked by a desperate village to find a mystical stone. He agrees, and stumbles upon a secret cult plotting a terrible plan in the catacombs of an ancient palace.', 241, 1, 118, 8, NULL, 28000000, 333080271, 2, 1)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (176, N'Blade Runner', CAST(N'1982-09-09T00:00:00.000' AS DateTime), 51, 6, N'Deckard, a blade runner, has to track down and terminate 4 replicants who hijacked a ship in space and have returned to earth seeking their maker.', 241, 1, 117, 6, NULL, 28000000, 33139618, 2, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (177, N'Die Hard', CAST(N'1989-02-03T00:00:00.000' AS DateTime), 58, 4, N'New York cop John McClane gives terrorists a dose of their own medicine as they hold hostages in an LA office building.', 241, 1, 131, 1, NULL, 28000000, 137350242, 4, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (178, N'For Your Eyes Only', CAST(N'1981-06-26T00:00:00.000' AS DateTime), 84, 22, N'Agent 007 is assigned to hunt for a lost British encryption device and prevent it from falling into enemy hands.', 240, 1, 127, 9, NULL, 28000000, 195300000, 1, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (179, N'Octopussy', CAST(N'1983-06-10T00:00:00.000' AS DateTime), 84, 11, N'A fake Fabergé egg and a fellow agent''s death leads James Bond to uncovering an international jewel smuggling operation, headed by the mysterious Octopussy, being used to disguise a nuclear attack on NATO forces.', 241, 1, 131, 9, NULL, 27500000, 187500000, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (180, N'Star Trek VI: The Undiscovered Country', CAST(N'1992-02-14T00:00:00.000' AS DateTime), 96, 2, N'The crews of the Enterprise and the Excelsior must stop a plot to prevent a peace treaty between the Klingon Empire and the Federation.', 241, 1, 113, 6, 2, 27000000, 96900000, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (181, N'The Running Man', CAST(N'1988-10-21T00:00:00.000' AS DateTime), 97, 24, N'A wrongly-convicted man must try to survive a public execution gauntlet staged as a TV game show.', 241, 1, 101, 6, NULL, 27000000, 38122000, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (182, N'Open Range', CAST(N'2004-03-19T00:00:00.000' AS DateTime), 98, 7, N'A former gunslinger is forced to take up arms again when he and his cattle crew are threatened by a corrupt lawman.', 241, 1, 139, 4, NULL, 26000000, 68293719, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (183, N'Kindergarten Cop', CAST(N'1991-02-01T00:00:00.000' AS DateTime), 94, 1, N'A tough cop is given his most difficult assignment: masquerade as a a kindergarten teacher in order to find a drug dealer.', 241, 1, 111, 7, NULL, 26000000, 202000000, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (184, N'O Brother, Where Art Thou?', CAST(N'2000-09-15T00:00:00.000' AS DateTime), 5, 7, N'Homer''s epic poem "The Odyssey", set in the deep south during the 1930''s. In it, three escaped convicts search for hidden treasure while a relentless lawman pursues them.', 241, 1, 107, 7, NULL, 26000000, 74506619, 2, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (185, N'Goodfellas', CAST(N'1990-09-19T00:00:00.000' AS DateTime), 9, 6, N'Henry Hill and his friends work their way up through the mob hierarchy.', 241, 1, 145, 14, NULL, 25000000, 46743809, 6, 1)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (186, N'The Passion of the Christ', CAST(N'2004-03-26T00:00:00.000' AS DateTime), 65, 25, N'A film detailing the final hours and crucifixion of Jesus Christ.', 241, 7, 127, 2, NULL, 25000000, 611899420, 3, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (187, N'The Untouchables', CAST(N'1987-09-18T00:00:00.000' AS DateTime), 59, 2, N'Federal Agent Elliot Ness sets out to take out Al Capone; because of rampant corruption, he assembles a small, hand-picked team.', 241, 1, 119, 14, NULL, 25000000, 76270454, 4, 1)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (188, N'Schindler''s List', CAST(N'1994-02-18T00:00:00.000' AS DateTime), 4, 1, N'Oskar Schindler uses Jews to start a factory in Poland during the war. He witnesses the horrors endured by the Jews, and starts to save them.', 241, 1, 195, 13, NULL, 25000000, 321200000, 12, 7)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (189, N'Anchorman: The Legend of Ron Burgundy', CAST(N'2004-09-10T00:00:00.000' AS DateTime), 63, 8, N'Ron Burgundy is San Diego''s top rated newsman in the male dominated broadcasting of the 1970''s, but that''s all about to change when a new female employee with ambition to burn arrives in his office.', 241, 1, 94, 7, NULL, 25000000, 89366354, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (190, N'Scarface', CAST(N'1983-12-09T00:00:00.000' AS DateTime), 59, 1, N'In 1980 Miami, a determined Cuban immigrant takes over a drug empire while succumbing to greed.', 241, 1, 170, 14, NULL, 25000000, 44942821, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (191, N'Star Trek IV: The Voyage Home', CAST(N'1987-04-10T00:00:00.000' AS DateTime), 99, 2, N'To save Earth from an alien probe, Kirk and his crew go back in time to retrieve the only beings who can communicate with it, humpback whales.', 241, 1, 119, 6, 2, 24000000, 133000000, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (192, N'King Kong', CAST(N'1976-12-17T00:00:00.000' AS DateTime), 100, 2, N'A petroleum exploration expedition comes to an isolated island and encounters a colossal giant gorilla.', 241, 1, 134, 8, NULL, 23000000, 80014445, 2, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (193, N'Star Wars: Episode V - The Empire Strikes Back', CAST(N'1980-05-21T00:00:00.000' AS DateTime), 88, 13, N'While Luke takes advanced Jedi training from Yoda, his friends are relentlessly pursued by Darth Vader as part of his plan to capture Luke.', 241, 1, 124, 6, NULL, 23000000, 534200000, 3, 1)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (194, N'Gandhi', CAST(N'1982-12-08T00:00:00.000' AS DateTime), 101, 26, N'Biography of Mahatma Gandhi, the lawyer who became the famed leader of the Indian revolts against the British through his philosophy of non-violent protest.', 240, 1, 188, 19, NULL, 22000000, 52767889, 11, 8)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (195, N'Equilibrium', CAST(N'2003-03-14T00:00:00.000' AS DateTime), 102, 23, N'In a Fascist future where all forms of feeling are illegal, a man in charge of enforcing the law rises to overthrow the system.', 241, 1, 107, 6, NULL, 20000000, 5345869, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (196, N'From Dusk Till Dawn', CAST(N'1996-05-31T00:00:00.000' AS DateTime), 103, 23, N'Two criminals and their hostages unknowingly seek temporary refuge in an establishment populated by vampires, with chaotic results.', 241, 1, 108, 10, NULL, 20000000, 25728961, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (67, N'Blood Diamond', CAST(N'2007-01-26T00:00:00.000' AS DateTime), 43, 6, N'A fisherman, a smuggler, and a syndicate of businessmen match wits over the possession of a priceless diamond.', 241, 1, 143, 8, 5, 100000000, 171377916, 5, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (68, N'Gladiator', CAST(N'2000-05-12T00:00:00.000' AS DateTime), 51, 8, N'When a Roman general is betrayed and his family murdered by a corrupt prince, he comes to Rome as a gladiator to seek revenge.', 241, 1, 155, 8, 5, 103000000, 457683805, 12, 5)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (69, N'True Lies', CAST(N'1994-08-12T00:00:00.000' AS DateTime), 15, 4, N'When a secret agent learns of his wife''s extra-marital affair, he pursues her and uses his intelligence resources in a job he kept secret from her.', 241, 1, 141, 9, 5, 100000000, 365300000, 1, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (70, N'Gangs of New York', CAST(N'2003-01-09T00:00:00.000' AS DateTime), 9, 16, N'In 1863, Amsterdam Vallon returns to the Five Points area of New York City seeking revenge against Bill the Butcher, his father''s killer.', 241, 1, 167, 2, 6, 97000000, 190400000, 10, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (71, N'Black Hawk Down', CAST(N'2002-01-18T00:00:00.000' AS DateTime), 51, 17, N'123 elite U.S. soldiers drop into Somalia to capture two top lieutenants of a renegade warlord and find themselves in a desperate battle with a large force of heavily-armed Somalis.', 241, 1, 144, 5, 5, 95000000, 173638745, 4, 2)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (72, N'The Fifth Element', CAST(N'1997-06-06T00:00:00.000' AS DateTime), 56, 18, N'In the colorful future, a cab driver unwittingly becomes the central figure in the search for a legendary cosmic weapon to keep Evil and Mr Zorg at bay.', 79, 1, 126, 6, 2, 95000000, 263900000, 1, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (73, N'The Lord of the Rings: Return of the King', CAST(N'2003-12-17T00:00:00.000' AS DateTime), 12, 14, N'The former Fellowship of the Ring prepare for the final battle for Middle Earth, while Frodo & Sam approach Mount Doom to destroy the One Ring.', 167, 1, 201, 12, 4, 94000000, 1133027325, 11, 11)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (74, N'The Lord of the Rings: The Two Towers', CAST(N'2002-12-18T00:00:00.000' AS DateTime), 12, 14, N'Frodo and Sam continue on to Mordor in their mission to destroy the One Ring. Whilst their former companions make new allies and launch an assault on Isengard.', 167, 1, 179, 12, 4, 94000000, 926284377, 6, 2)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (75, N'Rush Hour 3', CAST(N'2007-08-10T00:00:00.000' AS DateTime), 57, 14, N'After an attempted assassination on Ambassador Han, Lee and Carter head to Paris to protect a French woman with knowledge of the Triads'' secret leaders.', 241, 1, 91, 17, 4, 180000000, 252980850, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (76, N'Rush Hour 2', CAST(N'2001-08-03T00:00:00.000' AS DateTime), 57, 14, N'Carter and Lee head to Hong Kong for vacation, but become embroiled in a counterfeit money scam.', 241, 1, 90, 17, 3, 90000000, 347425832, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (77, N'Men in Black', CAST(N'1997-08-01T00:00:00.000' AS DateTime), 31, 5, N'Two men who keep an eye on aliens in New York City must try to save the world after the aliens threaten to blow it up.', 241, 1, 98, 6, 2, 90000000, 589390539, 3, 1)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (78, N'The Departed', CAST(N'2006-10-06T00:00:00.000' AS DateTime), 9, 6, N'Two men from opposite sides of the law are undercover within the Massachusetts State Police and the Irish mafia, but violence and bloodshed boil when discoveries are made, and the moles are dispatched to find out their enemy''s identities.', 241, 1, 151, 9, 6, 90000000, 290539042, 5, 4)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (79, N'Die Hard: With A Vengeance', CAST(N'1995-08-18T00:00:00.000' AS DateTime), 58, 4, N'John McClane and a store owner must play a bomber''s deadly game as they race around New York while trying to stop him.', 241, 1, 131, 1, 5, 90000000, 365012499, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (80, N'Cinderella Man', CAST(N'2005-09-09T00:00:00.000' AS DateTime), 40, 1, N'The story of James Braddock, a supposedly washed up boxer who came back to become a champion and an inspiration in the 1930s.', 241, 1, 144, 2, 4, 88000000, 108539911, 3, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (81, N'The Bourne Supremacy', CAST(N'2004-08-13T00:00:00.000' AS DateTime), 37, 1, N'When Jason Bourne is framed for a botched CIA operation he is forced to take up his former life as a trained assassin to survive.', 241, 1, 108, 9, 4, 85000000, 288587450, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (82, N'Last Action Hero', CAST(N'1993-07-30T00:00:00.000' AS DateTime), 58, 5, N'A young movie fan gets thrown into the movie world of his favourite action film character.', 241, 1, 130, 1, 5, 85000000, 137298489, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (83, N'Cast Away', CAST(N'2001-01-12T00:00:00.000' AS DateTime), 20, 8, N'A FedEx executive must transform himself physically and emotionally to survive a crash landing on a deserted island.', 241, 1, 143, 2, 3, 85000000, 427230516, 2, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (84, N'Ocean''s Twelve', CAST(N'2005-02-04T00:00:00.000' AS DateTime), 48, 6, N'Daniel Ocean recruits one more team member so he can pull off three major European heists in this sequel to Ocean''s 11.', 241, 1, 125, 14, 4, 85000000, 363531634, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (85, N'Click', CAST(N'2006-09-29T00:00:00.000' AS DateTime), 50, 5, N'A workaholic architect finds a universal remote that allows him to fast-forward and rewind to different parts of his life. Complications arise when the remote starts to overrule his choices.', 241, 1, 107, 7, 4, 82500000, 237555633, 1, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (86, N'Bruce Almighty', CAST(N'2003-06-27T00:00:00.000' AS DateTime), 16, 1, N'A guy who complains about God too often is given almighty powers to teach him how difficult it is to run the world.', 241, 1, 101, 7, 4, 81000000, 485004995, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (87, N'Mission: Impossible', CAST(N'1996-07-05T00:00:00.000' AS DateTime), 59, 2, N'An American agent, under false suspicion of disloyalty, must discover and expose the real spy without the help of his organization.', 241, 1, 110, 9, 2, 80000000, 456481886, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (88, N'Deep Impact', CAST(N'1998-05-15T00:00:00.000' AS DateTime), 60, 2, N'Unless a comet can be destroyed before colliding with Earth, only those allowed into shelters will survive. Which people will survive?', 241, 1, 120, 6, 3, 80000000, 349464664, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (89, N'Road to Perdition', CAST(N'2002-09-27T00:00:00.000' AS DateTime), 61, 8, N'Bonds of loyalty are put to the test when a hitman''s son witnesses what his father does for a living.', 241, 1, 117, 14, 5, 80000000, 181054514, 6, 1)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (90, N'A Beautiful Mind', CAST(N'2002-02-22T00:00:00.000' AS DateTime), 40, 1, N'After a brilliant but asocial mathematician accepts secret work in cryptography, his life takes a turn to the nightmarish.', 241, 1, 135, 2, 3, 78000000, 316708996, 8, 4)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (91, N'Children of Men', CAST(N'2006-09-22T00:00:00.000' AS DateTime), 38, 1, N'In 2027, in a chaotic world in which humans can no longer procreate, a former activist agrees to help transport a miraculously pregnant woman to a sanctuary at sea, where her child''s birth may help scientists save the future of humankind.', 241, 1, 109, 6, 5, 76000000, 69450202, 3, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (92, N'Munich', CAST(N'2006-01-27T00:00:00.000' AS DateTime), 4, 8, N'Based on the true story of the Black September aftermath, about the five men chosen to eliminate the ones responsible for that fateful day.', 241, 1, 164, 2, 5, 75000000, 130279090, 5, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (93, N'Independence Day', CAST(N'1996-08-09T00:00:00.000' AS DateTime), 42, 4, N'The aliens are coming and their goal is to invade and destroy. Fighting superior technology, Man''s best weapon is the will to survive.', 241, 1, 145, 6, 3, 75000000, 816969255, 2, 1)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (94, N'X-Men', CAST(N'2000-08-18T00:00:00.000' AS DateTime), 14, 4, N'Two mutants come to a private academy for mutants whose resident superhero team must oppose a powerful mutant terrorist organization.', 241, 1, 104, 1, 3, 75000000, 295999717, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (95, N'X2', CAST(N'2003-05-01T00:00:00.000' AS DateTime), 14, 4, N'The X-Men band together to find a mutant assassin who has made an attempt on the President''s life, while the Mutant Academy is attacked by military forces.', 241, 1, 133, 1, 4, 125000000, 406400513, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (96, N'The Rock', CAST(N'1996-06-21T00:00:00.000' AS DateTime), 18, 17, N'A group of U.S. marines, under command of a renegade general, take over Alcatraz and threat San Francisco Bay with biological weapons. A chemical weapons specialist and the only man to have ever escaped from the Rock are the only ones who can prevent chaos.', 241, 1, 136, 9, 5, 75000000, 336069511, 1, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (97, N'Constantine', CAST(N'2005-03-18T00:00:00.000' AS DateTime), 23, 6, N'Based on the DC/Vertigo comic book Hellblazer and written by Kevin Brodbin, Mark Bomback and Frank Capello, Constantine tells the story of irreverent supernatural detective John Constantine (Keanu Reeves), who has literally been to hell and back.', 241, 1, 121, 9, 5, 75000000, 229976178, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (98, N'Unbreakable', CAST(N'2000-12-29T00:00:00.000' AS DateTime), 62, 7, N'A suspense thriller with supernatural overtones that revolves around a man who learns something extraordinary about himself after a devastating accident.', 241, 1, 106, 2, 3, 73243106, 248099143, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (99, N'Talladega Nights: The Ballad of Ricky Bobby', CAST(N'2006-09-15T00:00:00.000' AS DateTime), 63, 5, N'#1 NASCAR driver Ricky Bobby (Ferrell) stays atop the heap thanks to a pact with his best friend and teammate, Cal Naughton, Jr. (Reilly). But when a French Formula One driver (Cohen), makes his way up the ladder, Ricky Bobby''s talent and devotion are put to the test.', 241, 1, 108, 7, 4, 73000000, 163213377, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (100, N'The Simpsons Movie', CAST(N'2007-07-25T00:00:00.000' AS DateTime), 64, 4, N'After Homer accidentally pollutes the town''s water supply, Springfield is encased in a gigantic dome by the EPA and the Simpsons family are declared fugitives.', 241, 1, 87, 11, 2, 72500000, 526758418, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (101, N'Braveheart', CAST(N'1995-09-08T00:00:00.000' AS DateTime), 65, 2, N'William Wallace, a commoner, unites the 13th Century Scots in their battle to overthrow English rule.', 241, 1, 177, 13, 5, 72000000, 209000000, 10, 5)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (102, N'Jarhead', CAST(N'2006-01-13T00:00:00.000' AS DateTime), 61, 1, N'Based on former Marine Anthony Swofford''s best-selling 2003 book about his pre-Desert Storm experiences in Saudi Arabia and about his experiences fighting in Kuwait.', 241, 1, 125, 5, 5, 72000000, 96780312, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (103, N'The Village', CAST(N'2004-08-20T00:00:00.000' AS DateTime), 62, 7, N'The population of a small, isolated countryside village believe that their alliance with the mythical creatures that inhabit the forest around them is coming to an end.', 241, 1, 108, 9, 4, 71682975, 260197520, 1, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (104, N'Shrek the Third', CAST(N'2007-06-29T00:00:00.000' AS DateTime), 66, 8, N'When his new father-in-law, King Harold falls ill, Shrek is looked at as the heir to the land of Far, Far Away. Not one to give up his beloved swamp, Shrek recruits his friends Donkey and Puss in Boots to install the rebellious Artie as the new king. Princess Fiona, however, rallies a band of royal girlfriends to fend off a coup d''etat by the jilted Prince Charming.', 241, 1, 92, 11, 1, 160000000, 798957081, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (105, N'Shrek 2', CAST(N'2004-07-02T00:00:00.000' AS DateTime), 67, 8, N'Princess Fiona''s parents invite her and Shrek to dinner to celebrate her marriage. If only they knew the newlyweds were both ogres.', 241, 1, 93, 11, 1, 70000000, 915278586, 2, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (106, N'The Abyss', CAST(N'1989-10-13T00:00:00.000' AS DateTime), 15, 4, N'A civilian diving team are enlisted to search for a lost nuclear submarine and face danger while encountering an alien aquatic species.', 241, 1, 138, 6, 5, 70000000, 54243125, 4, 1)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (107, N'Star Trek: Insurrection', CAST(N'1999-01-01T00:00:00.000' AS DateTime), 68, 2, N'When the crew of the Enterprise learn of a Federation plot against the inhabitants of a unique planet, Capt. Picard begins an open rebellion.', 241, 1, 103, 6, 2, 70000000, 117800000, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (108, N'Who Framed Roger Rabbit?', CAST(N'1988-12-02T00:00:00.000' AS DateTime), 20, 7, N'A toon hating detective is a cartoon rabbit''s only hope to prove his innocence when he is accused of murder.', 241, 1, 104, 7, 2, 70000000, 351500000, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (109, N'Sleepy Hollow', CAST(N'2000-01-07T00:00:00.000' AS DateTime), 28, 2, N'Ichabod Crane is sent to Sleepy Hollow to investigate the decapitations of 3 people with the culprit being the legendary apparition, the Headless Horseman.', 241, 1, 105, 10, 5, 70000000, 207068340, 3, 1)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (110, N'xXx', CAST(N'2002-10-17T00:00:00.000' AS DateTime), 32, 19, N'Xander Cage is an extreme sports athelete recruited by the government on a special mission.', 241, 1, 124, 1, 5, 70000000, 267200000, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (111, N'Die Hard 2', CAST(N'1990-08-17T00:00:00.000' AS DateTime), 69, 4, N'John McClane is forced to battle mercenaries who seize control of an airport''s communications and threaten to cause plane crashes if their demands are not met.', 241, 1, 124, 1, 5, 70000000, 237523878, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (112, N'The Long Kiss Goodnight', CAST(N'1996-11-29T00:00:00.000' AS DateTime), 69, 14, N'A women suffering from amnesia begins to recover her memories after trouble from her past finds her again.', 241, 1, 120, 1, 6, 65000000, NULL, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (113, N'Apollo 13', CAST(N'1995-09-22T00:00:00.000' AS DateTime), 40, 1, N'True story of the moon-bound mission that developed severe trouble and the men that rescued it with skill and dedication.', 241, 1, 140, 13, 2, 65000000, 334100000, 9, 2)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (114, N'Saving Private Ryan', CAST(N'1998-09-11T00:00:00.000' AS DateTime), 4, 8, N'Based on a World War II drama. US soldiers try to save their comrade, paratrooper Private Ryan, who''s stationed behind enemy lines.', 241, 1, 170, 5, 5, 65000000, 481635085, 11, 5)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (115, N'Fight Club', CAST(N'1999-11-12T00:00:00.000' AS DateTime), 70, 4, N'An office employee and a soap salesman build a global organization to help vent male aggression.', 241, 1, 139, 9, 6, 65000000, NULL, 1, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (116, N'The Matrix', CAST(N'1999-06-11T00:00:00.000' AS DateTime), 39, 6, N'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against the controllers of it.', 241, 1, 136, 6, 5, 65000000, 456500000, 4, 4)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (117, N'Total Recall', CAST(N'1990-07-27T00:00:00.000' AS DateTime), 72, 15, N'When a man goes for virtual vacation memories of the planet Mars, an unexpected and harrowing series of events forces him to go to the planet for real, or does he?', 241, 1, 113, 6, 6, 65000000, 261400000, 2, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (118, N'Cliffhanger', CAST(N'1993-06-25T00:00:00.000' AS DateTime), 69, 15, N'A botched mid-air heist results in suitcases full of cash being searched for by various groups throughout the Rocky Mountains.', 241, 1, 113, 1, 5, 65000000, 255000000, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (119, N'Clear and Present Danger', CAST(N'1994-08-03T00:00:00.000' AS DateTime), 73, 2, N'CIA Analyst Jack Ryan is drawn into an illegal war fought by the US government against a Colombian drug cartel.', 241, 1, 141, 9, 3, 62000000, 207500000, 2, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (120, N'GoldenEye', CAST(N'1995-11-24T00:00:00.000' AS DateTime), 54, 11, N'James Bond teams up with the lone survivor of a destroyed Russian research center to stop the hijacking of a nuclear space weapon by a fellow agent believed to be dead.', 240, 1, 130, 9, 3, 60000000, 356429941, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (121, N'The Black Dahlia', CAST(N'2006-09-15T00:00:00.000' AS DateTime), 59, 1, N'Two policemen see their personal and professional lives fall apart in the wake of the "Black Dahlia" murder investigation.', 241, 1, 121, 14, 5, 60000000, 46672813, 1, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (122, N'The Truman Show', CAST(N'1998-10-09T00:00:00.000' AS DateTime), 36, 2, N'An insurance salesman/adjuster discovers his entire life is actually a TV show.', 241, 1, 103, 2, 2, 60000000, 248400000, 3, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (123, N'Event Horizon', CAST(N'1997-08-22T00:00:00.000' AS DateTime), 74, 2, N'A rescue crew investigates a spaceship that disappeared into a black hole and has now returned...with someone or something new on-board.', 241, 1, 96, 6, 6, 60000000, 26673242, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (124, N'The Bourne Identity', CAST(N'2002-09-06T00:00:00.000' AS DateTime), 52, 1, N'A man is picked up by a fishing boat, bullet-riddled and without memory, then races to elude assassins and recover from amnesia.', 241, 1, 119, 9, 4, 60000000, 213300000, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (125, N'Hellboy', CAST(N'2004-09-02T00:00:00.000' AS DateTime), 71, 19, N'A demon, raised from infancy after being conjured by and rescued from the Nazis, grows up to become a defender against the forces of darkness.', 241, 1, 122, 1, 4, 60000000, 98703901, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (126, N'Starsky & Hutch', CAST(N'2004-03-19T00:00:00.000' AS DateTime), 75, 6, N'Two streetwise cops (Stiller and Wilson) bust criminals in their red-and-white Ford Torino with the help of police snitch called Huggy Bear (Snoop Dogg).', 241, 1, 101, 7, 5, 60000000, 170200225, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (127, N'Intolerable Cruelty', CAST(N'2003-10-24T00:00:00.000' AS DateTime), 5, 20, N'A revenge-seeking gold digger marries a womanizing Beverly Hills lawyer with the intention of making a killing in the divorce.', 241, 1, 100, 7, 4, 60000000, 121327628, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (128, N'300', CAST(N'2007-03-23T00:00:00.000' AS DateTime), 76, 6, N'King Leonidas and a force of 300 men fight the Persians at Thermopylae in 480 B.C.', 241, 1, 117, 8, 5, 60000000, 456068181, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (129, N'Star Trek: Nemesis', CAST(N'2003-01-03T00:00:00.000' AS DateTime), 77, 2, N'After the Enterprise is diverted to the Romulan planet of Romulus, supposedly because they want to negotiate a truce, the Federation soon find out the Romulans are planning an attack on Earth.', 241, 1, 116, 6, 4, 60000000, 67312826, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (130, N'Superman', CAST(N'1978-12-21T00:00:00.000' AS DateTime), 30, 6, N'An alien orphan is sent from his dying planet to Earth, where he grows up to become his adoptive home''s first and greatest super-hero.', 241, 1, 143, 8, 2, 55000000, 300200000, 3, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (131, N'Crimson Tide', CAST(N'1995-11-03T00:00:00.000' AS DateTime), 78, 17, N'On a US nuclear missile sub, a young first officer stages a mutiny to prevent his trigger happy captain from launching his missiles before confirming his orders to do so.', 241, 1, 116, 9, 5, 55000000, 159387195, 3, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (132, N'Deja Vu', CAST(N'2006-12-15T00:00:00.000' AS DateTime), 78, 7, N'An ATF agent travels back in time to save a woman from being murdered, falling in love with her during the process.', 241, 1, 126, 9, 4, 80000000, 181038616, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (133, N'Man On Fire', CAST(N'2004-10-08T00:00:00.000' AS DateTime), 78, 4, N'In Mexico City, a former assassin swears vengeance on those who committed an unspeakable act against the family he was hired to protect.', 241, 1, 146, 9, 6, 60000000, 118706816, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (134, N'Enemy of the State', CAST(N'1998-12-26T00:00:00.000' AS DateTime), 78, 7, N'A lawyer becomes a target by a corrupt politician and his NSA goons when he accidentally receives key evidence to a serious politically motivated crime.', 241, 1, 132, 9, 5, 85000000, 250300000, 0, 0)
GO
INSERT [dbo].[tblFilm] ([FilmID], [FilmName], [FilmReleaseDate], [FilmDirectorID], [FilmStudioID], [FilmSynopsis], [FilmCountryID], [FilmLanguageID], [FilmRunTimeMinutes], [FilmGenreID], [FilmCertificateID], [FilmBudgetDollars], [FilmBoxOfficeDollars], [FilmOscarNominations], [FilmOscarWins]) VALUES (135, N'Kill Bill: Vol. 1', CAST(N'2003-10-17T00:00:00.000' AS DateTime), 79, 16, N'The Bride wakes up after a long coma. The baby that she carried before entering the coma is gone. The only thing on her mind is to have revenge on the assassination team that betrayed her - a team she was once part of.', 241, 1, 111, 17, 6, 55000000, 180098138, 0, 0)
GO
INSERT [dbo].[tblGenre] ([GenreID], [Genre]) VALUES (1, N'Action')
GO
INSERT [dbo].[tblGenre] ([GenreID], [Genre]) VALUES (2, N'Drama')
GO
INSERT [dbo].[tblGenre] ([GenreID], [Genre]) VALUES (3, N'Romance')
GO
INSERT [dbo].[tblGenre] ([GenreID], [Genre]) VALUES (4, N'Western')
GO
INSERT [dbo].[tblGenre] ([GenreID], [Genre]) VALUES (5, N'War')
GO
INSERT [dbo].[tblGenre] ([GenreID], [Genre]) VALUES (6, N'Science Fiction')
GO
INSERT [dbo].[tblGenre] ([GenreID], [Genre]) VALUES (7, N'Comedy')
GO
INSERT [dbo].[tblGenre] ([GenreID], [Genre]) VALUES (8, N'Adventure')
GO
INSERT [dbo].[tblGenre] ([GenreID], [Genre]) VALUES (9, N'Thriller')
GO
INSERT [dbo].[tblGenre] ([GenreID], [Genre]) VALUES (10, N'Horror')
GO
INSERT [dbo].[tblGenre] ([GenreID], [Genre]) VALUES (11, N'Animation')
GO
INSERT [dbo].[tblGenre] ([GenreID], [Genre]) VALUES (12, N'Fantasy')
GO
INSERT [dbo].[tblGenre] ([GenreID], [Genre]) VALUES (13, N'History')
GO
INSERT [dbo].[tblGenre] ([GenreID], [Genre]) VALUES (14, N'Crime')
GO
INSERT [dbo].[tblGenre] ([GenreID], [Genre]) VALUES (17, N'Martial Arts')
GO
INSERT [dbo].[tblGenre] ([GenreID], [Genre]) VALUES (18, N'Mystery')
GO
INSERT [dbo].[tblGenre] ([GenreID], [Genre]) VALUES (19, N'Biography')
GO
INSERT [dbo].[tblGenre] ([GenreID], [Genre]) VALUES (20, N'Musical')
GO
INSERT [dbo].[tblGenre] ([GenreID], [Genre]) VALUES (22, N'Sport')
GO
INSERT [dbo].[tblGenre] ([GenreID], [Genre]) VALUES (24, N'Documentary')
GO
INSERT [dbo].[tblLanguage] ([LanguageID], [Language]) VALUES (1, N'English')
GO
INSERT [dbo].[tblLanguage] ([LanguageID], [Language]) VALUES (2, N'Cantonese')
GO
INSERT [dbo].[tblLanguage] ([LanguageID], [Language]) VALUES (3, N'French')
GO
INSERT [dbo].[tblLanguage] ([LanguageID], [Language]) VALUES (4, N'German')
GO
INSERT [dbo].[tblLanguage] ([LanguageID], [Language]) VALUES (5, N'Mandarin')
GO
INSERT [dbo].[tblLanguage] ([LanguageID], [Language]) VALUES (6, N'Japanese')
GO
INSERT [dbo].[tblLanguage] ([LanguageID], [Language]) VALUES (7, N'Aramaic')
GO
INSERT [dbo].[tblLanguage] ([LanguageID], [Language]) VALUES (8, N'Mayan')
GO
INSERT [dbo].[tblLanguage] ([LanguageID], [Language]) VALUES (9, N'Russian')
GO
INSERT [dbo].[tblStudio] ([StudioID], [StudioName]) VALUES (5, N'Columbia Pictures')
GO
INSERT [dbo].[tblStudio] ([StudioID], [StudioName]) VALUES (6, N'Warner Bros. Pictures')
GO
INSERT [dbo].[tblStudio] ([StudioID], [StudioName]) VALUES (7, N'Touchstone Pictures')
GO
INSERT [dbo].[tblStudio] ([StudioID], [StudioName]) VALUES (8, N'Dreamworks')
GO
INSERT [dbo].[tblStudio] ([StudioID], [StudioName]) VALUES (9, N'ImageMovers')
GO
INSERT [dbo].[tblStudio] ([StudioID], [StudioName]) VALUES (10, N'Disney Pixar')
GO
INSERT [dbo].[tblStudio] ([StudioID], [StudioName]) VALUES (11, N'MGM')
GO
INSERT [dbo].[tblStudio] ([StudioID], [StudioName]) VALUES (12, N'Chris Lee Productions')
GO
INSERT [dbo].[tblStudio] ([StudioID], [StudioName]) VALUES (13, N'Lucasfilm')
GO
INSERT [dbo].[tblStudio] ([StudioID], [StudioName]) VALUES (14, N'New Line Cinema')
GO
INSERT [dbo].[tblStudio] ([StudioID], [StudioName]) VALUES (15, N'Carolco Pictures')
GO
INSERT [dbo].[tblStudio] ([StudioID], [StudioName]) VALUES (16, N'Miramax Films')
GO
INSERT [dbo].[tblStudio] ([StudioID], [StudioName]) VALUES (17, N'Jerry Bruckheimer Films')
GO
INSERT [dbo].[tblStudio] ([StudioID], [StudioName]) VALUES (18, N'Gaumont')
GO
INSERT [dbo].[tblStudio] ([StudioID], [StudioName]) VALUES (19, N'Revolution Studios')
GO
INSERT [dbo].[tblStudio] ([StudioID], [StudioName]) VALUES (20, N'Imagine Entertainment')
GO
INSERT [dbo].[tblStudio] ([StudioID], [StudioName]) VALUES (21, N'Morgan Creek Productions')
GO
INSERT [dbo].[tblStudio] ([StudioID], [StudioName]) VALUES (22, N'United Artists')
GO
INSERT [dbo].[tblStudio] ([StudioID], [StudioName]) VALUES (23, N'Dimension Films')
GO
INSERT [dbo].[tblStudio] ([StudioID], [StudioName]) VALUES (24, N'Braveworld Productions')
GO
INSERT [dbo].[tblStudio] ([StudioID], [StudioName]) VALUES (25, N'Icon Productions')
GO
INSERT [dbo].[tblStudio] ([StudioID], [StudioName]) VALUES (26, N'Carolina Bank')
GO
INSERT [dbo].[tblStudio] ([StudioID], [StudioName]) VALUES (27, N'Tig Productions')
GO
INSERT [dbo].[tblStudio] ([StudioID], [StudioName]) VALUES (28, N'Dune Entertainment')
GO
INSERT [dbo].[tblStudio] ([StudioID], [StudioName]) VALUES (29, N'Beijing New Picture Film Co.')
GO
INSERT [dbo].[tblStudio] ([StudioID], [StudioName]) VALUES (30, N'Big Talk Productions')
GO
INSERT [dbo].[tblStudio] ([StudioID], [StudioName]) VALUES (31, N'Malpaso Company')
GO
INSERT [dbo].[tblStudio] ([StudioID], [StudioName]) VALUES (32, N'British Film Council')
GO
INSERT [dbo].[tblStudio] ([StudioID], [StudioName]) VALUES (33, N'Channel Four Films')
GO
INSERT [dbo].[tblStudio] ([StudioID], [StudioName]) VALUES (34, N'Constantin Film')
GO
INSERT [dbo].[tblStudio] ([StudioID], [StudioName]) VALUES (35, N'Bavaria Film')
GO
INSERT [dbo].[tblStudio] ([StudioID], [StudioName]) VALUES (36, N'Bayerischer Rundfunk')
GO
INSERT [dbo].[tblStudio] ([StudioID], [StudioName]) VALUES (37, N'RKO Radio Pictures')
GO
INSERT [dbo].[tblStudio] ([StudioID], [StudioName]) VALUES (38, N'Toho Company')
GO
INSERT [dbo].[tblStudio] ([StudioID], [StudioName]) VALUES (39, N'Kathbur Pictures')
GO
INSERT [dbo].[tblStudio] ([StudioID], [StudioName]) VALUES (40, N'Avalon Studios')
GO
INSERT [dbo].[tblStudio] ([StudioID], [StudioName]) VALUES (1, N'Universal Pictures')
GO
INSERT [dbo].[tblStudio] ([StudioID], [StudioName]) VALUES (2, N'Paramount Pictures')
GO
INSERT [dbo].[tblStudio] ([StudioID], [StudioName]) VALUES (3, N'Walt Disney Pictures')
GO
INSERT [dbo].[tblStudio] ([StudioID], [StudioName]) VALUES (4, N'20th Century Fox')
GO
USE [master]
GO
ALTER DATABASE [Movies] SET  READ_WRITE 
GO
