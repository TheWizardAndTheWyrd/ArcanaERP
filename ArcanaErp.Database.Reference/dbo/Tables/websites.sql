CREATE TABLE [dbo].[websites] (
    [id]                  INT           IDENTITY (1, 1) NOT NULL,
    [name]                VARCHAR (255) NULL,
    [title]               VARCHAR (255) NULL,
    [subtitle]            VARCHAR (255) NULL,
    [internal_identifier] VARCHAR (255) NULL,
    [publishing]          BIT           DEFAULT ('f') NULL,
    [created_at]          DATETIME      NOT NULL,
    [updated_at]          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [websites_internal_identifier_idx]
    ON [dbo].[websites]([internal_identifier] ASC);

