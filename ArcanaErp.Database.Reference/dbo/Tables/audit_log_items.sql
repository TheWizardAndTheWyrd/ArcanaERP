CREATE TABLE [dbo].[audit_log_items] (
    [id]                       INT           IDENTITY (1, 1) NOT NULL,
    [audit_log_id]             INT           NULL,
    [audit_log_item_type_id]   INT           NULL,
    [audit_log_item_value]     VARCHAR (255) NULL,
    [audit_log_item_old_value] VARCHAR (255) NULL,
    [description]              VARCHAR (255) NULL,
    [created_at]               DATETIME      NOT NULL,
    [updated_at]               DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [audit_log_items_audit_log_id_idx]
    ON [dbo].[audit_log_items]([audit_log_id] ASC);


GO
CREATE NONCLUSTERED INDEX [audit_log_items_audit_log_item_type_id_idx]
    ON [dbo].[audit_log_items]([audit_log_item_type_id] ASC);

