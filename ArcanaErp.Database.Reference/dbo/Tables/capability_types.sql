CREATE TABLE [dbo].[capability_types] (
    [id]                  INT           IDENTITY (1, 1) NOT NULL,
    [internal_identifier] VARCHAR (255) NULL,
    [description]         VARCHAR (255) NULL,
    [created_at]          DATETIME      NOT NULL,
    [updated_at]          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [capability_types_internal_identifier_idx]
    ON [dbo].[capability_types]([internal_identifier] ASC);

