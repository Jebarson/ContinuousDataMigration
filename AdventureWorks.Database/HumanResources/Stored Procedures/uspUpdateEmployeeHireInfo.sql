
CREATE PROCEDURE [HumanResources].[uspUpdateEmployeeHireInfo]
    @BusinessEntityID [INT] ,
    @JobTitle [NVARCHAR](50) ,
    @HireDate [DATETIME] ,
    @RateChangeDate [DATETIME] ,
    @Rate [MONEY] ,
    @PayFrequency [TINYINT] ,
    @CurrentFlag [dbo].[Flag] ,
    @EmployeeTypeID INT
    WITH EXECUTE AS CALLER
AS
    BEGIN
        SET NOCOUNT ON;

        BEGIN TRY
            BEGIN TRANSACTION;

            UPDATE  [HumanResources].[Employee]
            SET     [JobTitle] = @JobTitle ,
                    [HireDate] = @HireDate ,
                    [CurrentFlag] = @CurrentFlag ,
                    [EmployeeTypeID] = @EmployeeTypeID
            WHERE   [BusinessEntityID] = @BusinessEntityID;

            INSERT  INTO [HumanResources].[EmployeePayHistory]
                    ( [BusinessEntityID] ,
                      [RateChangeDate] ,
                      [Rate] ,
                      [PayFrequency]
                    )
            VALUES  ( @BusinessEntityID ,
                      @RateChangeDate ,
                      @Rate ,
                      @PayFrequency
                    );

            COMMIT TRANSACTION;
        END TRY
        BEGIN CATCH
        -- Rollback any active or uncommittable transactions before
        -- inserting information in the ErrorLog
            IF @@TRANCOUNT > 0
                BEGIN
                    ROLLBACK TRANSACTION;
                END;

            EXECUTE [dbo].[uspLogError];
        END CATCH;
    END;

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description',
    @value = N'Updates the Employee table and inserts a new row in the EmployeePayHistory table with the values specified in the input parameters.',
    @level0type = N'SCHEMA', @level0name = N'HumanResources',
    @level1type = N'PROCEDURE', @level1name = N'uspUpdateEmployeeHireInfo';

