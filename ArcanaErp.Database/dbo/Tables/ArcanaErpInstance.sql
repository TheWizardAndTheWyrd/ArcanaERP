CREATE TABLE [dbo].[ArcanaErpInstance] (
    [Id]                 INT            IDENTITY (1, 1) NOT NULL,
    [Description]        VARCHAR (255)  NULL,
    [InternalIdentifier] VARCHAR (255)  NULL,
    [Version]            DECIMAL (8, 3) NULL,
    [Type]               VARCHAR (255)  NULL,
    [Schema]             VARCHAR (255)  DEFAULT ('public') NULL,
    [ParentId]           INT            NULL,
    [GuId]               VARCHAR (255)  NULL,
    [CreatedAt]          DATETIME       NOT NULL,
    [UpdatedAt]          DATETIME       NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IIdIndex]
    ON [dbo].[ArcanaErpInstance]([InternalIdentifier] ASC);


GO
CREATE NONCLUSTERED INDEX [SchemaIndex]
    ON [dbo].[ArcanaErpInstance]([Schema] ASC);


GO
CREATE NONCLUSTERED INDEX [TypeIndex]
    ON [dbo].[ArcanaErpInstance]([Type] ASC);


GO
CREATE NONCLUSTERED INDEX [ParentIdIndex]
    ON [dbo].[ArcanaErpInstance]([ParentId] ASC);


GO
CREATE NONCLUSTERED INDEX [GuIdIndex]
    ON [dbo].[ArcanaErpInstance]([GuId] ASC);

