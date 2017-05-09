---------------------------------------------------------------------------------------------------------------------------------
-- 1. Migrate the data from Employee table to add the new column so that we persist the column order.
---------------------------------------------------------------------------------------------------------------------------------
SET NUMERIC_ROUNDABORT OFF

SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON

SET XACT_ABORT ON

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE

BEGIN TRANSACTION

IF @@ERROR <> 0 SET NOEXEC ON

PRINT N'Dropping extended properties'

EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', NULL, NULL

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'BirthDate'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'BusinessEntityID'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'CurrentFlag'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'Gender'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'HireDate'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'JobTitle'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'LoginID'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'MaritalStatus'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'ModifiedDate'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'NationalIDNumber'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'OrganizationLevel'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'OrganizationNode'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'rowguid'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'SalariedFlag'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'SickLeaveHours'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'VacationHours'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'CK_Employee_BirthDate'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'CK_Employee_Gender'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'CK_Employee_HireDate'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'CK_Employee_MaritalStatus'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'CK_Employee_SickLeaveHours'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'CK_Employee_VacationHours'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'DF_Employee_CurrentFlag'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'DF_Employee_ModifiedDate'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'DF_Employee_rowguid'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'DF_Employee_SalariedFlag'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'DF_Employee_SickLeaveHours'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'DF_Employee_VacationHours'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'FK_Employee_Person_BusinessEntityID'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'PK_Employee_BusinessEntityID'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'INDEX', N'AK_Employee_LoginID'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'INDEX', N'AK_Employee_NationalIDNumber'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'INDEX', N'AK_Employee_rowguid'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'INDEX', N'IX_Employee_OrganizationLevel_OrganizationNode'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'INDEX', N'IX_Employee_OrganizationNode'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'TRIGGER', N'dEmployee'

IF @@ERROR <> 0 SET NOEXEC ON

PRINT N'Dropping foreign keys from [HumanResources].[Employee]'

ALTER TABLE [HumanResources].[Employee] DROP CONSTRAINT [FK_Employee_Person_BusinessEntityID]

IF @@ERROR <> 0 SET NOEXEC ON

PRINT N'Dropping foreign keys from [Production].[Document]'

ALTER TABLE [Production].[Document] DROP CONSTRAINT [FK_Document_Employee_Owner]

IF @@ERROR <> 0 SET NOEXEC ON

PRINT N'Dropping foreign keys from [HumanResources].[EmployeeDepartmentHistory]'

ALTER TABLE [HumanResources].[EmployeeDepartmentHistory] DROP CONSTRAINT [FK_EmployeeDepartmentHistory_Employee_BusinessEntityID]

IF @@ERROR <> 0 SET NOEXEC ON

PRINT N'Dropping foreign keys from [HumanResources].[EmployeePayHistory]'

ALTER TABLE [HumanResources].[EmployeePayHistory] DROP CONSTRAINT [FK_EmployeePayHistory_Employee_BusinessEntityID]

IF @@ERROR <> 0 SET NOEXEC ON

PRINT N'Dropping foreign keys from [HumanResources].[JobCandidate]'

ALTER TABLE [HumanResources].[JobCandidate] DROP CONSTRAINT [FK_JobCandidate_Employee_BusinessEntityID]

IF @@ERROR <> 0 SET NOEXEC ON

PRINT N'Dropping foreign keys from [Purchasing].[PurchaseOrderHeader]'

ALTER TABLE [Purchasing].[PurchaseOrderHeader] DROP CONSTRAINT [FK_PurchaseOrderHeader_Employee_EmployeeID]

IF @@ERROR <> 0 SET NOEXEC ON

PRINT N'Dropping foreign keys from [Sales].[SalesPerson]'

ALTER TABLE [Sales].[SalesPerson] DROP CONSTRAINT [FK_SalesPerson_Employee_BusinessEntityID]

IF @@ERROR <> 0 SET NOEXEC ON

PRINT N'Dropping constraints from [HumanResources].[Employee]'

ALTER TABLE [HumanResources].[Employee] DROP CONSTRAINT [CK_Employee_BirthDate]

IF @@ERROR <> 0 SET NOEXEC ON

PRINT N'Dropping constraints from [HumanResources].[Employee]'

ALTER TABLE [HumanResources].[Employee] DROP CONSTRAINT [CK_Employee_MaritalStatus]

