CREATE TABLE [dbo].[applications] (
    [id]                  INT           IDENTITY (1, 1) NOT NULL,
    [description]         VARCHAR (255) NULL,
    [icon]                VARCHAR (255) NULL,
    [internal_identifier] VARCHAR (255) NULL,
    [type]                VARCHAR (255) NULL,
    [can_delete]          BIT           DEFAULT ('t') NULL,
    [created_at]          DATETIME      NOT NULL,
    [updated_at]          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [applications_internal_identifier_idx]
    ON [dbo].[applications]([internal_identifier] ASC);

