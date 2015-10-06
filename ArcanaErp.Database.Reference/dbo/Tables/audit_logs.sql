CREATE TABLE [dbo].[audit_logs] (
    [id]                INT           IDENTITY (1, 1) NOT NULL,
    [application]       VARCHAR (255) NULL,
    [description]       VARCHAR (255) NULL,
    [party_id]          INT           NULL,
    [additional_info]   TEXT          NULL,
    [audit_log_type_id] INT           NULL,
    [event_record_id]   INT           NULL,
    [event_record_type] VARCHAR (255) NULL,
    [created_at]        DATETIME      NOT NULL,
    [updated_at]        DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [index_audit_logs_on_party_id]
    ON [dbo].[audit_logs]([party_id] ASC);


GO
CREATE NONCLUSTERED INDEX [event_record_index]
    ON [dbo].[audit_logs]([event_record_id] ASC, [event_record_type] ASC);


GO
CREATE NONCLUSTERED INDEX [audit_logs_audit_log_type_id_idx]
    ON [dbo].[audit_logs]([audit_log_type_id] ASC);

