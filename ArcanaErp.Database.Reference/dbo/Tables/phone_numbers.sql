CREATE TABLE [dbo].[phone_numbers] (
    [id]           INT           IDENTITY (1, 1) NOT NULL,
    [phone_number] VARCHAR (255) NULL,
    [description]  VARCHAR (255) NULL,
    [created_at]   DATETIME      NOT NULL,
    [updated_at]   DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);

