SET IDENTITY_INSERT [Person].[ContactType] ON 
GO

IF NOT EXISTS (SELECT 1 FROM [Person].[ContactType] WHERE [ContactTypeID] = 1)
INSERT [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (1, N'Accounting Manager', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
GO

IF NOT EXISTS (SELECT 1 FROM [Person].[ContactType] WHERE [ContactTypeID] = 2)
INSERT [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (2, N'Assistant Sales Agent', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
GO

IF NOT EXISTS (SELECT 1 FROM [Person].[ContactType] WHERE [ContactTypeID] = 3)
INSERT [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (3, N'Assistant Sales Representative', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
GO

IF NOT EXISTS (SELECT 1 FROM [Person].[ContactType] WHERE [ContactTypeID] = 4)
INSERT [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (4, N'Coordinator Foreign Markets', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
GO

IF NOT EXISTS (SELECT 1 FROM [Person].[ContactType] WHERE [ContactTypeID] = 5)
INSERT [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (5, N'Export Administrator', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
GO

IF NOT EXISTS (SELECT 1 FROM [Person].[ContactType] WHERE [ContactTypeID] = 6)
INSERT [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (6, N'International Marketing Manager', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
GO

IF NOT EXISTS (SELECT 1 FROM [Person].[ContactType] WHERE [ContactTypeID] = 7)
INSERT [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (7, N'Marketing Assistant', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
GO

IF NOT EXISTS (SELECT 1 FROM [Person].[ContactType] WHERE [ContactTypeID] = 8)
INSERT [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (8, N'Marketing Manager', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
GO

IF NOT EXISTS (SELECT 1 FROM [Person].[ContactType] WHERE [ContactTypeID] = 9)
INSERT [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (9, N'Marketing Representative', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
GO

IF NOT EXISTS (SELECT 1 FROM [Person].[ContactType] WHERE [ContactTypeID] = 10)
INSERT [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (10, N'Order Administrator', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
GO

IF NOT EXISTS (SELECT 1 FROM [Person].[ContactType] WHERE [ContactTypeID] = 11)
INSERT [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (11, N'Owner', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
GO

IF NOT EXISTS (SELECT 1 FROM [Person].[ContactType] WHERE [ContactTypeID] = 12)
INSERT [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (12, N'Owner/Marketing Assistant', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
GO

IF NOT EXISTS (SELECT 1 FROM [Person].[ContactType] WHERE [ContactTypeID] = 13)
INSERT [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (13, N'Product Manager', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
GO

IF NOT EXISTS (SELECT 1 FROM [Person].[ContactType] WHERE [ContactTypeID] = 1)
INSERT [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (14, N'Purchasing Agent', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
GO

IF NOT EXISTS (SELECT 1 FROM [Person].[ContactType] WHERE [ContactTypeID] = 1)
INSERT [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (15, N'Purchasing Manager', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
GO

IF NOT EXISTS (SELECT 1 FROM [Person].[ContactType] WHERE [ContactTypeID] = 1)
INSERT [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (16, N'Regional Account Representative', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
GO

IF NOT EXISTS (SELECT 1 FROM [Person].[ContactType] WHERE [ContactTypeID] = 1)
INSERT [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (17, N'Sales Agent', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
GO

IF NOT EXISTS (SELECT 1 FROM [Person].[ContactType] WHERE [ContactTypeID] = 1)
INSERT [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (18, N'Sales Associate', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
GO

IF NOT EXISTS (SELECT 1 FROM [Person].[ContactType] WHERE [ContactTypeID] = 1)
INSERT [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (19, N'Sales Manager', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
GO

IF NOT EXISTS (SELECT 1 FROM [Person].[ContactType] WHERE [ContactTypeID] = 1)
INSERT [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (20, N'Sales Representative', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
GO

SET IDENTITY_INSERT [Person].[ContactType] OFF
GO