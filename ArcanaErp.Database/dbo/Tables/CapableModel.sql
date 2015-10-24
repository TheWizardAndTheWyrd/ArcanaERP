CREATE TABLE [dbo].[CapableModel] (
    [Id]                     INT           IDENTITY (1, 1) NOT NULL,
    [CapableModelRecordId]   INT           NULL,
    [CapableModelRecordType] VARCHAR (255) NULL,
    [CreatedAt]              DATETIME      NOT NULL,
    [UpdatedAt]              DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [CapableModelRecordIndex]
    ON [dbo].[CapableModel]([CapableModelRecordId] ASC, [CapableModelRecordType] ASC);

