SET NUMERIC_ROUNDABORT OFF;

SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON;

SET XACT_ABORT ON;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

BEGIN TRANSACTION;

IF @@ERROR <> 0
    SET NOEXEC ON;

PRINT N'Dropping foreign keys from [HumanResources].[Employee]';

ALTER TABLE [HumanResources].[Employee] DROP CONSTRAINT [FK_Employee_Person_BusinessEntityID];

IF @@ERROR <> 0
    SET NOEXEC ON;

PRINT N'Dropping foreign keys from [Production].[Document]';

ALTER TABLE [Production].[Document] DROP CONSTRAINT [FK_Document_Employee_Owner];

IF @@ERROR <> 0
    SET NOEXEC ON;

PRINT N'Dropping foreign keys from [HumanResources].[EmployeeDepartmentHistory]';

ALTER TABLE [HumanResources].[EmployeeDepartmentHistory] DROP CONSTRAINT [FK_EmployeeDepartmentHistory_Employee_BusinessEntityID];

IF @@ERROR <> 0
    SET NOEXEC ON;

PRINT N'Dropping foreign keys from [HumanResources].[EmployeePayHistory]';

ALTER TABLE [HumanResources].[EmployeePayHistory] DROP CONSTRAINT [FK_EmployeePayHistory_Employee_BusinessEntityID];

IF @@ERROR <> 0
    SET NOEXEC ON;

PRINT N'Dropping foreign keys from [HumanResources].[JobCandidate]';

ALTER TABLE [HumanResources].[JobCandidate] DROP CONSTRAINT [FK_JobCandidate_Employee_BusinessEntityID];

IF @@ERROR <> 0
    SET NOEXEC ON;

PRINT N'Dropping foreign keys from [Purchasing].[PurchaseOrderHeader]';

ALTER TABLE [Purchasing].[PurchaseOrderHeader] DROP CONSTRAINT [FK_PurchaseOrderHeader_Employee_EmployeeID];

IF @@ERROR <> 0
    SET NOEXEC ON;

PRINT N'Dropping foreign keys from [Sales].[SalesPerson]';

ALTER TABLE [Sales].[SalesPerson] DROP CONSTRAINT [FK_SalesPerson_Employee_BusinessEntityID];

IF @@ERROR <> 0
    SET NOEXEC ON;

PRINT N'Dropping constraints from [HumanResources].[Employee]';

ALTER TABLE [HumanResources].[Employee] DROP CONSTRAINT [CK_Employee_BirthDate];

IF @@ERROR <> 0
    SET NOEXEC ON;

PRINT N'Dropping constraints from [HumanResources].[Employee]';

ALTER TABLE [HumanResources].[Employee] DROP CONSTRAINT [CK_Employee_MaritalStatus];

IF @@ERROR <> 0
    SET NOEXEC ON;

PRINT N'Dropping constraints from [HumanResources].[Employee]';

ALTER TABLE [HumanResources].[Employee] DROP CONSTRAINT [CK_Employee_Gender];

IF @@ERROR <> 0
    SET NOEXEC ON;

PRINT N'Dropping constraints from [HumanResources].[Employee]';

ALTER TABLE [HumanResources].[Employee] DROP CONSTRAINT [CK_Employee_HireDate];

IF @@ERROR <> 0
    SET NOEXEC ON;

PRINT N'Dropping constraints from [HumanResources].[Employee]';

ALTER TABLE [HumanResources].[Employee] DROP CONSTRAINT [CK_Employee_VacationHours];

IF @@ERROR <> 0
    SET NOEXEC ON;

PRINT N'Dropping constraints from [HumanResources].[Employee]';

ALTER TABLE [HumanResources].[Employee] DROP CONSTRAINT [CK_Employee_SickLeaveHours];

IF @@ERROR <> 0
    SET NOEXEC ON;

PRINT N'Dropping constraints from [HumanResources].[Employee]';

ALTER TABLE [HumanResources].[Employee] DROP CONSTRAINT [PK_Employee_BusinessEntityID];

IF @@ERROR <> 0
    SET NOEXEC ON;

PRINT N'Dropping constraints from [HumanResources].[Employee]';

ALTER TABLE [HumanResources].[Employee] DROP CONSTRAINT [DF_Employee_IsEmployee];

IF @@ERROR <> 0
    SET NOEXEC ON;

PRINT N'Dropping constraints from [HumanResources].[Employee]';

ALTER TABLE [HumanResources].[Employee] DROP CONSTRAINT [DF_Employee_SalariedFlag];

IF @@ERROR <> 0
    SET NOEXEC ON;

