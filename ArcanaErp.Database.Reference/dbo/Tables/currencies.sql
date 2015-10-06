CREATE TABLE [dbo].[currencies] (
    [id]                                INT           IDENTITY (1, 1) NOT NULL,
    [name]                              VARCHAR (255) NULL,
    [definition]                        VARCHAR (255) NULL,
    [internal_identifier]               VARCHAR (255) NULL,
    [numeric_code]                      VARCHAR (255) NULL,
    [major_unit_symbol]                 VARCHAR (255) NULL,
    [minor_unit_symbol]                 VARCHAR (255) NULL,
    [ratio_of_minor_unit_to_major_unit] VARCHAR (255) NULL,
    [postfix_label]                     VARCHAR (255) NULL,
    [introduction_date]                 DATETIME      NULL,
    [expiration_date]                   DATETIME      NULL,
    [created_at]                        DATETIME      NOT NULL,
    [updated_at]                        DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [index_currencies_on_internal_identifier]
    ON [dbo].[currencies]([internal_identifier] ASC);

