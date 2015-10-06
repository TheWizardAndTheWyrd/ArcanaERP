CREATE TABLE [dbo].[status_applications] (
    [id]                             INT           IDENTITY (1, 1) NOT NULL,
    [tracked_status_type_id]         INT           NULL,
    [status_application_record_id]   INT           NULL,
    [status_application_record_type] VARCHAR (255) NULL,
    [from_date]                      DATETIME      NULL,
    [thru_date]                      DATETIME      NULL,
    [created_at]                     DATETIME      NOT NULL,
    [updated_at]                     DATETIME      NOT NULL,
    [party_id]                       INT           NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [status_applications_record_idx]
    ON [dbo].[status_applications]([status_application_record_id] ASC, [status_application_record_type] ASC);


GO
CREATE NONCLUSTERED INDEX [tracked_status_type_id_idx]
    ON [dbo].[status_applications]([tracked_status_type_id] ASC);


GO
CREATE NONCLUSTERED INDEX [from_date_idx]
    ON [dbo].[status_applications]([from_date] ASC);


GO
CREATE NONCLUSTERED INDEX [thru_date_idx]
    ON [dbo].[status_applications]([thru_date] ASC);


GO
CREATE NONCLUSTERED INDEX [status_application_party_idx]
    ON [dbo].[status_applications]([party_id] ASC);

