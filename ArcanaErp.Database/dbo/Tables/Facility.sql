CREATE TABLE [dbo].[Facility] (
    [Id]                 INT           IDENTITY (1, 1) NOT NULL,
    [Description]        VARCHAR (255) NULL,
    [InternalIdentifier] VARCHAR (255) NULL,
    [FacilityTypeId]     INT           NULL,
    [PostalAddressId]    INT           NULL,
    [FacilityRecordId]   INT           NULL,
    [FacilityRecordType] VARCHAR (255) NULL,
    [CreatedAt]          DATETIME      NOT NULL,
    [UpdatedAt]          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [FacilityRecordIndex]
    ON [dbo].[Facility]([FacilityRecordId] ASC, [FacilityRecordType] ASC);


GO
CREATE NONCLUSTERED INDEX [FacilityPostalAddressIndex]
    ON [dbo].[Facility]([PostalAddressId] ASC);

