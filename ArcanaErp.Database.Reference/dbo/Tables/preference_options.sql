CREATE TABLE [dbo].[preference_options] (
    [id]                  INT           IDENTITY (1, 1) NOT NULL,
    [description]         VARCHAR (255) NULL,
    [internal_identifier] VARCHAR (255) NULL,
    [value]               VARCHAR (255) NULL,
    [created_at]          DATETIME      NOT NULL,
    [updated_at]          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [preference_options_internal_identifier_idx]
    ON [dbo].[preference_options]([internal_identifier] ASC);

