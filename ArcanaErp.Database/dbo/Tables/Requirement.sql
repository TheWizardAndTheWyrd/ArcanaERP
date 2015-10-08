CREATE TABLE [dbo].[Requirement] (
    [Id]                      INT           IDENTITY (1, 1) NOT NULL,
    [ParentId]                INT           NULL,
    [LeftValue]               INT           NULL,
    [RightValue]              INT           NULL,
    [Description]             VARCHAR (255) NULL,
    [Type]                    VARCHAR (255) NULL,
    [ProjectedCompletionTime] INT           NULL,
    [EstimatedbudgetMoneyId]  INT           NULL,
    [RequirementTypeId]       INT           NULL,
    [RequirementRecordId]     INT           NULL,
    [RequirementRecordType]   VARCHAR (255) NULL,
    [FixedAssetId]            INT           NULL,
    [ProductId]               INT           NULL,
    [DeliverableId]           INT           NULL,
    [CreatedAt]               DATETIME      NOT NULL,
    [UpdatedAt]               DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

