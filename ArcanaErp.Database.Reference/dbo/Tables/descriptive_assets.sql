CREATE TABLE [dbo].[descriptive_assets] (
    [id]                    INT           IDENTITY (1, 1) NOT NULL,
    [view_type_id]          INT           NULL,
    [internal_identifier]   VARCHAR (255) NULL,
    [description]           TEXT          NULL,
    [external_identifier]   VARCHAR (255) NULL,
    [external_id_source]    VARCHAR (255) NULL,
    [described_record_id]   INT           NULL,
    [described_record_type] VARCHAR (255) NULL,
    [created_at]            DATETIME      NOT NULL,
    [updated_at]            DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [index_descriptive_assets_on_view_type_id]
    ON [dbo].[descriptive_assets]([view_type_id] ASC);


GO
CREATE NONCLUSTERED INDEX [described_record_idx]
    ON [dbo].[descriptive_assets]([described_record_id] ASC, [described_record_type] ASC);


GO
CREATE NONCLUSTERED INDEX [descriptive_assets_internal_identifier_idx]
    ON [dbo].[descriptive_assets]([internal_identifier] ASC);

