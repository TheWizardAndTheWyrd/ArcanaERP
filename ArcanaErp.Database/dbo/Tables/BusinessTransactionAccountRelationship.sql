CREATE TABLE [dbo].[BusinessTransactionAccountRelationship] (
    [Id]                                        INT           IDENTITY (1, 1) NOT NULL,
    [BusinessTransactionAccountRelationshipTypeId] INT           NULL,
    [Description]                               VARCHAR (255) NULL,
    [BusinessTransactionAccountRootIdFrom]         INT           NULL,
    [BusinessTransactionAccountRootIdTo]           INT           NULL,
    [StatusTypeId]                              INT           NULL,
    [FromDate]                                  DATE          NULL,
    [ThroughDate]                               DATE          NULL,
    [CreatedAt]                                 DATETIME      NOT NULL,
    [UpdatedAt]                                 DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexBusinessTransactionAccountRelationshipOnBusinessTransactionAccountRelationshipTypeId]
    ON [dbo].[BusinessTransactionAccountRelationship]([BusinessTransactionAccountRelationshipTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexBusinessTransactionAccountRelationshipOnStatusTypeId]
    ON [dbo].[BusinessTransactionAccountRelationship]([StatusTypeId] ASC);

