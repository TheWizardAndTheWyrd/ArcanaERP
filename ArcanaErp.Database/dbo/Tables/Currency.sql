CREATE TABLE [dbo].[Currency] (
    [Id]                          INT           IDENTITY (1, 1) NOT NULL,
    [Name]                        VARCHAR (255) NULL,
    [definitiOn]                  VARCHAR (255) NULL,
    [InternalIdentifier]          VARCHAR (255) NULL,
    [numericcode]                 VARCHAR (255) NULL,
    [majorunitsymbol]             VARCHAR (255) NULL,
    [minorunitsymbol]             VARCHAR (255) NULL,
    [ratioofminorunitTomajorunit] VARCHAR (255) NULL,
    [postfixlabel]                VARCHAR (255) NULL,
    [introductiOnDate]            DATETIME      NULL,
    [expiratiOnDate]              DATETIME      NULL,
    [CreatedAt]                   DATETIME      NOT NULL,
    [UpdatedAt]                   DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexCurrencyOnInternalIdentifier]
    ON [dbo].[Currency]([InternalIdentifier] ASC);

