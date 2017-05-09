CREATE TABLE [HumanResources].[EmployeeType]
(
	[EmployeeTypeID] INT NOT NULL,
	[Name] NVARCHAR(50) NOT NULL,
	[rowguid]           UNIQUEIDENTIFIER    CONSTRAINT [DF_EmployeeType_rowguid] DEFAULT (newid()) ROWGUIDCOL NOT NULL,
    [ModifiedDate]      DATETIME            CONSTRAINT [DF_EmployeeType_ModifiedDate] DEFAULT (getdate()) NOT NULL,
	CONSTRAINT [PK_EmployeeType_EmployeeTypeID] PRIMARY KEY CLUSTERED ([EmployeeTypeID] ASC),
	CONSTRAINT [UK_EmployeeType_Name] UNIQUE NONCLUSTERED ([Name])
)
