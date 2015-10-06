CREATE TABLE [dbo].[capable_models] (
    [id]                        INT           IDENTITY (1, 1) NOT NULL,
    [capable_model_record_id]   INT           NULL,
    [capable_model_record_type] VARCHAR (255) NULL,
    [created_at]                DATETIME      NOT NULL,
    [updated_at]                DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [capable_model_record_idx]
    ON [dbo].[capable_models]([capable_model_record_id] ASC, [capable_model_record_type] ASC);

