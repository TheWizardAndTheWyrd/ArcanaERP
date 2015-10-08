CREATE TABLE "Report" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Name" varchar(255), "InternalIdentifier" varchar(255), "Template" text, "Query" text, "CreatedAt" datetime NOT NULL, "UpdatedAt" datetime NOT NULL);
GO
CREATE Index "ReportInternalIdentifierIndex" ON "Report" ("InternalIdentifier"); 
GO
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
CREATE TABLE "Payment" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Success" BIT, "ReferenceNumber" varchar(255), "FinancialTaxationId" integer, "currentstate" varchar(255), "authorizationCode" varchar(255), "ExternalIdentifier" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexPaymentOnFinancialTaxationId" ON "Payment" ("FinancialTaxationId"); 
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
CREATE TABLE "OrderTaxation" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "OrderTaxationTypeId" integer, "OrderTaxationRecordId" integer, "OrderTaxationRecordType" varchar(255), "email" varchar(255), "phoneNumber" varchar(255), "shipTofirstname" varchar(255), "shipTolastname" varchar(255), "shipToAddressLine1" varchar(255), "shipToAddressLine2" varchar(255), "shipTocity" varchar(255), "shipTostate" varchar(255), "shipToPostalCode" varchar(255), "shipTocountryname" varchar(255), "Customerip" varchar(255), "OrderNumber" varchar(255), "errorMessage" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL, "PaymentGatewayTaxationId" varchar(255), "CreditCardId" integer, "billTofirstname" varchar(255), "billTolastname" varchar(255), "billToAddressLine1" varchar(255), "billToAddressLine2" varchar(255), "billTocity" varchar(255), "billTostate" varchar(255), "billToPostalCode" varchar(255), "billTocountryname" varchar(255), "billTocountry" varchar(255), "shipTocountry" varchar(255), "SalesTax" decimal(8,2)); 
GO
CREATE Index "IndexOrderTaxationOnOrderTaxationTypeId" ON "OrderTaxation" ("OrderTaxationTypeId"); 
GO
CREATE Index "OrderTaxationRecordIndex" ON "OrderTaxation" ("OrderTaxationRecordId", "OrderTaxationRecordType"); 
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
CREATE TABLE "InventoryPickupTaxation" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "FixedAssetId" integer, "Description" varchar(255), "Quantity" integer, "UnitOfMeasurementId" integer, "Comment" text, "InventoryEntryId" integer, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexInventoryPickupTaxationOnFixedAssetId" ON "InventoryPickupTaxation" ("FixedAssetId"); 
GO
CREATE Index "IndexInventoryPickupTaxationOnInventoryEntryId" ON "InventoryPickupTaxation" ("InventoryEntryId"); 
GO
CREATE TABLE "InventoryDropOffTaxation" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "FixedAssetId" integer, "Description" varchar(255), "Quantity" integer, "UnitOfMeasurementId" integer, "Comment" text, "InventoryEntryId" integer, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexInventoryDropOffTaxationOnFixedAssetId" ON "InventoryDropOffTaxation" ("FixedAssetId"); 
GO
CREATE Index "IndexInventoryDropOffTaxationOnInventoryEntryId" ON "InventoryDropOffTaxation" ("InventoryEntryId"); 
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
CREATE TABLE "PaymentApplication" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "FinancialTaxationId" integer, "PaymentAppliedToId" integer, "PaymentAppliedToType" varchar(255), "AppliedMoneyAmountId" integer, "Comment" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "PaymentAppliedToIndex" ON "PaymentApplication" ("PaymentAppliedToId", "PaymentAppliedToType"); 
GO
CREATE Index "IndexPaymentApplicationOnFinancialTaxationId" ON "PaymentApplication" ("FinancialTaxationId"); 
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
CREATE TABLE "InvoiceItem" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "InvoiceId" integer, "InvoiceItemTypeId" integer, "ItemseqId" integer, "ItemDescription" text(255), "Quantity" decimal(8,2), "Amount" decimal(8,2), "Taxable" BIT, "UnitPrice" decimal(8,2), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL, "SalesTax" decimal(8,2), "Taxed" BIT); 
GO
CREATE Index "InvoiceIdIndex" ON "InvoiceItem" ("InvoiceId"); 
GO
CREATE Index "InvoiceItemTypeIdIndex" ON "InvoiceItem" ("InvoiceItemTypeId"); 
GO
CREATE TABLE "OrderTaxationType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "InternalIdentifier" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexOrderTaxationTypeOnParentId" ON "OrderTaxationType" ("ParentId"); 
GO
CREATE TABLE "OrderLineItem" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "OrderTaxationId" integer, "OrderLineItemTypeId" integer, "ProductInstanceId" integer, "ProductInstanceDescription" varchar(255), "ProductTypeId" integer, "ProductTypeDescription" varchar(255), "SoldPrice" decimal(8,2), "SoldPriceUnitOfMeasurement" integer, "SoldAmount" integer, "SoldAmountUnitOfMeasurement" integer, "ProductOfferId" integer, "Quantity" integer, "UnitOfMeasurementId" integer, "ProductOfferDescription" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL, "UnitPrice" decimal, "SalesTax" decimal(8,2), "Taxed" BIT); 
GO
CREATE Index "OrderLineItemUnitOfMeasurementIndex" ON "OrderLineItem" ("UnitOfMeasurementId"); 
GO
CREATE Index "IndexOrderLineItemOnOrderTaxationId" ON "OrderLineItem" ("OrderTaxationId"); 
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
CREATE TABLE "OrderLineItemPartyRole" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "RoleTypeId" integer, "BusinessTaxationAccountRootId" integer, "OrderLineItemId" integer, "PartyId" integer, "Description" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "OrderLineItemPartyRoleOrderLineItemIndex" ON "OrderLineItemPartyRole" ("OrderLineItemId"); 
GO
CREATE Index "OrderLineItemPartyRolePartyIndex" ON "OrderLineItemPartyRole" ("PartyId"); 
GO
CREATE Index "OrderLineItemPartyRoleRoleTypeIndex" ON "OrderLineItemPartyRole" ("RoleTypeId"); 
GO
CREATE Index "OrderLineItemPartyRoleBusinessTaxationAccountRootIndex" ON "OrderLineItemPartyRole" ("BusinessTaxationAccountRootId"); 
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
CREATE TABLE "BusinessTaxationEvent" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "BusinessTaxationAccountRootId" integer, "BusinessTaxationTypeId" integer, "EnteredDate" DATETIME, "PostDate" DATETIME, "BusinessTaxationRecordId" integer, "BusinessTaxationRecordType" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexBusinessTaxationEventOnBusinessTaxationAccountRootId" ON "BusinessTaxationEvent" ("BusinessTaxationAccountRootId"); 
GO
CREATE Index "IndexBusinessTaxationEventOnBusinessTaxationTypeId" ON "BusinessTaxationEvent" ("BusinessTaxationTypeId"); 
GO
CREATE Index "Btai1" ON "BusinessTaxationEvent" ("BusinessTaxationRecordId", "BusinessTaxationRecordType"); 
GO
CREATE TABLE "BusinessTaxationEventDescription" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "BusinessTaxationEventId" integer, "LanguageId" integer, "LocaleId" integer, "Priority" integer, "Sequence" integer, "ShortDescription" varchar(255), "LongDescription" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexBusinessTaxationEventDescriptionOnBusinessTaxationEventId" ON "BusinessTaxationEventDescription" ("BusinessTaxationEventId"); 
GO
CREATE Index "IndexBusinessTaxationEventDescriptionOnLanguageId" ON "BusinessTaxationEventDescription" ("LanguageId"); 
GO
CREATE Index "IndexBusinessTaxationEventDescriptionOnLocaleId" ON "BusinessTaxationEventDescription" ("LocaleId"); 
GO
CREATE TABLE "BusinessTaxationType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "InternalIdentifier" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "BusinessTaxationTypeNestedSetIndex" ON "BusinessTaxationType" ("ParentId", "LeftValue", "RightValue"); 
GO
CREATE TABLE "BusinessTaxationRelationship" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "BusinessTaxationRelationshipTypeId" integer, "Description" varchar(255), "TaxationEventIdFrom" integer, "TaxationEventIdTo" integer, "StatusTypeId" integer, "FromDate" date, "ThroughDate" date, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexBusinessTaxationRelationshipOnBusinessTaxationRelationshipTypeId" ON "BusinessTaxationRelationship" ("BusinessTaxationRelationshipTypeId"); 
GO
CREATE Index "IndexBusinessTaxationRelationshipOnStatusTypeId" ON "BusinessTaxationRelationship" ("StatusTypeId"); 
GO
CREATE TABLE "BusinessTaxationRelationshipType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "InternalIdentifier" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexBusinessTaxationRelationshipTypeOnParentId" ON "BusinessTaxationRelationshipType" ("ParentId"); 
GO
CREATE TABLE "BusinessTaxationStatus" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "Comments" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "BusinessTaxationTask" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "BusinessTaxationTaskType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexBusinessTaxationTaskTypeOnParentId" ON "BusinessTaxationTaskType" ("ParentId"); 
GO
CREATE TABLE "BusinessTaxationPartyRole" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "BusinessTaxationEventId" integer, "PartyId" integer, "BusinessTaxationPartyRoleTypeId" integer, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexBusinessTaxationPartyRoleOnBusinessTaxationEventId" ON "BusinessTaxationPartyRole" ("BusinessTaxationEventId"); 
GO
CREATE Index "IndexBusinessTaxationPartyRoleOnPartyId" ON "BusinessTaxationPartyRole" ("PartyId"); 
GO
CREATE Index "IndexBusinessTaxationPartyRoleOnBusinessTaxationPartyRoleTypeId" ON "BusinessTaxationPartyRole" ("BusinessTaxationPartyRoleTypeId"); 
GO
CREATE TABLE "BusinessTaxationPartyRoleType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "InternalIdentifier" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexBusinessTaxationPartyRoleTypeOnParentId" ON "BusinessTaxationPartyRoleType" ("ParentId"); 
GO
CREATE TABLE "BusinessTaxationAccountRoot" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "Status" integer, "BusinessTaxationAccountId" integer, "BusinessTaxationAccountType" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "Type" varchar(255), "BusinessTaxationAccountTypeId" integer, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "Btai2" ON "BusinessTaxationAccountRoot" ("BusinessTaxationAccountId", "BusinessTaxationAccountType"); 
GO
CREATE Index "Btai3" ON "BusinessTaxationAccountRoot" ("BusinessTaxationAccountTypeId"); 
GO
CREATE TABLE "BusinessTaxationAccountStatusType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "BusinessTaxationAccountType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "InternalIdentifier" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexBusinessTaxationAccountTypeOnParentId" ON "BusinessTaxationAccountType" ("ParentId"); 
GO
CREATE TABLE "BusinessTaxationAccountStatus" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "BusinessTaxationAccountRelationshipType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "InternalIdentifier" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexBusinessTaxationAccountRelationshipTypeOnParentId" ON "BusinessTaxationAccountRelationshipType" ("ParentId"); 
GO
CREATE TABLE "BusinessTaxationAccountRelationship" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "BusinessTaxationAccountRelationshipTypeId" integer, "Description" varchar(255), "BusinessTaxationAccountRootIdFrom" integer, "BusinessTaxationAccountRootIdTo" integer, "StatusTypeId" integer, "FromDate" date, "ThroughDate" date, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexBusinessTaxationAccountRelationshipOnBusinessTaxationAccountRelationshipTypeId" ON "BusinessTaxationAccountRelationship" ("BusinessTaxationAccountRelationshipTypeId"); 
GO
CREATE Index "IndexBusinessTaxationAccountRelationshipOnStatusTypeId" ON "BusinessTaxationAccountRelationship" ("StatusTypeId"); 
GO
CREATE TABLE "BusinessTaxationAccountPartyRole" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "BusinessTaxationAccountRootId" integer, "PartyId" integer, "BusinessTaxationAccountPartyTypeId" integer, "IsDefaultBillingAccountFlag" integer, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexBusinessTaxationAccountPartyRoleOnBusinessTaxationAccountRootId" ON "BusinessTaxationAccountPartyRole" ("BusinessTaxationAccountRootId"); 
GO
CREATE Index "IndexBusinessTaxationAccountPartyRoleOnPartyId" ON "BusinessTaxationAccountPartyRole" ("PartyId"); 
GO
CREATE Index "IndexBusinessTaxationAccountPartyRoleOnBusinessTaxationAccountPartyTypeId" ON "BusinessTaxationAccountPartyRole" ("BusinessTaxationAccountPartyTypeId"); 
GO
CREATE TABLE "BusinessTaxationAccountPartyType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "InternalIdentifier" varchar(255), "ExternalIdentifier" varchar(255), "ExternalIdSource" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexBusinessTaxationAccountPartyTypeOnParentId" ON "BusinessTaxationAccountPartyType" ("ParentId"); 
GO
CREATE TABLE "BusinessAccountTaxationTask" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "BusinessTaxationTaskId" integer, "BusinessTaxationAccountId" integer, "Description" varchar(255), "Comments" varchar(255), "EnteredDate" DATETIME, "requestedDate" DATETIME, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexBusinessAccountTaxationTaskOnBusinessTaxationTaskId" ON "BusinessAccountTaxationTask" ("BusinessTaxationTaskId"); 
GO
CREATE Index "IndexBusinessAccountTaxationTaskOnBusinessTaxationAccountId" ON "BusinessAccountTaxationTask" ("BusinessTaxationAccountId"); 
GO
CREATE TABLE "BusinessTaxationAgreementRoleType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "InternalIdentifier" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexBusinessTaxationAgreementRoleTypeOnParentId" ON "BusinessTaxationAgreementRoleType" ("ParentId"); 
GO
CREATE TABLE "BusinessTaxationAgreementRole" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "BusinessTaxationEventId" integer, "BusinessTaxationEventType" varchar(255), "AgreementId" integer, "BusinessTaxationAgreementRoleTypeId" integer, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "IndexBusinessTaxationAgreementRoleOnAgreementId" ON "BusinessTaxationAgreementRole" ("AgreementId"); 
GO
CREATE Index "IndexBusinessTaxationAgreementRoleOnBusinessTaxationAgreementRoleTypeId" ON "BusinessTaxationAgreementRole" ("BusinessTaxationAgreementRoleTypeId"); 
GO
CREATE TABLE "FinancialTaxation" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "MoneyId" integer, "applyDate" date, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "FinancialTaxationAssignment" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "FinancialTaxationId" integer, "FinancialTaxationRecordId" integer, "FinancialTaxationRecordType" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "FinancialTaxationAccount" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "AccountNumber" varchar(255), "AgreementId" integer, "BalanceId" integer, "BalanceDate" date, "CalculateBalance" BIT, "PaymentDueId" integer, "DueDate" date, "FinancialAccountId" integer, "FinancialAccountType" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "BaseTaxationContext" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "BusinessTaxationEventId" integer, "TaxationContextRecordId" integer, "TaxationContextRecordType" varchar(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE Index "TaxationContextRecordIndex" ON "BaseTaxationContext" ("TaxationContextRecordId", "TaxationContextRecordType"); 
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