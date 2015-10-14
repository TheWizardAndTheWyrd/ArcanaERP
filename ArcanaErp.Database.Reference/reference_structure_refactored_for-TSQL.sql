CREATE TABLE "SchemaMigration" ("Version" VARCHAR(255) NOT NULL);
GO
CREATE UNIQUE INDEX "UniqueSchemaMigration" ON "SchemaMigration" ("Version"); 
GO
CREATE TABLE "ArcanaErpInstance" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" VARCHAR(255), "InternalIdentifier" VARCHAR(255), "Version" decimal(8,3), "Type" VARCHAR(255), "Schema" VARCHAR(255) DEFAULT 'public', "ParentId" INTEGER, "GuId" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IIdIndex" ON "ArcanaErpInstance" ("InternalIdentifier"); 
GO
CREATE INDEX "SchemaIndex" ON "ArcanaErpInstance" ("Schema"); 
GO
CREATE INDEX "TypeIndex" ON "ArcanaErpInstance" ("Type"); 
GO
CREATE INDEX "ParentIdIndex" ON "ArcanaErpInstance" ("ParentId"); 
GO
CREATE INDEX "GuIdIndex" ON "ArcanaErpInstance" ("GuId"); 
GO
CREATE TABLE "ArcanaErpInstancePartyRole" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" VARCHAR(255), "ArcanaErpInstanceId" INTEGER, "PartyId" INTEGER, "RoleTypeId" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "ArcanaErpInstanceIdIndex" ON "ArcanaErpInstancePartyRole" ("ArcanaErpInstanceId"); 
GO
CREATE INDEX "PartyIdIndex" ON "ArcanaErpInstancePartyRole" ("PartyId"); 
GO
CREATE INDEX "RoleTypeIdIndex" ON "ArcanaErpInstancePartyRole" ("RoleTypeId"); 
GO
CREATE TABLE "Party" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" VARCHAR(255), "BusinessPartyId" INTEGER, "BusinessPartyType" VARCHAR(255), "ListViewImageId" INTEGER, "EnterpriseIdentifier" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "Besi1" ON "Party" ("BusinessPartyId", "BusinessPartyType"); 
GO
CREATE TABLE "PartyRole" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Type" VARCHAR(255), "PartyId" INTEGER, "RoleTypeId" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexPartyRoleOnPartyId" ON "PartyRole" ("PartyId"); 
GO
CREATE INDEX "IndexPartyRoleOnRoleTypeId" ON "PartyRole" ("RoleTypeId"); 
GO
CREATE TABLE "RoleType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" INTEGER, "LeftValue" INTEGER, "RightValue" INTEGER, "Description" VARCHAR(255), "Comments" VARCHAR(255), "InternalIdentifier" VARCHAR(255), "ExternalIdentifier" VARCHAR(255), "ExternalIdSource" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "RoleTypeIIdIndex" ON "RoleType" ("InternalIdentifier"); 
GO
CREATE INDEX "RoleTypeParentIdIndex" ON "RoleType" ("ParentId"); 
GO
CREATE INDEX "RoleTypeLeftValueIndex" ON "RoleType" ("LeftValue"); 
GO
CREATE INDEX "RoleTypeRightValueIndex" ON "RoleType" ("RightValue"); 
GO
CREATE TABLE "RelationshipType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" INTEGER, "LeftValue" INTEGER, "RightValue" INTEGER, "ValidFromRoleTypeId" INTEGER, "ValidToRoleTypeId" INTEGER, "Name" VARCHAR(255), "Description" VARCHAR(255), "InternalIdentifier" VARCHAR(255), "ExternalIdentifier" VARCHAR(255), "ExternalIdsource" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexRelationshipTypeOnValidFromRoleTypeId" ON "RelationshipType" ("ValidFromRoleTypeId"); 
GO
CREATE INDEX "IndexRelationshipTypeOnValidToRoleTypeId" ON "RelationshipType" ("ValidToRoleTypeId"); 
GO
CREATE INDEX "RelationshipTypeParentIdIndex" ON "RelationshipType" ("ParentId"); 
GO
CREATE INDEX "RelationshipTypeInternalIdentifierIndex" ON "RelationshipType" ("InternalIdentifier"); 
GO
CREATE TABLE "PartyRelationship" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" VARCHAR(255), "PartyIdFrom" INTEGER, "PartyIdTo" INTEGER, "RoleTypeIdFrom" INTEGER, "RoleTypeIdTo" INTEGER, "StatusTypeId" INTEGER, "PriorityTypeId" INTEGER, "RelationshipTypeId" INTEGER, "FromDate" Date, "thruDate" Date, "ExternalIdentifier" VARCHAR(255), "ExternalIdsource" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexPartyRelationshipOnStatusTypeId" ON "PartyRelationship" ("StatusTypeId"); 
GO
CREATE INDEX "IndexPartyRelationshipOnPriorityTypeId" ON "PartyRelationship" ("PriorityTypeId"); 
GO
CREATE INDEX "IndexPartyRelationshipOnRelationshipTypeId" ON "PartyRelationship" ("RelationshipTypeId"); 
GO
CREATE TABLE "OrganizatiOn" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" VARCHAR(255), "TaxIdnumber" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "Individual" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "PartyId" INTEGER, "CurrentLastName" VARCHAR(255), "CurrentFirstName" VARCHAR(255), "CurrentmIddleName" VARCHAR(255), "CurrentpersOnalTitle" VARCHAR(255), "Currentsuffix" VARCHAR(255), "CurrentnickName" VARCHAR(255), "gender" VARCHAR(1), "birthDate" Date, "Height" decimal(5,2), "weight" INTEGER, "mothersmaIdenName" VARCHAR(255), "maritalStatus" VARCHAR(1), "socialSecuritynumber" VARCHAR(255), "Currentpassportnumber" INTEGER, "CurrentpassportexpireDate" Date, "Totalyearsworkexperience" INTEGER, "Comments" VARCHAR(255), "enCryptedssn" VARCHAR(255), "tempssn" VARCHAR(255), "Salt" VARCHAR(255), "ssnLastfour" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexIndividualOnPartyId" ON "Individual" ("PartyId"); 
GO
CREATE TABLE "ContactType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" INTEGER, "LeftValue" INTEGER, "RightValue" INTEGER, "Description" VARCHAR(255), "Comments" VARCHAR(255), "InternalIdentifier" VARCHAR(255), "ExternalIdentifier" VARCHAR(255), "ExternalIdsource" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexContactTypeOnParentId" ON "ContactType" ("ParentId"); 
GO
CREATE INDEX "IndexContactTypeOnLeftValue" ON "ContactType" ("LeftValue"); 
GO
CREATE INDEX "IndexContactTypeOnRightValue" ON "ContactType" ("RightValue"); 
GO
CREATE INDEX "ContactTypeInternalIdentifierIndex" ON "ContactType" ("InternalIdentifier"); 
GO
CREATE TABLE "ContactPurpose" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" INTEGER, "LeftValue" INTEGER, "RightValue" INTEGER, "Description" VARCHAR(255), "Comments" VARCHAR(255), "InternalIdentifier" VARCHAR(255), "ExternalIdentifier" VARCHAR(255), "ExternalIdsource" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexContactPurposeOnParentId" ON "ContactPurpose" ("ParentId"); 
GO
CREATE TABLE "ContactPurposeContact" ("ContactId" INTEGER, "ContactpurposeId" INTEGER); 
GO
CREATE INDEX "ContactPurposeContactIndex" ON "ContactPurposeContact" ("ContactId", "ContactpurposeId"); 
GO
CREATE INDEX "ContactPurposeInternalIdentifierIndex" ON "ContactPurpose" ("InternalIdentifier"); 
GO
CREATE TABLE "PostalAddresses" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Addressline1" VARCHAR(255), "Addressline2" VARCHAR(255), "city" VARCHAR(255), "State" VARCHAR(255), "zip" VARCHAR(255), "Country" VARCHAR(255), "Description" VARCHAR(255), "GeoCountryId" INTEGER, "GeozOneId" INTEGER, "latitude" decimal(12,8), "lOngitude" decimal(12,8), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexPostalAddressesOnGeoCountryId" ON "PostalAddresses" ("GeoCountryId"); 
GO
CREATE INDEX "IndexPostalAddressesOnGeozOneId" ON "PostalAddresses" ("GeozOneId"); 
GO
CREATE TABLE "EmailAddress" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "EmailAddress" VARCHAR(255), "Description" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "PhoneNumber" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Phonenumber" VARCHAR(255), "Description" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "Money" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" VARCHAR(255), "amount" decimal(8,2), "CurrencyId" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexMoneyOnCurrencyId" ON "Money" ("CurrencyId"); 
GO
CREATE TABLE "Currency" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Name" VARCHAR(255), "definitiOn" VARCHAR(255), "InternalIdentifier" VARCHAR(255), "numericcode" VARCHAR(255), "majorunitsymbol" VARCHAR(255), "minorunitsymbol" VARCHAR(255), "ratioofminorunitTomajorunit" VARCHAR(255), "postfixlabel" VARCHAR(255), "introductiOnDate" DATETIME, "expiratiOnDate" DATETIME, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexCurrencyOnInternalIdentifier" ON "Currency" ("InternalIdentifier"); 
GO
CREATE TABLE "Category" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" VARCHAR(255), "ExternalIdentifier" VARCHAR(255), "FromDate" DATETIME, "ToDate" DATETIME, "InternalIdentifier" VARCHAR(255), "CategoryRecordId" INTEGER, "CategoryRecordType" VARCHAR(255), "ParentId" INTEGER, "LeftValue" INTEGER, "RightValue" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "CategoryPolymorphic" ON "Category" ("CategoryRecordId", "CategoryRecordType"); 
GO
CREATE INDEX "CategoryInternalIdentifierIndex" ON "Category" ("InternalIdentifier"); 
GO
CREATE INDEX "CategoryParentIdIndex" ON "Category" ("ParentId"); 
GO
CREATE INDEX "CategoryLeftValueIndex" ON "Category" ("LeftValue"); 
GO
CREATE INDEX "CategoryRightValueIndex" ON "Category" ("RightValue"); 
GO
CREATE TABLE "CategoryClassification" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "CategoryId" INTEGER, "ClassificationType" VARCHAR(255), "ClassificationId" INTEGER, "FromDate" DATETIME, "ToDate" DATETIME, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "ClassificationPolymorphic" ON "CategoryClassification" ("ClassificationId", "ClassificationType"); 
GO
CREATE INDEX "CategoryClassificationCategoryIdIndex" ON "CategoryClassification" ("CategoryId"); 
GO
CREATE TABLE "DescriptiveAsset" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ViewTypeId" INTEGER, "InternalIdentifier" VARCHAR(255), "Description" text, "ExternalIdentifier" VARCHAR(255), "ExternalIdsource" VARCHAR(255), "DescribedRecordId" INTEGER, "DescribedRecordType" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexDescriptiveAssetOnViewTypeId" ON "DescriptiveAsset" ("ViewTypeId"); 
GO
CREATE INDEX "DescribedRecordIndex" ON "DescriptiveAsset" ("DescribedRecordId", "DescribedRecordType"); 
GO
CREATE INDEX "DescriptiveAssetInternalIdentifierIndex" ON "DescriptiveAsset" ("InternalIdentifier"); 
GO
CREATE TABLE "ViewType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "InternalIdentifier" VARCHAR(255), "Description" VARCHAR(255), "LeftValue" INTEGER, "RightValue" INTEGER, "ParentId" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexViewTypeOnLeftValue" ON "ViewType" ("LeftValue"); 
GO
CREATE INDEX "IndexViewTypeOnRightValue" ON "ViewType" ("RightValue"); 
GO
CREATE INDEX "IndexViewTypeOnParentId" ON "ViewType" ("ParentId"); 
GO
CREATE INDEX "ViewTypeInternalIdentifierIndex" ON "ViewType" ("InternalIdentifier"); 
GO
CREATE TABLE "GeoCountry" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Name" VARCHAR(255), "IsoCode2" VARCHAR(255), "isocode3" VARCHAR(255), "display" BIT DEFAULT 't', "ExternalId" INTEGER, "CreatedAt" DATETIME); 
GO
CREATE INDEX "IndexGeoCountryOnName" ON "GeoCountry" ("Name"); 
GO
CREATE INDEX "IndexGeoCountryOnIsoCode2" ON "GeoCountry" ("IsoCode2"); 
GO
CREATE TABLE "GeoZone" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "GeoCountryId" INTEGER, "ZoneCode" VARCHAR(255) DEFAULT 2, "ZoneName" VARCHAR(255), "CreatedAt" DATETIME); 
GO
CREATE INDEX "IndexGeoZoneOnGeoCountryId" ON "GeoZone" ("GeoCountryId"); 
GO
CREATE INDEX "IndexGeoZoneOnZoneName" ON "GeoZone" ("ZoneName"); 
GO
CREATE INDEX "IndexGeoZoneOnZoneCode" ON "GeoZone" ("ZoneCode"); 
GO
CREATE TABLE "Note" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "CreatedById" INTEGER, "Content" text, "NotedRecordId" INTEGER, "NotedRecordType" VARCHAR(255), "NoteTypeId" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexNoteOnNotedRecordIdandNotedRecordType" ON "Note" ("NotedRecordId", "NotedRecordType"); 
GO
CREATE INDEX "IndexNoteOnNoteTypeId" ON "Note" ("NoteTypeId"); 
GO
CREATE INDEX "IndexNoteOnCreatedById" ON "Note" ("CreatedById"); 
GO
CREATE TABLE "NoteType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" INTEGER, "LeftValue" INTEGER, "RightValue" INTEGER, "Description" VARCHAR(255), "InternalIdentifier" VARCHAR(255), "ExternalIdentifier" VARCHAR(255), "NoteTypeRecordId" INTEGER, "NoteTypeRecordType" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "NoteTypeRecordIndex" ON "NoteType" ("NoteTypeRecordId", "NoteTypeRecordType"); 
GO
CREATE INDEX "NoteTypeParentIdIndex" ON "NoteType" ("ParentId"); 
GO
CREATE INDEX "NoteTypeInternalIdentifierIndex" ON "NoteType" ("InternalIdentifier"); 
GO
CREATE TABLE "ValidNoteType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ValidNoteTypeRecordId" INTEGER, "ValidNoteTypeRecordType" VARCHAR(255), "NoteTypeId" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "ValidNoteTypeRecordIndex" ON "ValidNoteType" ("ValidNoteTypeRecordId", "ValidNoteTypeRecordType"); 
GO
CREATE INDEX "IndexValidNoteTypeOnNoteTypeId" ON "ValidNoteType" ("NoteTypeId"); 
GO
CREATE TABLE "StatusApplication" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "TrackedStatusTypeId" INTEGER, "StatusApplicationRecordId" INTEGER, "StatusApplicationRecordType" VARCHAR(255), "FromDate" DATETIME, "thruDate" DATETIME, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL, "PartyId" INTEGER); 
GO
CREATE INDEX "StatusApplicationRecordIndex" ON "StatusApplication" ("StatusApplicationRecordId", "StatusApplicationRecordType"); 
GO
CREATE INDEX "TrackedStatusTypeIdIndex" ON "StatusApplication" ("TrackedStatusTypeId"); 
GO
CREATE INDEX "FromDateIndex" ON "StatusApplication" ("FromDate"); 
GO
CREATE INDEX "thruDateIndex" ON "StatusApplication" ("thruDate"); 
GO
CREATE TABLE "TrackedStatusType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" VARCHAR(255), "InternalIdentifier" VARCHAR(255), "ExternalIdentifier" VARCHAR(255), "LeftValue" INTEGER, "RightValue" INTEGER, "ParentId" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "TrackedStatusTypeIIdIndex" ON "TrackedStatusType" ("InternalIdentifier"); 
GO
CREATE INDEX "IndexTrackedStatusTypeOnLeftValue" ON "TrackedStatusType" ("LeftValue"); 
GO
CREATE INDEX "IndexTrackedStatusTypeOnRightValue" ON "TrackedStatusType" ("RightValue"); 
GO
CREATE INDEX "IndexTrackedStatusTypeOnParentId" ON "TrackedStatusType" ("ParentId"); 
GO
CREATE TABLE "Facility" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" VARCHAR(255), "InternalIdentifier" VARCHAR(255), "FacilityTypeId" INTEGER, "PostalAddressId" INTEGER, "FacilityRecordId" INTEGER, "FacilityRecordType" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "FacilityRecordIndex" ON "Facility" ("FacilityRecordId", "FacilityRecordType"); 
GO
CREATE INDEX "FacilityPostalAddressIndex" ON "Facility" ("PostalAddressId"); 
GO
CREATE TABLE "FacilityType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" VARCHAR(255), "InternalIdentifier" VARCHAR(255), "ExternalIdentifier" VARCHAR(255), "ExternalIdentifersource" VARCHAR(255), "ParentId" INTEGER, "LeftValue" INTEGER, "RightValue" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "FacilityTypenestedsetIndex" ON "FacilityType" ("ParentId", "LeftValue", "RightValue"); 
GO
CREATE TABLE "FixedAsset" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "FixedAssetTypeId" INTEGER, "Description" VARCHAR(255), "Comments" VARCHAR(255), "InternalIdentifier" VARCHAR(255), "ExternalIdentifier" VARCHAR(255), "ExternalIdsource" VARCHAR(255), "FixedAssetRecordType" VARCHAR(255), "FixedAssetRecordId" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "FixedAssetRecordIndex" ON "FixedAsset" ("FixedAssetRecordType", "FixedAssetRecordId"); 
GO
CREATE INDEX "FixedAssetFixedAssetTypeIndex" ON "FixedAsset" ("FixedAssetTypeId"); 
GO
CREATE TABLE "FixedAssetType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" INTEGER, "LeftValue" INTEGER, "RightValue" INTEGER, "Description" VARCHAR(255), "Comments" VARCHAR(255), "InternalIdentifier" VARCHAR(255), "ExternalIdentifier" VARCHAR(255), "ExternalIdsource" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "FixedAssetTypenestedsetIndex" ON "FixedAssetType" ("ParentId", "LeftValue", "RightValue"); 
GO
CREATE TABLE "PartyFixedAssetAssignment" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "PartyId" INTEGER, "FixedAssetId" INTEGER, "AssignedFrom" DATETIME, "Assignedthru" DATETIME, "allocatedcostMoneyId" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "PartyFixedAssetAssignIndex" ON "PartyFixedAssetAssignment" ("PartyId", "FixedAssetId"); 
GO
CREATE TABLE "FixedAssetPartyRole" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "PartyId" INTEGER, "FixedAssetId" INTEGER, "RoleTypeId" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "UnitOfMeasurement" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" VARCHAR(255), "Domain" VARCHAR(255), "InternalIdentifier" VARCHAR(255), "Comments" VARCHAR(255), "ExternalIdentifier" VARCHAR(255), "ExternalIdsource" VARCHAR(255), "LeftValue" INTEGER, "RightValue" INTEGER, "ParentId" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexUnitOfMeasurementOnLeftValue" ON "UnitOfMeasurement" ("LeftValue"); 
GO
CREATE INDEX "IndexUnitOfMeasurementOnRightValue" ON "UnitOfMeasurement" ("RightValue"); 
GO
CREATE INDEX "IndexUnitOfMeasurementOnParentId" ON "UnitOfMeasurement" ("ParentId"); 
GO
CREATE TABLE "GeneratedItems" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "GeneratedById" INTEGER, "GeneratedByType" VARCHAR(255), "GeneratedRecordId" INTEGER, "GeneratedRecordType" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "GeneratedByIndex" ON "GeneratedItems" ("GeneratedByType", "GeneratedById"); 
GO
CREATE INDEX "GeneratedRecordIndex" ON "GeneratedItems" ("GeneratedRecordType", "GeneratedRecordId"); 
GO
CREATE TABLE "EntityPartyRole" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "PartyId" INTEGER, "RoleTypeId" INTEGER, "EntityRecordId" INTEGER, "EntityRecordType" VARCHAR(255)); 
GO
CREATE INDEX "IndexEntityPartyRoleOnPartyId" ON "EntityPartyRole" ("PartyId"); 
GO
CREATE INDEX "IndexEntityPartyRoleOnRoleTypeId" ON "EntityPartyRole" ("RoleTypeId"); 
GO
CREATE INDEX "EntityPartyRoleEntityRecordIndex" ON "EntityPartyRole" ("EntityRecordId", "EntityRecordType"); 
GO
CREATE TABLE "Contact" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ContactMechanismId" INTEGER, "ContactMechanismType" VARCHAR(255), "IsPrimary" BIT, "ExternalIdentifier" VARCHAR(255), "ExternalIdsource" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL, "ContactRecordType" VARCHAR(255), "ContactRecordId" INTEGER); 
GO
CREATE INDEX "IndexContactOnIsPrimary" ON "Contact" ("IsPrimary"); 
GO
CREATE INDEX "Besi2" ON "Contact" ("ContactMechanismId", "ContactMechanismType"); 
GO
CREATE INDEX "ContactContactRecordIndex" ON "Contact" ("ContactRecordType", "ContactRecordId"); 
GO
CREATE INDEX "StatusApplicationPartyIndex" ON "StatusApplication" ("PartyId"); 
GO
CREATE TABLE "Users" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "UserName" VARCHAR(255), "Email" VARCHAR(255), "PartyId" INTEGER, "Type" VARCHAR(255), "Salt" VARCHAR(255), "CryptedPassword" VARCHAR(255), "LastLoginAt" DATETIME, "LastLogoutAt" DATETIME, "LastActivityAt" DATETIME, "FailedLoginsCount" INTEGER DEFAULT 0, "LockExpiresAt" DATETIME, "RememberMeToken" VARCHAR(255), "RememberMeTokenExpiresAt" DATETIME, "ResetPasswordToken" VARCHAR(255), "ResetPasswordTokenExpiresAt" DATETIME, "ResetPasswordEmailsentat" DATETIME, "ActivationState" VARCHAR(255), "ActivationToken" VARCHAR(255), "ActivationTokenExpiresAt" DATETIME, "SecurityQuestion1" VARCHAR(255), "SecurityAnswer1" VARCHAR(255), "SecurityQuestion2" VARCHAR(255), "SecurityAnswer2" VARCHAR(255), "AuthToken" VARCHAR(255), "AuthTokenExpiresAt" DATETIME, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL, "UnlockToken" VARCHAR(255) DEFAULT NULL, "LastloginFromIpAddress" VARCHAR(255) DEFAULT NULL); 
GO
CREATE UNIQUE INDEX "IndexUsersOnEmail" ON "Users" ("Email"); 
GO
CREATE UNIQUE INDEX "IndexUsersOnUserName" ON "Users" ("UserName"); 
GO
CREATE INDEX "ActivityIndex" ON "Users" ("LastLogoutAt", "LastActivityAt"); 
GO
CREATE INDEX "IndexUsersOnRememberMeToken" ON "Users" ("RememberMeToken"); 
GO
CREATE INDEX "IndexUsersOnResetPasswordToken" ON "Users" ("ResetPasswordToken"); 
GO
CREATE INDEX "IndexUsersOnActivationToken" ON "Users" ("ActivationToken"); 
GO
CREATE INDEX "UsersPartyIdIndex" ON "Users" ("PartyId"); 
GO
CREATE TABLE "Groups" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "SecurityRole" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" VARCHAR(255), "InternalIdentifier" VARCHAR(255), "ExternalIdentifier" VARCHAR(255), "ExternalIdsource" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL, "LeftValue" INTEGER, "RightValue" INTEGER, "ParentId" INTEGER); 
GO
CREATE INDEX "SecurityRoleInternalIdentifierIndex" ON "SecurityRole" ("InternalIdentifier"); 
GO
CREATE TABLE "Sessions" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "sessiOnId" VARCHAR(255) NOT NULL, "Data" text, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexSessionsOnsessiOnId" ON "Sessions" ("sessiOnId"); 
GO
CREATE INDEX "IndexSessionsOnUpdatedAt" ON "Sessions" ("UpdatedAt"); 
GO
CREATE TABLE "AuditLog" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Application" VARCHAR(255), "Description" VARCHAR(255), "PartyId" INTEGER, "additiOnalinfo" text, "AuditLogTypeId" INTEGER, "EventRecordId" INTEGER, "EventRecordType" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexAuditLogOnPartyId" ON "AuditLog" ("PartyId"); 
GO
CREATE INDEX "EventRecordIndex" ON "AuditLog" ("EventRecordId", "EventRecordType"); 
GO
CREATE INDEX "AuditLogAuditLogTypeIdIndex" ON "AuditLog" ("AuditLogTypeId"); 
GO
CREATE TABLE "AuditLogType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" VARCHAR(255), "ErrorCode" VARCHAR(255), "Comments" VARCHAR(255), "InternalIdentifier" VARCHAR(255), "ExternalIdentifier" VARCHAR(255), "ExternalIdsource" VARCHAR(255), "ParentId" INTEGER, "LeftValue" INTEGER, "RightValue" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "AuditLogTypeInternalIdentifierIndex" ON "AuditLogType" ("InternalIdentifier"); 
GO
CREATE INDEX "AuditLogTypeParentIdIndex" ON "AuditLogType" ("ParentId"); 
GO
CREATE TABLE "AuditLogItems" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "AuditLogId" INTEGER, "AuditLogItemTypeId" INTEGER, "AuditLogItemValue" VARCHAR(255), "AuditLogItemoldValue" VARCHAR(255), "Description" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "AuditLogItemsAuditLogIdIndex" ON "AuditLogItems" ("AuditLogId"); 
GO
CREATE INDEX "AuditLogItemsAuditLogItemTypeIdIndex" ON "AuditLogItems" ("AuditLogItemTypeId"); 
GO
CREATE TABLE "AuditLogItemType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "InternalIdentifier" VARCHAR(255), "ExternalIdentifier" VARCHAR(255), "ExternalIdsource" VARCHAR(255), "Description" VARCHAR(255), "Comments" VARCHAR(255), "ParentId" INTEGER, "LeftValue" INTEGER, "RightValue" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "AuditLogItemTypeInternalIdentifierIndex" ON "AuditLogItemType" ("InternalIdentifier"); 
GO
CREATE INDEX "AuditLogItemTypeParentIdIndex" ON "AuditLogItemType" ("ParentId"); 
GO
CREATE INDEX "AuditLogItemTypeLeftValueIndex" ON "AuditLogItemType" ("LeftValue"); 
GO
CREATE INDEX "AuditLogItemTypeRightValueIndex" ON "AuditLogItemType" ("RightValue"); 
GO
CREATE TABLE "FileAsset" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Type" VARCHAR(255), "Name" VARCHAR(255), "Directory" VARCHAR(255), "DataFileName" VARCHAR(255), "DataContentType" VARCHAR(255), "DataFileSize" INTEGER, "DataUpdatedAt" DATETIME, "Width" VARCHAR(255), "Height" VARCHAR(255), "ScopedBy" text, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexFileAssetOnType" ON "FileAsset" ("Type"); 
GO
CREATE INDEX "IndexFileAssetOnName" ON "FileAsset" ("Name"); 
GO
CREATE INDEX "IndexFileAssetOnDirectory" ON "FileAsset" ("Directory"); 
GO
CREATE TABLE "FileAssetHolder" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "FileAssetId" INTEGER, "FileAssetHolderId" INTEGER, "FileAssetHolderType" VARCHAR(255), "ScopedBy" text, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "FileAssetHolderFileIdIndex" ON "FileAssetHolder" ("FileAssetId"); 
GO
CREATE INDEX "FileAssetHolderIndex" ON "FileAssetHolder" ("FileAssetHolderId", "FileAssetHolderType"); 
GO
CREATE TABLE "DelayedJob" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Priority" INTEGER DEFAULT 0, "Attempts" INTEGER DEFAULT 0, "handler" text, "Lasterror" text, "RunAt" DATETIME, "LockedAt" DATETIME, "FailedAt" DATETIME, "LockedBy" VARCHAR(255), "Queue" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "DelayedJobPriority" ON "DelayedJob" ("Priority", "RunAt"); 
GO
CREATE TABLE "CapableModels" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "CapableModelRecordId" INTEGER, "CapableModelRecordType" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "CapableModelRecordIndex" ON "CapableModels" ("CapableModelRecordId", "CapableModelRecordType"); 
GO
CREATE TABLE "CapabilityType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "InternalIdentifier" VARCHAR(255), "Description" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "CapabilityTypeInternalIdentifierIndex" ON "CapabilityType" ("InternalIdentifier"); 
GO
CREATE TABLE "Capability" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" VARCHAR(255), "CapabilityTypeId" INTEGER, "CapabilityresourceId" INTEGER, "CapabilityresourceType" VARCHAR(255), "ScopeTypeId" INTEGER, "ScopeQueryText" text, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexCapabilityOnCapabilityTypeId" ON "Capability" ("CapabilityTypeId"); 
GO
CREATE INDEX "IndexCapabilityOnScopeTypeId" ON "Capability" ("ScopeTypeId"); 
GO
CREATE INDEX "CapabilityresourceIndex" ON "Capability" ("CapabilityresourceId", "CapabilityresourceType"); 
GO
CREATE TABLE "CapabilityAccessor" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "CapabilityaccessorRecordId" INTEGER, "CapabilityaccessorRecordType" VARCHAR(255), "CapabilityId" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexCapabilityAccessorOnCapabilityId" ON "CapabilityAccessor" ("CapabilityId"); 
GO
CREATE INDEX "CapabilityaccessorRecordIndex" ON "CapabilityAccessor" ("CapabilityaccessorRecordId", "CapabilityaccessorRecordType"); 
GO
CREATE TABLE "ScopeType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" VARCHAR(255), "InternalIdentifier" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexScopeTypeOnInternalIdentifier" ON "ScopeType" ("InternalIdentifier"); 
GO
CREATE TABLE "PartySecurityRole" ("PartyId" INTEGER, "SecurityRoleId" INTEGER); 
GO
CREATE INDEX "IndexPartySecurityRoleOnPartyId" ON "PartySecurityRole" ("PartyId"); 
GO
CREATE INDEX "IndexPartySecurityRoleOnSecurityRoleId" ON "PartySecurityRole" ("SecurityRoleId"); 
GO
CREATE TABLE "Notification" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Type" VARCHAR(255), "CreatedById" INTEGER, "Message" text, "NotificationTypeId" INTEGER, "CurrentState" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL, "cusTomfields" text); 
GO
CREATE INDEX "IndexNotificationOnNotificationTypeId" ON "Notification" ("NotificationTypeId"); 
GO
CREATE INDEX "IndexNotificationOnCreatedById" ON "Notification" ("CreatedById"); 
GO
CREATE INDEX "IndexNotificationOnType" ON "Notification" ("Type"); 
GO
CREATE TABLE "NotificationType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "InternalIdentifier" VARCHAR(255), "Description" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexNotificationTypeOnInternalIdentifier" ON "NotificationType" ("InternalIdentifier"); 
GO
CREATE INDEX "IndexSecurityRoleOnParentId" ON "SecurityRole" ("ParentId"); 
GO
CREATE INDEX "IndexSecurityRoleOnLeftValue" ON "SecurityRole" ("LeftValue"); 
GO
CREATE INDEX "IndexSecurityRoleOnRightValue" ON "SecurityRole" ("RightValue"); 
GO
CREATE TABLE "Preference" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "PreferenceoptiOnId" INTEGER, "PreferenceTypeId" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexPreferenceOnPreferenceoptiOnId" ON "Preference" ("PreferenceoptiOnId"); 
GO
CREATE INDEX "IndexPreferenceOnPreferenceTypeId" ON "Preference" ("PreferenceTypeId"); 
GO
CREATE TABLE "PreferenceType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" VARCHAR(255), "InternalIdentifier" VARCHAR(255), "DefaultPreferenceOptionId" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexPreferenceTypeOnDefaultPreferenceOptionId" ON "PreferenceType" ("DefaultPreferenceOptionId"); 
GO
CREATE INDEX "PreferenceTypeInternalIdentifierIndex" ON "PreferenceType" ("InternalIdentifier"); 
GO
CREATE TABLE "PreferenceOption" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" VARCHAR(255), "InternalIdentifier" VARCHAR(255), "Value" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "PreferenceOptionInternalIdentifierIndex" ON "PreferenceOption" ("InternalIdentifier"); 
GO
CREATE TABLE "PreferenceOptionPreferenceType" ("PreferenceTypeId" INTEGER, "PreferenceoptiOnId" INTEGER); 
GO
CREATE INDEX "prefoptprefTypeprefTypeIdIndex" ON "PreferenceOptionPreferenceType" ("PreferenceTypeId"); 
GO
CREATE INDEX "prefoptprefTypeprefoptIdIndex" ON "PreferenceOptionPreferenceType" ("PreferenceoptiOnId"); 
GO
CREATE TABLE "ValidPreferenceType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "PreferenceTypeId" INTEGER, "PreferencedRecordId" INTEGER, "PreferencedRecordType" VARCHAR(255)); 
GO
CREATE INDEX "ValidPreferenceTypePreferenceTypeIdIndex" ON "ValidPreferenceType" ("PreferenceTypeId"); 
GO
CREATE INDEX "ValidPreferenceTypePreferencedRecordIdIndex" ON "ValidPreferenceType" ("PreferencedRecordId"); 
GO
CREATE TABLE "UsersPreference" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "UsersId" INTEGER, "PreferenceId" INTEGER, "PreferencedRecordId" INTEGER, "PreferencedRecordType" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexUsersPreferenceOnUsersId" ON "UsersPreference" ("UsersId"); 
GO
CREATE INDEX "IndexUsersPreferenceOnPreferenceId" ON "UsersPreference" ("PreferenceId"); 
GO
CREATE INDEX "IndexUsersPreferenceOnPreferencedRecordId" ON "UsersPreference" ("PreferencedRecordId"); 
GO
CREATE INDEX "IndexUsersPreferenceOnPreferencedRecordType" ON "UsersPreference" ("PreferencedRecordType"); 
GO
CREATE TABLE "Application" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" VARCHAR(255), "Icon" VARCHAR(255), "InternalIdentifier" VARCHAR(255), "Type" VARCHAR(255), "CanDelete" BIT DEFAULT 't', "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "ApplicationInternalIdentifierIndex" ON "Application" ("InternalIdentifier"); 
GO
CREATE TABLE "ApplicationUsers" ("ApplicationId" INTEGER, "UsersId" INTEGER); 
GO
CREATE INDEX "AppUsersAppIndex" ON "ApplicationUsers" ("ApplicationId"); 
GO
CREATE INDEX "AppUsersUsersIndex" ON "ApplicationUsers" ("UsersId"); 
GO
CREATE TABLE "TreeMenuNodeDef" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "NodeType" VARCHAR(255), "ParentId" INTEGER, "LeftValue" INTEGER, "RightValue" INTEGER, "MenuShortName" VARCHAR(255), "MenuDescription" VARCHAR(255), "text" VARCHAR(255), "IconUrl" VARCHAR(255), "targetUrl" VARCHAR(255), "resourceclass" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexTreeMenuNodeDefOnParentId" ON "TreeMenuNodeDef" ("ParentId"); 
GO
CREATE TABLE "Configuration" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" VARCHAR(255), "InternalIdentifier" VARCHAR(255), "Active" BIT, "isTempateText" BIT DEFAULT 'f', "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexConfigurationOnisTempateText" ON "Configuration" ("isTempateText"); 
GO
CREATE INDEX "ConfigurationInternalIdentifierIndex" ON "Configuration" ("InternalIdentifier"); 
GO
CREATE TABLE "ValidConfiguration" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ConfiguredItemId" INTEGER, "ConfiguredItemType" VARCHAR(255), "ConfigurationId" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "ConfiguredItempolyIndex" ON "ValidConfiguration" ("ConfiguredItemId", "ConfiguredItemType"); 
GO
CREATE INDEX "IndexValidConfigurationOnConfigurationId" ON "ValidConfiguration" ("ConfigurationId"); 
GO
CREATE TABLE "ConfigurationItems" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ConfigurationId" INTEGER, "ConfigurationItemTypeId" INTEGER, "ConfigurationoptiOnId" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexConfigurationItemsOnConfigurationId" ON "ConfigurationItems" ("ConfigurationId"); 
GO
CREATE INDEX "IndexConfigurationItemsOnConfigurationItemTypeId" ON "ConfigurationItems" ("ConfigurationItemTypeId"); 
GO
CREATE INDEX "IndexConfigurationItemsOnConfigurationoptiOnId" ON "ConfigurationItems" ("ConfigurationoptiOnId"); 
GO
CREATE TABLE "ConfigurationItemType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" INTEGER, "LeftValue" INTEGER, "RightValue" INTEGER, "precedence" INTEGER DEFAULT 0, "Description" VARCHAR(255), "InternalIdentifier" VARCHAR(255), "AllowUserDefinedOption" BIT DEFAULT 'f', "IsMultiOptional" BIT DEFAULT 'f', "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "ConfigurationItemTypeParentIdIndex" ON "ConfigurationItemType" ("ParentId"); 
GO
CREATE INDEX "ConfigurationItemTypeLeftValueIndex" ON "ConfigurationItemType" ("LeftValue"); 
GO
CREATE INDEX "ConfigurationItemTypeRightValueIndex" ON "ConfigurationItemType" ("RightValue"); 
GO
CREATE INDEX "ConfigurationItemTypeInternalIdentifierIndex" ON "ConfigurationItemType" ("InternalIdentifier"); 
GO
CREATE INDEX "ConfigItemTypeprecedenceIndex" ON "ConfigurationItemType" ("precedence"); 
GO
CREATE TABLE "ConfigurationItemTypeConfiguration" ("ConfigurationItemTypeId" INTEGER, "ConfigurationId" INTEGER); 
GO
CREATE INDEX "ConfConfTypeIdItemIndex" ON "ConfigurationItemTypeConfiguration" ("ConfigurationItemTypeId"); 
GO
CREATE INDEX "ConfIdIndex" ON "ConfigurationItemTypeConfiguration" ("ConfigurationId"); 
GO
CREATE UNIQUE INDEX "ConfConfigTypeuniqIndex" ON "ConfigurationItemTypeConfiguration" ("ConfigurationItemTypeId", "ConfigurationId"); 
GO
CREATE TABLE "ConfigurationOption" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" VARCHAR(255), "InternalIdentifier" VARCHAR(255), "Value" VARCHAR(255), "Comment" text, "Usersdefined" BIT DEFAULT 'f', "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexConfigurationOptionOnValue" ON "ConfigurationOption" ("Value"); 
GO
CREATE INDEX "IndexConfigurationOptionOnInternalIdentifier" ON "ConfigurationOption" ("InternalIdentifier"); 
GO
CREATE INDEX "IndexConfigurationOptionOnUsersdefined" ON "ConfigurationOption" ("Usersdefined"); 
GO
CREATE TABLE "ConfigurationItemTypeConfigurationOption" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ConfigurationItemTypeId" INTEGER, "ConfigurationoptiOnId" INTEGER, "isdefault" BIT DEFAULT 'f', "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "ConfItemTypeConfoptIdItemIndex" ON "ConfigurationItemTypeConfigurationOption" ("ConfigurationItemTypeId"); 
GO
CREATE INDEX "ConfItemTypeConfoptIdoptIndex" ON "ConfigurationItemTypeConfigurationOption" ("ConfigurationoptiOnId"); 
GO
CREATE TABLE "ConfigurationItemsConfigurationOption" ("ConfigurationItemId" INTEGER, "ConfigurationoptiOnId" INTEGER); 
GO
CREATE INDEX "ConfItemConfoptIdItemIndex" ON "ConfigurationItemsConfigurationOption" ("ConfigurationItemId"); 
GO
CREATE INDEX "ConfItemConfoptIdoptIndex" ON "ConfigurationItemsConfigurationOption" ("ConfigurationoptiOnId"); 
GO
CREATE TABLE "JobTracker" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "JobName" VARCHAR(255), "JobClass" VARCHAR(255), "RunTime" VARCHAR(255), "LastRunAt" DATETIME, "nextRunAt" DATETIME); 
GO
CREATE TABLE "WebSites" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Name" VARCHAR(255), "Title" VARCHAR(255), "SubTitle" VARCHAR(255), "InternalIdentifier" VARCHAR(255), "Publishing" BIT DEFAULT 'f', "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "WebSitesInternalIdentifierIndex" ON "WebSites" ("InternalIdentifier"); 
GO
CREATE TABLE "WebSiteHost" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "WebSiteId" INTEGER, "Host" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexWebSiteHostOnWebSiteId" ON "WebSiteHost" ("WebSiteId"); 
GO
CREATE TABLE "WebSiteInquiry" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "WebSiteId" INTEGER, "FirstName" VARCHAR(255), "LastName" VARCHAR(255), "Email" VARCHAR(255), "Message" text, "CreatedById" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexWebSiteInquiryOnWebSiteId" ON "WebSiteInquiry" ("WebSiteId"); 
GO
CREATE INDEX "InquiryCreatedByIndex" ON "WebSiteInquiry" ("CreatedById"); 
GO
CREATE TABLE "WebSiteSection" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Title" VARCHAR(255), "Type" VARCHAR(255), "WebSiteId" INTEGER, "Path" VARCHAR(255), "PermaLink" VARCHAR(255), "Layout" text, "InMenu" BIT, "Position" INTEGER DEFAULT 0, "UseMarkDown" BIT, "InternalIdentifier" VARCHAR(255), "Version" INTEGER, "renderbaseLayout" BIT DEFAULT 't', "ParentId" INTEGER, "LeftValue" INTEGER, "RightValue" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexWebSiteSectionOnPermaLink" ON "WebSiteSection" ("PermaLink"); 
GO
CREATE INDEX "IndexWebSiteSectionOnWebSiteId" ON "WebSiteSection" ("WebSiteId"); 
GO
CREATE INDEX "IndexWebSiteSectionOnPosition" ON "WebSiteSection" ("Position"); 
GO
CREATE INDEX "IndexWebSiteSectionOnParentId" ON "WebSiteSection" ("ParentId"); 
GO
CREATE INDEX "IndexWebSiteSectionOnLeftValue" ON "WebSiteSection" ("LeftValue"); 
GO
CREATE INDEX "IndexWebSiteSectionOnRightValue" ON "WebSiteSection" ("RightValue"); 
GO
CREATE INDEX "IndexWebSiteSectionOnVersion" ON "WebSiteSection" ("Version"); 
GO
CREATE INDEX "SectionIdIndex" ON "WebSiteSection" ("InternalIdentifier"); 
GO
CREATE TABLE "WebSiteSectionVersions" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "WebSiteSectionId" INTEGER, "Version" INTEGER, "Title" VARCHAR(255) DEFAULT NULL, "WebSiteId" INTEGER DEFAULT NULL, "Path" VARCHAR(255) DEFAULT NULL, "PermaLink" VARCHAR(255) DEFAULT NULL, "Layout" text DEFAULT NULL, "InMenu" BIT DEFAULT NULL, "Position" INTEGER DEFAULT 0, "UseMarkDown" BIT DEFAULT NULL, "InternalIdentifier" VARCHAR(255) DEFAULT NULL, "renderbaseLayout" BIT DEFAULT 't', "CreatedAt" DATETIME DEFAULT NULL, "UpdatedAt" DATETIME DEFAULT NULL, "VersionedType" VARCHAR(255) DEFAULT NULL); 
GO
CREATE INDEX "IndexWebSiteSectionVersionsOnWebSiteSectionId" ON "WebSiteSectionVersions" ("WebSiteSectionId"); 
GO
CREATE INDEX "WebSiteSectionVersionsWebSiteIdIndex" ON "WebSiteSectionVersions" ("WebSiteId"); 
GO
CREATE INDEX "WebSiteSectionVersionsInternalIdentifierIndex" ON "WebSiteSectionVersions" ("InternalIdentifier"); 
GO
CREATE TABLE "Content" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Type" VARCHAR(255), "Title" VARCHAR(255), "PermaLink" VARCHAR(255), "ExcerptHtml" text, "BodyHtml" text, "CreatedById" INTEGER, "UpdatedById" INTEGER, "InternalIdentifier" VARCHAR(255), "displayTitle" BIT, "Version" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexContentOnType" ON "Content" ("Type"); 
GO
CREATE INDEX "IndexContentOnCreatedById" ON "Content" ("CreatedById"); 
GO
CREATE INDEX "IndexContentOnUpdatedById" ON "Content" ("UpdatedById"); 
GO
CREATE INDEX "IndexContentOnPermaLink" ON "Content" ("PermaLink"); 
GO
CREATE INDEX "IndexContentOnVersion" ON "Content" ("Version"); 
GO
CREATE INDEX "ContentIIdIndex" ON "Content" ("InternalIdentifier"); 
GO
CREATE TABLE "ContentVersions" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ContentId" INTEGER, "Version" INTEGER, "Title" VARCHAR(255) DEFAULT NULL, "PermaLink" VARCHAR(255) DEFAULT NULL, "ExcerptHtml" text DEFAULT NULL, "BodyHtml" text DEFAULT NULL, "CreatedById" INTEGER DEFAULT NULL, "UpdatedById" INTEGER DEFAULT NULL, "InternalIdentifier" VARCHAR(255) DEFAULT NULL, "displayTitle" BIT DEFAULT NULL, "CreatedAt" DATETIME DEFAULT NULL, "UpdatedAt" DATETIME DEFAULT NULL, "VersionedType" VARCHAR(255) DEFAULT NULL); 
GO
CREATE INDEX "IndexContentVersionsOnContentId" ON "ContentVersions" ("ContentId"); 
GO
CREATE INDEX "ContentVersionsCreatedByIdIndex" ON "ContentVersions" ("CreatedById"); 
GO
CREATE INDEX "ContentVersionsUpdatedByIdIndex" ON "ContentVersions" ("UpdatedById"); 
GO
CREATE INDEX "ContentVersionsInternalIdentifierIndex" ON "ContentVersions" ("InternalIdentifier"); 
GO
CREATE TABLE "WebSiteSectionContent" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "WebSiteSectionId" INTEGER, "ContentId" INTEGER, "Contentarea" VARCHAR(255), "Position" INTEGER DEFAULT 0, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexWebSiteSectionContentOnWebSiteSectionId" ON "WebSiteSectionContent" ("WebSiteSectionId"); 
GO
CREATE INDEX "IndexWebSiteSectionContentOnContentId" ON "WebSiteSectionContent" ("ContentId"); 
GO
CREATE INDEX "IndexWebSiteSectionContentOnPosition" ON "WebSiteSectionContent" ("Position"); 
GO
CREATE INDEX "IndexWebSiteSectionContentOnContentarea" ON "WebSiteSectionContent" ("Contentarea"); 
GO
CREATE TABLE "Theme" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "WebSiteId" INTEGER, "Name" VARCHAR(255), "themeId" VARCHAR(255), "Author" VARCHAR(255), "Version" INTEGER, "HomePage" VARCHAR(255), "Summary" text, "Active" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexThemeOnWebSiteId" ON "Theme" ("WebSiteId"); 
GO
CREATE INDEX "IndexThemeOnActive" ON "Theme" ("Active"); 
GO
CREATE TABLE "PublishedWebSites" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "WebSiteId" INTEGER, "Comment" text, "Version" decimal(18,6), "Active" BIT, "PublishedById" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexPublishedWebSitesOnWebSiteId" ON "PublishedWebSites" ("WebSiteId"); 
GO
CREATE INDEX "IndexPublishedWebSitesOnVersion" ON "PublishedWebSites" ("Version"); 
GO
CREATE INDEX "IndexPublishedWebSitesOnActive" ON "PublishedWebSites" ("Active"); 
GO
CREATE INDEX "IndexPublishedWebSitesOnPublishedById" ON "PublishedWebSites" ("PublishedById"); 
GO
CREATE TABLE "Publishedelements" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "PublishedWebSiteId" INTEGER, "PublishedelementRecordId" INTEGER, "PublishedelementRecordType" VARCHAR(255), "Version" INTEGER, "PublishedById" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "PublishedelmIndex" ON "Publishedelements" ("PublishedelementRecordId", "PublishedelementRecordType"); 
GO
CREATE INDEX "IndexPublishedelementsOnPublishedWebSiteId" ON "Publishedelements" ("PublishedWebSiteId"); 
GO
CREATE INDEX "IndexPublishedelementsOnVersion" ON "Publishedelements" ("Version"); 
GO
CREATE INDEX "IndexPublishedelementsOnPublishedById" ON "Publishedelements" ("PublishedById"); 
GO
CREATE TABLE "Comments" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "CommentorName" VARCHAR(255), "Email" VARCHAR(255), "Comment" text, "approved" INTEGER, "approvedat" DATETIME, "UsersId" INTEGER, "CommentedRecordId" INTEGER, "CommentedRecordType" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "CommentedRecordIndex" ON "Comments" ("CommentedRecordId", "CommentedRecordType"); 
GO
CREATE INDEX "IndexCommentsOnapproved" ON "Comments" ("approved"); 
GO
CREATE INDEX "IndexCommentsOnUsersId" ON "Comments" ("UsersId"); 
GO
CREATE TABLE "WebSitenavItems" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "WebSitenavId" INTEGER, "Title" VARCHAR(255), "Url" VARCHAR(255), "Position" INTEGER DEFAULT 0, "linkedToItemId" INTEGER, "linkedToItemType" VARCHAR(255), "ParentId" INTEGER, "LeftValue" INTEGER, "RightValue" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "linkedToIndex" ON "WebSitenavItems" ("linkedToItemId", "linkedToItemType"); 
GO
CREATE INDEX "IndexWebSitenavItemsOnWebSitenavId" ON "WebSitenavItems" ("WebSitenavId"); 
GO
CREATE INDEX "IndexWebSitenavItemsOnPosition" ON "WebSitenavItems" ("Position"); 
GO
CREATE INDEX "IndexWebSitenavItemsOnParentId" ON "WebSitenavItems" ("ParentId"); 
GO
CREATE INDEX "IndexWebSitenavItemsOnLeftValue" ON "WebSitenavItems" ("LeftValue"); 
GO
CREATE INDEX "IndexWebSitenavItemsOnRightValue" ON "WebSitenavItems" ("RightValue"); 
GO
CREATE TABLE "WebSitenavs" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "WebSiteId" INTEGER, "Name" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexWebSitenavsOnWebSiteId" ON "WebSitenavs" ("WebSiteId"); 
GO
CREATE TABLE "Tag" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Name" VARCHAR(255)); 
GO
CREATE TABLE "Taggings" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "TagId" INTEGER, "TaggableId" INTEGER, "TaggerId" INTEGER, "TaggerType" VARCHAR(255), "TaggableType" VARCHAR(255), "Context" VARCHAR(255), "CreatedAt" DATETIME); 
GO
CREATE INDEX "IndexTaggingsOnTagId" ON "Taggings" ("TagId"); 
GO
CREATE INDEX "TaggablepolyIndex" ON "Taggings" ("TaggableId", "TaggableType", "Context"); 
GO
CREATE TABLE "WebSitePartyRole" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "WebSiteId" INTEGER, "RoleTypeId" INTEGER, "PartyId" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexWebSitePartyRoleOnWebSiteId" ON "WebSitePartyRole" ("WebSiteId"); 
GO
CREATE INDEX "IndexWebSitePartyRoleOnRoleTypeId" ON "WebSitePartyRole" ("RoleTypeId"); 
GO
CREATE INDEX "IndexWebSitePartyRoleOnPartyId" ON "WebSitePartyRole" ("PartyId"); 
GO
CREATE TABLE "DocumentedItems" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "DocumentedClass" VARCHAR(255), "DocumentedContentId" INTEGER, "OnlineDocumentSectionId" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "DocumentedItemsDocumentedContentIdIndex" ON "DocumentedItems" ("DocumentedContentId"); 
GO
CREATE INDEX "DocumentedItemsOnlineDocumentSectionIdIndex" ON "DocumentedItems" ("OnlineDocumentSectionId"); 
GO
CREATE TABLE "Documents" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ExternalIdentifier" VARCHAR(255), "InternalIdentifier" VARCHAR(255), "Description" VARCHAR(255), "DocumentDate" DATETIME, "DocumentRecordId" INTEGER, "DocumentRecordType" VARCHAR(255), "DocumentTypeId" INTEGER, "cusTomfields" text, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "DocumentRecordpolyIndex" ON "Documents" ("DocumentRecordType", "DocumentRecordId"); 
GO
CREATE INDEX "DocumentTypeIndex" ON "Documents" ("DocumentTypeId"); 
GO
CREATE INDEX "DocumentsInternalIdentifierIndex" ON "Documents" ("InternalIdentifier"); 
GO
CREATE TABLE "DocumentType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ExternalIdentifier" VARCHAR(255), "InternalIdentifier" VARCHAR(255), "Description" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "DocumentTypeInternalIdentifierIndex" ON "DocumentType" ("InternalIdentifier"); 
GO
CREATE TABLE "ValidDocuments" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "DocumentId" INTEGER, "DocumentedModelId" INTEGER, "DocumentedModelType" VARCHAR(255)); 
GO
CREATE INDEX "IndexValidDocumentsOnDocumentId" ON "ValidDocuments" ("DocumentId"); 
GO
CREATE INDEX "ValidDocumentsModelIndex" ON "ValidDocuments" ("DocumentedModelId", "DocumentedModelType"); 
GO
CREATE TABLE "Report" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Name" VARCHAR(255), "InternalIdentifier" VARCHAR(255), "TempateText" text, "QueryText" text, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "ReportInternalIdentifierIndex" ON "Report" ("InternalIdentifier"); 
GO
CREATE TABLE "DataMigrations" ("Version" VARCHAR(255)); 
GO
--CREATE TABLE "Report" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Name" varchar(255), "InternalIdentifier" varchar(255), "Template" text, "Query" text, "CreatedAt" datetime NOT NULL, "UpdatedAt" datetime NOT NULL);
--GO
--CREATE Index "ReportInternalIdentifierIndex" ON "Report" ("InternalIdentifier"); 
--GO
CREATE TABLE "Agreement" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "AgreementTypeId" integer, "AgreementStatus" varchar(255), "ProductId" integer, "AgreementDate" date, "FromDate" date, "ThroughDate" date, "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexAgreementOnAgreementTypeId" ON "Agreement" ("AgreementTypeId"); 
GO
CREATE Index "IndexAgreementOnProductId" ON "Agreement" ("ProductId"); 
GO
CREATE TABLE "AgreementType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "InternalIdentifier" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexAgreementTypeOnParentId" ON "AgreementType" ("ParentId"); 
GO
CREATE Index "IndexAgreementTypeOnLeftValue" ON "AgreementType" ("LeftValue"); 
GO
CREATE Index "IndexAgreementTypeOnRightValue" ON "AgreementType" ("RightValue"); 
GO
CREATE TABLE "AgreementItem" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "AgreementId" integer, "AgreementItemTypeId" integer, "AgreementItemValue" varchar(255), "Description" varchar(255), "AgreementItemRuleString" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexAgreementItemOnAgreementId" ON "AgreementItem" ("AgreementId"); 
GO
CREATE Index "IndexAgreementItemOnAgreementItemTypeId" ON "AgreementItem" ("AgreementItemTypeId"); 
GO
CREATE TABLE "AgreementItemType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "InternalIdentifier" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexAgreementItemTypeOnParentId" ON "AgreementItemType" ("ParentId"); 
GO
CREATE Index "IndexAgreementItemTypeOnLeftValue" ON "AgreementItemType" ("LeftValue"); 
GO
CREATE Index "IndexAgreementItemTypeOnRightValue" ON "AgreementItemType" ("RightValue"); 
GO
CREATE TABLE "AgreementPartyRole" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "AgreementId" integer, "PartyId" integer, "RoleTypeId" integer, "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexAgreementPartyRoleOnAgreementId" ON "AgreementPartyRole" ("AgreementId"); 
GO
CREATE Index "IndexAgreementPartyRoleOnPartyId" ON "AgreementPartyRole" ("PartyId"); 
GO
CREATE Index "IndexAgreementPartyRoleOnRoleTypeId" ON "AgreementPartyRole" ("RoleTypeId"); 
GO
CREATE TABLE "AgreementRelationship" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "AgreementRelationshipTypeId" integer, "Description" varchar(255), "AgreementIdFrom" integer, "AgreementIdTo" integer, "RoleTypeIdFrom" integer, "RoleTypeIdTo" integer, "StatusTypeId" integer, "FromDate" date, "ThroughDate" date, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexAgreementRelationshipOnAgreementRelationshipTypeId" ON "AgreementRelationship" ("AgreementRelationshipTypeId"); 
GO
CREATE Index "IndexAgreementRelationshipOnStatusTypeId" ON "AgreementRelationship" ("StatusTypeId"); 
GO
CREATE TABLE "AgreementRelationshipType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" integer, "LeftValue" integer, "RightValue" integer, "ValidFromRoleTypeId" integer, "ValidToRoleTypeId" integer, "Name" varchar(255), "Description" varchar(255), "InternalIdentifier" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexAgreementRelationshipTypeOnParentId" ON "AgreementRelationshipType" ("ParentId"); 
GO
CREATE Index "IndexAgreementRelationshipTypeOnValidFromRoleTypeId" ON "AgreementRelationshipType" ("ValidFromRoleTypeId"); 
GO
CREATE Index "IndexAgreementRelationshipTypeOnValidToRoleTypeId" ON "AgreementRelationshipType" ("ValidToRoleTypeId"); 
GO
CREATE TABLE "AgreementRoleType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "InternalIdentifier" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexAgreementRoleTypeOnParentId" ON "AgreementRoleType" ("ParentId"); 
GO
CREATE Index "IndexAgreementRoleTypeOnLeftValue" ON "AgreementRoleType" ("LeftValue"); 
GO
CREATE Index "IndexAgreementRoleTypeOnRightValue" ON "AgreementRoleType" ("RightValue"); 
GO
CREATE TABLE "LoyaltyProgramCode" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Identifier" varchar(255), "Name" varchar(255), "Description" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "Fee" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "FeeRecordId" integer, "FeeRecordType" varchar(255), "MoneyId" integer, "FeeTypeId" integer, "Description" varchar(255), "StartDate" DATETIME, "EndDate" DATETIME, "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "FeeRecordIndex" ON "Fee" ("FeeRecordId", "FeeRecordType"); 
GO
CREATE Index "IndexFeeOnFeeTypeId" ON "Fee" ("FeeTypeId"); 
GO
CREATE Index "IndexFeeOnMoneyId" ON "Fee" ("MoneyId"); 
GO
CREATE TABLE "FeeType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "InternalIdentifier" varchar(255), "Description" varchar(255), "Comments" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "ParentId" integer, "LeftValue" integer, "RightValue" integer, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "PriceComponentType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "InternalIdentifier" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "PricingPlan" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "Comments" varchar(255), "InternalIdentifier" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "FromDate" date, "ThroughDate" date, "matchingrules" varchar(255), "Pricingcalculation" varchar(255), "IssimpleAmount" BIT, "currencyId" integer, "MoneyAmount" decimal(8,2), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "PricingPlanComponent" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "PriceComponentTypeId" integer, "Description" varchar(255), "Comments" varchar(255), "InternalIdentifier" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "matchingrules" varchar(255), "Pricingcalculation" varchar(255), "IssimpleAmount" BIT, "currencyId" integer, "MoneyAmount" decimal(8,2), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexPricingPlanComponentOnPriceComponentTypeId" ON "PricingPlanComponent" ("PriceComponentTypeId"); 
GO
CREATE TABLE "ValidPricePlanComponent" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "PricingPlanId" integer, "PricingPlanComponentId" integer, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexValidPricePlanComponentOnPricingPlanId" ON "ValidPricePlanComponent" ("PricingPlanId"); 
GO
CREATE Index "IndexValidPricePlanComponentOnPricingPlanComponentId" ON "ValidPricePlanComponent" ("PricingPlanComponentId"); 
GO
CREATE TABLE "PricingPlanAssignment" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "PricingPlanId" integer, "PriceableItemId" integer, "PriceableItemType" varchar(255), "Priority" integer, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexPricingPlanAssignmentOnPricingPlanId" ON "PricingPlanAssignment" ("PricingPlanId"); 
GO
CREATE Index "PriceableItemIndex" ON "PricingPlanAssignment" ("PriceableItemId", "PriceableItemType"); 
GO
CREATE TABLE "Price" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "PricedItemId" integer, "PricedItemType" varchar(255), "PricingPlanId" integer, "MoneyId" integer, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexPriceOnMoneyId" ON "Price" ("MoneyId"); 
GO
CREATE Index "IndexPriceOnPricingPlanId" ON "Price" ("PricingPlanId"); 
GO
CREATE Index "PricedItemIndex" ON "Price" ("PricedItemId", "PricedItemType"); 
GO
CREATE TABLE "PriceComponent" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "PricingPlanComponentId" integer, "PriceId" integer, "MoneyId" integer, "PricedComponentId" integer, "PricedComponentType" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexPriceComponentOnMoneyId" ON "PriceComponent" ("MoneyId"); 
GO
CREATE Index "IndexPriceComponentOnPricingPlanComponentId" ON "PriceComponent" ("PricingPlanComponentId"); 
GO
CREATE Index "IndexPriceComponentOnPriceId" ON "PriceComponent" ("PriceId"); 
GO
CREATE Index "PricedComponentIndex" ON "PriceComponent" ("PricedComponentId", "PricedComponentType"); 
GO
CREATE TABLE "Payment" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Success" BIT, "ReferenceNumber" varchar(255), "FinancialTransactionId" integer, "currentstate" varchar(255), "authorizationCode" varchar(255), "ExternalIdentifier" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexPaymentOnFinancialTransactionId" ON "Payment" ("FinancialTransactionId"); 
GO
CREATE TABLE "PaymentGateways" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Params" varchar(255), "PaymentGatewayActionId" integer, "PaymentId" integer, "response" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "PaymentGatewayAction" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "InternalIdentifier" varchar(255), "Description" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexPaymentGatewayActionOnInternalIdentifier" ON "PaymentGatewayAction" ("InternalIdentifier"); 
GO
CREATE TABLE "CreditCard" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "CryptedPrivateCardNumber" varchar(255), "CryptedPrivateCvc" varchar(255), "Expirationmonth" integer, "Expirationyear" integer, "Description" varchar(255), "nameOnCard" varchar(255), "CardType" varchar(255), "PostalAddressId" integer, "CreditCardToken" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "CreditCardAccount" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "CreditCardAccountPuposeId" integer, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "CreditCardAccountPuposeIndex" ON "CreditCardAccount" ("CreditCardAccountPuposeId"); 
GO
CREATE TABLE "CreditCardAccountPartyRole" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "CreditCardAccountId" integer, "RoleTypeId" integer, "PartyId" integer, "CreditCardId" integer, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexCreditCardAccountPartyRoleOnCreditCardAccountId" ON "CreditCardAccountPartyRole" ("CreditCardAccountId"); 
GO
CREATE Index "IndexCreditCardAccountPartyRoleOnRoleTypeId" ON "CreditCardAccountPartyRole" ("RoleTypeId"); 
GO
CREATE Index "IndexCreditCardAccountPartyRoleOnPartyId" ON "CreditCardAccountPartyRole" ("PartyId"); 
GO
CREATE Index "IndexCreditCardAccountPartyRoleOnCreditCardId" ON "CreditCardAccountPartyRole" ("CreditCardId"); 
GO
CREATE TABLE "CreditCardAccountPurpose" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "InternalIdentifier" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "AcceptedCreditCard" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "OrganizationId" integer, "CardType" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "BankAccountType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "InternalIdentifier" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "BankAccount" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "RoutingNumber" varchar(255), "CryptedPrivateAccountNumber" varchar(255), "nameOnAccount" varchar(255), "BankAccountTypeId" integer, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "BankAccountAccountTypeIndex" ON "BankAccount" ("BankAccountTypeId"); 
GO
CREATE TABLE "OrderTransaction" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "OrderTransactionTypeId" integer, "OrderTransactionRecordId" integer, "OrderTransactionRecordType" varchar(255), "email" varchar(255), "phoneNumber" varchar(255), "shipTofirstname" varchar(255), "shipTolastname" varchar(255), "shipToAddressLine1" varchar(255), "shipToAddressLine2" varchar(255), "shipTocity" varchar(255), "shipTostate" varchar(255), "shipToPostalCode" varchar(255), "shipTocountryname" varchar(255), "Customerip" varchar(255), "OrderNumber" varchar(255), "errorMessage" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL, "PaymentGatewayTransactionId" varchar(255), "CreditCardId" integer, "billTofirstname" varchar(255), "billTolastname" varchar(255), "billToAddressLine1" varchar(255), "billToAddressLine2" varchar(255), "billTocity" varchar(255), "billTostate" varchar(255), "billToPostalCode" varchar(255), "billTocountryname" varchar(255), "billTocountry" varchar(255), "shipTocountry" varchar(255), "SalesTax" decimal(8,2)); 
GO
CREATE Index "IndexOrderTransactionOnOrderTransactionTypeId" ON "OrderTransaction" ("OrderTransactionTypeId"); 
GO
CREATE Index "OrderTransactionRecordIndex" ON "OrderTransaction" ("OrderTransactionRecordId", "OrderTransactionRecordType"); 
GO
CREATE TABLE "ProductInstance" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "ProductInstanceRecordId" integer, "ProductInstanceRecordType" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "ProductTypeId" integer, "Type" varchar(255), "ProductAvailabilityStatusTypeId" integer, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "ProductInstanceParentIdIndex" ON "ProductInstance" ("ParentId"); 
GO
CREATE Index "ProductInstanceLeftValueIndex" ON "ProductInstance" ("LeftValue"); 
GO
CREATE Index "ProductInstanceRightValueIndex" ON "ProductInstance" ("RightValue"); 
GO
CREATE Index "ProductInstancePolyIndex" ON "ProductInstance" ("ProductInstanceRecordId", "ProductInstanceRecordType"); 
GO
CREATE Index "ProductInstanceProductTypeIndex" ON "ProductInstance" ("ProductTypeId"); 
GO
CREATE TABLE "ProductOffer" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ProductOfferRecordId" integer, "ProductOfferRecordType" varchar(255), "Description" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "ValidFrom" date, "ValidTo" date, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "ProductOfferPolyIndex" ON "ProductOffer" ("ProductOfferRecordId", "ProductOfferRecordType"); 
GO
CREATE Index "ProductOfferValidFromIndex" ON "ProductOffer" ("ValidFrom"); 
GO
CREATE Index "ProductOfferValidToIndex" ON "ProductOffer" ("ValidTo"); 
GO
CREATE TABLE "simpleProductOffer" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ProductTypeId" integer, "Description" varchar(255), "string" varchar(255), "BasePrice" decimal(8,2), "uom" integer, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "simpleProductOfferProductTypeIdIndex" ON "simpleProductOffer" ("ProductTypeId"); 
GO
CREATE TABLE "ProductInstanceRelationshipType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "InternalIdentifier" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "ProductRelationshipTypeParentIdIndex" ON "ProductInstanceRelationshipType" ("ParentId"); 
GO
CREATE Index "ProductRelationshipTypeLeftValueIndex" ON "ProductInstanceRelationshipType" ("LeftValue"); 
GO
CREATE Index "ProductRelationshipTypeRightValueIndex" ON "ProductInstanceRelationshipType" ("RightValue"); 
GO
CREATE TABLE "ProductInstanceRoleType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "InternalIdentifier" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "ProductInstanceRoleTypeParentIdIndex" ON "ProductInstanceRoleType" ("ParentId"); 
GO
CREATE Index "ProductInstanceRoleTypeLeftValueIndex" ON "ProductInstanceRoleType" ("LeftValue"); 
GO
CREATE Index "ProductInstanceRoleTypeRightValueIndex" ON "ProductInstanceRoleType" ("RightValue"); 
GO
CREATE TABLE "ProductInstanceRelationship" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ProductInstanceRelationshipTypeId" integer, "Description" varchar(255), "ProductInstanceIdFrom" integer, "ProductInstanceIdTo" integer, "RoleTypeIdFrom" integer, "RoleTypeIdTo" integer, "FromDate" date, "ThroughDate" date, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "ProductInstanceRelationshipTypeIndex" ON "ProductInstanceRelationship" ("ProductInstanceRelationshipTypeId"); 
GO
CREATE Index "ProductInstanceRelationshipInstanceFromIndex" ON "ProductInstanceRelationship" ("ProductInstanceIdFrom"); 
GO
CREATE Index "ProductInstanceRelationshipInstanceToIndex" ON "ProductInstanceRelationship" ("ProductInstanceIdTo"); 
GO
CREATE Index "ProductInstanceRelationshipTypeFromIndex" ON "ProductInstanceRelationship" ("RoleTypeIdFrom"); 
GO
CREATE Index "ProductInstanceRelationshipTypeToIndex" ON "ProductInstanceRelationship" ("RoleTypeIdTo"); 
GO
CREATE TABLE "ProductTypeRelationshipType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "InternalIdentifier" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "ProductTypeRelationshipTypeParentIdIndex" ON "ProductInstanceRoleType" ("ParentId"); 
GO
CREATE Index "ProductTypeRelationshipTypeLeftValueIndex" ON "ProductInstanceRoleType" ("LeftValue"); 
GO
CREATE Index "ProductTypeRelationshipTypeRightValueIndex" ON "ProductInstanceRoleType" ("RightValue"); 
GO
CREATE TABLE "ProductTypeRoleType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "InternalIdentifier" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "ProductTypeRoleTypeParentIdIndex" ON "ProductInstanceRoleType" ("ParentId"); 
GO
CREATE Index "ProductTypeRoleTypeLeftValueIndex" ON "ProductInstanceRoleType" ("LeftValue"); 
GO
CREATE Index "ProductTypeRoleTypeRightValueIndex" ON "ProductInstanceRoleType" ("RightValue"); 
GO
CREATE TABLE "ProductTypeRelationship" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ProductTypeRelationshipTypeId" integer, "Description" varchar(255), "ProductTypeIdFrom" integer, "ProductTypeIdTo" integer, "RoleTypeIdFrom" integer, "RoleTypeIdTo" integer, "StatusTypeId" integer, "FromDate" date, "ThroughDate" date, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "ProductTypeRelationshipTypeIndex" ON "ProductTypeRelationship" ("ProductTypeRelationshipTypeId"); 
GO
CREATE Index "ProductTypeRelationshipTypeFromIndex" ON "ProductTypeRelationship" ("ProductTypeIdFrom"); 
GO
CREATE Index "ProductTypeRelationshipTypeToIndex" ON "ProductTypeRelationship" ("ProductTypeIdTo"); 
GO
CREATE Index "ProductTypeRelationshipRoleFromIndex" ON "ProductTypeRelationship" ("RoleTypeIdFrom"); 
GO
CREATE Index "ProductTypeRelationshipRoleToIndex" ON "ProductTypeRelationship" ("RoleTypeIdTo"); 
GO
CREATE TABLE "ProductAvailabilityStatusType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "InternalIdentifier" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "ProductAvailStatusTypeParentIdIndex" ON "ProductAvailabilityStatusType" ("ParentId"); 
GO
CREATE Index "ProductAvailStatusTypeLeftValueIndex" ON "ProductAvailabilityStatusType" ("LeftValue"); 
GO
CREATE Index "ProductAvailStatusTypeRightValueIndex" ON "ProductAvailabilityStatusType" ("RightValue"); 
GO
CREATE TABLE "ProductTypePartyRole" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "PartyId" integer, "RoleTypeId" integer, "ProductTypeId" integer, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "ProductTypePartyRolePartyIndex" ON "ProductTypePartyRole" ("PartyId"); 
GO
CREATE Index "ProductTypePartyRoleRoleIndex" ON "ProductTypePartyRole" ("RoleTypeId"); 
GO
CREATE Index "ProductTypePartyRoleProductTypeIndex" ON "ProductTypePartyRole" ("ProductTypeId"); 
GO
CREATE TABLE "ProductFeatureType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "InternalIdentifier" varchar(255), "ExternalIdentifier" varchar(255), "ExternalId" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "ProductFeatureApplicability" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "FeatureOfRecordId" integer, "FeatureOfRecordType" varchar(255), "ProductFeatureId" integer, "Ismandatory" BIT, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "ProductFeatureRecordIndex" ON "ProductFeatureApplicability" ("FeatureOfRecordType", "FeatureOfRecordId"); 
GO
CREATE TABLE "ProductFeatureTypeProductFeatureValue" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ProductFeatureTypeId" integer, "ProductFeatureValueId" integer, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "ProductFeatureTypeFeatureValueTypeIndex" ON "ProductFeatureTypeProductFeatureValue" ("ProductFeatureTypeId"); 
GO
CREATE Index "ProductFeatureTypeFeatureValueValueIndex" ON "ProductFeatureTypeProductFeatureValue" ("ProductFeatureValueId"); 
GO
CREATE TABLE "ProductFeature" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ProductFeatureTypeId" integer, "ProductFeatureValueId" integer, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "ProductFeatureTypeIndex" ON "ProductFeature" ("ProductFeatureTypeId"); 
GO
CREATE Index "ProductFeatureValueIndex" ON "ProductFeature" ("ProductFeatureValueId"); 
GO
CREATE TABLE "ProductFeatureValue" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "value" varchar(255), "InternalIdentifier" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "Description" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "ProductFeatureInteractionType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "InternalIdentifier" varchar(255), "Description" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "CommunicationEvent" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "FromContactMechanismId" integer, "FromContactMechanismType" varchar(255), "ToContactMechanismId" integer, "ToContactMechanismType" varchar(255), "RoleTypeIdFrom" integer, "RoleTypeIdTo" integer, "PartyIdFrom" integer, "PartyIdTo" integer, "ShortDescription" varchar(255), "StatusTypeId" integer, "CaseId" integer, "dateTimeStarted" DATETIME, "dateTimeEnded" DATETIME, "notes" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexCommunicationEventOnStatusTypeId" ON "CommunicationEvent" ("StatusTypeId"); 
GO
CREATE Index "IndexCommunicationEventOnCaseId" ON "CommunicationEvent" ("CaseId"); 
GO
CREATE Index "IndexCommunicationEventOnRoleTypeIdFrom" ON "CommunicationEvent" ("RoleTypeIdFrom"); 
GO
CREATE Index "IndexCommunicationEventOnRoleTypeIdTo" ON "CommunicationEvent" ("RoleTypeIdTo"); 
GO
CREATE Index "IndexCommunicationEventOnPartyIdFrom" ON "CommunicationEvent" ("PartyIdFrom"); 
GO
CREATE Index "IndexCommunicationEventOnPartyIdTo" ON "CommunicationEvent" ("PartyIdTo"); 
GO
CREATE Index "ToContactMechanismIndex" ON "CommunicationEvent" ("ToContactMechanismId", "ToContactMechanismType"); 
GO
CREATE Index "FromContactMechanismIndex" ON "CommunicationEvent" ("FromContactMechanismId", "FromContactMechanismType"); 
GO
CREATE TABLE "CommunicationEventPuposeType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "InternalIdentifier" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexCommunicationEventPuposeTypeOnParentId" ON "CommunicationEventPuposeType" ("ParentId"); 
GO
CREATE TABLE "CommunicationEventPurpose" ("CommunicationEventId" integer, "CommunicationEventPuposeTypeId" integer); 
GO
CREATE Index "IndexCommunicationEventPurposeOnCommunicationEventId" ON "CommunicationEventPurpose" ("CommunicationEventId"); 
GO
CREATE Index "IndexCommunicationEventPurposeOnCommunicationEventPuposeTypeId" ON "CommunicationEventPurpose" ("CommunicationEventPuposeTypeId"); 
GO
CREATE TABLE "CommunicationEventStatus" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "InternalIdentifier" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexCommunicationEventStatusOnParentId" ON "CommunicationEventStatus" ("ParentId"); 
GO
CREATE TABLE "GeneralLedgerAccount" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "InternalIdentifier" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "PricePlanCompGeneralLedgerAccount" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "PricingPlanComponentId" integer, "GeneralLedgerAccountId" integer, "mappingRuleklass" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "InventoryEntry" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "InventoryEntryRecordId" integer, "InventoryEntryRecordType" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "ProductTypeId" integer, "NumberAvailable" integer, "sku" varchar(255), "NumberSold" integer, "UnitOfMeasurementId" integer, "NumberInStock" integer, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "InventoryEntryUnitOfMeasurementIndex" ON "InventoryEntry" ("UnitOfMeasurementId"); 
GO
CREATE Index "Bii1" ON "InventoryEntry" ("InventoryEntryRecordId", "InventoryEntryRecordType"); 
GO
CREATE Index "IndexInventoryEntryOnProductTypeId" ON "InventoryEntry" ("ProductTypeId"); 
GO
CREATE TABLE "InventoryEntryRelationshipType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "InternalIdentifier" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexInventoryEntryRelationshipTypeOnParentId" ON "InventoryEntryRelationshipType" ("ParentId"); 
GO
CREATE TABLE "InventoryEntryRoleType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "InternalIdentifier" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexInventoryEntryRoleTypeOnParentId" ON "InventoryEntryRoleType" ("ParentId"); 
GO
CREATE TABLE "InventoryEntryRelationship" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "InventoryEntryRelationshipTypeId" integer, "Description" varchar(255), "InventoryEntryIdFrom" integer, "InventoryEntryIdTo" integer, "RoleTypeIdFrom" integer, "RoleTypeIdTo" integer, "StatusTypeId" integer, "FromDate" date, "ThroughDate" date, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexInventoryEntryRelationshipOnInventoryEntryRelationshipTypeId" ON "InventoryEntryRelationship" ("InventoryEntryRelationshipTypeId"); 
GO
CREATE Index "IndexInventoryEntryRelationshipOnStatusTypeId" ON "InventoryEntryRelationship" ("StatusTypeId"); 
GO
CREATE TABLE "ProductInstanceInventoryEntry" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ProductInstanceId" integer, "InventoryEntryId" integer, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexProductInstanceInventoryEntryOnProductInstanceId" ON "ProductInstanceInventoryEntry" ("ProductInstanceId"); 
GO
CREATE Index "IndexProductInstanceInventoryEntryOnInventoryEntryId" ON "ProductInstanceInventoryEntry" ("InventoryEntryId"); 
GO
CREATE TABLE "InventoryEntryLocation" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "InventoryEntryId" integer, "FacilityId" integer, "ValidFrom" DATETIME, "ValidThrough" DATETIME, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "InventoryEntryLocationInventoryEntryIndex" ON "InventoryEntryLocation" ("InventoryEntryId"); 
GO
CREATE Index "InventoryEntryLocationFacilityIndex" ON "InventoryEntryLocation" ("FacilityId"); 
GO
CREATE TABLE "InventoryPickupTransaction" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "FixedAssetId" integer, "Description" varchar(255), "Quantity" integer, "UnitOfMeasurementId" integer, "Comment" text, "InventoryEntryId" integer, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexInventoryPickupTransactionOnFixedAssetId" ON "InventoryPickupTransaction" ("FixedAssetId"); 
GO
CREATE Index "IndexInventoryPickupTransactionOnInventoryEntryId" ON "InventoryPickupTransaction" ("InventoryEntryId"); 
GO
CREATE TABLE "InventoryDropOffTransaction" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "FixedAssetId" integer, "Description" varchar(255), "Quantity" integer, "UnitOfMeasurementId" integer, "Comment" text, "InventoryEntryId" integer, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexInventoryDropOffTransactionOnFixedAssetId" ON "InventoryDropOffTransaction" ("FixedAssetId"); 
GO
CREATE Index "IndexInventoryDropOffTransactionOnInventoryEntryId" ON "InventoryDropOffTransaction" ("InventoryEntryId"); 
GO
CREATE TABLE "Invoice" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "InvoiceNumber" varchar(255), "Description" varchar(255), "Message" varchar(255), "InvoiceDate" date, "DueDate" date, "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "ProductId" integer, "InvoiceTypeId" integer, "BillingAccountId" integer, "InvoicePaymentStrategyTypeId" integer, "BalanceId" integer, "CalculateBalanceStrategyTypeId" integer, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL, "SalesTax" decimal(8,2)); 
GO
CREATE Index "ProductTypeIndex" ON "Invoice" ("ProductId"); 
GO
CREATE Index "InvoiceTypeIndex" ON "Invoice" ("InvoiceTypeId"); 
GO
CREATE Index "InvoiceBillingAccountIndex" ON "Invoice" ("BillingAccountId"); 
GO
CREATE Index "InvoicePaymentstragegyIndex" ON "Invoice" ("InvoicePaymentStrategyTypeId"); 
GO
CREATE TABLE "InvoiceType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "InternalIdentifier" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "InvoicePaymentStrategyType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "InternalIdentifier" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "InvoicedRecord" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "InvoiceItemId" integer, "InvoiceableItemId" integer, "InvoiceableItemType" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "InvoicedRecordInvoiceableItemIndex" ON "InvoicedRecord" ("InvoiceableItemId", "InvoiceableItemType"); 
GO
CREATE TABLE "InvoiceItemType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "InternalIdentifier" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "InvoicePartyRole" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "RoleTypeId" integer, "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "InvoiceId" integer, "PartyId" integer, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "InvoicePartyInvoiceIdIndex" ON "InvoicePartyRole" ("InvoiceId"); 
GO
CREATE Index "InvoicePartyPartyIdIndex" ON "InvoicePartyRole" ("PartyId"); 
GO
CREATE TABLE "BillingAccount" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "SEndPaperBills" BIT Default 'f', "PayableOnline" BIT Default 'f', "BillingDate" date, "CalculateBalanceStrategyTypeId" integer, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "BillingContactMechanism" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "ContactMechanismId" integer, "ContactMechanismType" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "BillingContactMechanismIndex" ON "BillingContactMechanism" ("ContactMechanismId", "ContactMechanismType"); 
GO
CREATE TABLE "RecurringPayment" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "PaymentAccountId" integer, "PaymentAccountType" varchar(255), "BillingAccountId" integer, "PayUpToAmount" decimal(8,2), "PaymentAmount" decimal(8,2), "PaymentDay" integer, "FromDate" date, "ThroughDate" date, "enabled" BIT, "textTopay" BIT, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "PaymentAccountIndex" ON "RecurringPayment" ("PaymentAccountId", "PaymentAccountType"); 
GO
CREATE Index "IndexRecurringPaymentOnBillingAccountId" ON "RecurringPayment" ("BillingAccountId"); 
GO
CREATE TABLE "PaymentApplication" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "FinancialTransactionId" integer, "PaymentAppliedToId" integer, "PaymentAppliedToType" varchar(255), "AppliedMoneyAmountId" integer, "Comment" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "PaymentAppliedToIndex" ON "PaymentApplication" ("PaymentAppliedToId", "PaymentAppliedToType"); 
GO
CREATE Index "IndexPaymentApplicationOnFinancialTransactionId" ON "PaymentApplication" ("FinancialTransactionId"); 
GO
CREATE Index "IndexPaymentApplicationOnAppliedMoneyAmountId" ON "PaymentApplication" ("AppliedMoneyAmountId"); 
GO
CREATE TABLE "InvoicePaymentTermSet" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "InvoiceId" integer, "InvoiceItemId" integer, "Description" varchar(255), "Comments" varchar(255), "InternalIdentifier" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexInvoicePaymentTermSetOnInvoiceId" ON "InvoicePaymentTermSet" ("InvoiceId"); 
GO
CREATE Index "IndexInvoicePaymentTermSetOnInvoiceItemId" ON "InvoicePaymentTermSet" ("InvoiceItemId"); 
GO
CREATE TABLE "InvoicePaymentTerm" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "InvoicePaymentTermTypeId" integer, "InvoicePaymentTermSetId" integer, "Description" varchar(255), "Payby" date, "Amount" decimal(8,2), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexInvoicePaymentTermOnInvoicePaymentTermTypeId" ON "InvoicePaymentTerm" ("InvoicePaymentTermTypeId"); 
GO
CREATE Index "IndexInvoicePaymentTermOnInvoicePaymentTermSetId" ON "InvoicePaymentTerm" ("InvoicePaymentTermSetId"); 
GO
CREATE TABLE "InvoicePaymentTermType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "InternalIdentifier" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "CalculateBalanceStrategyType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "InternalIdentifier" varchar(255), "Description" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "InvoiceItem" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "InvoiceId" integer, "InvoiceItemTypeId" integer, "ItemseqId" integer, "ItemDescription" text, "Quantity" decimal(8,2), "Amount" decimal(8,2), "Taxable" BIT, "UnitPrice" decimal(8,2), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL, "SalesTax" decimal(8,2), "Taxed" BIT); 
GO
CREATE Index "InvoiceIdIndex" ON "InvoiceItem" ("InvoiceId"); 
GO
CREATE Index "InvoiceItemTypeIdIndex" ON "InvoiceItem" ("InvoiceItemTypeId"); 
GO
CREATE TABLE "OrderTransactionType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "InternalIdentifier" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexOrderTransactionTypeOnParentId" ON "OrderTransactionType" ("ParentId"); 
GO
CREATE TABLE "OrderLineItem" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "OrderTransactionId" integer, "OrderLineItemTypeId" integer, "ProductInstanceId" integer, "ProductInstanceDescription" varchar(255), "ProductTypeId" integer, "ProductTypeDescription" varchar(255), "SoldPrice" decimal(8,2), "SoldPriceUnitOfMeasurement" integer, "SoldAmount" integer, "SoldAmountUnitOfMeasurement" integer, "ProductOfferId" integer, "Quantity" integer, "UnitOfMeasurementId" integer, "ProductOfferDescription" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL, "UnitPrice" decimal, "SalesTax" decimal(8,2), "Taxed" BIT); 
GO
CREATE Index "OrderLineItemUnitOfMeasurementIndex" ON "OrderLineItem" ("UnitOfMeasurementId"); 
GO
CREATE Index "IndexOrderLineItemOnOrderTransactionId" ON "OrderLineItem" ("OrderTransactionId"); 
GO
CREATE Index "IndexOrderLineItemOnOrderLineItemTypeId" ON "OrderLineItem" ("OrderLineItemTypeId"); 
GO
CREATE Index "IndexOrderLineItemOnProductInstanceId" ON "OrderLineItem" ("ProductInstanceId"); 
GO
CREATE Index "IndexOrderLineItemOnProductTypeId" ON "OrderLineItem" ("ProductTypeId"); 
GO
CREATE Index "IndexOrderLineItemOnProductOfferId" ON "OrderLineItem" ("ProductOfferId"); 
GO
CREATE TABLE "OrderLineItemType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "InternalIdentifier" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexOrderLineItemTypeOnParentId" ON "OrderLineItemType" ("ParentId"); 
GO
CREATE TABLE "OrderLineItemPartyRole" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "RoleTypeId" integer, "BusinessTransactionAccountRootId" integer, "OrderLineItemId" integer, "PartyId" integer, "Description" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "OrderLineItemPartyRoleOrderLineItemIndex" ON "OrderLineItemPartyRole" ("OrderLineItemId"); 
GO
CREATE Index "OrderLineItemPartyRolePartyIndex" ON "OrderLineItemPartyRole" ("PartyId"); 
GO
CREATE Index "OrderLineItemPartyRoleRoleTypeIndex" ON "OrderLineItemPartyRole" ("RoleTypeId"); 
GO
CREATE Index "OrderLineItemPartyRoleBusinessTransactionAccountRootIndex" ON "OrderLineItemPartyRole" ("BusinessTransactionAccountRootId"); 
GO
CREATE TABLE "OrderLineItemRelationship" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "OrderLineItemRelationshipTypeId" integer, "Description" varchar(255), "OrderLineItemIdFrom" integer, "OrderLineItemIdTo" integer, "StatusTypeId" integer, "FromDate" date, "ThroughDate" date, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "OrderLineItemRelationshipOnOrderLineItemRelationshipTypeId" ON "OrderLineItemRelationship" ("OrderLineItemRelationshipTypeId"); 
GO
CREATE Index "IndexOrderLineItemRelationshipOnStatusTypeId" ON "OrderLineItemRelationship" ("StatusTypeId"); 
GO
CREATE TABLE "OrderLineItemRelationshipType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "InternalIdentifier" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexOrderLineItemRelationshipTypeOnParentId" ON "OrderLineItemRelationshipType" ("ParentId"); 
GO
CREATE TABLE "ChargeLines" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "StiType" varchar(255), "MoneyId" integer, "Description" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "ChargedItemId" integer, "ChargedItemType" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL, "ChargeTypeId" integer, "SalesTax" decimal(8,2), "Taxed" BIT); 
GO
CREATE Index "ChargedItemIndex" ON "ChargeLines" ("ChargedItemId", "ChargedItemType"); 
GO
CREATE TABLE "ChargeType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "InternalIdentifier" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL, "Taxable" BIT); 
GO
CREATE TABLE "SalesTaxLines" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "SalesTaxPolicyId" integer, "Rate" decimal(8,2), "Comment" text, "TaxedRecordId" integer, "TaxedRecordType" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "SalesTaxPolicy" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "InternalIdentifier" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "ProductType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "ProductTypeRecordId" integer, "ProductTypeRecordType" varchar(255), "ExternalIdentifier" varchar(255), "InternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "DefaultImageUrl" varchar(255), "ListViewImageId" integer, "Type" varchar(255), "sku" varchar(255), "Comment" text, "UnitOfMeasurementId" integer, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL, "AvailableOnWeb" BIT, "Length" decimal, "Width" decimal, "Height" decimal, "Weight" decimal, "Cylindrical" BIT, "Taxable" BIT); 
GO
CREATE Index "ProductTypeParentIdIndex" ON "ProductType" ("ParentId"); 
GO
CREATE Index "ProductTypeLeftValueIndex" ON "ProductType" ("LeftValue"); 
GO
CREATE Index "ProductTypeRightValueIndex" ON "ProductType" ("RightValue"); 
GO
CREATE Index "ProductTypeUnitOfMeasurementIndex" ON "ProductType" ("UnitOfMeasurementId"); 
GO
CREATE Index "ProductTypePolyIndex" ON "ProductType" ("ProductTypeRecordId", "ProductTypeRecordType"); 
GO
CREATE Index "IndexProductTypeOnAvailableOnWeb" ON "ProductType" ("AvailableOnWeb"); 
GO
CREATE TABLE "ProductFeatureInterAction" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ProductFeatureFromId" integer, "ProductFeatureToId" integer, "ProductFeatureInteractionTypeId" integer, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "ProductFeatureintFeatureIndex" ON "ProductFeatureInterAction" ("ProductFeatureFromId"); 
GO
CREATE Index "ProductFeatureintinteractedFeatureIndex" ON "ProductFeatureInterAction" ("ProductFeatureToId"); 
GO
CREATE Index "ProductFeatureintinteractedFeatureTypeIndex" ON "ProductFeatureInterAction" ("ProductFeatureInteractionTypeId"); 
GO
CREATE Index "ProductftvalsIIdIndex" ON "ProductFeatureValue" ("InternalIdentifier"); 
GO
CREATE Index "ProductftintTypeIIdIndex" ON "ProductFeatureInteractionType" ("InternalIdentifier"); 
GO
CREATE Index "ProductftTypeIIdIndex" ON "ProductFeatureType" ("InternalIdentifier"); 
GO
CREATE Index "ProductftTypeNestedSetIndex" ON "ProductFeatureType" ("RightValue", "LeftValue", "ParentId"); 
GO
CREATE TABLE "BusinessTransactionEvent" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "BusinessTransactionAccountRootId" integer, "BusinessTransactionTypeId" integer, "EnteredDate" DATETIME, "PostDate" DATETIME, "BusinessTransactionRecordId" integer, "BusinessTransactionRecordType" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexBusinessTransactionEventOnBusinessTransactionAccountRootId" ON "BusinessTransactionEvent" ("BusinessTransactionAccountRootId"); 
GO
CREATE Index "IndexBusinessTransactionEventOnBusinessTransactionTypeId" ON "BusinessTransactionEvent" ("BusinessTransactionTypeId"); 
GO
CREATE Index "Btai1" ON "BusinessTransactionEvent" ("BusinessTransactionRecordId", "BusinessTransactionRecordType"); 
GO
CREATE TABLE "BusinessTransactionEventDescription" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "BusinessTransactionEventId" integer, "LanguageId" integer, "LocaleId" integer, "Priority" integer, "Sequence" integer, "ShortDescription" varchar(255), "LongDescription" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexBusinessTransactionEventDescriptionOnBusinessTransactionEventId" ON "BusinessTransactionEventDescription" ("BusinessTransactionEventId"); 
GO
CREATE Index "IndexBusinessTransactionEventDescriptionOnLanguageId" ON "BusinessTransactionEventDescription" ("LanguageId"); 
GO
CREATE Index "IndexBusinessTransactionEventDescriptionOnLocaleId" ON "BusinessTransactionEventDescription" ("LocaleId"); 
GO
CREATE TABLE "BusinessTransactionType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "InternalIdentifier" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "BusinessTransactionTypeNestedSetIndex" ON "BusinessTransactionType" ("ParentId", "LeftValue", "RightValue"); 
GO
CREATE TABLE "BusinessTransactionRelationship" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "BusinessTransactionRelationshipTypeId" integer, "Description" varchar(255), "TransactionEventIdFrom" integer, "TransactionEventIdTo" integer, "StatusTypeId" integer, "FromDate" date, "ThroughDate" date, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexBusinessTransactionRelationshipOnBusinessTransactionRelationshipTypeId" ON "BusinessTransactionRelationship" ("BusinessTransactionRelationshipTypeId"); 
GO
CREATE Index "IndexBusinessTransactionRelationshipOnStatusTypeId" ON "BusinessTransactionRelationship" ("StatusTypeId"); 
GO
CREATE TABLE "BusinessTransactionRelationshipType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "InternalIdentifier" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexBusinessTransactionRelationshipTypeOnParentId" ON "BusinessTransactionRelationshipType" ("ParentId"); 
GO
CREATE TABLE "BusinessTransactionStatus" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "Comments" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "BusinessTransactionTask" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "BusinessTransactionTaskType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexBusinessTransactionTaskTypeOnParentId" ON "BusinessTransactionTaskType" ("ParentId"); 
GO
CREATE TABLE "BusinessTransactionPartyRole" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "BusinessTransactionEventId" integer, "PartyId" integer, "BusinessTransactionPartyRoleTypeId" integer, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexBusinessTransactionPartyRoleOnBusinessTransactionEventId" ON "BusinessTransactionPartyRole" ("BusinessTransactionEventId"); 
GO
CREATE Index "IndexBusinessTransactionPartyRoleOnPartyId" ON "BusinessTransactionPartyRole" ("PartyId"); 
GO
CREATE Index "IndexBusinessTransactionPartyRoleOnBusinessTransactionPartyRoleTypeId" ON "BusinessTransactionPartyRole" ("BusinessTransactionPartyRoleTypeId"); 
GO
CREATE TABLE "BusinessTransactionPartyRoleType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "InternalIdentifier" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexBusinessTransactionPartyRoleTypeOnParentId" ON "BusinessTransactionPartyRoleType" ("ParentId"); 
GO
CREATE TABLE "BusinessTransactionAccountRoot" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "Status" integer, "BusinessTransactionAccountId" integer, "BusinessTransactionAccountType" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "Type" varchar(255), "BusinessTransactionAccountTypeId" integer, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "Btai2" ON "BusinessTransactionAccountRoot" ("BusinessTransactionAccountId", "BusinessTransactionAccountType"); 
GO
CREATE Index "Btai3" ON "BusinessTransactionAccountRoot" ("BusinessTransactionAccountTypeId"); 
GO
CREATE TABLE "BusinessTransactionAccountStatusType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "BusinessTransactionAccountType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "InternalIdentifier" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexBusinessTransactionAccountTypeOnParentId" ON "BusinessTransactionAccountType" ("ParentId"); 
GO
CREATE TABLE "BusinessTransactionAccountStatus" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "BusinessTransactionAccountRelationshipType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "InternalIdentifier" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexBusinessTransactionAccountRelationshipTypeOnParentId" ON "BusinessTransactionAccountRelationshipType" ("ParentId"); 
GO
CREATE TABLE "BusinessTransactionAccountRelationship" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "BusinessTransactionAccountRelationshipTypeId" integer, "Description" varchar(255), "BusinessTransactionAccountRootIdFrom" integer, "BusinessTransactionAccountRootIdTo" integer, "StatusTypeId" integer, "FromDate" date, "ThroughDate" date, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexBusinessTransactionAccountRelationshipOnBusinessTransactionAccountRelationshipTypeId" ON "BusinessTransactionAccountRelationship" ("BusinessTransactionAccountRelationshipTypeId"); 
GO
CREATE Index "IndexBusinessTransactionAccountRelationshipOnStatusTypeId" ON "BusinessTransactionAccountRelationship" ("StatusTypeId"); 
GO
CREATE TABLE "BusinessTransactionAccountPartyRole" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "BusinessTransactionAccountRootId" integer, "PartyId" integer, "BusinessTransactionAccountPartyTypeId" integer, "IsDefaultBillingAccountFlag" integer, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexBusinessTransactionAccountPartyRoleOnBusinessTransactionAccountRootId" ON "BusinessTransactionAccountPartyRole" ("BusinessTransactionAccountRootId"); 
GO
CREATE Index "IndexBusinessTransactionAccountPartyRoleOnPartyId" ON "BusinessTransactionAccountPartyRole" ("PartyId"); 
GO
CREATE Index "IndexBusinessTransactionAccountPartyRoleOnBusinessTransactionAccountPartyTypeId" ON "BusinessTransactionAccountPartyRole" ("BusinessTransactionAccountPartyTypeId"); 
GO
CREATE TABLE "BusinessTransactionAccountPartyType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "InternalIdentifier" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexBusinessTransactionAccountPartyTypeOnParentId" ON "BusinessTransactionAccountPartyType" ("ParentId"); 
GO
CREATE TABLE "BusinessAccountTransactionTask" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "BusinessTransactionTaskId" integer, "BusinessTransactionAccountId" integer, "Description" varchar(255), "Comments" varchar(255), "EnteredDate" DATETIME, "requestedDate" DATETIME, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexBusinessAccountTransactionTaskOnBusinessTransactionTaskId" ON "BusinessAccountTransactionTask" ("BusinessTransactionTaskId"); 
GO
CREATE Index "IndexBusinessAccountTransactionTaskOnBusinessTransactionAccountId" ON "BusinessAccountTransactionTask" ("BusinessTransactionAccountId"); 
GO
CREATE TABLE "BusinessTransactionAgreementRoleType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "InternalIdentifier" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexBusinessTransactionAgreementRoleTypeOnParentId" ON "BusinessTransactionAgreementRoleType" ("ParentId"); 
GO
CREATE TABLE "BusinessTransactionAgreementRole" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "BusinessTransactionEventId" integer, "BusinessTransactionEventType" varchar(255), "AgreementId" integer, "BusinessTransactionAgreementRoleTypeId" integer, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexBusinessTransactionAgreementRoleOnAgreementId" ON "BusinessTransactionAgreementRole" ("AgreementId"); 
GO
CREATE Index "IndexBusinessTransactionAgreementRoleOnBusinessTransactionAgreementRoleTypeId" ON "BusinessTransactionAgreementRole" ("BusinessTransactionAgreementRoleTypeId"); 
GO
CREATE TABLE "FinancialTransaction" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "MoneyId" integer, "applyDate" date, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "FinancialTransactionAssignment" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "FinancialTransactionId" integer, "FinancialTransactionRecordId" integer, "FinancialTransactionRecordType" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "FinancialTransactionAccount" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "AccountNumber" varchar(255), "AgreementId" integer, "BalanceId" integer, "BalanceDate" date, "CalculateBalance" BIT, "PaymentDueId" integer, "DueDate" date, "FinancialAccountId" integer, "FinancialAccountType" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "BaseTransactionContext" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "BusinessTransactionEventId" integer, "TransactionContextRecordId" integer, "TransactionContextRecordType" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "TransactionContextRecordIndex" ON "BaseTransactionContext" ("TransactionContextRecordId", "TransactionContextRecordType"); 
GO
CREATE TABLE "SkillType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "InternalIdentifier" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "PartySkill" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "PartyId" integer, "SkillTypeId" integer, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "PartySkillIndex" ON "PartySkill" ("PartyId", "SkillTypeId"); 
GO
CREATE TABLE "GoodType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "InternalIdentifier" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "Deliverable" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "Comments" varchar(255), "InternalIdentifier" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "DeliverableRecordType" varchar(255), "DeliverableRecordId" integer, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "DeliverableType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "InternalIdentifier" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "Requirement" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Type" varchar(255), "ProjectedCompletionTime" integer, "EstimatedbudgetMoneyId" integer, "RequirementTypeId" integer, "RequirementRecordId" integer, "RequirementRecordType" varchar(255), "FixedAssetId" integer, "ProductId" integer, "DeliverableId" integer, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "RequirementType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "InternalIdentifier" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "RequirementPartyRole" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "RequirementId" integer, "PartyId" integer, "RoleTypeId" integer, "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "ValidFrom" DATETIME, "ValidTo" DATETIME, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "RequirementPartyRoleIndex" ON "RequirementPartyRole" ("RequirementId", "PartyId", "RoleTypeId"); 
GO
CREATE TABLE "AssociatedWorkEffort" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "WorkEffortId" integer, "AssociatedRecordId" integer, "AssociatedRecordType" varchar(255)); 
GO
CREATE Index "AssociatedRecordIdTypeIndex" ON "AssociatedWorkEffort" ("AssociatedRecordId", "AssociatedRecordType"); 
GO
CREATE Index "IndexAssociatedWorkEffortOnWorkEffortId" ON "AssociatedWorkEffort" ("WorkEffortId"); 
GO
CREATE TABLE "WorkEffortType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "InternalIdentifier" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "WorkEffortPuposeType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "InternalIdentifier" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "WorkEffortAssociationType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" integer, "LeftValue" integer, "RightValue" integer, "ValidFromRoleTypeId" integer, "ValidToRoleTypeId" integer, "Name" varchar(255), "Description" varchar(255), "InternalIdentifier" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexWorkEffortAssociationTypeOnValidFromRoleTypeId" ON "WorkEffortAssociationType" ("ValidFromRoleTypeId"); 
GO
CREATE Index "IndexWorkEffortAssociationTypeOnValidToRoleTypeId" ON "WorkEffortAssociationType" ("ValidToRoleTypeId"); 
GO
CREATE TABLE "WorkEffortAssociation" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "WorkEffortAssociationTypeId" integer, "Description" varchar(255), "WorkEffortIdFrom" integer, "WorkEffortIdTo" integer, "RoleTypeIdFrom" integer, "RoleTypeIdTo" integer, "RelationshipTypeId" integer, "EffectiveFrom" DATETIME, "EffectiveThrough" DATETIME, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL, "Lag" integer, "LagUnit" varchar(255)); 
GO
CREATE Index "IndexWorkEffortAssociationOnRelationshipTypeId" ON "WorkEffortAssociation" ("RelationshipTypeId"); 
GO
CREATE TABLE "WorkOrderItemFulfillment" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "WorkEffortId" integer, "OrderLineItemId" integer, "Description" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "WorkOrderItemFulfillmentIndex" ON "WorkOrderItemFulfillment" ("WorkEffortId", "OrderLineItemId"); 
GO
CREATE TABLE "WorkOrderItem" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "OrderRequirementCommitment" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "OrderLineItemId" integer, "RequirementId" integer, "Description" varchar(255), "Quantity" integer, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "OrderItemRequirementFulfillmentIndex" ON "OrderRequirementCommitment" ("OrderLineItemId", "RequirementId"); 
GO
CREATE TABLE "WorkRequirementFulfillment" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "WorkEffortId" integer, "RequirementId" integer, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "WorkOrderRequirementFulfillmentIndex" ON "WorkRequirementFulfillment" ("WorkEffortId", "RequirementId"); 
GO
CREATE TABLE "WorkEffortPartyAssignment" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "WorkEffortId" integer, "RoleTypeId" integer, "PartyId" integer, "assignedFrom" DATETIME, "assignedThrough" DATETIME, "Comments" text, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL, "Resourceallocation" integer); 
GO
CREATE Index "IndexWorkEffortPartyAssignmentOnassignedFrom" ON "WorkEffortPartyAssignment" ("assignedFrom"); 
GO
CREATE Index "IndexWorkEffortPartyAssignmentOnassignedThrough" ON "WorkEffortPartyAssignment" ("assignedThrough"); 
GO
CREATE Index "IndexWorkEffortPartyAssignmentOnWorkEffortId" ON "WorkEffortPartyAssignment" ("WorkEffortId"); 
GO
CREATE Index "IndexWorkEffortPartyAssignmentOnPartyId" ON "WorkEffortPartyAssignment" ("PartyId"); 
GO
CREATE TABLE "WorkEffortInventoryAssignment" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "WorkEffortId" integer, "InventoryEntryId" integer, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "WorkEffortInventoryAssignmentIndex" ON "WorkEffortInventoryAssignment" ("WorkEffortId", "InventoryEntryId"); 
GO
CREATE TABLE "WorkEffortFixedAssetAssignment" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "WorkEffortId" integer, "FixedAssetId" integer, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "WorkEffortFixedAssetassignIndex" ON "WorkEffortFixedAssetAssignment" ("WorkEffortId", "FixedAssetId"); 
GO
CREATE TABLE "WorkEffortTypeAssociation" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "WorkEffortTypeAssocType" integer, "WorkEffortTypeIdFrom" integer, "WorkEffortTypeIdTo" integer, "Description" varchar(255), "Comments" varchar(255), "InternalIdentifier" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "WorkEffortFixedAssetStandard" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "WorkEffortId" integer, "FixedAssetTypeId" integer, "EstimatedQuantity" decimal, "EstimatedDuration" decimal, "EstimatedCostMoneyId" integer, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexWorkEffortFixedAssetStandardOnWorkEffortId" ON "WorkEffortFixedAssetStandard" ("WorkEffortId"); 
GO
CREATE Index "IndexWorkEffortFixedAssetStandardOnFixedAssetTypeId" ON "WorkEffortFixedAssetStandard" ("FixedAssetTypeId"); 
GO
CREATE TABLE "WorkEffortSkillStandard" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "WorkEffortId" integer, "SkillTypeId" integer, "EstimatedNumberPeople" decimal, "EstimatedDuration" decimal, "EstimatedCostMoneyId" integer, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexWorkEffortSkillStandardOnWorkEffortId" ON "WorkEffortSkillStandard" ("WorkEffortId"); 
GO
CREATE Index "IndexWorkEffortSkillStandardOnSkillTypeId" ON "WorkEffortSkillStandard" ("SkillTypeId"); 
GO
CREATE TABLE "WorkEffortGoodStandard" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "WorkEffortId" integer, "GoodTypeId" integer, "EstimatedQuantity" decimal, "EstimatedCostMoneyId" integer, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexWorkEffortGoodStandardOnWorkEffortId" ON "WorkEffortGoodStandard" ("WorkEffortId"); 
GO
CREATE TABLE "WorkEffortInventoryProduced" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "WorkEffortId" integer, "InventoryEntryId" integer, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexWorkEffortInventoryProducedOnWorkEffortId" ON "WorkEffortInventoryProduced" ("WorkEffortId"); 
GO
CREATE Index "IndexWorkEffortInventoryProducedOnInventoryEntryId" ON "WorkEffortInventoryProduced" ("InventoryEntryId"); 
GO
CREATE TABLE "WorkEffortDeliverableProduced" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "WorkEffortId" integer, "DeliverableId" integer, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexWorkEffortDeliverableProducedOnWorkEffortId" ON "WorkEffortDeliverableProduced" ("WorkEffortId"); 
GO
CREATE Index "IndexWorkEffortDeliverableProducedOnDeliverableId" ON "WorkEffortDeliverableProduced" ("DeliverableId"); 
GO
CREATE TABLE "WorkEffortFixedAssetServiced" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "WorkEffortId" integer, "FixedAssetId" integer, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexWorkEffortFixedAssetServicedOnWorkEffortId" ON "WorkEffortFixedAssetServiced" ("WorkEffortId"); 
GO
CREATE Index "IndexWorkEffortFixedAssetServicedOnFixedAssetId" ON "WorkEffortFixedAssetServiced" ("FixedAssetId"); 
GO
CREATE TABLE "PartyResourceAvailability" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "FromDate" DATETIME, "ToDate" DATETIME, "PartyId" integer, "PartyTypeId" integer, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexPartyResourceAvailabilityOnFromDate" ON "PartyResourceAvailability" ("FromDate"); 
GO
CREATE Index "IndexPartyResourceAvailabilityOnToDate" ON "PartyResourceAvailability" ("ToDate"); 
GO
CREATE Index "IndexPartyResourceAvailabilityOnPartyTypeId" ON "PartyResourceAvailability" ("PartyTypeId"); 
GO
CREATE Index "IndexPartyResourceAvailabilityOnPartyId" ON "PartyResourceAvailability" ("PartyId"); 
GO
CREATE TABLE "PartyResourceAvailabilityType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "InternalIdentifier" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexPartyResourceAvailabilityTypeOnInternalIdentifier" ON "PartyResourceAvailabilityType" ("InternalIdentifier"); 
GO
CREATE Index "IndexPartyResourceAvailabilityTypeOnDescription" ON "PartyResourceAvailabilityType" ("Description"); 
GO
CREATE TABLE "TransportationRoute" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "InternalIdentifier" varchar(255), "Description" varchar(255), "Comments" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "TransportationRouteSegment" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "InternalIdentifier" varchar(255), "Description" varchar(255), "Comments" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "Sequence" integer, "EstimatedStart" DATETIME, "EstimatedArrival" DATETIME, "ActualStart" DATETIME, "ActualArrival" DATETIME, "StartMileage" integer, "EndMileage" integer, "FuelUsed" integer, "TransportationRouteId" integer, "FromTransportationRoutestopId" integer, "ToTransportationRoutestopId" integer, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "TransportationRouteStop" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "InternalIdentifier" varchar(255), "Description" varchar(255), "PostalAddressId" integer, "GeoLocation" varchar(255), "Sequence" integer, "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "TransportationRouteId" integer, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "AssociatedTransportationRoute" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "TransportationRouteId" integer, "AssociatedRecordId" integer, "AssociatedRecordType" varchar(255)); 
GO
CREATE Index "AssociatedRouteRecordIdTypeIndex" ON "AssociatedTransportationRoute" ("AssociatedRecordId", "AssociatedRecordType"); 
GO
CREATE Index "AssociatedRouteTransportationRouteIdIndex" ON "AssociatedTransportationRoute" ("TransportationRouteId"); 
GO
CREATE TABLE "RoleTypeWorkEffort" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "RoleTypeId" integer, "WorkEffortId" integer); 
GO
CREATE Index "RoleTypeWorkEffortIndex" ON "RoleTypeWorkEffort" ("RoleTypeId", "WorkEffortId"); 
GO
CREATE TABLE "PositionType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "InternalIdentifier" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdentiferSource" varchar(255), "ParentId" integer, "LeftValue" integer, "RightValue" integer, "Title" varchar(255), "BenefitPercent" decimal(8,2), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexPositionTypeOnParentId" ON "PositionType" ("ParentId"); 
GO
CREATE Index "IndexPositionTypeOnLeftValue" ON "PositionType" ("LeftValue"); 
GO
CREATE Index "IndexPositionTypeOnRightValue" ON "PositionType" ("RightValue"); 
GO
CREATE TABLE "Position" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "PartyId" integer, "PositionTypeId" integer, "EstimatedFromDate" date, "EstimatedThroughDate" date, "SalaryFlag" BIT, "exemptFlag" BIT, "fullTimeFlag" BIT, "temporaryFlag" BIT, "ActualFromDate" date, "ActualThroughDate" date, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexPositionOnPositionTypeId" ON "Position" ("PositionTypeId"); 
GO
CREATE Index "IndexPositionOnPartyId" ON "Position" ("PartyId"); 
GO
CREATE TABLE "PositionFulfillment" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "heldbyPartyId" integer, "PositionId" integer, "FromDate" date, "ThroughDate" date, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexPositionFulfillmentOnPositionId" ON "PositionFulfillment" ("PositionId"); 
GO
CREATE Index "IndexPositionFulfillmentOnheldbyPartyId" ON "PositionFulfillment" ("heldbyPartyId"); 
GO
CREATE TABLE "TimesheetEntry" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "WorkEffortId" integer, "Description" varchar(255), "WorkedDate" date, "EnteredDate" DATETIME, "regularhoursWorked" decimal(5,2), "overTimehoursWorked" decimal(5,2), "StartTime" DATETIME, "EndTime" DATETIME, "Comments" text, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexTimesheetEntryOnWorkEffortId" ON "TimesheetEntry" ("WorkEffortId"); 
GO
CREATE TABLE "TimesheetEntryPartyRole" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "TimesheetEntryId" integer, "PartyId" integer, "RoleTypeId" integer, "FromDate" date, "ThroughDate" date, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexTimesheetEntryPartyRoleOnTimesheetEntryId" ON "TimesheetEntryPartyRole" ("TimesheetEntryId"); 
GO
CREATE Index "IndexTimesheetEntryPartyRoleOnPartyId" ON "TimesheetEntryPartyRole" ("PartyId"); 
GO
CREATE Index "IndexTimesheetEntryPartyRoleOnRoleTypeId" ON "TimesheetEntryPartyRole" ("RoleTypeId"); 
GO
CREATE TABLE "Experience" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "staffingPosition" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "InternalIdentifier" varchar(255), "CustomFields" text, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "WcCode" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "PartyId" integer, "WcCode" varchar(255), "Description" varchar(255), "InternalIdentifier" varchar(255), "CustomFields" text, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "Shift" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "PartyId" integer, "Description" varchar(255), "InternalIdentifier" varchar(255), "CustomFields" text, "ShiftStart" DATETIME, "ShiftEnd" DATETIME, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "CandidateSubmission" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "OrderLineItemId" integer, "Description" varchar(255), "InternalIdentifier" varchar(255), "CustomFields" text, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "Resume" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "PartyId" integer, "FileContent" text, "XmlResumeData" text); 
GO
CREATE TABLE "CalendarEvent" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Title" varchar(255), "StartTime" DATETIME, "EndTime" DATETIME, "AllDay" BIT Default 'f', "IsPublic" BIT Default 't', "Description" text, "ListViewImageUrl" varchar(255), "Status" varchar(255), "CustomFields" text, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "CalendarEventIdIndex" ON "CalendarEvent" ("Id"); 
GO
CREATE Index "CalendarEventStartTimeIndex" ON "CalendarEvent" ("StartTime"); 
GO
CREATE Index "CalendarEventEndTimeIndex" ON "CalendarEvent" ("EndTime"); 
GO
CREATE TABLE "CalendarEventPartyRole" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "PartyId" integer, "RoleTypeId" integer, "CalendarEventId" integer, "Description" text, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "CalendarEventPartyRoleIdIndex" ON "CalendarEventPartyRole" ("Id"); 
GO
CREATE Index "CalendarEventPartyRolePartyIdIndex" ON "CalendarEventPartyRole" ("PartyId"); 
GO
CREATE Index "CalendarEventPartyRoleEventIdIndex" ON "CalendarEventPartyRole" ("CalendarEventId"); 
GO
CREATE Index "CalendarEventPartyRoleRoleTypeIdIndex" ON "CalendarEventPartyRole" ("RoleTypeId"); 
GO
CREATE TABLE "CalendarInvite" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Title" varchar(255), "Invitetext" text, "CalendarEventId" integer, "InviterId" integer, "InviteeId" integer, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "CalendarInviteIdIndex" ON "CalendarInvite" ("Id"); 
GO
CREATE Index "CalendarInviteEventIdIndex" ON "CalendarInvite" ("CalendarEventId"); 
GO
CREATE Index "CalendarInviteInviterIdIndex" ON "CalendarInvite" ("InviterId"); 
GO
CREATE Index "CalendarInviteInviteeIdIndex" ON "CalendarInvite" ("InviteeId"); 
GO
CREATE TABLE "Project" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "ProjectRecordId" integer, "ProjectRecordType" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "WorkEffort" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" integer, "LeftValue" integer, "RightValue" integer, "FacilityId" integer, "ProjectedCostMoneyId" integer, "ActualCostMoneyId" integer, "FixedAssetId" integer, "WorkEffortPuposeTypeId" integer, "WorkEffortTypeId" integer, "Description" varchar(255), "Type" varchar(255), "StartAt" DATETIME, "EndAt" DATETIME, "WorkEffortRecordId" integer, "WorkEffortRecordType" varchar(255), "WorkEffortItemId" integer, "WorkEffortItemType" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL, "Comments" text, "PercentDone" integer, "Duration" integer, "DurationUnit" varchar(255), "Effort" integer, "EffortUnit" varchar(255), "BaseLineStartAt" DATETIME, "BaseLineEndAt" DATETIME, "BaseLinePercentDone" integer, "ProjectId" integer, "Sequence" integer Default 0); 
GO
CREATE Index "WorkEffortRecordIdTypeIndex" ON "WorkEffort" ("WorkEffortRecordId", "WorkEffortRecordType"); 
GO
CREATE Index "WorkItemIndex" ON "WorkEffort" ("WorkEffortItemType", "WorkEffortItemId"); 
GO
CREATE Index "IndexWorkEffortOnFixedAssetId" ON "WorkEffort" ("FixedAssetId"); 
GO
CREATE Index "IndexWorkEffortOnfinishedAt" ON "WorkEffort" ("EndAt"); 
GO
CREATE Index "WorkEffortProjectIndex" ON "WorkEffort" ("ProjectId"); 
GO

--INSERT INTo schemaMigrations (Version) ValUES ('20100819181805'); 
--GO

--INSERT INTo schemaMigrations (Version) ValUES ('20151006064122'); 
--GO

--INSERT INTo schemaMigrations (Version) ValUES ('20151006064123'); 
--GO

--INSERT INTo schemaMigrations (Version) ValUES ('20151006064124'); 
--GO

--INSERT INTo schemaMigrations (Version) ValUES ('20151006064125'); 
--GO

--INSERT INTo schemaMigrations (Version) ValUES ('20151006064126'); 
--GO

--INSERT INTo schemaMigrations (Version) ValUES ('20151006064127'); 
--GO

--INSERT INTo schemaMigrations (Version) ValUES ('20151006064128'); 
--GO

--INSERT INTo schemaMigrations (Version) ValUES ('20151006064129'); 
--GO

--INSERT INTo schemaMigrations (Version) ValUES ('20151006064130'); 
--GO

--INSERT INTo schemaMigrations (Version) ValUES ('20151006064131'); 
--GO