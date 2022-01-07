---
title: Data structures for Microsoft Store for Business
description: Learn about the various data structures for Microsoft Store for Business.
MS-HAID:
- 'p\_phdevicemgmt.business\_store\_data\_structures'
- 'p\_phDeviceMgmt.data\_structures\_windows\_store\_for\_business'
ms.assetid: ABE44EC8-CBE5-4775-BA8A-4564CB73531B
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: dansimp
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
|Type|String|LegacyWindowStoreProductId, LegacyWindowsPhoneProductId, RedirectToThresholdProductId|
|Value|String||

## BulkSeatOperationResultSet

|Name|Type|
|--- |--- |
|seatDetails|Collection of [SeatDetails](#seatdetails)|
|failedSeatOperations|Collection of [FailedSeatRequest](#failedseatrequest)|

## FailedSeatRequest

|Name|Type|
|--- |--- |
|failureReason|String|
|productKey|[ProductKey](#productkey)|
|userName|String|

## FrameworkPackageDetails

|Name|Type|Description|
|--- |--- |--- |
|packageId|String||
|contentId|String|Identifies a specific application.|
|Location|[PackageLocation](#packagelocation)||
|packageFullName|String||
|packageIdentityName|String||
|Architectures|Collection of [ProductArchitectures](#productarchitectures)||
|packageFormat|[ProductPackageFormat](#productpackageformat)||
|Platforms|Collection of [ProductPlatform](#productplatform)||
|fileSize|integer-64|Size of the file.|
|packageRank|integer-32|Optional|

## InventoryDistributionPolicy

|Name|Description|
|--- |--- |
|Open|Open distribution policy - licenses/seats can be assigned/consumed without limit|
|Restricted|Restricted distribution policy - licenses/seats must be assigned/consumed according to the available count|

## InventoryEntryDetails

|Name|Type|Description|
|--- |--- |--- |
|productKey|[ProductKey](#productkey)|Identifier used on subsequent requests to get more content including product descriptions, offline license, and download URLs.|
|seatCapacity|integer-64|Total number of seats that have been purchased for an application.|
|availableSeats|integer-64|Number of available seats remaining for an application.|
|lastModified|dateTime|Specifies the last modified date for an application. Modifications for an application include updated product details, updates to an application, and updates to the quantity of an application.|
|licenseType|[LicenseType](#licensetype)|Indicates whether the set of seats for a given application supports online or offline licensing.|
|distributionPolicy|[InventoryDistributionPolicy](#inventorydistributionpolicy)||
|status|[InventoryStatus](#inventorystatus)||

## InventoryResultSet


|Name|Type|Description|
|--- |--- |--- |
|continuationToken|String|Only available if there is a next page.|
|inventoryEntries|Collection of [InventoryEntryDetails](#inventoryentrydetails)||
 
## InventoryStatus

|Name|Description|
|--- |--- |
|Active|Entry is available in the organization’s inventory.|
|Removed|Entry has been removed from the organization’s inventory.|

## LicenseType

|Name|Description|
|--- |--- |
|Online|Online license application.|
|Offline|Offline license application.|

## LocalizedProductDetail


Specifies the properties of the localized product.

|Name|Type|Description|
|--- |--- |--- |
|Language|String|Language or fallback language if the specified language is not available.|
|displayName|String|Display name of the application.|
|Description|String|App description provided by developer can be up to 10,000 characters.|
|Images|Collection of [ProductImage](#productimage)|Artwork and icon associated with the application.|
|Publisher|[PublisherDetails](#publisherdetails)|Publisher of the application.|

## OfflineLicense


|Name|Type|Description|
|--- |--- |--- |
|productKey|[ProductKey](#productkey)|Identifies a set of seats associated with an application.|
|licenseBlob|String|Base-64 encoded offline license that can be installed via a CSP.|
|licenseInstanceId|String|Version of the license.|
|requestorId|String|Organization requesting the license.|
|contentId|String|Identifies the specific license required by an application.|

## PackageContentInfo


|Name|Type|
|--- |--- |
|productPlatforms|Collection of ProductPlatform|
|packageFormat|String|

## PackageLocation


|Name|Type|Description|
|--- |--- |--- |
|Url|URI|CDN location of the packages. URL expiration is based on the estimated time to download the package.|


## ProductArchitectures

|Name|
|--- |
|Neutral|
|Arm|
|x86|
|x64|

## ProductDetails

|Name|Type|Description|
|--- |--- |--- |
|productKey|[ProductKey](#productkey)|Identifier used on subsequent requests to get more content including product descriptions, offline license, and download URLs.|
|productType|String|Type of product.|
|supportedLanguages|Collection of string|The set of localized languages for an application.|
|publisherId|String|Publisher identifier.|
|Category|String|Application category.|
|alternateIds|Collection of [AlternateIdentifier](#alternateidentifier)|The identifiers that can be used to instantiate the installation of on online application.|
|packageFamilyName|String||
|supportedPlatforms|Collection of [ProductPlatform](#productplatform)||

## ProductImage

Specifies the properties of the product image.

|Name|Type|Description|
|--- |--- |--- |
|location|URI|Location of the download image.|
|purpose|string|Tag for the image, for example "screenshot" or "logo".|
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
|productId|String|Product identifier for an application that is used by the Store for Business.|
|skuId|String|Product identifier that specifies a specific SKU of an application.|

## ProductPackageDetails

|Name|Type|Description|
|--- |--- |--- |
|frameworkDependencyPackages|Collection of [FrameworkPackageDetails](#frameworkpackagedetails)||
|packageId|String||
|contentId|String|Identifies a specific application.|
|Location|[PackageLocation](#packagelocation)||
|packageFullName|String|Example, Microsoft.BingTranslator_1.1.10917.2059_x86__8wekyb3d8bbwe|
|packageIdentityName|String|Example, Microsoft.BingTranslator|
|Architectures|Collection of [ProductArchitectures](#productarchitectures)|Values {x86, x64, arm, neutral}|
|packageFormat|[ProductPackageFormat](#productpackageformat)|Extension of the package file.|
|Platforms|Collection of [ProductPlatform](#productplatform)||
|fileSize|integer-64|Size of the file.|
|packageRank|integer-32|Optional|

## ProductPackageFormat

|Name|
|--- |
|Appx|
|appxBundle|
|Xap|

## ProductPackageSet

|Name|Type|Description|
|--- |--- |--- |
|packageSetId|String|An identifier for the particular combination of application packages.|
|productPackages|Collection of [ProductPackageDetails](#productpackagedetails)|A collection of application packages.|

## ProductPlatform

|Name|Type|
|--- |--- |
|platformName|String|
|minVersion|[VersionInfo](#versioninfo)|
|maxTestedVersion|[VersionInfo](#versioninfo)|

## PublisherDetails

Specifies the properties of the publisher details.

|Name|Type|Description|
|--- |--- |--- |
|publisherName|String|Name of the publisher.|
|publisherWebsite|String|Website of the publisher.|

## SeatAction


|Name|
|--- |
|Assign|
|Reclaim|

## SeatDetails

|Name|Type|Description|
|--- |--- |--- |
|assignedTo|String|Format = UPN (user@domain)|
|dateAssigned|Datetime||
|State|[SeatState](#seatstate)||
|productKey|[ProductKey](#productkey)||

## SeatDetailsResultSet

|Name|Type|
|--- |--- |
|Seats|Collection of [SeatDetails](#seatdetails)|
|continuationToken|String|

## SeatState

|Name|
|--- |
|Active|
|Revoked|

## SupportedProductPlatform

|Name|Type|
|--- |--- |
|platformName|String|
|minVersion|[VersionInfo](#versioninfo)|
|maxTestedVersion|[VersionInfo](#versioninfo)|
|Architectures|Collection of [ProductArchitectures](#productarchitectures)|

## VersionInfo

|Name|Type|
|--- |--- |
|Major|integer-32|
|Minor|integer-32|
|Build|integer-32|
|Revision|integer-32|
