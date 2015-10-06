CREATE TABLE [dbo].[facilities] (
    [id]                   INT           IDENTITY (1, 1) NOT NULL,
    [description]          VARCHAR (255) NULL,
    [internal_identifier]  VARCHAR (255) NULL,
    [facility_type_id]     INT           NULL,
    [postal_address_id]    INT           NULL,
    [facility_record_id]   INT           NULL,
    [facility_record_type] INT           NULL,
    [created_at]           DATETIME      NOT NULL,
    [updated_at]           DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [facility_record_idx]
    ON [dbo].[facilities]([facility_record_id] ASC, [facility_record_type] ASC);


GO
CREATE NONCLUSTERED INDEX [facility_postal_address_idx]
    ON [dbo].[facilities]([postal_address_id] ASC);

