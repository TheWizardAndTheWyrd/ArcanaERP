CREATE TABLE [dbo].[Currency] (
    [Id]                          INT           IDENTITY (1, 1) NOT NULL,
    [Name]                        VARCHAR (255) NULL,
    [Definition]                  VARCHAR (255) NULL,
    [InternalIdentifier]          VARCHAR (255) NULL,
    [NumericCode]                 VARCHAR (255) NULL,
    [MajorUnitSymbol]             VARCHAR (255) NULL,
    [MinorUnitSymbol]             VARCHAR (255) NULL,
    [RatioOfMinorUnitToMajorUnit] VARCHAR (255) NULL,
    [PostFixLabel]                VARCHAR (255) NULL,
    [IntroductionDate]            DATETIME      NULL,
    [ExpirationDate]              DATETIME      NULL,
    [CreatedAt]                   DATETIME      NOT NULL,
    [UpdatedAt]                   DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexCurrencyOnInternalIdentifier]
    ON [dbo].[Currency]([InternalIdentifier] ASC);

