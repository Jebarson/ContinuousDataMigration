CREATE TABLE [internal].[DatabaseVersion]
(
    [DatabaseVersionId] INT NOT NULL,
    [Major] INT            NOT NULL,
    [Minor] INT            NOT NULL,
    [Build] INT            NOT NULL,
    [Revision] INT            NOT NULL,
    [CreatedBy] NVARCHAR (256) 
CONSTRAINT [DFDatabaseVersionCreatedBy] DEFAULT ('') NOT NULL,
    [CreatedOn] DATETIME 
CONSTRAINT [DFDatabaseVersionCreatedOn] DEFAULT (GETUTCDATE()) NOT NULL,
    [ModifiedBy] NVARCHAR (256) 
CONSTRAINT [DFDatabaseVersionModifiedBy] DEFAULT ('') NOT NULL,
    [ModifiedOn] DATETIME 
CONSTRAINT [DFDatabaseVersionModifiedOn] DEFAULT (GETUTCDATE()) NOT NULL,
	 CONSTRAINT [PKDatabaseVersion] PRIMARY KEY CLUSTERED ([DatabaseVersionId] ASC)
)