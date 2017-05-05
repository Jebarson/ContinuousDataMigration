SET IDENTITY_INSERT [Person].[AddressType] ON 
GO

IF NOT EXISTS (SELECT 1 FROM [Person].[AddressType] WHERE [AddressTypeID] = 1)
INSERT [Person].[AddressType] ([AddressTypeID], [Name], [ModifiedDate]) VALUES (1, N'Billing', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
GO

IF NOT EXISTS (SELECT 1 FROM [Person].[AddressType] WHERE [AddressTypeID] = 2)
INSERT [Person].[AddressType] ([AddressTypeID], [Name], [ModifiedDate]) VALUES (2, N'Home', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
GO

IF NOT EXISTS (SELECT 1 FROM [Person].[AddressType] WHERE [AddressTypeID] = 3)
INSERT [Person].[AddressType] ([AddressTypeID], [Name], [ModifiedDate]) VALUES (3, N'Office', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
GO

IF NOT EXISTS (SELECT 1 FROM [Person].[AddressType] WHERE [AddressTypeID] = 4)
INSERT [Person].[AddressType] ([AddressTypeID], [Name], [ModifiedDate]) VALUES (4, N'Primary', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
GO

IF NOT EXISTS (SELECT 1 FROM [Person].[AddressType] WHERE [AddressTypeID] = 5)
INSERT [Person].[AddressType] ([AddressTypeID], [Name], [ModifiedDate]) VALUES (5, N'Shipping', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
GO

IF NOT EXISTS (SELECT 1 FROM [Person].[AddressType] WHERE [AddressTypeID] = 6)
INSERT [Person].[AddressType] ([AddressTypeID], [Name], [ModifiedDate]) VALUES (6, N'Archive', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
GO

SET IDENTITY_INSERT [Person].[AddressType] OFF
GO