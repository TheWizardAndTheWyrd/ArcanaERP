CREATE TABLE [dbo].[Sessions] (
    [Id]        INT           IDENTITY (1, 1) NOT NULL,
    [sessiOnId] VARCHAR (255) NOT NULL,
    [Data]      TEXT          NULL,
    [CreatedAt] DATETIME      NOT NULL,
    [UpdatedAt] DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexSessionsOnsessiOnId]
    ON [dbo].[Sessions]([sessiOnId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexSessionsOnUpdatedAt]
    ON [dbo].[Sessions]([UpdatedAt] ASC);

