CREATE TABLE [dbo].[documented_items] (
    [id]                         INT           IDENTITY (1, 1) NOT NULL,
    [documented_klass]           VARCHAR (255) NULL,
    [documented_content_id]      INT           NULL,
    [online_document_section_id] INT           NULL,
    [created_at]                 DATETIME      NOT NULL,
    [updated_at]                 DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [documented_items_documented_content_id_idx]
    ON [dbo].[documented_items]([documented_content_id] ASC);


GO
CREATE NONCLUSTERED INDEX [documented_items_online_document_section_id_idx]
    ON [dbo].[documented_items]([online_document_section_id] ASC);

