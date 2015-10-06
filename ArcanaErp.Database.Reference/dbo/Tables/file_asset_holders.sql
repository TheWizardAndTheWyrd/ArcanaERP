CREATE TABLE [dbo].[file_asset_holders] (
    [id]                     INT           IDENTITY (1, 1) NOT NULL,
    [file_asset_id]          INT           NULL,
    [file_asset_holder_id]   INT           NULL,
    [file_asset_holder_type] VARCHAR (255) NULL,
    [scoped_by]              TEXT          NULL,
    [created_at]             DATETIME      NOT NULL,
    [updated_at]             DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [file_asset_holder_file_id_idx]
    ON [dbo].[file_asset_holders]([file_asset_id] ASC);


GO
CREATE NONCLUSTERED INDEX [file_asset_holder_idx]
    ON [dbo].[file_asset_holders]([file_asset_holder_id] ASC, [file_asset_holder_type] ASC);