PRINT N'Dropping constraints from [HumanResources].[Employee]';

ALTER TABLE [HumanResources].[Employee] DROP CONSTRAINT [DF_Employee_VacationHours];

IF @@ERROR <> 0
    SET NOEXEC ON;

PRINT N'Dropping constraints from [HumanResources].[Employee]';

ALTER TABLE [HumanResources].[Employee] DROP CONSTRAINT [DF_Employee_SickLeaveHours];

IF @@ERROR <> 0
    SET NOEXEC ON;

PRINT N'Dropping constraints from [HumanResources].[Employee]';

ALTER TABLE [HumanResources].[Employee] DROP CONSTRAINT [DF_Employee_CurrentFlag];

IF @@ERROR <> 0
    SET NOEXEC ON;

PRINT N'Dropping constraints from [HumanResources].[Employee]';

ALTER TABLE [HumanResources].[Employee] DROP CONSTRAINT [DF_Employee_rowguid];

IF @@ERROR <> 0
    SET NOEXEC ON;

PRINT N'Dropping constraints from [HumanResources].[Employee]';

ALTER TABLE [HumanResources].[Employee] DROP CONSTRAINT [DF_Employee_ModifiedDate];

IF @@ERROR <> 0
    SET NOEXEC ON;

PRINT N'Dropping index [AK_Employee_NationalIDNumber] from [HumanResources].[Employee]';

DROP INDEX [AK_Employee_NationalIDNumber] ON [HumanResources].[Employee];

IF @@ERROR <> 0
    SET NOEXEC ON;

PRINT N'Dropping index [AK_Employee_LoginID] from [HumanResources].[Employee]';

DROP INDEX [AK_Employee_LoginID] ON [HumanResources].[Employee];

IF @@ERROR <> 0
    SET NOEXEC ON;

PRINT N'Dropping index [IX_Employee_OrganizationLevel_OrganizationNode] from [HumanResources].[Employee]';

DROP INDEX [IX_Employee_OrganizationLevel_OrganizationNode] ON [HumanResources].[Employee];

IF @@ERROR <> 0
    SET NOEXEC ON;

PRINT N'Dropping index [IX_Employee_OrganizationNode] from [HumanResources].[Employee]';

DROP INDEX [IX_Employee_OrganizationNode] ON [HumanResources].[Employee];

IF @@ERROR <> 0
    SET NOEXEC ON;

PRINT N'Dropping index [AK_Employee_rowguid] from [HumanResources].[Employee]';

DROP INDEX [AK_Employee_rowguid] ON [HumanResources].[Employee];

IF @@ERROR <> 0
    SET NOEXEC ON;

PRINT N'Dropping trigger [HumanResources].[dEmployee] from [HumanResources].[Employee]';

IF OBJECTPROPERTY(OBJECT_ID('[HumanResources].[dEmployee]'), 'IsTrigger') = 1
    BEGIN
        DROP TRIGGER [HumanResources].[dEmployee];
    END;

IF @@ERROR <> 0
    SET NOEXEC ON;

PRINT N'Rebuilding [HumanResources].[Employee]';

CREATE TABLE [HumanResources].[RG_Recovery_1_Employee]
    (
      [BusinessEntityID] [INT] NOT NULL ,
      [NationalIDNumber] [NVARCHAR](15) COLLATE SQL_Latin1_General_CP1_CI_AS
                                        NOT NULL ,
      [LoginID] [NVARCHAR](256) COLLATE SQL_Latin1_General_CP1_CI_AS
                                NOT NULL ,
      [OrganizationNode] [sys].[HIERARCHYID] NULL ,
      [OrganizationLevel] AS ( [OrganizationNode].[GetLevel]() ) ,
      [JobTitle] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS
                                NOT NULL ,
      [EmployeeTypeID] [INT] NOT NULL ,
      [BirthDate] [DATE] NOT NULL ,
      [MaritalStatus] [NCHAR](1) COLLATE SQL_Latin1_General_CP1_CI_AS
                                 NOT NULL ,
      [Gender] [NCHAR](1) COLLATE SQL_Latin1_General_CP1_CI_AS
                          NOT NULL ,
      [HireDate] [DATE] NOT NULL ,
      [SalariedFlag] [dbo].[Flag]
        NOT NULL
        CONSTRAINT [DF_Employee_SalariedFlag] DEFAULT ( (1) ) ,
      [VacationHours] [SMALLINT]
        NOT NULL
        CONSTRAINT [DF_Employee_VacationHours] DEFAULT ( (0) ) ,
      [SickLeaveHours] [SMALLINT]
        NOT NULL
        CONSTRAINT [DF_Employee_SickLeaveHours] DEFAULT ( (0) ) ,
      [CurrentFlag] [dbo].[Flag]
        NOT NULL
        CONSTRAINT [DF_Employee_CurrentFlag] DEFAULT ( (1) ) ,
      [rowguid] [UNIQUEIDENTIFIER]
        NOT NULL
        ROWGUIDCOL
        CONSTRAINT [DF_Employee_rowguid] DEFAULT ( NEWID() ) ,
      [ModifiedDate] [DATETIME]
        NOT NULL
        CONSTRAINT [DF_Employee_ModifiedDate] DEFAULT ( GETDATE() )
    )