IF @@ERROR <> 0 SET NOEXEC ON

PRINT N'Dropping constraints from [HumanResources].[Employee]'

ALTER TABLE [HumanResources].[Employee] DROP CONSTRAINT [CK_Employee_Gender]

IF @@ERROR <> 0 SET NOEXEC ON

PRINT N'Dropping constraints from [HumanResources].[Employee]'

ALTER TABLE [HumanResources].[Employee] DROP CONSTRAINT [CK_Employee_HireDate]

IF @@ERROR <> 0 SET NOEXEC ON

PRINT N'Dropping constraints from [HumanResources].[Employee]'

ALTER TABLE [HumanResources].[Employee] DROP CONSTRAINT [CK_Employee_VacationHours]

IF @@ERROR <> 0 SET NOEXEC ON

PRINT N'Dropping constraints from [HumanResources].[Employee]'

ALTER TABLE [HumanResources].[Employee] DROP CONSTRAINT [CK_Employee_SickLeaveHours]

IF @@ERROR <> 0 SET NOEXEC ON

PRINT N'Dropping constraints from [HumanResources].[Employee]'

ALTER TABLE [HumanResources].[Employee] DROP CONSTRAINT [PK_Employee_BusinessEntityID]

IF @@ERROR <> 0 SET NOEXEC ON

PRINT N'Dropping constraints from [HumanResources].[Employee]'

ALTER TABLE [HumanResources].[Employee] DROP CONSTRAINT [DF_Employee_SalariedFlag]

IF @@ERROR <> 0 SET NOEXEC ON

PRINT N'Dropping constraints from [HumanResources].[Employee]'

ALTER TABLE [HumanResources].[Employee] DROP CONSTRAINT [DF_Employee_VacationHours]

IF @@ERROR <> 0 SET NOEXEC ON

PRINT N'Dropping constraints from [HumanResources].[Employee]'

ALTER TABLE [HumanResources].[Employee] DROP CONSTRAINT [DF_Employee_SickLeaveHours]

IF @@ERROR <> 0 SET NOEXEC ON

PRINT N'Dropping constraints from [HumanResources].[Employee]'

ALTER TABLE [HumanResources].[Employee] DROP CONSTRAINT [DF_Employee_CurrentFlag]

IF @@ERROR <> 0 SET NOEXEC ON

PRINT N'Dropping constraints from [HumanResources].[Employee]'

ALTER TABLE [HumanResources].[Employee] DROP CONSTRAINT [DF_Employee_rowguid]

IF @@ERROR <> 0 SET NOEXEC ON

PRINT N'Dropping constraints from [HumanResources].[Employee]'

ALTER TABLE [HumanResources].[Employee] DROP CONSTRAINT [DF_Employee_ModifiedDate]

IF @@ERROR <> 0 SET NOEXEC ON

PRINT N'Dropping index [AK_Employee_NationalIDNumber] from [HumanResources].[Employee]'

DROP INDEX [AK_Employee_NationalIDNumber] ON [HumanResources].[Employee]

IF @@ERROR <> 0 SET NOEXEC ON

PRINT N'Dropping index [AK_Employee_LoginID] from [HumanResources].[Employee]'

DROP INDEX [AK_Employee_LoginID] ON [HumanResources].[Employee]

IF @@ERROR <> 0 SET NOEXEC ON

PRINT N'Dropping index [IX_Employee_OrganizationLevel_OrganizationNode] from [HumanResources].[Employee]'

DROP INDEX [IX_Employee_OrganizationLevel_OrganizationNode] ON [HumanResources].[Employee]

IF @@ERROR <> 0 SET NOEXEC ON

PRINT N'Dropping index [IX_Employee_OrganizationNode] from [HumanResources].[Employee]'

DROP INDEX [IX_Employee_OrganizationNode] ON [HumanResources].[Employee]

IF @@ERROR <> 0 SET NOEXEC ON

PRINT N'Dropping index [AK_Employee_rowguid] from [HumanResources].[Employee]'

DROP INDEX [AK_Employee_rowguid] ON [HumanResources].[Employee]

IF @@ERROR <> 0 SET NOEXEC ON

PRINT N'Dropping trigger [HumanResources].[dEmployee] from [HumanResources].[Employee]'

DROP TRIGGER [HumanResources].[dEmployee] 

