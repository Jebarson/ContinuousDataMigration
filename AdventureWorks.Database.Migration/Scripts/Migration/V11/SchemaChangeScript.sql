---------------------------------------------------------------------------------------------------------------------------------
-- 1. Migrate the data from Employee table to add the new column so that we persist the column order.
---------------------------------------------------------------------------------------------------------------------------------
SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
SET XACT_ABORT ON
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO
BEGIN TRANSACTION
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping extended properties'
GO
EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', NULL, NULL
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'BirthDate'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'BusinessEntityID'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'CurrentFlag'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'Gender'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'HireDate'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'JobTitle'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'LoginID'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'MaritalStatus'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'ModifiedDate'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'NationalIDNumber'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'OrganizationLevel'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'OrganizationNode'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'rowguid'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'SalariedFlag'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'SickLeaveHours'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'VacationHours'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'CK_Employee_BirthDate'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'CK_Employee_Gender'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'CK_Employee_HireDate'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'CK_Employee_MaritalStatus'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'CK_Employee_SickLeaveHours'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'CK_Employee_VacationHours'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'DF_Employee_CurrentFlag'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'DF_Employee_ModifiedDate'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'DF_Employee_rowguid'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'DF_Employee_SalariedFlag'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'DF_Employee_SickLeaveHours'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'DF_Employee_VacationHours'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'FK_Employee_Person_BusinessEntityID'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'PK_Employee_BusinessEntityID'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'INDEX', N'AK_Employee_LoginID'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'INDEX', N'AK_Employee_NationalIDNumber'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'INDEX', N'AK_Employee_rowguid'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'INDEX', N'IX_Employee_OrganizationLevel_OrganizationNode'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'INDEX', N'IX_Employee_OrganizationNode'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'TRIGGER', N'dEmployee'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping foreign keys from [HumanResources].[Employee]'
GO
ALTER TABLE [HumanResources].[Employee] DROP CONSTRAINT [FK_Employee_Person_BusinessEntityID]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping foreign keys from [Production].[Document]'
GO
ALTER TABLE [Production].[Document] DROP CONSTRAINT [FK_Document_Employee_Owner]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping foreign keys from [HumanResources].[EmployeeDepartmentHistory]'
GO
ALTER TABLE [HumanResources].[EmployeeDepartmentHistory] DROP CONSTRAINT [FK_EmployeeDepartmentHistory_Employee_BusinessEntityID]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping foreign keys from [HumanResources].[EmployeePayHistory]'
GO
ALTER TABLE [HumanResources].[EmployeePayHistory] DROP CONSTRAINT [FK_EmployeePayHistory_Employee_BusinessEntityID]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping foreign keys from [HumanResources].[JobCandidate]'
GO
ALTER TABLE [HumanResources].[JobCandidate] DROP CONSTRAINT [FK_JobCandidate_Employee_BusinessEntityID]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping foreign keys from [Purchasing].[PurchaseOrderHeader]'
GO
ALTER TABLE [Purchasing].[PurchaseOrderHeader] DROP CONSTRAINT [FK_PurchaseOrderHeader_Employee_EmployeeID]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping foreign keys from [Sales].[SalesPerson]'
GO
ALTER TABLE [Sales].[SalesPerson] DROP CONSTRAINT [FK_SalesPerson_Employee_BusinessEntityID]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping constraints from [HumanResources].[Employee]'
GO
ALTER TABLE [HumanResources].[Employee] DROP CONSTRAINT [CK_Employee_BirthDate]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping constraints from [HumanResources].[Employee]'
GO
ALTER TABLE [HumanResources].[Employee] DROP CONSTRAINT [CK_Employee_MaritalStatus]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping constraints from [HumanResources].[Employee]'
GO
ALTER TABLE [HumanResources].[Employee] DROP CONSTRAINT [CK_Employee_Gender]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping constraints from [HumanResources].[Employee]'
GO
ALTER TABLE [HumanResources].[Employee] DROP CONSTRAINT [CK_Employee_HireDate]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping constraints from [HumanResources].[Employee]'
GO
ALTER TABLE [HumanResources].[Employee] DROP CONSTRAINT [CK_Employee_VacationHours]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping constraints from [HumanResources].[Employee]'
GO
ALTER TABLE [HumanResources].[Employee] DROP CONSTRAINT [CK_Employee_SickLeaveHours]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping constraints from [HumanResources].[Employee]'
GO
ALTER TABLE [HumanResources].[Employee] DROP CONSTRAINT [PK_Employee_BusinessEntityID]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping constraints from [HumanResources].[Employee]'
GO
ALTER TABLE [HumanResources].[Employee] DROP CONSTRAINT [DF_Employee_SalariedFlag]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping constraints from [HumanResources].[Employee]'
GO
ALTER TABLE [HumanResources].[Employee] DROP CONSTRAINT [DF_Employee_VacationHours]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping constraints from [HumanResources].[Employee]'
GO
ALTER TABLE [HumanResources].[Employee] DROP CONSTRAINT [DF_Employee_SickLeaveHours]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping constraints from [HumanResources].[Employee]'
GO
ALTER TABLE [HumanResources].[Employee] DROP CONSTRAINT [DF_Employee_CurrentFlag]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping constraints from [HumanResources].[Employee]'
GO
ALTER TABLE [HumanResources].[Employee] DROP CONSTRAINT [DF_Employee_rowguid]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping constraints from [HumanResources].[Employee]'
GO
ALTER TABLE [HumanResources].[Employee] DROP CONSTRAINT [DF_Employee_ModifiedDate]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping index [AK_Employee_NationalIDNumber] from [HumanResources].[Employee]'
GO
DROP INDEX [AK_Employee_NationalIDNumber] ON [HumanResources].[Employee]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping index [AK_Employee_LoginID] from [HumanResources].[Employee]'
GO
DROP INDEX [AK_Employee_LoginID] ON [HumanResources].[Employee]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping index [IX_Employee_OrganizationLevel_OrganizationNode] from [HumanResources].[Employee]'
GO
DROP INDEX [IX_Employee_OrganizationLevel_OrganizationNode] ON [HumanResources].[Employee]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping index [IX_Employee_OrganizationNode] from [HumanResources].[Employee]'
GO
DROP INDEX [IX_Employee_OrganizationNode] ON [HumanResources].[Employee]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping index [AK_Employee_rowguid] from [HumanResources].[Employee]'
GO
DROP INDEX [AK_Employee_rowguid] ON [HumanResources].[Employee]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping trigger [HumanResources].[dEmployee] from [HumanResources].[Employee]'
GO
DROP TRIGGER [HumanResources].[dEmployee] 
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Rebuilding [HumanResources].[Employee]'
GO
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
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
INSERT INTO [HumanResources].[RG_Recovery_1_Employee]([BusinessEntityID], [NationalIDNumber], [LoginID], [OrganizationNode], [JobTitle], [BirthDate], [MaritalStatus], [Gender], [HireDate], [SalariedFlag], [VacationHours], [SickLeaveHours], [CurrentFlag], [rowguid], [ModifiedDate]) SELECT [BusinessEntityID], [NationalIDNumber], [LoginID], [OrganizationNode], [JobTitle], [BirthDate], [MaritalStatus], [Gender], [HireDate], [SalariedFlag], [VacationHours], [SickLeaveHours], [CurrentFlag], [rowguid], [ModifiedDate] FROM [HumanResources].[Employee]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
DROP TABLE [HumanResources].[Employee]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_rename N'[HumanResources].[RG_Recovery_1_Employee]', N'Employee', N'OBJECT'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Creating primary key [PK_Employee_BusinessEntityID] on [HumanResources].[Employee]'
GO
ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [PK_Employee_BusinessEntityID] PRIMARY KEY CLUSTERED  ([BusinessEntityID])
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Creating index [AK_Employee_LoginID] on [HumanResources].[Employee]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_Employee_LoginID] ON [HumanResources].[Employee] ([LoginID])
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Creating index [AK_Employee_NationalIDNumber] on [HumanResources].[Employee]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_Employee_NationalIDNumber] ON [HumanResources].[Employee] ([NationalIDNumber])
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Creating index [IX_Employee_OrganizationLevel_OrganizationNode] on [HumanResources].[Employee]'
GO
CREATE NONCLUSTERED INDEX [IX_Employee_OrganizationLevel_OrganizationNode] ON [HumanResources].[Employee] ([OrganizationLevel], [OrganizationNode])
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Creating index [IX_Employee_OrganizationNode] on [HumanResources].[Employee]'
GO
CREATE NONCLUSTERED INDEX [IX_Employee_OrganizationNode] ON [HumanResources].[Employee] ([OrganizationNode])
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Creating index [AK_Employee_rowguid] on [HumanResources].[Employee]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_Employee_rowguid] ON [HumanResources].[Employee] ([rowguid])
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Creating trigger [HumanResources].[dEmployee] on [HumanResources].[Employee]'
GO
 
