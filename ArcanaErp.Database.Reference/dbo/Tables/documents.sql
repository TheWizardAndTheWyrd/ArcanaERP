CREATE TABLE [dbo].[documents] (
    [id]                   INT           IDENTITY (1, 1) NOT NULL,
    [external_identifier]  VARCHAR (255) NULL,
    [internal_identifier]  VARCHAR (255) NULL,
    [description]          VARCHAR (255) NULL,
    [document_date]        DATETIME      NULL,
    [document_record_id]   INT           NULL,
    [document_record_type] VARCHAR (255) NULL,
    [document_type_id]     INT           NULL,
    [custom_fields]        TEXT          NULL,
    [created_at]           DATETIME      NOT NULL,
    [updated_at]           DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [document_record_poly_idx]
    ON [dbo].[documents]([document_record_type] ASC, [document_record_id] ASC);


GO
CREATE NONCLUSTERED INDEX [document_type_idx]
    ON [dbo].[documents]([document_type_id] ASC);


GO
CREATE NONCLUSTERED INDEX [documents_internal_identifier_idx]
    ON [dbo].[documents]([internal_identifier] ASC);

