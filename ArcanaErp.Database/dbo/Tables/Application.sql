CREATE TABLE [dbo].[Application] (
    [Id]                 INT           IDENTITY (1, 1) NOT NULL,
    [Description]        VARCHAR (255) NULL,
    [Icon]               VARCHAR (255) NULL,
    [InternalIdentifier] VARCHAR (255) NULL,
    [Type]               VARCHAR (255) NULL,
    [CanDelete]          BIT           DEFAULT ('t') NULL,
    [CreatedAt]          DATETIME      NOT NULL,
    [UpdatedAt]          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [ApplicationInternalIdentifierIndex]
    ON [dbo].[Application]([InternalIdentifier] ASC);