ON  [PRIMARY];

IF @@ERROR <> 0
    SET NOEXEC ON;

EXEC sp_executesql N'INSERT  INTO [HumanResources].[RG_Recovery_1_Employee]
        ( [BusinessEntityID] ,
          [NationalIDNumber] ,
          [LoginID] ,
          [OrganizationNode] ,
          [JobTitle] ,
          [EmployeeTypeID] ,
          [BirthDate] ,
          [MaritalStatus] ,
          [Gender] ,
          [HireDate] ,
          [SalariedFlag] ,
          [VacationHours] ,
          [SickLeaveHours] ,
          [CurrentFlag] ,
          [rowguid] ,
          [ModifiedDate]
        )
        SELECT  [BusinessEntityID] ,
                [NationalIDNumber] ,
                [LoginID] ,
                [OrganizationNode] ,
                [JobTitle] ,
                CASE WHEN [IsEmployee] = 1 THEN 1
                     ELSE 2
                END ,
                [BirthDate] ,
                [MaritalStatus] ,
                [Gender] ,
                [HireDate] ,
                [SalariedFlag] ,
                [VacationHours] ,
                [SickLeaveHours] ,
                [CurrentFlag] ,
                [rowguid] ,
                [ModifiedDate]
        FROM    [HumanResources].[Employee];';

IF @@ERROR <> 0
    SET NOEXEC ON;

DROP TABLE [HumanResources].[Employee];

IF @@ERROR <> 0
    SET NOEXEC ON;

EXEC sp_rename N'[HumanResources].[RG_Recovery_1_Employee]', N'Employee',
    N'OBJECT';

IF @@ERROR <> 0
    SET NOEXEC ON;

PRINT N'Creating primary key [PK_Employee_BusinessEntityID] on [HumanResources].[Employee]';

ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [PK_Employee_BusinessEntityID] PRIMARY KEY CLUSTERED  ([BusinessEntityID]) ON [PRIMARY];

IF @@ERROR <> 0
    SET NOEXEC ON;

PRINT N'Creating index [AK_Employee_LoginID] on [HumanResources].[Employee]';

CREATE UNIQUE NONCLUSTERED INDEX [AK_Employee_LoginID] ON [HumanResources].[Employee] ([LoginID]) ON [PRIMARY];

IF @@ERROR <> 0
    SET NOEXEC ON;

PRINT N'Creating index [AK_Employee_NationalIDNumber] on [HumanResources].[Employee]';

CREATE UNIQUE NONCLUSTERED INDEX [AK_Employee_NationalIDNumber] ON [HumanResources].[Employee] ([NationalIDNumber]) ON [PRIMARY];

IF @@ERROR <> 0
    SET NOEXEC ON;

PRINT N'Creating index [IX_Employee_OrganizationLevel_OrganizationNode] on [HumanResources].[Employee]';

CREATE NONCLUSTERED INDEX [IX_Employee_OrganizationLevel_OrganizationNode] ON [HumanResources].[Employee] ([OrganizationLevel], [OrganizationNode]) ON [PRIMARY];

IF @@ERROR <> 0
    SET NOEXEC ON;

PRINT N'Creating index [IX_Employee_OrganizationNode] on [HumanResources].[Employee]';

CREATE NONCLUSTERED INDEX [IX_Employee_OrganizationNode] ON [HumanResources].[Employee] ([OrganizationNode]) ON [PRIMARY];

IF @@ERROR <> 0
    SET NOEXEC ON;

PRINT N'Creating index [AK_Employee_rowguid] on [HumanResources].[Employee]';

CREATE UNIQUE NONCLUSTERED INDEX [AK_Employee_rowguid] ON [HumanResources].[Employee] ([rowguid]) ON [PRIMARY];

IF @@ERROR <> 0
    SET NOEXEC ON;

