CREATE TABLE [dbo].[file_assets] (
    [id]                INT           IDENTITY (1, 1) NOT NULL,
    [type]              VARCHAR (255) NULL,
    [name]              VARCHAR (255) NULL,
    [directory]         VARCHAR (255) NULL,
    [data_file_name]    VARCHAR (255) NULL,
    [data_content_type] VARCHAR (255) NULL,
    [data_file_size]    INT           NULL,
    [data_updated_at]   DATETIME      NULL,
    [width]             VARCHAR (255) NULL,
    [height]            VARCHAR (255) NULL,
    [scoped_by]         TEXT          NULL,
    [created_at]        DATETIME      NOT NULL,
    [updated_at]        DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [index_file_assets_on_type]
    ON [dbo].[file_assets]([type] ASC);


GO
CREATE NONCLUSTERED INDEX [index_file_assets_on_name]
    ON [dbo].[file_assets]([name] ASC);


GO
CREATE NONCLUSTERED INDEX [index_file_assets_on_directory]
    ON [dbo].[file_assets]([directory] ASC);

