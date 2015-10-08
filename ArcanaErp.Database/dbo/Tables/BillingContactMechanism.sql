CREATE TABLE [dbo].[BillingContactMechanism] (
    [Id]                   INT           IDENTITY (1, 1) NOT NULL,
    [Description]          VARCHAR (255) NULL,
    [ContactMechanismId]   INT           NULL,
    [ContactMechanismType] VARCHAR (255) NULL,
    [CreatedAt]            DATETIME      NOT NULL,
    [UpdatedAt]            DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [BillingContactMechanismIndex]
    ON [dbo].[BillingContactMechanism]([ContactMechanismId] ASC, [ContactMechanismType] ASC);

