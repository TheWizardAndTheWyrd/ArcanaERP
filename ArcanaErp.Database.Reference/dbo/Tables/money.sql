CREATE TABLE [dbo].[money] (
    [id]          INT            IDENTITY (1, 1) NOT NULL,
    [description] VARCHAR (255)  NULL,
    [amount]      DECIMAL (8, 2) NULL,
    [currency_id] INT            NULL,
    [created_at]  DATETIME       NOT NULL,
    [updated_at]  DATETIME       NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [index_money_on_currency_id]
    ON [dbo].[money]([currency_id] ASC);

