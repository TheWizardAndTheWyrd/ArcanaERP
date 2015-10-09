CREATE TABLE [dbo].[TreeMenuNodeDefinition] (
    [Id]              INT           IDENTITY (1, 1) NOT NULL,
    [NodeType]        VARCHAR (255) NULL,
    [ParentId]        INT           NULL,
    [LeftValue]       INT           NULL,
    [RightValue]      INT           NULL,
    [MenuShortName]   VARCHAR (255) NULL,
    [MenuDescription] VARCHAR (255) NULL,
    [Text]            VARCHAR (255) NULL,
    [IconUrl]         VARCHAR (255) NULL,
    [TargetUrl]       VARCHAR (255) NULL,
    [ResourceClass]   VARCHAR (255) NULL,
    [CreatedAt]       DATETIME      NOT NULL,
    [UpdatedAt]       DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexTreeMenuNodeDefinitionOnParentId]
    ON [dbo].[TreeMenuNodeDefinition]([ParentId] ASC);