CREATE TRIGGER [HumanResources].[dEmployee] ON [HumanResources].[Employee]  
INSTEAD OF DELETE NOT FOR REPLICATION AS  
BEGIN 
    DECLARE @Count int; 
 
    SET @Count = @@ROWCOUNT; 
    IF @Count = 0  
        RETURN; 
 
    SET NOCOUNT ON; 
 
    BEGIN 
        RAISERROR 
            (N'Employees cannot be deleted. They can only be marked as not current.', -- Message 
            10, -- Severity. 
            1); -- State. 
 
        -- Rollback any active or uncommittable transactions 
        IF @@TRANCOUNT > 0 
        BEGIN 
            ROLLBACK TRANSACTION; 
        END 
    END; 
END;
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Adding constraints to [HumanResources].[Employee]'
GO
ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [CK_Employee_BirthDate] CHECK (([BirthDate]>='1930-01-01' AND [BirthDate]<=dateadd(year,(-18),getdate())))
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [CK_Employee_MaritalStatus] CHECK ((upper([MaritalStatus])='S' OR upper([MaritalStatus])='M'))
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [CK_Employee_Gender] CHECK ((upper([Gender])='F' OR upper([Gender])='M'))
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [CK_Employee_HireDate] CHECK (([HireDate]>='1996-07-01' AND [HireDate]<=dateadd(day,(1),getdate())))
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [CK_Employee_VacationHours] CHECK (([VacationHours]>=((-40)) AND [VacationHours]<=(240)))
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [CK_Employee_SickLeaveHours] CHECK (([SickLeaveHours]>=(0) AND [SickLeaveHours]<=(120)))
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Adding foreign keys to [HumanResources].[Employee]'
GO
ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [FK_Employee_Person_BusinessEntityID] FOREIGN KEY ([BusinessEntityID]) REFERENCES [Person].[Person] ([BusinessEntityID]) 
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Adding foreign keys to [Production].[Document]'
GO
ALTER TABLE [Production].[Document] ADD CONSTRAINT [FK_Document_Employee_Owner] FOREIGN KEY ([Owner]) REFERENCES [HumanResources].[Employee] ([BusinessEntityID]) 
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Adding foreign keys to [HumanResources].[EmployeeDepartmentHistory]'
GO
ALTER TABLE [HumanResources].[EmployeeDepartmentHistory] ADD CONSTRAINT [FK_EmployeeDepartmentHistory_Employee_BusinessEntityID] FOREIGN KEY ([BusinessEntityID]) REFERENCES [HumanResources].[Employee] ([BusinessEntityID]) 
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Adding foreign keys to [HumanResources].[EmployeePayHistory]'
GO
ALTER TABLE [HumanResources].[EmployeePayHistory] ADD CONSTRAINT [FK_EmployeePayHistory_Employee_BusinessEntityID] FOREIGN KEY ([BusinessEntityID]) REFERENCES [HumanResources].[Employee] ([BusinessEntityID]) 
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Adding foreign keys to [HumanResources].[JobCandidate]'
GO
ALTER TABLE [HumanResources].[JobCandidate] ADD CONSTRAINT [FK_JobCandidate_Employee_BusinessEntityID] FOREIGN KEY ([BusinessEntityID]) REFERENCES [HumanResources].[Employee] ([BusinessEntityID]) 
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Adding foreign keys to [Purchasing].[PurchaseOrderHeader]'
GO
ALTER TABLE [Purchasing].[PurchaseOrderHeader] ADD CONSTRAINT [FK_PurchaseOrderHeader_Employee_EmployeeID] FOREIGN KEY ([EmployeeID]) REFERENCES [HumanResources].[Employee] ([BusinessEntityID]) 
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Adding foreign keys to [Sales].[SalesPerson]'
GO
ALTER TABLE [Sales].[SalesPerson] ADD CONSTRAINT [FK_SalesPerson_Employee_BusinessEntityID] FOREIGN KEY ([BusinessEntityID]) REFERENCES [HumanResources].[Employee] ([BusinessEntityID]) 
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Creating extended properties'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Employee information such as salary, department, and title.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', NULL, NULL
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date of birth.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'BirthDate'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key for Employee records.  Foreign key to BusinessEntity.BusinessEntityID.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'BusinessEntityID'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_addextendedproperty N'MS_Description', N'0 = Inactive, 1 = Active', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'CurrentFlag'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_addextendedproperty N'MS_Description', N'M = Male, F = Female', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'Gender'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_addextendedproperty N'MS_Description', N'Employee hired on this date.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'HireDate'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_addextendedproperty N'MS_Description', N'Work title such as Buyer or Sales Representative.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'JobTitle'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_addextendedproperty N'MS_Description', N'Network login.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'LoginID'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_addextendedproperty N'MS_Description', N'M = Married, S = Single', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'MaritalStatus'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'ModifiedDate'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique national identification number such as a social security number.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'NationalIDNumber'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_addextendedproperty N'MS_Description', N'The depth of the employee in the corporate hierarchy.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'OrganizationLevel'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_addextendedproperty N'MS_Description', N'Where the employee is located in corporate hierarchy.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'OrganizationNode'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_addextendedproperty N'MS_Description', N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'rowguid'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_addextendedproperty N'MS_Description', N'Job classification. 0 = Hourly, not exempt from collective bargaining. 1 = Salaried, exempt from collective bargaining.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'SalariedFlag'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_addextendedproperty N'MS_Description', N'Number of available sick leave hours.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'SickLeaveHours'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_addextendedproperty N'MS_Description', N'Number of available vacation hours.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'VacationHours'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [BirthDate] >= ''1930-01-01'' AND [BirthDate] <= dateadd(year,(-18),GETDATE())', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'CK_Employee_BirthDate'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [Gender]=''f'' OR [Gender]=''m'' OR [Gender]=''F'' OR [Gender]=''M''', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'CK_Employee_Gender'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [HireDate] >= ''1996-07-01'' AND [HireDate] <= dateadd(day,(1),GETDATE())', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'CK_Employee_HireDate'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [MaritalStatus]=''s'' OR [MaritalStatus]=''m'' OR [MaritalStatus]=''S'' OR [MaritalStatus]=''M''', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'CK_Employee_MaritalStatus'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [SickLeaveHours] >= (0) AND [SickLeaveHours] <= (120)', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'CK_Employee_SickLeaveHours'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [VacationHours] >= (-40) AND [VacationHours] <= (240)', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'CK_Employee_VacationHours'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of 1', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'DF_Employee_CurrentFlag'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'DF_Employee_ModifiedDate'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of NEWID()', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'DF_Employee_rowguid'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of 1 (TRUE)', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'DF_Employee_SalariedFlag'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of 0', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'DF_Employee_SickLeaveHours'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of 0', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'DF_Employee_VacationHours'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing Person.BusinessEntityID.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'FK_Employee_Person_BusinessEntityID'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'PK_Employee_BusinessEntityID'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'INDEX', N'AK_Employee_LoginID'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'INDEX', N'AK_Employee_NationalIDNumber'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index. Used to support replication samples.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'INDEX', N'AK_Employee_rowguid'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'INDEX', N'IX_Employee_OrganizationLevel_OrganizationNode'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'INDEX', N'IX_Employee_OrganizationNode'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_addextendedproperty N'MS_Description', N'INSTEAD OF DELETE trigger which keeps Employees from being deleted.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'TRIGGER', N'dEmployee'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
COMMIT TRANSACTION
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
DECLARE @Success AS BIT 
SET @Success = 1 
SET NOEXEC OFF 
IF (@Success = 1) PRINT 'The database update succeeded' 
ELSE BEGIN 
	IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION 
	PRINT 'The database update failed' 
END
GO