PRINT N'Adding constraints to [HumanResources].[Employee]';

ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [CK_Employee_BirthDate] CHECK (([BirthDate]>='1930-01-01' AND [BirthDate]<=DATEADD(YEAR,(-18),GETDATE())));

IF @@ERROR <> 0
    SET NOEXEC ON;

ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [CK_Employee_MaritalStatus] CHECK ((UPPER([MaritalStatus])='S' OR UPPER([MaritalStatus])='M'));

IF @@ERROR <> 0
    SET NOEXEC ON;

ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [CK_Employee_Gender] CHECK ((UPPER([Gender])='F' OR UPPER([Gender])='M'));

IF @@ERROR <> 0
    SET NOEXEC ON;

ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [CK_Employee_HireDate] CHECK (([HireDate]>='1996-07-01' AND [HireDate]<=DATEADD(DAY,(1),GETDATE())));

IF @@ERROR <> 0
    SET NOEXEC ON;

ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [CK_Employee_VacationHours] CHECK (([VacationHours]>=((-40)) AND [VacationHours]<=(240)));

IF @@ERROR <> 0
    SET NOEXEC ON;

ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [CK_Employee_SickLeaveHours] CHECK (([SickLeaveHours]>=(0) AND [SickLeaveHours]<=(120)));

IF @@ERROR <> 0
    SET NOEXEC ON;

PRINT N'Adding foreign keys to [HumanResources].[Employee]';

ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [FK_Employee_Person_BusinessEntityID] FOREIGN KEY ([BusinessEntityID]) REFERENCES [Person].[Person] ([BusinessEntityID]);

IF @@ERROR <> 0
    SET NOEXEC ON;

PRINT N'Adding foreign keys to [Production].[Document]';

ALTER TABLE [Production].[Document] ADD CONSTRAINT [FK_Document_Employee_Owner] FOREIGN KEY ([Owner]) REFERENCES [HumanResources].[Employee] ([BusinessEntityID]);

IF @@ERROR <> 0
    SET NOEXEC ON;

PRINT N'Adding foreign keys to [HumanResources].[EmployeeDepartmentHistory]';

ALTER TABLE [HumanResources].[EmployeeDepartmentHistory] ADD CONSTRAINT [FK_EmployeeDepartmentHistory_Employee_BusinessEntityID] FOREIGN KEY ([BusinessEntityID]) REFERENCES [HumanResources].[Employee] ([BusinessEntityID]);

IF @@ERROR <> 0
    SET NOEXEC ON;

PRINT N'Adding foreign keys to [HumanResources].[EmployeePayHistory]';

ALTER TABLE [HumanResources].[EmployeePayHistory] ADD CONSTRAINT [FK_EmployeePayHistory_Employee_BusinessEntityID] FOREIGN KEY ([BusinessEntityID]) REFERENCES [HumanResources].[Employee] ([BusinessEntityID]);

IF @@ERROR <> 0
    SET NOEXEC ON;

PRINT N'Adding foreign keys to [HumanResources].[JobCandidate]';

ALTER TABLE [HumanResources].[JobCandidate] ADD CONSTRAINT [FK_JobCandidate_Employee_BusinessEntityID] FOREIGN KEY ([BusinessEntityID]) REFERENCES [HumanResources].[Employee] ([BusinessEntityID]);

IF @@ERROR <> 0
    SET NOEXEC ON;

PRINT N'Adding foreign keys to [Purchasing].[PurchaseOrderHeader]';

ALTER TABLE [Purchasing].[PurchaseOrderHeader] ADD CONSTRAINT [FK_PurchaseOrderHeader_Employee_EmployeeID] FOREIGN KEY ([EmployeeID]) REFERENCES [HumanResources].[Employee] ([BusinessEntityID]);

IF @@ERROR <> 0
    SET NOEXEC ON;

PRINT N'Adding foreign keys to [Sales].[SalesPerson]';

ALTER TABLE [Sales].[SalesPerson] ADD CONSTRAINT [FK_SalesPerson_Employee_BusinessEntityID] FOREIGN KEY ([BusinessEntityID]) REFERENCES [HumanResources].[Employee] ([BusinessEntityID]);

IF @@ERROR <> 0
    SET NOEXEC ON;

COMMIT TRANSACTION;

IF @@ERROR <> 0
    SET NOEXEC ON;

DECLARE @Success12 AS BIT;
SET @Success12 = 1;
SET NOEXEC OFF;
IF ( @Success12 = 1 )
    PRINT 'The database update succeeded';
ELSE
    BEGIN
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;
        PRINT 'The database update failed';
    END;
