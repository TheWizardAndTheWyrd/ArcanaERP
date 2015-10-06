CREATE TABLE [dbo].[fixed_asset_types] (
    [id]                  INT           IDENTITY (1, 1) NOT NULL,
    [parent_id]           INT           NULL,
    [lft]                 INT           NULL,
    [rgt]                 INT           NULL,
    [description]         VARCHAR (255) NULL,
    [comments]            VARCHAR (255) NULL,
    [internal_identifier] VARCHAR (255) NULL,
    [external_identifier] VARCHAR (255) NULL,
    [external_id_source]  VARCHAR (255) NULL,
    [created_at]          DATETIME      NOT NULL,
    [updated_at]          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [fixed_asset_types_nested_set_idx]
    ON [dbo].[fixed_asset_types]([parent_id] ASC, [lft] ASC, [rgt] ASC);

