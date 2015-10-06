CREATE TABLE [dbo].[reports] (
    [id]                  INT           IDENTITY (1, 1) NOT NULL,
    [name]                VARCHAR (255) NULL,
    [internal_identifier] VARCHAR (255) NULL,
    [template]            TEXT          NULL,
    [query]               TEXT          NULL,
    [created_at]          DATETIME      NOT NULL,
    [updated_at]          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [reports_internal_identifier_idx]
    ON [dbo].[reports]([internal_identifier] ASC);

