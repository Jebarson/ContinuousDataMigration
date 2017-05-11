/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
DECLARE @currentDBVersion BIGINT = NULL;

-- Get the current version of the database.
SELECT TOP 1 @currentDBVersion = [DatabaseVersionId] FROM [internal].[DatabaseVersion] ORDER BY [DatabaseVersionId] DESC

-- Jump to the incremental migration scripts based on the current version.
IF @currentDBVersion = 1 GOTO Version11
ELSE IF @currentDBVersion = 2 GOTO Version12
ELSE
RETURN

-- Script to migrate to v1.1
Version11:
:r .\Scripts\Migration\V11\SchemaChangeScript.sql
:r .\Scripts\Migration\V11\DataChangeScript.sql

EXEC [internal].[UspCreateDatabaseVersion] @id = 2, @major = 1, @minor = 1, @build = 0128, @revision = 212

-- Script to migrate to v1.2
Version12:
:r .\Scripts\Migration\V12\SchemaChangeScript.sql

EXEC [internal].[UspCreateDatabaseVersion] @id = 3, @major = 1, @minor = 2, @build = 0414, @revision = 096
