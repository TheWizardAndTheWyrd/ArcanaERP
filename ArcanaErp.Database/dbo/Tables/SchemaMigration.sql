CREATE TABLE [dbo].[SchemaMigration] (
    [Version] VARCHAR (255) NOT NULL
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UniqueSchemaMigration]
    ON [dbo].[SchemaMigration]([Version] ASC);

