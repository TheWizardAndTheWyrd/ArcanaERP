CREATE TABLE [dbo].[groups] (
    [id]          INT           IDENTITY (1, 1) NOT NULL,
    [description] VARCHAR (255) NULL,
    [created_at]  DATETIME      NOT NULL,
    [updated_at]  DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);

