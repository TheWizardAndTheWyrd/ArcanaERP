CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
GO
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version"); 
GO
CREATE TABLE "compass_ae_instances" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "description" varchar(255), "internal_identifier" varchar(255), "version" decimal(8,3), "type" varchar(255), "schema" varchar(255) DEFAULT 'public', "parent_id" integer, "guid" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "iid_idx" ON "compass_ae_instances" ("internal_identifier"); 
GO
CREATE INDEX "schema_idx" ON "compass_ae_instances" ("schema"); 
GO
CREATE INDEX "type_idx" ON "compass_ae_instances" ("type"); 
GO
CREATE INDEX "parent_id_idx" ON "compass_ae_instances" ("parent_id"); 
GO
CREATE INDEX "guid_idx" ON "compass_ae_instances" ("guid"); 
GO
CREATE TABLE "compass_ae_instance_party_roles" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "description" varchar(255), "compass_ae_instance_id" integer, "party_id" integer, "role_type_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "compass_ae_instance_id_idx" ON "compass_ae_instance_party_roles" ("compass_ae_instance_id"); 
GO
CREATE INDEX "party_id_idx" ON "compass_ae_instance_party_roles" ("party_id"); 
GO
CREATE INDEX "role_type_id_idx" ON "compass_ae_instance_party_roles" ("role_type_id"); 
GO
CREATE TABLE "parties" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "description" varchar(255), "business_party_id" integer, "business_party_type" varchar(255), "list_view_image_id" integer, "enterprise_identifier" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "besi_1" ON "parties" ("business_party_id", "business_party_type"); 
GO
CREATE TABLE "party_roles" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "type" varchar(255), "party_id" integer, "role_type_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "index_party_roles_on_party_id" ON "party_roles" ("party_id"); 
GO
CREATE INDEX "index_party_roles_on_role_type_id" ON "party_roles" ("role_type_id"); 
GO
CREATE TABLE "role_types" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "parent_id" integer, "lft" integer, "rgt" integer, "description" varchar(255), "comments" varchar(255), "internal_identifier" varchar(255), "external_identifier" varchar(255), "external_id_source" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "role_types_iid_idx" ON "role_types" ("internal_identifier"); 
GO
CREATE INDEX "role_types_parent_id_idx" ON "role_types" ("parent_id"); 
GO
CREATE INDEX "role_types_lft_idx" ON "role_types" ("lft"); 
GO
CREATE INDEX "role_types_rgt_idx" ON "role_types" ("rgt"); 
GO
CREATE TABLE "relationship_types" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "parent_id" integer, "lft" integer, "rgt" integer, "valid_from_role_type_id" integer, "valid_to_role_type_id" integer, "name" varchar(255), "description" varchar(255), "internal_identifier" varchar(255), "external_identifier" varchar(255), "external_id_source" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "index_relationship_types_on_valid_from_role_type_id" ON "relationship_types" ("valid_from_role_type_id"); 
GO
CREATE INDEX "index_relationship_types_on_valid_to_role_type_id" ON "relationship_types" ("valid_to_role_type_id"); 
GO
CREATE INDEX "relationship_types_parent_id_idx" ON "relationship_types" ("parent_id"); 
GO
CREATE INDEX "relationship_types_internal_identifier_idx" ON "relationship_types" ("internal_identifier"); 
GO
CREATE TABLE "party_relationships" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "description" varchar(255), "party_id_from" integer, "party_id_to" integer, "role_type_id_from" integer, "role_type_id_to" integer, "status_type_id" integer, "priority_type_id" integer, "relationship_type_id" integer, "from_date" date, "thru_date" date, "external_identifier" varchar(255), "external_id_source" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "index_party_relationships_on_status_type_id" ON "party_relationships" ("status_type_id"); 
GO
CREATE INDEX "index_party_relationships_on_priority_type_id" ON "party_relationships" ("priority_type_id"); 
GO
CREATE INDEX "index_party_relationships_on_relationship_type_id" ON "party_relationships" ("relationship_type_id"); 
GO
CREATE TABLE "organizations" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "description" varchar(255), "tax_id_number" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE TABLE "individuals" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "party_id" integer, "current_last_name" varchar(255), "current_first_name" varchar(255), "current_middle_name" varchar(255), "current_personal_title" varchar(255), "current_suffix" varchar(255), "current_nickname" varchar(255), "gender" varchar(1), "birth_date" date, "height" decimal(5,2), "weight" integer, "mothers_maiden_name" varchar(255), "marital_status" varchar(1), "social_security_number" varchar(255), "current_passport_number" integer, "current_passport_expire_date" date, "total_years_work_experience" integer, "comments" varchar(255), "encrypted_ssn" varchar(255), "temp_ssn" varchar(255), "salt" varchar(255), "ssn_last_four" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "index_individuals_on_party_id" ON "individuals" ("party_id"); 
GO
CREATE TABLE "contact_types" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "parent_id" integer, "lft" integer, "rgt" integer, "description" varchar(255), "comments" varchar(255), "internal_identifier" varchar(255), "external_identifier" varchar(255), "external_id_source" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "index_contact_types_on_parent_id" ON "contact_types" ("parent_id"); 
GO
CREATE INDEX "index_contact_types_on_lft" ON "contact_types" ("lft"); 
GO
CREATE INDEX "index_contact_types_on_rgt" ON "contact_types" ("rgt"); 
GO
CREATE INDEX "contact_types_internal_identifier_idx" ON "contact_types" ("internal_identifier"); 
GO
CREATE TABLE "contact_purposes" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "parent_id" integer, "lft" integer, "rgt" integer, "description" varchar(255), "comments" varchar(255), "internal_identifier" varchar(255), "external_identifier" varchar(255), "external_id_source" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "index_contact_purposes_on_parent_id" ON "contact_purposes" ("parent_id"); 
GO
CREATE TABLE "contact_purposes_contacts" ("contact_id" integer, "contact_purpose_id" integer); 
GO
CREATE INDEX "contact_purposes_contacts_index" ON "contact_purposes_contacts" ("contact_id", "contact_purpose_id"); 
GO
CREATE INDEX "contact_purposes_internal_identifier_idx" ON "contact_purposes" ("internal_identifier"); 
GO
CREATE TABLE "postal_addresses" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "address_line_1" varchar(255), "address_line_2" varchar(255), "city" varchar(255), "state" varchar(255), "zip" varchar(255), "country" varchar(255), "description" varchar(255), "geo_country_id" integer, "geo_zone_id" integer, "latitude" decimal(12,8), "longitude" decimal(12,8), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "index_postal_addresses_on_geo_country_id" ON "postal_addresses" ("geo_country_id"); 
GO
CREATE INDEX "index_postal_addresses_on_geo_zone_id" ON "postal_addresses" ("geo_zone_id"); 
GO
CREATE TABLE "email_addresses" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "email_address" varchar(255), "description" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE TABLE "phone_numbers" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "phone_number" varchar(255), "description" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE TABLE "money" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "description" varchar(255), "amount" decimal(8,2), "currency_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "index_money_on_currency_id" ON "money" ("currency_id"); 
GO
CREATE TABLE "currencies" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "name" varchar(255), "definition" varchar(255), "internal_identifier" varchar(255), "numeric_code" varchar(255), "major_unit_symbol" varchar(255), "minor_unit_symbol" varchar(255), "ratio_of_minor_unit_to_major_unit" varchar(255), "postfix_label" varchar(255), "introduction_date" datetime, "expiration_date" datetime, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "index_currencies_on_internal_identifier" ON "currencies" ("internal_identifier"); 
GO
CREATE TABLE "categories" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "description" varchar(255), "external_identifier" varchar(255), "from_date" datetime, "to_date" datetime, "internal_identifier" varchar(255), "category_record_id" integer, "category_record_type" varchar(255), "parent_id" integer, "lft" integer, "rgt" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "category_polymorphic" ON "categories" ("category_record_id", "category_record_type"); 
GO
CREATE INDEX "categories_internal_identifier_idx" ON "categories" ("internal_identifier"); 
GO
CREATE INDEX "categories_parent_id_idx" ON "categories" ("parent_id"); 
GO
CREATE INDEX "categories_lft_idx" ON "categories" ("lft"); 
GO
CREATE INDEX "categories_rgt_idx" ON "categories" ("rgt"); 
GO
CREATE TABLE "category_classifications" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "category_id" integer, "classification_type" varchar(255), "classification_id" integer, "from_date" datetime, "to_date" datetime, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "classification_polymorphic" ON "category_classifications" ("classification_id", "classification_type"); 
GO
CREATE INDEX "category_classifications_category_id_idx" ON "category_classifications" ("category_id"); 
GO
CREATE TABLE "descriptive_assets" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "view_type_id" integer, "internal_identifier" varchar(255), "description" text, "external_identifier" varchar(255), "external_id_source" varchar(255), "described_record_id" integer, "described_record_type" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "index_descriptive_assets_on_view_type_id" ON "descriptive_assets" ("view_type_id"); 
GO
CREATE INDEX "described_record_idx" ON "descriptive_assets" ("described_record_id", "described_record_type"); 
GO
CREATE INDEX "descriptive_assets_internal_identifier_idx" ON "descriptive_assets" ("internal_identifier"); 
GO
CREATE TABLE "view_types" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "internal_identifier" varchar(255), "description" varchar(255), "lft" integer, "rgt" integer, "parent_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "index_view_types_on_lft" ON "view_types" ("lft"); 
GO
CREATE INDEX "index_view_types_on_rgt" ON "view_types" ("rgt"); 
GO
CREATE INDEX "index_view_types_on_parent_id" ON "view_types" ("parent_id"); 
GO
CREATE INDEX "view_types_internal_identifier_idx" ON "view_types" ("internal_identifier"); 
GO
CREATE TABLE "geo_countries" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "name" varchar(255), "iso_code_2" varchar(255), "iso_code_3" varchar(255), "display" bit DEFAULT 't', "external_id" integer, "created_at" datetime); 
GO
CREATE INDEX "index_geo_countries_on_name" ON "geo_countries" ("name"); 
GO
CREATE INDEX "index_geo_countries_on_iso_code_2" ON "geo_countries" ("iso_code_2"); 
GO
CREATE TABLE "geo_zones" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "geo_country_id" integer, "zone_code" varchar(255) DEFAULT 2, "zone_name" varchar(255), "created_at" datetime); 
GO
CREATE INDEX "index_geo_zones_on_geo_country_id" ON "geo_zones" ("geo_country_id"); 
GO
CREATE INDEX "index_geo_zones_on_zone_name" ON "geo_zones" ("zone_name"); 
GO
CREATE INDEX "index_geo_zones_on_zone_code" ON "geo_zones" ("zone_code"); 
GO
CREATE TABLE "notes" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "created_by_id" integer, "content" text, "noted_record_id" integer, "noted_record_type" varchar(255), "note_type_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "index_notes_on_noted_record_id_and_noted_record_type" ON "notes" ("noted_record_id", "noted_record_type"); 
GO
CREATE INDEX "index_notes_on_note_type_id" ON "notes" ("note_type_id"); 
GO
CREATE INDEX "index_notes_on_created_by_id" ON "notes" ("created_by_id"); 
GO
CREATE TABLE "note_types" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "parent_id" integer, "lft" integer, "rgt" integer, "description" varchar(255), "internal_identifier" varchar(255), "external_identifier" varchar(255), "note_type_record_id" integer, "note_type_record_type" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "note_type_record_idx" ON "note_types" ("note_type_record_id", "note_type_record_type"); 
GO
CREATE INDEX "note_types_parent_id_idx" ON "note_types" ("parent_id"); 
GO
CREATE INDEX "note_types_internal_identifier_idx" ON "note_types" ("internal_identifier"); 
GO
CREATE TABLE "valid_note_types" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "valid_note_type_record_id" integer, "valid_note_type_record_type" varchar(255), "note_type_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "valid_note_type_record_idx" ON "valid_note_types" ("valid_note_type_record_id", "valid_note_type_record_type"); 
GO
CREATE INDEX "index_valid_note_types_on_note_type_id" ON "valid_note_types" ("note_type_id"); 
GO
CREATE TABLE "status_applications" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "tracked_status_type_id" integer, "status_application_record_id" integer, "status_application_record_type" varchar(255), "from_date" datetime, "thru_date" datetime, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "party_id" integer); 
GO
CREATE INDEX "status_applications_record_idx" ON "status_applications" ("status_application_record_id", "status_application_record_type"); 
GO
CREATE INDEX "tracked_status_type_id_idx" ON "status_applications" ("tracked_status_type_id"); 
GO
CREATE INDEX "from_date_idx" ON "status_applications" ("from_date"); 
GO
CREATE INDEX "thru_date_idx" ON "status_applications" ("thru_date"); 
GO
CREATE TABLE "tracked_status_types" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "description" varchar(255), "internal_identifier" varchar(255), "external_identifier" varchar(255), "lft" integer, "rgt" integer, "parent_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "tracked_status_types_iid_idx" ON "tracked_status_types" ("internal_identifier"); 
GO
CREATE INDEX "index_tracked_status_types_on_lft" ON "tracked_status_types" ("lft"); 
GO
CREATE INDEX "index_tracked_status_types_on_rgt" ON "tracked_status_types" ("rgt"); 
GO
CREATE INDEX "index_tracked_status_types_on_parent_id" ON "tracked_status_types" ("parent_id"); 
GO
CREATE TABLE "facilities" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "description" varchar(255), "internal_identifier" varchar(255), "facility_type_id" integer, "postal_address_id" integer, "facility_record_id" integer, "facility_record_type" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "facility_record_idx" ON "facilities" ("facility_record_id", "facility_record_type"); 
GO
CREATE INDEX "facility_postal_address_idx" ON "facilities" ("postal_address_id"); 
GO
CREATE TABLE "facility_types" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "description" varchar(255), "internal_identifier" varchar(255), "external_identifier" varchar(255), "external_identifer_source" varchar(255), "parent_id" integer, "lft" integer, "rgt" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "facility_types_nested_set_idx" ON "facility_types" ("parent_id", "lft", "rgt"); 
GO
CREATE TABLE "fixed_assets" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "fixed_asset_type_id" integer, "description" varchar(255), "comments" varchar(255), "internal_identifier" varchar(255), "external_identifier" varchar(255), "external_id_source" varchar(255), "fixed_asset_record_type" varchar(255), "fixed_asset_record_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "fixed_assets_record_idx" ON "fixed_assets" ("fixed_asset_record_type", "fixed_asset_record_id"); 
GO
CREATE INDEX "fixed_assets_fixed_asset_type_idx" ON "fixed_assets" ("fixed_asset_type_id"); 
GO
CREATE TABLE "fixed_asset_types" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "parent_id" integer, "lft" integer, "rgt" integer, "description" varchar(255), "comments" varchar(255), "internal_identifier" varchar(255), "external_identifier" varchar(255), "external_id_source" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "fixed_asset_types_nested_set_idx" ON "fixed_asset_types" ("parent_id", "lft", "rgt"); 
GO
CREATE TABLE "party_fixed_asset_assignments" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "party_id" integer, "fixed_asset_id" integer, "assigned_from" datetime, "assigned_thru" datetime, "allocated_cost_money_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "party_fixed_asset_assign_idx" ON "party_fixed_asset_assignments" ("party_id", "fixed_asset_id"); 
GO
CREATE TABLE "fixed_asset_party_roles" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "party_id" integer, "fixed_asset_id" integer, "role_type_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE TABLE "unit_of_measurements" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "description" varchar(255), "domain" varchar(255), "internal_identifier" varchar(255), "comments" varchar(255), "external_identifier" varchar(255), "external_id_source" varchar(255), "lft" integer, "rgt" integer, "parent_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "index_unit_of_measurements_on_lft" ON "unit_of_measurements" ("lft"); 
GO
CREATE INDEX "index_unit_of_measurements_on_rgt" ON "unit_of_measurements" ("rgt"); 
GO
CREATE INDEX "index_unit_of_measurements_on_parent_id" ON "unit_of_measurements" ("parent_id"); 
GO
CREATE TABLE "generated_items" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "generated_by_id" integer, "generated_by_type" varchar(255), "generated_record_id" integer, "generated_record_type" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "generated_by_idx" ON "generated_items" ("generated_by_type", "generated_by_id"); 
GO
CREATE INDEX "generated_record_idx" ON "generated_items" ("generated_record_type", "generated_record_id"); 
GO
CREATE TABLE "entity_party_roles" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "party_id" integer, "role_type_id" integer, "entity_record_id" integer, "entity_record_type" varchar(255)); 
GO
CREATE INDEX "index_entity_party_roles_on_party_id" ON "entity_party_roles" ("party_id"); 
GO
CREATE INDEX "index_entity_party_roles_on_role_type_id" ON "entity_party_roles" ("role_type_id"); 
GO
CREATE INDEX "entity_party_roles_entity_record_idx" ON "entity_party_roles" ("entity_record_id", "entity_record_type"); 
GO
CREATE TABLE "contacts" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "contact_mechanism_id" integer, "contact_mechanism_type" varchar(255), "is_primary" bit, "external_identifier" varchar(255), "external_id_source" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "contact_record_type" varchar(255), "contact_record_id" integer); 
GO
CREATE INDEX "index_contacts_on_is_primary" ON "contacts" ("is_primary"); 
GO
CREATE INDEX "besi_2" ON "contacts" ("contact_mechanism_id", "contact_mechanism_type"); 
GO
CREATE INDEX "contacts_contact_record_idx" ON "contacts" ("contact_record_type", "contact_record_id"); 
GO
CREATE INDEX "status_application_party_idx" ON "status_applications" ("party_id"); 
GO
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "username" varchar(255), "email" varchar(255), "party_id" integer, "type" varchar(255), "salt" varchar(255), "crypted_password" varchar(255), "last_login_at" datetime, "last_logout_at" datetime, "last_activity_at" datetime, "failed_logins_count" integer DEFAULT 0, "lock_expires_at" datetime, "remember_me_token" varchar(255), "remember_me_token_expires_at" datetime, "reset_password_token" varchar(255), "reset_password_token_expires_at" datetime, "reset_password_email_sent_at" datetime, "activation_state" varchar(255), "activation_token" varchar(255), "activation_token_expires_at" datetime, "security_question_1" varchar(255), "security_answer_1" varchar(255), "security_question_2" varchar(255), "security_answer_2" varchar(255), "auth_token" varchar(255), "auth_token_expires_at" datetime, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "unlock_token" varchar(255) DEFAULT NULL, "last_login_from_ip_address" varchar(255) DEFAULT NULL); 
GO
CREATE UNIQUE INDEX "index_users_on_email" ON "users" ("email"); 
GO
CREATE UNIQUE INDEX "index_users_on_username" ON "users" ("username"); 
GO
CREATE INDEX "activity_idx" ON "users" ("last_logout_at", "last_activity_at"); 
GO
CREATE INDEX "index_users_on_remember_me_token" ON "users" ("remember_me_token"); 
GO
CREATE INDEX "index_users_on_reset_password_token" ON "users" ("reset_password_token"); 
GO
CREATE INDEX "index_users_on_activation_token" ON "users" ("activation_token"); 
GO
CREATE INDEX "users_party_id_idx" ON "users" ("party_id"); 
GO
CREATE TABLE "groups" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "description" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE TABLE "security_roles" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "description" varchar(255), "internal_identifier" varchar(255), "external_identifier" varchar(255), "external_id_source" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "lft" integer, "rgt" integer, "parent_id" integer); 
GO
CREATE INDEX "security_roles_internal_identifier_idx" ON "security_roles" ("internal_identifier"); 
GO
CREATE TABLE "sessions" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "session_id" varchar(255) NOT NULL, "data" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "index_sessions_on_session_id" ON "sessions" ("session_id"); 
GO
CREATE INDEX "index_sessions_on_updated_at" ON "sessions" ("updated_at"); 
GO
CREATE TABLE "audit_logs" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "application" varchar(255), "description" varchar(255), "party_id" integer, "additional_info" text, "audit_log_type_id" integer, "event_record_id" integer, "event_record_type" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "index_audit_logs_on_party_id" ON "audit_logs" ("party_id"); 
GO
CREATE INDEX "event_record_index" ON "audit_logs" ("event_record_id", "event_record_type"); 
GO
CREATE INDEX "audit_logs_audit_log_type_id_idx" ON "audit_logs" ("audit_log_type_id"); 
GO
CREATE TABLE "audit_log_types" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "description" varchar(255), "error_code" varchar(255), "comments" varchar(255), "internal_identifier" varchar(255), "external_identifier" varchar(255), "external_id_source" varchar(255), "parent_id" integer, "lft" integer, "rgt" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "audit_log_types_internal_identifier_idx" ON "audit_log_types" ("internal_identifier"); 
GO
CREATE INDEX "audit_log_types_parent_id_idx" ON "audit_log_types" ("parent_id"); 
GO
CREATE TABLE "audit_log_items" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "audit_log_id" integer, "audit_log_item_type_id" integer, "audit_log_item_value" varchar(255), "audit_log_item_old_value" varchar(255), "description" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "audit_log_items_audit_log_id_idx" ON "audit_log_items" ("audit_log_id"); 
GO
CREATE INDEX "audit_log_items_audit_log_item_type_id_idx" ON "audit_log_items" ("audit_log_item_type_id"); 
GO
CREATE TABLE "audit_log_item_types" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "internal_identifier" varchar(255), "external_identifier" varchar(255), "external_id_source" varchar(255), "description" varchar(255), "comments" varchar(255), "parent_id" integer, "lft" integer, "rgt" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "audit_log_item_types_internal_identifier_idx" ON "audit_log_item_types" ("internal_identifier"); 
GO
CREATE INDEX "audit_log_item_types_parent_id_idx" ON "audit_log_item_types" ("parent_id"); 
GO
CREATE INDEX "audit_log_item_types_lft_idx" ON "audit_log_item_types" ("lft"); 
GO
CREATE INDEX "audit_log_item_types_rgt_idx" ON "audit_log_item_types" ("rgt"); 
GO
CREATE TABLE "file_assets" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "type" varchar(255), "name" varchar(255), "directory" varchar(255), "data_file_name" varchar(255), "data_content_type" varchar(255), "data_file_size" integer, "data_updated_at" datetime, "width" varchar(255), "height" varchar(255), "scoped_by" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "index_file_assets_on_type" ON "file_assets" ("type"); 
GO
CREATE INDEX "index_file_assets_on_name" ON "file_assets" ("name"); 
GO
CREATE INDEX "index_file_assets_on_directory" ON "file_assets" ("directory"); 
GO
CREATE TABLE "file_asset_holders" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "file_asset_id" integer, "file_asset_holder_id" integer, "file_asset_holder_type" varchar(255), "scoped_by" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "file_asset_holder_file_id_idx" ON "file_asset_holders" ("file_asset_id"); 
GO
CREATE INDEX "file_asset_holder_idx" ON "file_asset_holders" ("file_asset_holder_id", "file_asset_holder_type"); 
GO
CREATE TABLE "delayed_jobs" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "priority" integer DEFAULT 0, "attempts" integer DEFAULT 0, "handler" text, "last_error" text, "run_at" datetime, "locked_at" datetime, "failed_at" datetime, "locked_by" varchar(255), "queue" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "delayed_jobs_priority" ON "delayed_jobs" ("priority", "run_at"); 
GO
CREATE TABLE "capable_models" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "capable_model_record_id" integer, "capable_model_record_type" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "capable_model_record_idx" ON "capable_models" ("capable_model_record_id", "capable_model_record_type"); 
GO
CREATE TABLE "capability_types" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "internal_identifier" varchar(255), "description" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "capability_types_internal_identifier_idx" ON "capability_types" ("internal_identifier"); 
GO
CREATE TABLE "capabilities" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "description" varchar(255), "capability_type_id" integer, "capability_resource_id" integer, "capability_resource_type" varchar(255), "scope_type_id" integer, "scope_query" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "index_capabilities_on_capability_type_id" ON "capabilities" ("capability_type_id"); 
GO
CREATE INDEX "index_capabilities_on_scope_type_id" ON "capabilities" ("scope_type_id"); 
GO
CREATE INDEX "capability_resource_index" ON "capabilities" ("capability_resource_id", "capability_resource_type"); 
GO
CREATE TABLE "capability_accessors" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "capability_accessor_record_id" integer, "capability_accessor_record_type" varchar(255), "capability_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "index_capability_accessors_on_capability_id" ON "capability_accessors" ("capability_id"); 
GO
CREATE INDEX "capability_accessor_record_index" ON "capability_accessors" ("capability_accessor_record_id", "capability_accessor_record_type"); 
GO
CREATE TABLE "scope_types" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "description" varchar(255), "internal_identifier" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "index_scope_types_on_internal_identifier" ON "scope_types" ("internal_identifier"); 
GO
CREATE TABLE "parties_security_roles" ("party_id" integer, "security_role_id" integer); 
GO
CREATE INDEX "index_parties_security_roles_on_party_id" ON "parties_security_roles" ("party_id"); 
GO
CREATE INDEX "index_parties_security_roles_on_security_role_id" ON "parties_security_roles" ("security_role_id"); 
GO
CREATE TABLE "notifications" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "type" varchar(255), "created_by_id" integer, "message" text, "notification_type_id" integer, "current_state" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "custom_fields" text); 
GO
CREATE INDEX "index_notifications_on_notification_type_id" ON "notifications" ("notification_type_id"); 
GO
CREATE INDEX "index_notifications_on_created_by_id" ON "notifications" ("created_by_id"); 
GO
CREATE INDEX "index_notifications_on_type" ON "notifications" ("type"); 
GO
CREATE TABLE "notification_types" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "internal_identifier" varchar(255), "description" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "index_notification_types_on_internal_identifier" ON "notification_types" ("internal_identifier"); 
GO
CREATE INDEX "index_security_roles_on_parent_id" ON "security_roles" ("parent_id"); 
GO
CREATE INDEX "index_security_roles_on_lft" ON "security_roles" ("lft"); 
GO
CREATE INDEX "index_security_roles_on_rgt" ON "security_roles" ("rgt"); 
GO
CREATE TABLE "preferences" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "preference_option_id" integer, "preference_type_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "index_preferences_on_preference_option_id" ON "preferences" ("preference_option_id"); 
GO
CREATE INDEX "index_preferences_on_preference_type_id" ON "preferences" ("preference_type_id"); 
GO
CREATE TABLE "preference_types" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "description" varchar(255), "internal_identifier" varchar(255), "default_pref_option_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "index_preference_types_on_default_pref_option_id" ON "preference_types" ("default_pref_option_id"); 
GO
CREATE INDEX "preference_types_internal_identifier_idx" ON "preference_types" ("internal_identifier"); 
GO
CREATE TABLE "preference_options" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "description" varchar(255), "internal_identifier" varchar(255), "value" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "preference_options_internal_identifier_idx" ON "preference_options" ("internal_identifier"); 
GO
CREATE TABLE "preference_options_preference_types" ("preference_type_id" integer, "preference_option_id" integer); 
GO
CREATE INDEX "pref_opt_pref_type_pref_type_id_idx" ON "preference_options_preference_types" ("preference_type_id"); 
GO
CREATE INDEX "pref_opt_pref_type_pref_opt_id_idx" ON "preference_options_preference_types" ("preference_option_id"); 
GO
CREATE TABLE "valid_preference_types" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "preference_type_id" integer, "preferenced_record_id" integer, "preferenced_record_type" varchar(255)); 
GO
CREATE INDEX "valid_preference_types_preference_type_id_idx" ON "valid_preference_types" ("preference_type_id"); 
GO
CREATE INDEX "valid_preference_types_preferenced_record_id_idx" ON "valid_preference_types" ("preferenced_record_id"); 
GO
CREATE TABLE "user_preferences" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "user_id" integer, "preference_id" integer, "preferenced_record_id" integer, "preferenced_record_type" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "index_user_preferences_on_user_id" ON "user_preferences" ("user_id"); 
GO
CREATE INDEX "index_user_preferences_on_preference_id" ON "user_preferences" ("preference_id"); 
GO
CREATE INDEX "index_user_preferences_on_preferenced_record_id" ON "user_preferences" ("preferenced_record_id"); 
GO
CREATE INDEX "index_user_preferences_on_preferenced_record_type" ON "user_preferences" ("preferenced_record_type"); 
GO
CREATE TABLE "applications" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "description" varchar(255), "icon" varchar(255), "internal_identifier" varchar(255), "type" varchar(255), "can_delete" bit DEFAULT 't', "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "applications_internal_identifier_idx" ON "applications" ("internal_identifier"); 
GO
CREATE TABLE "applications_users" ("application_id" integer, "user_id" integer); 
GO
CREATE INDEX "app_users_app_idx" ON "applications_users" ("application_id"); 
GO
CREATE INDEX "app_users_user_idx" ON "applications_users" ("user_id"); 
GO
CREATE TABLE "tree_menu_node_defs" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "node_type" varchar(255), "parent_id" integer, "lft" integer, "rgt" integer, "menu_short_name" varchar(255), "menu_description" varchar(255), "text" varchar(255), "icon_url" varchar(255), "target_url" varchar(255), "resource_class" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "index_tree_menu_node_defs_on_parent_id" ON "tree_menu_node_defs" ("parent_id"); 
GO
CREATE TABLE "configurations" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "description" varchar(255), "internal_identifier" varchar(255), "active" bit, "is_template" bit DEFAULT 'f', "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "index_configurations_on_is_template" ON "configurations" ("is_template"); 
GO
CREATE INDEX "configurations_internal_identifier_idx" ON "configurations" ("internal_identifier"); 
GO
CREATE TABLE "valid_configurations" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "configured_item_id" integer, "configured_item_type" varchar(255), "configuration_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "configured_item_poly_idx" ON "valid_configurations" ("configured_item_id", "configured_item_type"); 
GO
CREATE INDEX "index_valid_configurations_on_configuration_id" ON "valid_configurations" ("configuration_id"); 
GO
CREATE TABLE "configuration_items" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "configuration_id" integer, "configuration_item_type_id" integer, "configuration_option_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "index_configuration_items_on_configuration_id" ON "configuration_items" ("configuration_id"); 
GO
CREATE INDEX "index_configuration_items_on_configuration_item_type_id" ON "configuration_items" ("configuration_item_type_id"); 
GO
CREATE INDEX "index_configuration_items_on_configuration_option_id" ON "configuration_items" ("configuration_option_id"); 
GO
CREATE TABLE "configuration_item_types" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "parent_id" integer, "lft" integer, "rgt" integer, "precedence" integer DEFAULT 0, "description" varchar(255), "internal_identifier" varchar(255), "allow_user_defined_options" bit DEFAULT 'f', "is_multi_optional" bit DEFAULT 'f', "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "configuration_item_types_parent_id_idx" ON "configuration_item_types" ("parent_id"); 
GO
CREATE INDEX "configuration_item_types_lft_idx" ON "configuration_item_types" ("lft"); 
GO
CREATE INDEX "configuration_item_types_rgtidx" ON "configuration_item_types" ("rgt"); 
GO
CREATE INDEX "configuration_item_types_internal_identifier_idx" ON "configuration_item_types" ("internal_identifier"); 
GO
CREATE INDEX "config_item_type_precedence_idx" ON "configuration_item_types" ("precedence"); 
GO
CREATE TABLE "configuration_item_types_configurations" ("configuration_item_type_id" integer, "configuration_id" integer); 
GO
CREATE INDEX "conf_conf_type_id_item_idx" ON "configuration_item_types_configurations" ("configuration_item_type_id"); 
GO
CREATE INDEX "conf_id_idx" ON "configuration_item_types_configurations" ("configuration_id"); 
GO
CREATE UNIQUE INDEX "conf_config_type_uniq_idx" ON "configuration_item_types_configurations" ("configuration_item_type_id", "configuration_id"); 
GO
CREATE TABLE "configuration_options" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "description" varchar(255), "internal_identifier" varchar(255), "value" varchar(255), "comment" text, "user_defined" bit DEFAULT 'f', "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "index_configuration_options_on_value" ON "configuration_options" ("value"); 
GO
CREATE INDEX "index_configuration_options_on_internal_identifier" ON "configuration_options" ("internal_identifier"); 
GO
CREATE INDEX "index_configuration_options_on_user_defined" ON "configuration_options" ("user_defined"); 
GO
CREATE TABLE "configuration_item_types_configuration_options" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "configuration_item_type_id" integer, "configuration_option_id" integer, "is_default" bit DEFAULT 'f', "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "conf_item_type_conf_opt_id_item_idx" ON "configuration_item_types_configuration_options" ("configuration_item_type_id"); 
GO
CREATE INDEX "conf_item_type_conf_opt_id_opt_idx" ON "configuration_item_types_configuration_options" ("configuration_option_id"); 
GO
CREATE TABLE "configuration_items_configuration_options" ("configuration_item_id" integer, "configuration_option_id" integer); 
GO
CREATE INDEX "conf_item_conf_opt_id_item_idx" ON "configuration_items_configuration_options" ("configuration_item_id"); 
GO
CREATE INDEX "conf_item_conf_opt_id_opt_idx" ON "configuration_items_configuration_options" ("configuration_option_id"); 
GO
CREATE TABLE "job_trackers" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "job_name" varchar(255), "job_klass" varchar(255), "run_time" varchar(255), "last_run_at" datetime, "next_run_at" datetime); 
GO
CREATE TABLE "websites" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "name" varchar(255), "title" varchar(255), "subtitle" varchar(255), "internal_identifier" varchar(255), "publishing" bit DEFAULT 'f', "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "websites_internal_identifier_idx" ON "websites" ("internal_identifier"); 
GO
CREATE TABLE "website_hosts" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "website_id" integer, "host" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "index_website_hosts_on_website_id" ON "website_hosts" ("website_id"); 
GO
CREATE TABLE "website_inquiries" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "website_id" integer, "first_name" varchar(255), "last_name" varchar(255), "email" varchar(255), "message" text, "created_by_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "index_website_inquiries_on_website_id" ON "website_inquiries" ("website_id"); 
GO
CREATE INDEX "inquiry_created_by_idx" ON "website_inquiries" ("created_by_id"); 
GO
CREATE TABLE "website_sections" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "title" varchar(255), "type" varchar(255), "website_id" integer, "path" varchar(255), "permalink" varchar(255), "layout" text, "in_menu" bit, "position" integer DEFAULT 0, "use_markdown" bit, "internal_identifier" varchar(255), "version" integer, "render_base_layout" bit DEFAULT 't', "parent_id" integer, "lft" integer, "rgt" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "index_website_sections_on_permalink" ON "website_sections" ("permalink"); 
GO
CREATE INDEX "index_website_sections_on_website_id" ON "website_sections" ("website_id"); 
GO
CREATE INDEX "index_website_sections_on_position" ON "website_sections" ("position"); 
GO
CREATE INDEX "index_website_sections_on_parent_id" ON "website_sections" ("parent_id"); 
GO
CREATE INDEX "index_website_sections_on_lft" ON "website_sections" ("lft"); 
GO
CREATE INDEX "index_website_sections_on_rgt" ON "website_sections" ("rgt"); 
GO
CREATE INDEX "index_website_sections_on_version" ON "website_sections" ("version"); 
GO
CREATE INDEX "section_iid_idx" ON "website_sections" ("internal_identifier"); 
GO
CREATE TABLE "website_section_versions" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "website_section_id" integer, "version" integer, "title" varchar(255) DEFAULT NULL, "website_id" integer DEFAULT NULL, "path" varchar(255) DEFAULT NULL, "permalink" varchar(255) DEFAULT NULL, "layout" text DEFAULT NULL, "in_menu" bit DEFAULT NULL, "position" integer DEFAULT 0, "use_markdown" bit DEFAULT NULL, "internal_identifier" varchar(255) DEFAULT NULL, "render_base_layout" bit DEFAULT 't', "created_at" datetime DEFAULT NULL, "updated_at" datetime DEFAULT NULL, "versioned_type" varchar(255) DEFAULT NULL); 
GO
CREATE INDEX "index_website_section_versions_on_website_section_id" ON "website_section_versions" ("website_section_id"); 
GO
CREATE INDEX "website_section_versions_website_id_idx" ON "website_section_versions" ("website_id"); 
GO
CREATE INDEX "website_section_versions_internal_identifier_idx" ON "website_section_versions" ("internal_identifier"); 
GO
CREATE TABLE "contents" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "type" varchar(255), "title" varchar(255), "permalink" varchar(255), "excerpt_html" text, "body_html" text, "created_by_id" integer, "updated_by_id" integer, "internal_identifier" varchar(255), "display_title" bit, "version" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "index_contents_on_type" ON "contents" ("type"); 
GO
CREATE INDEX "index_contents_on_created_by_id" ON "contents" ("created_by_id"); 
GO
CREATE INDEX "index_contents_on_updated_by_id" ON "contents" ("updated_by_id"); 
GO
CREATE INDEX "index_contents_on_permalink" ON "contents" ("permalink"); 
GO
CREATE INDEX "index_contents_on_version" ON "contents" ("version"); 
GO
CREATE INDEX "contents_iid_idx" ON "contents" ("internal_identifier"); 
GO
CREATE TABLE "content_versions" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "content_id" integer, "version" integer, "title" varchar(255) DEFAULT NULL, "permalink" varchar(255) DEFAULT NULL, "excerpt_html" text DEFAULT NULL, "body_html" text DEFAULT NULL, "created_by_id" integer DEFAULT NULL, "updated_by_id" integer DEFAULT NULL, "internal_identifier" varchar(255) DEFAULT NULL, "display_title" bit DEFAULT NULL, "created_at" datetime DEFAULT NULL, "updated_at" datetime DEFAULT NULL, "versioned_type" varchar(255) DEFAULT NULL); 
GO
CREATE INDEX "index_content_versions_on_content_id" ON "content_versions" ("content_id"); 
GO
CREATE INDEX "content_versions_created_by_id_idx" ON "content_versions" ("created_by_id"); 
GO
CREATE INDEX "content_versions_updated_by_id_idx" ON "content_versions" ("updated_by_id"); 
GO
CREATE INDEX "content_versions_internal_identifier_idx" ON "content_versions" ("internal_identifier"); 
GO
CREATE TABLE "website_section_contents" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "website_section_id" integer, "content_id" integer, "content_area" varchar(255), "position" integer DEFAULT 0, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "index_website_section_contents_on_website_section_id" ON "website_section_contents" ("website_section_id"); 
GO
CREATE INDEX "index_website_section_contents_on_content_id" ON "website_section_contents" ("content_id"); 
GO
CREATE INDEX "index_website_section_contents_on_position" ON "website_section_contents" ("position"); 
GO
CREATE INDEX "index_website_section_contents_on_content_area" ON "website_section_contents" ("content_area"); 
GO
CREATE TABLE "themes" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "website_id" integer, "name" varchar(255), "theme_id" varchar(255), "author" varchar(255), "version" integer, "homepage" varchar(255), "summary" text, "active" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "index_themes_on_website_id" ON "themes" ("website_id"); 
GO
CREATE INDEX "index_themes_on_active" ON "themes" ("active"); 
GO
CREATE TABLE "published_websites" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "website_id" integer, "comment" text, "version" decimal(18,6), "active" bit, "published_by_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "index_published_websites_on_website_id" ON "published_websites" ("website_id"); 
GO
CREATE INDEX "index_published_websites_on_version" ON "published_websites" ("version"); 
GO
CREATE INDEX "index_published_websites_on_active" ON "published_websites" ("active"); 
GO
CREATE INDEX "index_published_websites_on_published_by_id" ON "published_websites" ("published_by_id"); 
GO
CREATE TABLE "published_elements" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "published_website_id" integer, "published_element_record_id" integer, "published_element_record_type" varchar(255), "version" integer, "published_by_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "published_elm_idx" ON "published_elements" ("published_element_record_id", "published_element_record_type"); 
GO
CREATE INDEX "index_published_elements_on_published_website_id" ON "published_elements" ("published_website_id"); 
GO
CREATE INDEX "index_published_elements_on_version" ON "published_elements" ("version"); 
GO
CREATE INDEX "index_published_elements_on_published_by_id" ON "published_elements" ("published_by_id"); 
GO
CREATE TABLE "comments" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "commentor_name" varchar(255), "email" varchar(255), "comment" text, "approved" integer, "approved_at" datetime, "user_id" integer, "commented_record_id" integer, "commented_record_type" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "commented_record_idx" ON "comments" ("commented_record_id", "commented_record_type"); 
GO
CREATE INDEX "index_comments_on_approved" ON "comments" ("approved"); 
GO
CREATE INDEX "index_comments_on_user_id" ON "comments" ("user_id"); 
GO
CREATE TABLE "website_nav_items" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "website_nav_id" integer, "title" varchar(255), "url" varchar(255), "position" integer DEFAULT 0, "linked_to_item_id" integer, "linked_to_item_type" varchar(255), "parent_id" integer, "lft" integer, "rgt" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "linked_to_idx" ON "website_nav_items" ("linked_to_item_id", "linked_to_item_type"); 
GO
CREATE INDEX "index_website_nav_items_on_website_nav_id" ON "website_nav_items" ("website_nav_id"); 
GO
CREATE INDEX "index_website_nav_items_on_position" ON "website_nav_items" ("position"); 
GO
CREATE INDEX "index_website_nav_items_on_parent_id" ON "website_nav_items" ("parent_id"); 
GO
CREATE INDEX "index_website_nav_items_on_lft" ON "website_nav_items" ("lft"); 
GO
CREATE INDEX "index_website_nav_items_on_rgt" ON "website_nav_items" ("rgt"); 
GO
CREATE TABLE "website_navs" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "website_id" integer, "name" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "index_website_navs_on_website_id" ON "website_navs" ("website_id"); 
GO
CREATE TABLE "tags" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "name" varchar(255)); 
GO
CREATE TABLE "taggings" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "tag_id" integer, "taggable_id" integer, "tagger_id" integer, "tagger_type" varchar(255), "taggable_type" varchar(255), "context" varchar(255), "created_at" datetime); 
GO
CREATE INDEX "index_taggings_on_tag_id" ON "taggings" ("tag_id"); 
GO
CREATE INDEX "taggable_poly_idx" ON "taggings" ("taggable_id", "taggable_type", "context"); 
GO
CREATE TABLE "website_party_roles" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "website_id" integer, "role_type_id" integer, "party_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "index_website_party_roles_on_website_id" ON "website_party_roles" ("website_id"); 
GO
CREATE INDEX "index_website_party_roles_on_role_type_id" ON "website_party_roles" ("role_type_id"); 
GO
CREATE INDEX "index_website_party_roles_on_party_id" ON "website_party_roles" ("party_id"); 
GO
CREATE TABLE "documented_items" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "documented_klass" varchar(255), "documented_content_id" integer, "online_document_section_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "documented_items_documented_content_id_idx" ON "documented_items" ("documented_content_id"); 
GO
CREATE INDEX "documented_items_online_document_section_id_idx" ON "documented_items" ("online_document_section_id"); 
GO
CREATE TABLE "documents" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "external_identifier" varchar(255), "internal_identifier" varchar(255), "description" varchar(255), "document_date" datetime, "document_record_id" integer, "document_record_type" varchar(255), "document_type_id" integer, "custom_fields" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "document_record_poly_idx" ON "documents" ("document_record_type", "document_record_id"); 
GO
CREATE INDEX "document_type_idx" ON "documents" ("document_type_id"); 
GO
CREATE INDEX "documents_internal_identifier_idx" ON "documents" ("internal_identifier"); 
GO
CREATE TABLE "document_types" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "external_identifier" varchar(255), "internal_identifier" varchar(255), "description" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "document_types_internal_identifier_idx" ON "document_types" ("internal_identifier"); 
GO
CREATE TABLE "valid_documents" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "document_id" integer, "documented_model_id" integer, "documented_model_type" varchar(255)); 
GO
CREATE INDEX "index_valid_documents_on_document_id" ON "valid_documents" ("document_id"); 
GO
CREATE INDEX "valid_documents_model_idx" ON "valid_documents" ("documented_model_id", "documented_model_type"); 
GO
CREATE TABLE "reports" ("id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "name" varchar(255), "internal_identifier" varchar(255), "template" text, "query" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL); 
GO
CREATE INDEX "reports_internal_identifier_idx" ON "reports" ("internal_identifier"); 
GO
CREATE TABLE "data_migrations" ("version" varchar(255)); 
GO


--INSERT INTO schema_migrations (version) VALUES ('20100819181805'); 
--GO

--INSERT INTO schema_migrations (version) VALUES ('20151006064122'); 
--GO

--INSERT INTO schema_migrations (version) VALUES ('20151006064123'); 
--GO

--INSERT INTO schema_migrations (version) VALUES ('20151006064124'); 
--GO

--INSERT INTO schema_migrations (version) VALUES ('20151006064125'); 
--GO

--INSERT INTO schema_migrations (version) VALUES ('20151006064126'); 
--GO

--INSERT INTO schema_migrations (version) VALUES ('20151006064127'); 
--GO

--INSERT INTO schema_migrations (version) VALUES ('20151006064128'); 
--GO

--INSERT INTO schema_migrations (version) VALUES ('20151006064129'); 
--GO

--INSERT INTO schema_migrations (version) VALUES ('20151006064130'); 
--GO

--INSERT INTO schema_migrations (version) VALUES ('20151006064131'); 
--GO