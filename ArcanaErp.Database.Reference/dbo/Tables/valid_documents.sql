CREATE TABLE [dbo].[valid_documents] (
    [id]                    INT           IDENTITY (1, 1) NOT NULL,
    [document_id]           INT           NULL,
    [documented_model_id]   INT           NULL,
    [documented_model_type] VARCHAR (255) NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [index_valid_documents_on_document_id]
    ON [dbo].[valid_documents]([document_id] ASC);


GO
CREATE NONCLUSTERED INDEX [valid_documents_model_idx]
    ON [dbo].[valid_documents]([documented_model_id] ASC, [documented_model_type] ASC);

