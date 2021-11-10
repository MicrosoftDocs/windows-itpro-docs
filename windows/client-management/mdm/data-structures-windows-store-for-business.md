---
title: Data structures for Microsoft Store for Business
MS-HAID:
- 'p\_phdevicemgmt.business\_store\_data\_structures'
- 'p\_phDeviceMgmt.data\_structures\_windows\_store\_for\_business'
ms.assetid: ABE44EC8-CBE5-4775-BA8A-4564CB73531B
ms.reviewer: 
manager: dansimp
description: 
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 09/18/2017
---

# Data structures for Microsoft Store for Business


Here's the list of data structures used in the Microsoft Store for Business REST APIs:

-   [AlternateIdentifier](#alternateidentifier)
-   [BulkSeatOperationResultSet](#bulkseatoperationresultset)
-   [FailedSeatRequest](#failedseatrequest)
-   [FrameworkPackageDetails](#frameworkpackagedetails)
-   [InventoryDistributionPolicy](#inventorydistributionpolicy)
-   [InventoryEntryDetails](#inventoryentrydetails)
-   [InventoryResultSet](#inventoryresultset)
-   [InventoryStatus](#inventorystatus)
-   [LicenseType](#licensetype)
-   [LocalizedProductDetail](#localizedproductdetail)
-   [OfflineLicense](#offlinelicense)
-   [PackageContentInfo](#packagecontentinfo)
-   [PackageLocation](#packagelocation)
-   [ProductArchitectures](#productarchitectures)
-   [ProductDetails](#productdetails)
-   [ProductImage](#productimage)
-   [ProductKey](#productkey)
-   [ProductPackageDetails](#productpackagedetails)
-   [ProductPackageFormat](#productpackageformat)
-   [ProductPackageSet](#productpackageset)
-   [ProductPlatform](#productplatform)
-   [PublisherDetails](#publisherdetails)
-   [SeatAction](#seataction)
-   [SeatDetails](#seatdetails)
-   [SeatDetailsResultSet](#seatdetailsresultset)
-   [SeatState](#seatstate)
-   [SupportedProductPlatform](#supportedproductplatform)
-   [VersionInfo](#versioninfo)

## AlternateIdentifier


Specifies the properties of the alternate identifier.

|Name|Type|Description|
|--- |--- |--- |
|type|string|LegacyWindowStoreProductId, LegacyWindowsPhoneProductId, RedirectToThresholdProductId|
|value|string||

## BulkSeatOperationResultSet

|Name|Type|
|--- |--- |
|seatDetails|collection of [SeatDetails](#seatdetails)|
|failedSeatOperations|collection of [FailedSeatRequest](#failedseatrequest)|

## FailedSeatRequest

|Name|Type|
|--- |--- |
|failureReason|string|
|productKey|[ProductKey](#productkey)|
|userName|string|

## FrameworkPackageDetails

|Name|Type|Description|
|--- |--- |--- |
|packageId|string||
|contentId|string|Identifies a specific application.|
|location|[PackageLocation](#packagelocation)||
|packageFullName|string||
|packageIdentityName|string||
|architectures|collection of [ProductArchitectures](#productarchitectures)||
|packageFormat|[ProductPackageFormat](#productpackageformat)||
|platforms|collection of [ProductPlatform](#productplatform)||
|fileSize|integer-64|Size of the file.|
|packageRank|integer-32|Optional|

## InventoryDistributionPolicy

|Name|Description|
|--- |--- |
|open|Open distribution policy - licenses/seats can be assigned/consumed without limit|
|restricted|Restricted distribution policy - licenses/seats must be assigned/consumed according to the available count|

## InventoryEntryDetails

|Name|Type|Description|
|--- |--- |--- |
|productKey|[ProductKey](#productkey)|Identifier used on subsequent requests to get additional content including product descriptions, offline license, and download URLs.|
|seatCapacity|integer-64|Total number of seats that have been purchased for an application.|
|availableSeats|integer-64|Number of available seats remaining for an application.|
|lastModified|dateTime|Specifies the last modified date for an application. Modifications for an application includes updated product details, updates to an application, and updates to the quantity of an application.|
|licenseType|[LicenseType](#licensetype)|Indicates whether the set of seats for a given application supports online or offline licensing.|
|distributionPolicy|[InventoryDistributionPolicy](#inventorydistributionpolicy)||
|status|[InventoryStatus](#inventorystatus)||

## InventoryResultSet


|Name|Type|Description|
|--- |--- |--- |
|continuationToken|string|Only available if there is a next page.|
|inventoryEntries|collection of [InventoryEntryDetails](#inventoryentrydetails)||
 
## InventoryStatus

|Name|Description|
|--- |--- |
|active|Entry is available in the organization’s inventory.|
|removed|Entry has been removed from the organization’s inventory.|

## LicenseType

|Name|Description|
|--- |--- |
|online|Online license application.|
|offline|Offline license application.|

## LocalizedProductDetail


Specifies the properties of the localized product.

|Name|Type|Description|
|--- |--- |--- |
|language|string|Language or fallback language if the specified language is not available.|
|displayName|string|Display name of the application.|
|description|string|App description provided by developer can be up to 10,000 characters.|
|images|collection of [ProductImage](#productimage)|Artwork and icon associated with the application.|
|publisher|[PublisherDetails](#publisherdetails)|Publisher of the application.|

## OfflineLicense


|Name|Type|Description|
|--- |--- |--- |
|productKey|[ProductKey](#productkey)|Identifies a set of seats associated with an application.|
|licenseBlob|string|Base-64 encoded offline license that can be installed via a CSP.|
|licenseInstanceId|string|Version of the license.|
|requestorId|string|Organization requesting the license.|
|contentId|string|Identifies the specific license required by an application.|

## PackageContentInfo


|Name|Type|
|--- |--- |
|productPlatforms|collection of ProductPlatform|
|packageFormat|string|

## PackageLocation


|Name|Type|Description|
|--- |--- |--- |
|url|URI|CDN location of the packages. URL expiration is based on the estimated time to download the package.|


## ProductArchitectures

|Name|
|--- |
|neutral|
|arm|
|x86|
|x64|

## ProductDetails

|Name|Type|Description|
|--- |--- |--- |
|productKey|[ProductKey](#productkey)|Identifier used on subsequent requests to get additional content including product descriptions, offline license, and download URLs.|
|productType|string|Type of product.|
|supportedLanguages|collection of string|The set of localized languages for an application.|
|publisherId|string|Publisher identifier.|
|category|string|Application category.|
|alternateIds|collection of [AlternateIdentifier](#alternateidentifier)|The identifiers that can be used to instantiate the installation of on online application.|
|packageFamilyName|string||
|supportedPlatforms|collection of [ProductPlatform](#productplatform)||


## ProductImage

Specifies the properties of the product image.

|Name|Type|Description|
|--- |--- |--- |
|location|URI|Location of the download image.|
|purpose|string|Tag for the purpose of the image, e.g. "screenshot" or "logo".|
|height|string|Height of the image in pixels.|
|width|string|Width of the image in pixels.|
|caption|string|Unlimited length.|
|backgroundColor|string|Format "#RRGGBB"|
|foregroundColor|string|Format "#RRGGBB"|
|fileSize|integer-64|Size of the file.|

## ProductKey

Specifies the properties of the product key.

|Name|Type|Description|
|--- |--- |--- |
|productId|string|Product identifier for an application that is used by the Store for Business.|
|skuId|string|Product identifier that specifies a specific SKU of an application.|

## ProductPackageDetails

|Name|Type|Description|
|--- |--- |--- |
|frameworkDependencyPackages|collection of [FrameworkPackageDetails](#frameworkpackagedetails)||
|packageId|string||
|contentId|string|Identifies a specific application.|
|location|[PackageLocation](#packagelocation)||
|packageFullName|string|example,Microsoft.BingTranslator_1.1.10917.2059_x86__8wekyb3d8bbwe|
|packageIdentityName|string|example, Microsoft.BingTranslator|
|architectures|collection of [ProductArchitectures](#productarchitectures)|Values {x86, x64, arm, neutral}|
|packageFormat|[ProductPackageFormat](#productpackageformat)|Extension of the package file.|
|platforms|collection of [ProductPlatform](#productplatform)||
|fileSize|integer-64|Size of the file.|
|packageRank|integer-32|Optional|

## ProductPackageFormat

|Name|
|--- |
|appx|
|appxBundle|
|xap|

## ProductPackageSet

|Name|Type|Description|
|--- |--- |--- |
|packageSetId|string|An identifier for the particular combination of application packages.|
|productPackages|collection of [ProductPackageDetails](#productpackagedetails)|A collection of application packages.|

## ProductPlatform

|Name|Type|
|--- |--- |
|platformName|string|
|minVersion|[VersionInfo](#versioninfo)|
|maxTestedVersion|[VersionInfo](#versioninfo)|

## PublisherDetails

Specifies the properties of the publisher details.

|Name|Type|Description|
|--- |--- |--- |
|publisherName|string|Name of the publisher.|
|publisherWebsite|string|Website of the publisher.|

## SeatAction


|Name|
|--- |
|assign|
|reclaim|

## SeatDetails

|Name|Type|Description|
|--- |--- |--- |
|assignedTo|string|Format = UPN (user@domain)|
|dateAssigned|datetime||
|state|[SeatState](#seatstate)||
|productKey|[ProductKey](#productkey)||

## SeatDetailsResultSet

|Name|Type|
|--- |--- |
|seats|collection of [SeatDetails](#seatdetails)|
|continuationToken|string|

## SeatState

|Name|
|--- |
|active|
|revoked|

## SupportedProductPlatform

|Name|Type|
|--- |--- |
|platformName|string|
|minVersion|[VersionInfo](#versioninfo)|
|maxTestedVersion|[VersionInfo](#versioninfo)|
|architectures|collection of [ProductArchitectures](#productarchitectures)|

## VersionInfo

|Name|Type|
|--- |--- |
|major|integer-32|
|minor|integer-32|
|build|integer-32|
|revision|integer-32|
