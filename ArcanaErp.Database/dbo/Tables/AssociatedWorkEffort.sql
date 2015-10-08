CREATE TABLE [dbo].[AssociatedWorkEffort] (
    [Id]                   INT           IDENTITY (1, 1) NOT NULL,
    [WorkEffortId]         INT           NULL,
    [AssociatedRecordId]   INT           NULL,
    [AssociatedRecordType] VARCHAR (255) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [AssociatedRecordIdTypeIndex]
    ON [dbo].[AssociatedWorkEffort]([AssociatedRecordId] ASC, [AssociatedRecordType] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexAssociatedWorkEffortOnWorkEffortId]
    ON [dbo].[AssociatedWorkEffort]([WorkEffortId] ASC);

