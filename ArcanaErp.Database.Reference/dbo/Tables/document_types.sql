CREATE TABLE [dbo].[document_types] (
    [id]                  INT           IDENTITY (1, 1) NOT NULL,
    [external_identifier] VARCHAR (255) NULL,
    [internal_identifier] VARCHAR (255) NULL,
    [description]         VARCHAR (255) NULL,
    [created_at]          DATETIME      NOT NULL,
    [updated_at]          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [document_types_internal_identifier_idx]
    ON [dbo].[document_types]([internal_identifier] ASC);

