CREATE TABLE [dbo].[schema_migrations] (
    [version] VARCHAR (255) NOT NULL
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [unique_schema_migrations]
    ON [dbo].[schema_migrations]([version] ASC);

