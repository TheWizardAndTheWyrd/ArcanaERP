CREATE TABLE [dbo].[TreeMenuNodeDef] (
    [Id]              INT           IDENTITY (1, 1) NOT NULL,
    [NodeType]        VARCHAR (255) NULL,
    [ParentId]        INT           NULL,
    [LeftValue]       INT           NULL,
    [RightValue]      INT           NULL,
    [MenuShortName]   VARCHAR (255) NULL,
    [MenuDescription] VARCHAR (255) NULL,
    [text]            VARCHAR (255) NULL,
    [IconUrl]         VARCHAR (255) NULL,
    [targetUrl]       VARCHAR (255) NULL,
    [resourceclass]   VARCHAR (255) NULL,
    [CreatedAt]       DATETIME      NOT NULL,
    [UpdatedAt]       DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexTreeMenuNodeDefOnParentId]
    ON [dbo].[TreeMenuNodeDef]([ParentId] ASC);