IF @@ERROR <> 0 SET NOEXEC ON

PRINT N'Rebuilding [HumanResources].[Employee]'

CREATE TABLE [HumanResources].[RG_Recovery_1_Employee] 
( 
[BusinessEntityID] [int] NOT NULL, 
[NationalIDNumber] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL, 
[LoginID] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL, 
[OrganizationNode] [sys].[hierarchyid] NULL, 
[OrganizationLevel] AS ([OrganizationNode].[GetLevel]()), 
[JobTitle] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL, 
[IsEmployee] [bit] NOT NULL CONSTRAINT [DF_Employee_IsEmployee] DEFAULT ((0)), 
[BirthDate] [date] NOT NULL, 
[MaritalStatus] [nchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL, 
[Gender] [nchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL, 
[HireDate] [date] NOT NULL, 
[SalariedFlag] [dbo].[Flag] NOT NULL CONSTRAINT [DF_Employee_SalariedFlag] DEFAULT ((1)), 
[VacationHours] [smallint] NOT NULL CONSTRAINT [DF_Employee_VacationHours] DEFAULT ((0)), 
[SickLeaveHours] [smallint] NOT NULL CONSTRAINT [DF_Employee_SickLeaveHours] DEFAULT ((0)), 
[CurrentFlag] [dbo].[Flag] NOT NULL CONSTRAINT [DF_Employee_CurrentFlag] DEFAULT ((1)), 
[rowguid] [uniqueidentifier] NOT NULL ROWGUIDCOL CONSTRAINT [DF_Employee_rowguid] DEFAULT (newid()), 
[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF_Employee_ModifiedDate] DEFAULT (getdate()) 
)

IF @@ERROR <> 0 SET NOEXEC ON

INSERT INTO [HumanResources].[RG_Recovery_1_Employee]([BusinessEntityID], [NationalIDNumber], [LoginID], [OrganizationNode], [JobTitle], [BirthDate], [MaritalStatus], [Gender], [HireDate], [SalariedFlag], [VacationHours], [SickLeaveHours], [CurrentFlag], [rowguid], [ModifiedDate]) SELECT [BusinessEntityID], [NationalIDNumber], [LoginID], [OrganizationNode], [JobTitle], [BirthDate], [MaritalStatus], [Gender], [HireDate], [SalariedFlag], [VacationHours], [SickLeaveHours], [CurrentFlag], [rowguid], [ModifiedDate] FROM [HumanResources].[Employee]

IF @@ERROR <> 0 SET NOEXEC ON

DROP TABLE [HumanResources].[Employee]

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_rename N'[HumanResources].[RG_Recovery_1_Employee]', N'Employee', N'OBJECT'

IF @@ERROR <> 0 SET NOEXEC ON

PRINT N'Creating primary key [PK_Employee_BusinessEntityID] on [HumanResources].[Employee]'

ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [PK_Employee_BusinessEntityID] PRIMARY KEY CLUSTERED  ([BusinessEntityID])

IF @@ERROR <> 0 SET NOEXEC ON

PRINT N'Creating index [AK_Employee_LoginID] on [HumanResources].[Employee]'

CREATE UNIQUE NONCLUSTERED INDEX [AK_Employee_LoginID] ON [HumanResources].[Employee] ([LoginID])

IF @@ERROR <> 0 SET NOEXEC ON

PRINT N'Creating index [AK_Employee_NationalIDNumber] on [HumanResources].[Employee]'

CREATE UNIQUE NONCLUSTERED INDEX [AK_Employee_NationalIDNumber] ON [HumanResources].[Employee] ([NationalIDNumber])

IF @@ERROR <> 0 SET NOEXEC ON

PRINT N'Creating index [IX_Employee_OrganizationLevel_OrganizationNode] on [HumanResources].[Employee]'

CREATE NONCLUSTERED INDEX [IX_Employee_OrganizationLevel_OrganizationNode] ON [HumanResources].[Employee] ([OrganizationLevel], [OrganizationNode])

IF @@ERROR <> 0 SET NOEXEC ON

PRINT N'Creating index [IX_Employee_OrganizationNode] on [HumanResources].[Employee]'

CREATE NONCLUSTERED INDEX [IX_Employee_OrganizationNode] ON [HumanResources].[Employee] ([OrganizationNode])

IF @@ERROR <> 0 SET NOEXEC ON

PRINT N'Creating index [AK_Employee_rowguid] on [HumanResources].[Employee]'

CREATE UNIQUE NONCLUSTERED INDEX [AK_Employee_rowguid] ON [HumanResources].[Employee] ([rowguid])

IF @@ERROR <> 0 SET NOEXEC ON

PRINT N'Adding constraints to [HumanResources].[Employee]'

ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [CK_Employee_BirthDate] CHECK (([BirthDate]>='1930-01-01' AND [BirthDate]<=dateadd(year,(-18),getdate())))

IF @@ERROR <> 0 SET NOEXEC ON

ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [CK_Employee_MaritalStatus] CHECK ((upper([MaritalStatus])='S' OR upper([MaritalStatus])='M'))

IF @@ERROR <> 0 SET NOEXEC ON

ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [CK_Employee_Gender] CHECK ((upper([Gender])='F' OR upper([Gender])='M'))

IF @@ERROR <> 0 SET NOEXEC ON

ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [CK_Employee_HireDate] CHECK (([HireDate]>='1996-07-01' AND [HireDate]<=dateadd(day,(1),getdate())))

IF @@ERROR <> 0 SET NOEXEC ON

ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [CK_Employee_VacationHours] CHECK (([VacationHours]>=((-40)) AND [VacationHours]<=(240)))

IF @@ERROR <> 0 SET NOEXEC ON

ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [CK_Employee_SickLeaveHours] CHECK (([SickLeaveHours]>=(0) AND [SickLeaveHours]<=(120)))

IF @@ERROR <> 0 SET NOEXEC ON

PRINT N'Adding foreign keys to [HumanResources].[Employee]'

ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [FK_Employee_Person_BusinessEntityID] FOREIGN KEY ([BusinessEntityID]) REFERENCES [Person].[Person] ([BusinessEntityID]) 

IF @@ERROR <> 0 SET NOEXEC ON

PRINT N'Adding foreign keys to [Production].[Document]'

ALTER TABLE [Production].[Document] ADD CONSTRAINT [FK_Document_Employee_Owner] FOREIGN KEY ([Owner]) REFERENCES [HumanResources].[Employee] ([BusinessEntityID]) 

IF @@ERROR <> 0 SET NOEXEC ON

PRINT N'Adding foreign keys to [HumanResources].[EmployeeDepartmentHistory]'

ALTER TABLE [HumanResources].[EmployeeDepartmentHistory] ADD CONSTRAINT [FK_EmployeeDepartmentHistory_Employee_BusinessEntityID] FOREIGN KEY ([BusinessEntityID]) REFERENCES [HumanResources].[Employee] ([BusinessEntityID]) 

IF @@ERROR <> 0 SET NOEXEC ON

PRINT N'Adding foreign keys to [HumanResources].[EmployeePayHistory]'

ALTER TABLE [HumanResources].[EmployeePayHistory] ADD CONSTRAINT [FK_EmployeePayHistory_Employee_BusinessEntityID] FOREIGN KEY ([BusinessEntityID]) REFERENCES [HumanResources].[Employee] ([BusinessEntityID]) 

IF @@ERROR <> 0 SET NOEXEC ON

PRINT N'Adding foreign keys to [HumanResources].[JobCandidate]'

ALTER TABLE [HumanResources].[JobCandidate] ADD CONSTRAINT [FK_JobCandidate_Employee_BusinessEntityID] FOREIGN KEY ([BusinessEntityID]) REFERENCES [HumanResources].[Employee] ([BusinessEntityID]) 

IF @@ERROR <> 0 SET NOEXEC ON

PRINT N'Adding foreign keys to [Purchasing].[PurchaseOrderHeader]'

ALTER TABLE [Purchasing].[PurchaseOrderHeader] ADD CONSTRAINT [FK_PurchaseOrderHeader_Employee_EmployeeID] FOREIGN KEY ([EmployeeID]) REFERENCES [HumanResources].[Employee] ([BusinessEntityID]) 

IF @@ERROR <> 0 SET NOEXEC ON

PRINT N'Adding foreign keys to [Sales].[SalesPerson]'

ALTER TABLE [Sales].[SalesPerson] ADD CONSTRAINT [FK_SalesPerson_Employee_BusinessEntityID] FOREIGN KEY ([BusinessEntityID]) REFERENCES [HumanResources].[Employee] ([BusinessEntityID]) 

IF @@ERROR <> 0 SET NOEXEC ON

PRINT N'Creating extended properties'

EXEC sp_addextendedproperty N'MS_Description', N'Employee information such as salary, department, and title.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', NULL, NULL

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_addextendedproperty N'MS_Description', N'Date of birth.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'BirthDate'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_addextendedproperty N'MS_Description', N'Primary key for Employee records.  Foreign key to BusinessEntity.BusinessEntityID.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'BusinessEntityID'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_addextendedproperty N'MS_Description', N'0 = Inactive, 1 = Active', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'CurrentFlag'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_addextendedproperty N'MS_Description', N'M = Male, F = Female', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'Gender'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_addextendedproperty N'MS_Description', N'Employee hired on this date.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'HireDate'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_addextendedproperty N'MS_Description', N'Work title such as Buyer or Sales Representative.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'JobTitle'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_addextendedproperty N'MS_Description', N'Network login.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'LoginID'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_addextendedproperty N'MS_Description', N'M = Married, S = Single', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'MaritalStatus'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'ModifiedDate'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_addextendedproperty N'MS_Description', N'Unique national identification number such as a social security number.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'NationalIDNumber'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_addextendedproperty N'MS_Description', N'The depth of the employee in the corporate hierarchy.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'OrganizationLevel'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_addextendedproperty N'MS_Description', N'Where the employee is located in corporate hierarchy.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'OrganizationNode'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_addextendedproperty N'MS_Description', N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'rowguid'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_addextendedproperty N'MS_Description', N'Job classification. 0 = Hourly, not exempt from collective bargaining. 1 = Salaried, exempt from collective bargaining.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'SalariedFlag'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_addextendedproperty N'MS_Description', N'Number of available sick leave hours.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'SickLeaveHours'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_addextendedproperty N'MS_Description', N'Number of available vacation hours.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'VacationHours'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [BirthDate] >= ''1930-01-01'' AND [BirthDate] <= dateadd(year,(-18),GETDATE())', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'CK_Employee_BirthDate'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [Gender]=''f'' OR [Gender]=''m'' OR [Gender]=''F'' OR [Gender]=''M''', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'CK_Employee_Gender'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [HireDate] >= ''1996-07-01'' AND [HireDate] <= dateadd(day,(1),GETDATE())', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'CK_Employee_HireDate'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [MaritalStatus]=''s'' OR [MaritalStatus]=''m'' OR [MaritalStatus]=''S'' OR [MaritalStatus]=''M''', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'CK_Employee_MaritalStatus'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [SickLeaveHours] >= (0) AND [SickLeaveHours] <= (120)', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'CK_Employee_SickLeaveHours'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [VacationHours] >= (-40) AND [VacationHours] <= (240)', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'CK_Employee_VacationHours'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of 1', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'DF_Employee_CurrentFlag'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'DF_Employee_ModifiedDate'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of NEWID()', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'DF_Employee_rowguid'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of 1 (TRUE)', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'DF_Employee_SalariedFlag'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of 0', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'DF_Employee_SickLeaveHours'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of 0', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'DF_Employee_VacationHours'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing Person.BusinessEntityID.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'FK_Employee_Person_BusinessEntityID'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'PK_Employee_BusinessEntityID'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'INDEX', N'AK_Employee_LoginID'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'INDEX', N'AK_Employee_NationalIDNumber'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index. Used to support replication samples.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'INDEX', N'AK_Employee_rowguid'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'INDEX', N'IX_Employee_OrganizationLevel_OrganizationNode'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'INDEX', N'IX_Employee_OrganizationNode'

IF @@ERROR <> 0 SET NOEXEC ON

EXEC sp_addextendedproperty N'MS_Description', N'INSTEAD OF DELETE trigger which keeps Employees from being deleted.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'TRIGGER', N'dEmployee'

IF @@ERROR <> 0 SET NOEXEC ON

COMMIT TRANSACTION

IF @@ERROR <> 0 SET NOEXEC ON

DECLARE @Success11 AS BIT 
SET @Success11 = 1 
SET NOEXEC OFF 
IF (@Success11 = 1) PRINT 'The database update succeeded' 
ELSE BEGIN 
	IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION 
	PRINT 'The database update failed' 
END

