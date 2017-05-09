IF NOT EXISTS (SELECT 1 FROM [HumanResources].[EmployeeType] WHERE [EmployeeTypeID] = 1)
INSERT  INTO [HumanResources].[EmployeeType]
        ( [EmployeeTypeID] ,
          [Name] ,
          [ModifiedDate]
        )
VALUES  ( 1 ,
          'Employee' ,
          CAST(N'2008-04-30T00:00:00.000' AS DATETIME)
        );

IF NOT EXISTS (SELECT 1 FROM [HumanResources].[EmployeeType] WHERE [EmployeeTypeID] = 2)
INSERT  INTO [HumanResources].[EmployeeType]
        ( [EmployeeTypeID] ,
          [Name] ,
          [ModifiedDate]
        )
VALUES  ( 2 ,
          'Partner' ,
          CAST(N'2008-04-30T00:00:00.000' AS DATETIME)
        );

IF NOT EXISTS (SELECT 1 FROM [HumanResources].[EmployeeType] WHERE [EmployeeTypeID] = 3)
INSERT  INTO [HumanResources].[EmployeeType]
        ( [EmployeeTypeID] ,
          [Name] ,
          [ModifiedDate]
        )
VALUES  ( 3 ,
          'Contigent Employee' ,
          CAST(N'2008-04-30T00:00:00.000' AS DATETIME)
        );