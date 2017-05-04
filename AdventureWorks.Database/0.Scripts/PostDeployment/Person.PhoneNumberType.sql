SET IDENTITY_INSERT [Person].[PhoneNumberType] ON 
GO

IF NOT EXISTS (SELECT 1 FROM [Person].[PhoneNumberType] WHERE [PhoneNumberTypeID] = 1)
INSERT [Person].[PhoneNumberType] ([PhoneNumberTypeID], [Name], [ModifiedDate]) VALUES (1, N'Cell', CAST(N'2017-12-13T13:19:22.273' AS DateTime))
GO

IF NOT EXISTS (SELECT 1 FROM [Person].[PhoneNumberType] WHERE [PhoneNumberTypeID] = 2)
INSERT [Person].[PhoneNumberType] ([PhoneNumberTypeID], [Name], [ModifiedDate]) VALUES (2, N'Home', CAST(N'2017-12-13T13:19:22.273' AS DateTime))
GO

IF NOT EXISTS (SELECT 1 FROM [Person].[PhoneNumberType] WHERE [PhoneNumberTypeID] = 2)
INSERT [Person].[PhoneNumberType] ([PhoneNumberTypeID], [Name], [ModifiedDate]) VALUES (3, N'Work', CAST(N'2017-12-13T13:19:22.273' AS DateTime))
GO

SET IDENTITY_INSERT [Person].[PhoneNumberType] OFF
GO
