IF NOT EXISTS ( SELECT  1
                FROM    [internal].[DatabaseVersion]
                WHERE   [DatabaseVersionId] = 1 )
    INSERT  INTO [internal].[DatabaseVersion]
            ( [internal].[DatabaseVersion].[DatabaseVersionId] ,
              [internal].[DatabaseVersion].[Major] ,
              [internal].[DatabaseVersion].[Minor] ,
              [internal].[DatabaseVersion].[Build] ,
              [internal].[DatabaseVersion].[Revision] ,
              [internal].[DatabaseVersion].[CreatedBy] ,
              [internal].[DatabaseVersion].[ModifiedBy]
            )
    VALUES  ( 1 ,
              1 ,
              0 ,
              0 ,
              0 ,
              'System' ,
              'System'
            );