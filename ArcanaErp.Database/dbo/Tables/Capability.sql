CREATE TABLE [dbo].[Capability] (
    [Id]                     INT           IDENTITY (1, 1) NOT NULL,
    [Description]            VARCHAR (255) NULL,
    [CapabilityTypeId]       INT           NULL,
    [CapabilityResourceId]   INT           NULL,
    [CapabilityResourceType] VARCHAR (255) NULL,
    [ScopeTypeId]            INT           NULL,
    [ScopeQueryText]         TEXT          NULL,
    [CreatedAt]              DATETIME      NOT NULL,
    [UpdatedAt]              DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexCapabilityOnCapabilityTypeId]
    ON [dbo].[Capability]([CapabilityTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexCapabilityOnScopeTypeId]
    ON [dbo].[Capability]([ScopeTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [CapabilityresourceIndex]
    ON [dbo].[Capability]([CapabilityresourceId] ASC, [CapabilityresourceType] ASC);

