CREATE TABLE [dbo].[Taggings] (
    [Id]           INT           IDENTITY (1, 1) NOT NULL,
    [TagId]        INT           NULL,
    [TaggableId]   INT           NULL,
    [TaggerId]     INT           NULL,
    [TaggerType]   VARCHAR (255) NULL,
    [TaggableType] VARCHAR (255) NULL,
    [Context]      VARCHAR (255) NULL,
    [CreatedAt]    DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexTaggingsOnTagId]
    ON [dbo].[Taggings]([TagId] ASC);


GO
CREATE NONCLUSTERED INDEX [TaggablepolyIndex]
    ON [dbo].[Taggings]([TaggableId] ASC, [TaggableType] ASC, [Context] ASC);

