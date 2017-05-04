--------------------------------------------------------------------------------------------------------------------
-- <copyright file="UspCreateContextInfo.sql" company="Jebarson Jebamony">
--   Copyright © 2017 Jebarson Jebamony.
-- </copyright>
-- <summary>
--  Creates a new database version.
-- </summary>
--------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[UspCreateDatabaseVersion]
    (
      @id INT ,
      @major INT ,
      @minor INT ,
      @build INT ,
      @revision INT
    )
AS
    BEGIN
        BEGIN TRY
            BEGIN TRAN;
            INSERT  INTO [internal].[DatabaseVersion]
                    ( [internal].[DatabaseVersion].[DatabaseVersionId] ,
                      [internal].[DatabaseVersion].[Major] ,
                      [internal].[DatabaseVersion].[Minor] ,
                      [internal].[DatabaseVersion].[Build] ,
                      [internal].[DatabaseVersion].[Revision] ,
                      [internal].[DatabaseVersion].[CreatedBy] ,
                      [internal].[DatabaseVersion].[ModifiedBy]
                    )
            VALUES  ( @id ,
                      @major ,
                      @minor ,
                      @build ,
                      @revision ,
                      'System' ,
                      'System'
                    );
            COMMIT;
        END TRY
        BEGIN CATCH
            IF @@TRANCOUNT > 0
                ROLLBACK;

            DECLARE @errMsg NVARCHAR(4000) ,
                @errSeverity INT;
            SELECT  @errMsg = ERROR_MESSAGE() ,
                    @errSeverity = ERROR_SEVERITY();
            RAISERROR(@errMsg, @errSeverity, 1);
        END CATCH;
    END;	