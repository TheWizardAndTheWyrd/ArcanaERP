CREATE TABLE [dbo].[ProductFeatureApplicability] (
    [Id]                  INT           IDENTITY (1, 1) NOT NULL,
    [FeatureOfRecordId]   INT           NULL,
    [FeatureOfRecordType] VARCHAR (255) NULL,
    [ProductFeatureId]    INT           NULL,
    [IsMandatory]         BIT           NULL,
    [CreatedAt]           DATETIME      NOT NULL,
    [UpdatedAt]           DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [ProductFeatureRecordIndex]
    ON [dbo].[ProductFeatureApplicability]([FeatureOfRecordType] ASC, [FeatureOfRecordId] ASC);

