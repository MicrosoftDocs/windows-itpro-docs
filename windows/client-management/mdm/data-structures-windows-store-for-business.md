---
title: Data structures for Microsoft Store for Business
MS-HAID:
- 'p\_phdevicemgmt.business\_store\_data\_structures'
- 'p\_phDeviceMgmt.data\_structures\_windows\_store\_for\_business'
ms.assetid: ABE44EC8-CBE5-4775-BA8A-4564CB73531B
ms.reviewer: 
manager: dansimp
description: 
ms.author: v-madhi
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

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Type</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>type</p></td>
<td><p>string</p></td>
<td><p>LegacyWindowStoreProductId, LegacyWindowsPhoneProductId, RedirectToThresholdProductId</p></td>
</tr>
<tr class="even">
<td><p>value</p></td>
<td><p>string</p></td>
<td></td>
</tr>
</tbody>
</table>

 

## BulkSeatOperationResultSet


<table>
<colgroup>
<col width="33%" />
<col width="66%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Type</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>seatDetails</p></td>
<td><p>collection of [SeatDetails](#seatdetails)</p></td>
</tr>
<tr class="even">
<td><p>failedSeatOperations</p></td>
<td><p>collection of [FailedSeatRequest](#failedseatrequest)</p></td>
</tr>
</tbody>
</table>

 

## FailedSeatRequest


<table>
<colgroup>
<col width="33%" />
<col width="66%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Type</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>failureReason</p></td>
<td><p>string</p></td>
</tr>
<tr class="even">
<td><p>productKey</p></td>
<td><p>[ProductKey](#productkey)</p></td>
</tr>
<tr class="odd">
<td><p>userName</p></td>
<td><p>string</p></td>
</tr>
</tbody>
</table>

 

## FrameworkPackageDetails


<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Type</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>packageId</p></td>
<td><p>string</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>contentId</p></td>
<td><p>string</p></td>
<td><p>Identifies a specific application.</p></td>
</tr>
<tr class="odd">
<td><p>location</p></td>
<td><p>[PackageLocation](#packagelocation)</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>packageFullName</p></td>
<td><p>string</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>packageIdentityName</p></td>
<td><p>string</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>architectures</p></td>
<td><p>collection of [ProductArchitectures](#productarchitectures)</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>packageFormat</p></td>
<td><p>[ProductPackageFormat](#productpackageformat)</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>platforms</p></td>
<td><p>collection of [ProductPlatform](#productplatform)</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>fileSize</p></td>
<td><p>integer-64</p></td>
<td><p>Size of the file.</p></td>
</tr>
<tr class="even">
<td><p>packageRank</p></td>
<td><p>integer-32</p></td>
<td><p>Optional</p></td>
</tr>
</tbody>
</table>

 

## InventoryDistributionPolicy


<table>
<colgroup>
<col width="66%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>open</p></td>
<td><p>Open distribution policy - licenses/seats can be assigned/consumed without limit</p></td>
</tr>
<tr class="even">
<td><p>restricted</p></td>
<td><p>Restricted distribution policy - licenses/seats must be assigned/consumed according to the available count</p></td>
</tr>
</tbody>
</table>

 

## InventoryEntryDetails


<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Type</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>productKey</p></td>
<td><p>[ProductKey](#productkey)</p></td>
<td><p>Identifier used on subsequent requests to get additional content including product descriptions, offline license, and download URLs.</p></td>
</tr>
<tr class="even">
<td><p>seatCapacity</p></td>
<td><p>integer-64</p></td>
<td><p>Total number of seats that have been purchased for an application.</p></td>
</tr>
<tr class="odd">
<td><p>availableSeats</p></td>
<td><p>integer-64</p></td>
<td><p>Number of available seats remaining for an application.</p></td>
</tr>
<tr class="even">
<td><p>lastModified</p></td>
<td><p>dateTime</p></td>
<td><p>Specifies the last modified date for an application. Modifications for an application includes updated product details, updates to an application, and updates to the quantity of an application.</p></td>
</tr>
<tr class="odd">
<td><p>licenseType</p></td>
<td><p>[LicenseType](#licensetype)</p></td>
<td><p>Indicates whether the set of seats for a given application supports online or offline licensing.</p></td>
</tr>
<tr class="even">
<td><p>distributionPolicy</p></td>
<td><p>[InventoryDistributionPolicy](#inventorydistributionpolicy)</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>status</p></td>
<td><p>[InventoryStatus](#inventorystatus)</p></td>
<td></td>
</tr>
</tbody>
</table>

 

## InventoryResultSet


<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Type</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>continuationToken</p></td>
<td><p>string</p></td>
<td><p>Only available if there is a next page.</p></td>
</tr>
<tr class="even">
<td><p>inventoryEntries</p></td>
<td><p>collection of [InventoryEntryDetails](#inventoryentrydetails)</p></td>
<td><p></p></td>
</tr>
</tbody>
</table>

 

## InventoryStatus


<table>
<colgroup>
<col width="66%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>active</p></td>
<td><p>Entry is available in the organization’s inventory.</p></td>
</tr>
<tr class="even">
<td><p>removed</p></td>
<td><p>Entry has been removed from the organization’s inventory.</p></td>
</tr>
</tbody>
</table>

 

## LicenseType


<table>
<colgroup>
<col width="66%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>online</p></td>
<td><p>Online license application.</p></td>
</tr>
<tr class="even">
<td><p>offline</p></td>
<td><p>Offline license application.</p></td>
</tr>
</tbody>
</table>

 

## LocalizedProductDetail


Specifies the properties of the localized product.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Type</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>language</p></td>
<td><p>string</p></td>
<td><p>Language or fallback language if the specified language is not available.</p></td>
</tr>
<tr class="even">
<td><p>displayName</p></td>
<td><p>string</p></td>
<td><p>Display name of the application.</p></td>
</tr>
<tr class="odd">
<td><p>description</p></td>
<td><p>string</p></td>
<td><p>App description provided by developer can be up to 10,000 characters.</p></td>
</tr>
<tr class="even">
<td><p>images</p></td>
<td><p>collection of [ProductImage](#productimage)</p></td>
<td><p>Artwork and icon associated with the application.</p></td>
</tr>
<tr class="odd">
<td><p>publisher</p></td>
<td><p>[PublisherDetails](#publisherdetails)</p></td>
<td><p>Publisher of the application.</p></td>
</tr>
</tbody>
</table>

 

## OfflineLicense


<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Type</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>productKey</p></td>
<td><p>[ProductKey](#productkey)</p></td>
<td><p>Identifies a set of seats associated with an application.</p></td>
</tr>
<tr class="even">
<td><p>licenseBlob</p></td>
<td><p>string</p></td>
<td><p>Base-64 encoded offline license that can be installed via a CSP.</p></td>
</tr>
<tr class="odd">
<td><p>licenseInstanceId</p></td>
<td><p>string</p></td>
<td><p>Version of the license.</p></td>
</tr>
<tr class="even">
<td><p>requestorId</p></td>
<td><p>string</p></td>
<td><p>Organization requesting the license.</p></td>
</tr>
<tr class="odd">
<td><p>contentId</p></td>
<td><p>string</p></td>
<td><p>Identifies the specific license required by an application.</p></td>
</tr>
</tbody>
</table>

 

## PackageContentInfo


<table>
<colgroup>
<col width="33%" />
<col width="66%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Type</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>productPlatforms</p></td>
<td><p>collection of [ProductPlatform](#productplatform)</p></td>
</tr>
<tr class="even">
<td><p>packageFormat</p></td>
<td><p>string</p></td>
</tr>
</tbody>
</table>

 

## PackageLocation


<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Type</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>url</p></td>
<td><p>URI</p></td>
<td><p>CDN location of the packages. URL expiration is based on the estimated time to download the package.</p></td>
</tr>
</tbody>
</table>

 

## ProductArchitectures


<table>
<colgroup>
<col width="100%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>neutral</p></td>
</tr>
<tr class="even">
<td><p>arm</p></td>
</tr>
<tr class="odd">
<td><p>x86</p></td>
</tr>
<tr class="even">
<td><p>x64</p></td>
</tr>
</tbody>
</table>

 

## ProductDetails


<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Type</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>productKey</p></td>
<td><p>[ProductKey](#productkey)</p></td>
<td><p>Identifier used on subsequent requests to get additional content including product descriptions, offline license, and download URLs.</p></td>
</tr>
<tr class="even">
<td><p>productType</p></td>
<td><p>string</p></td>
<td><p>Type of product.</p></td>
</tr>
<tr class="odd">
<td><p>supportedLanguages</p></td>
<td><p>collection of string</p></td>
<td><p>The set of localized languages for an application.</p></td>
</tr>
<tr class="even">
<td><p>publisherId</p></td>
<td><p>string</p></td>
<td><p>Publisher identifier.</p></td>
</tr>
<tr class="odd">
<td><p>category</p></td>
<td><p>string</p></td>
<td><p>Application category.</p></td>
</tr>
<tr class="even">
<td><p>alternateIds</p></td>
<td><p>collection of [AlternateIdentifier](#alternateidentifier)</p></td>
<td><p>The identifiers that can be used to instantiate the installation of on online application.</p></td>
</tr>
<tr class="odd">
<td><p>packageFamilyName</p></td>
<td><p>string</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>supportedPlatforms</p></td>
<td><p>collection of [ProductPlatform](#productplatform)</p></td>
<td></td>
</tr>
</tbody>
</table>

 

## ProductImage


Specifies the properties of the product image.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Type</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>location</p></td>
<td><p>URI</p></td>
<td><p>Location of the download image.</p></td>
</tr>
<tr class="even">
<td><p>purpose</p></td>
<td><p>string</p></td>
<td><p>Tag for the purpose of the image, e.g. "screenshot" or "logo".</p></td>
</tr>
<tr class="odd">
<td><p>height</p></td>
<td><p>string</p></td>
<td><p>Height of the image in pixels.</p></td>
</tr>
<tr class="even">
<td><p>width</p></td>
<td><p>string</p></td>
<td><p>Width of the image in pixels.</p></td>
</tr>
<tr class="odd">
<td><p>caption</p></td>
<td><p>string</p></td>
<td><p>Unlimited length.</p></td>
</tr>
<tr class="even">
<td><p>backgroundColor</p></td>
<td><p>string</p></td>
<td><p>Format "#RRGGBB"</p></td>
</tr>
<tr class="odd">
<td><p>foregroundColor</p></td>
<td><p>string</p></td>
<td><p>Format "#RRGGBB"</p></td>
</tr>
<tr class="even">
<td><p>fileSize</p></td>
<td><p>integer-64</p></td>
<td><p>Size of the file.</p></td>
</tr>
</tbody>
</table>

 

## ProductKey


Specifies the properties of the product key.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Type</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>productId</p></td>
<td><p>string</p></td>
<td><p>Product identifier for an application that is used by the Store for Business.</p></td>
</tr>
<tr class="even">
<td><p>skuId</p></td>
<td><p>string</p></td>
<td><p>Product identifier that specifies a specific SKU of an application.</p></td>
</tr>
</tbody>
</table>

 

## ProductPackageDetails


<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Type</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>frameworkDependencyPackages</p></td>
<td><p>collection of [FrameworkPackageDetails](#frameworkpackagedetails)</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>packageId</p></td>
<td><p>string</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>contentId</p></td>
<td><p>string</p></td>
<td><p>Identifies a specific application.</p></td>
</tr>
<tr class="even">
<td><p>location</p></td>
<td><p>[PackageLocation](#packagelocation)</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>packageFullName</p></td>
<td><p>string</p></td>
<td><p>example, Microsoft.BingTranslator_1.1.10917.2059_x86__8wekyb3d8bbwe</p></td>
</tr>
<tr class="even">
<td><p>packageIdentityName</p></td>
<td><p>string</p></td>
<td><p>example, Microsoft.BingTranslator</p></td>
</tr>
<tr class="odd">
<td><p>architectures</p></td>
<td><p>collection of [ProductArchitectures](#productarchitectures)</p></td>
<td><p>Values {x86, x64, arm, neutral}</p></td>
</tr>
<tr class="even">
<td><p>packageFormat</p></td>
<td><p>[ProductPackageFormat](#productpackageformat)</p></td>
<td><p>Extension of the package file.</p></td>
</tr>
<tr class="odd">
<td><p>platforms</p></td>
<td><p>collection of [ProductPlatform](#productplatform)</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>fileSize</p></td>
<td><p>integer-64</p></td>
<td><p>Size of the file.</p></td>
</tr>
<tr class="odd">
<td><p>packageRank</p></td>
<td><p>integer-32</p></td>
<td><p>Optional</p></td>
</tr>
</tbody>
</table>

 

## ProductPackageFormat


<table>
<colgroup>
<col width="100%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>appx</p></td>
</tr>
<tr class="even">
<td><p>appxBundle</p></td>
</tr>
<tr class="odd">
<td><p>xap</p></td>
</tr>
</tbody>
</table>

 

## ProductPackageSet


<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Type</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>packageSetId</p></td>
<td><p>string</p></td>
<td><p>An identifier for the particular combination of application packages.</p></td>
</tr>
<tr class="even">
<td><p>productPackages</p></td>
<td><p>collection of [ProductPackageDetails](#productpackagedetails)</p></td>
<td><p>A collection of application packages.</p></td>
</tr>
</tbody>
</table>

 

## ProductPlatform


<table>
<colgroup>
<col width="33%" />
<col width="66%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Type</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>platformName</p></td>
<td><p>string</p></td>
</tr>
<tr class="even">
<td><p>minVersion</p></td>
<td><p>[VersionInfo](#versioninfo)</p></td>
</tr>
<tr class="odd">
<td><p>maxTestedVersion</p></td>
<td><p>[VersionInfo](#versioninfo)</p></td>
</tr>
</tbody>
</table>

 

## PublisherDetails


Specifies the properties of the publisher details.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Type</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>publisherName</p></td>
<td><p>string</p></td>
<td><p>Name of the publisher.</p></td>
</tr>
<tr class="even">
<td><p>publisherWebsite</p></td>
<td><p>string</p></td>
<td><p>Website of the publisher.</p></td>
</tr>
</tbody>
</table>

 

## SeatAction


<table>
<colgroup>
<col width="100%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>assign</p></td>
</tr>
<tr class="even">
<td><p>reclaim</p></td>
</tr>
</tbody>
</table>

 

## SeatDetails


<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Type</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>assignedTo</p></td>
<td><p>string</p></td>
<td><p>Format = UPN (user@domain)</p></td>
</tr>
<tr class="even">
<td><p>dateAssigned</p></td>
<td><p>datetime</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>state</p></td>
<td><p>[SeatState](#seatstate)</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>productKey</p></td>
<td><p>[ProductKey](#productkey)</p></td>
<td><p></p></td>
</tr>
</tbody>
</table>

 

## SeatDetailsResultSet


<table>
<colgroup>
<col width="33%" />
<col width="66%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Type</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>seats</p></td>
<td><p>collection of [SeatDetails](#seatdetails)</p></td>
</tr>
<tr class="even">
<td><p>continuationToken</p></td>
<td><p>string</p></td>
</tr>
</tbody>
</table>

 

## SeatState


<table>
<colgroup>
<col width="100%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>active</p></td>
</tr>
<tr class="even">
<td><p>revoked</p></td>
</tr>
</tbody>
</table>

 

## SupportedProductPlatform


<table>
<colgroup>
<col width="33%" />
<col width="66%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Type</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>platformName</p></td>
<td><p>string</p></td>
</tr>
<tr class="even">
<td><p>minVersion</p></td>
<td><p>[VersionInfo](#versioninfo)</p></td>
</tr>
<tr class="odd">
<td><p>maxTestedVersion</p></td>
<td><p>[VersionInfo](#versioninfo)</p></td>
</tr>
<tr class="even">
<td><p>architectures</p></td>
<td><p>collection of [ProductArchitecture](#productarchitecture)</p></td>
</tr>
</tbody>
</table>

 

## VersionInfo


<table>
<colgroup>
<col width="33%" />
<col width="66%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Type</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>major</p></td>
<td><p>integer-32</p></td>
</tr>
<tr class="even">
<td><p>minor</p></td>
<td><p>integer-32</p></td>
</tr>
<tr class="odd">
<td><p>build</p></td>
<td><p>integer-32</p></td>
</tr>
<tr class="even">
<td><p>revision</p></td>
<td><p>integer-32</p></td>
</tr>
</tbody>
</table>
