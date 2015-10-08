CREATE TABLE [dbo].[PositionFulfillment] (
    [Id]            INT           IDENTITY (1, 1) NOT NULL,
    [Description]   VARCHAR (255) NULL,
    [heldbyPartyId] INT           NULL,
    [PositionId]    INT           NULL,
    [FromDate]      DATE          NULL,
    [ThroughDate]   DATE          NULL,
    [CreatedAt]     DATETIME      NOT NULL,
    [UpdatedAt]     DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexPositionFulfillmentOnPositionId]
    ON [dbo].[PositionFulfillment]([PositionId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexPositionFulfillmentOnheldbyPartyId]
    ON [dbo].[PositionFulfillment]([heldbyPartyId] ASC);

