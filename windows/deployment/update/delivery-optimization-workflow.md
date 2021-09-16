---
title: Delivery Optimization client-service communication explained
manager: laurawi
description: Details of how Delivery Optimization communicates with the server when content is requested to download
keywords: updates, downloads, network, bandwidth
ms.prod: w10
ms.mktglfcycl: deploy
audience: itpro
author: carmenf
ms.localizationpriority: medium
ms.author: carmenf
ms.collection: M365-modern-desktop
ms.topic: article
---

# Delivery Optimization client-service communication explained

**Applies to**

-   Windows 10
-   Windows 11

## Download request workflow

This workflow allows Delivery Optimization to securely and efficiently deliver requested content to the calling device. Delivery Optimization uses content metadata to determine all available locations to pull content from, as well as content verification.

1. When a download starts, the Delivery Optimization client attempts to get its content metadata from the Delivery Optimization service over an SSL channel. This content metadata is a hash file containing the SHA-256 block-level hashes of each piece in the file (typically one piece = 1 MB). The authenticity of the content metadata file itself is verified prior to any content being downloaded.
2. Once the content metadata file is verified, Delivery Optimization accesses the requested pieces of the content file.
3. When Delivery Optimization pulls a certain piece of the hash from another peer, it verifies the hash against the known hash in the content metadata file.
4. If a peer provides an invalid piece, that piece is discarded. When a peer sends multiple bad pieces, it's banned and will no longer be used as a source by the Delivery Optimization client performing the download.
5. If Delivery Optimization is unable to obtain the content metadata file, or if the verification of the hash file itself fails, the download will fall back to “simple mode” (pulling content only from an HTTP source) and peer-to-peer won't be allowed.
6. Once downloading is complete, Delivery Optimization uses all retrieved pieces of the content to put the file together. At that point, the Delivery Optimization caller (for example, ConfigMgr) checks the entire file to verify the signature prior to installing it.

## Delivery Optimization service endpoint and data information

|Endpoint hostname|Name|Description|Data sent from the computer to the endpoint
|--------------------------------------------|--------------|---------------|-----------------------|
| geover-prod.do.dsp.mp.microsoft.com <br> geo-prod.do.dsp.mp.microsoft.com <br> geo.prod.do.dsp.mp.microsoft.com <br> geover.prod.do.dsp.mp.microsoft.com | Geo | Service used to identify the location of the device in order to direct it to the nearest data center. | **Profile**: The device type (for example, PC or Xbox) <br> **doClientVersion**: The version of the DoSvc Client <br> **groupID**: Group the device belongs to (set with DownloadMode = '2' (Group download mode) + groupID group policy / MDM policies) |
| kv*-prod.do.dsp.mp.microsoft.com <br> kv*.prod.do.dsp.mp.microsoft.com | KeyValue | Bootstrap service provides endpoints for all other services as well as device configs | **countryCode**: The country the client is connected from <br> **doClientVersion**: The version of the DoSvc Client <br> **Profile**: The device type (for example, PC or Xbox) <br> **eId**: Client grouping Id <br> **CacheHost**: Cache host id |
| cp*-prod.do.dsp.mp.microsoft.com <br> cp*.prod.do.dsp.mp.microsoft.com <br> | Content Policy | Provides content specific policies as well as content metadata URLs | **Profile**: The device type (for example, PC or Xbox) <br> **ContentId**: The content identifier <br> **doClientVersion**: The version of the dosvc client <br> **countryCode**: The country the client is connected from <br> **altCatalogId**: If ContentId isn't available, use the download URL instead <br> **eId**: Client grouping Id <br> **CacheHost**: Cache host id |
| disc*-prod.do.dsp.mp.microsoft.com <br> disc*.prod.do.dsp.mp.microsoft.com | Discovery | Provides the client with the geo-located array to connect to. (There are two endpoints providing this functionality: /content and /v2/content.) | **Profile**: The device type (for example, PC or Xbox) <br> **ContentId**: The content identifier <br> **doClientVersion**: The version of the dosvc client <br> **partitionId**: Client partitioning hint <br> **altCatalogId**: If ContentId isn't available, use the download URL instead <br> **eId**: Client grouping Id |
| cn*-prod.do.dsp.mp.microsoft.com <br> cn*.prod.do.dsp.mp.microsoft.com | Arrays | Provides the client with list of peers that have the same content and belong to the same peer group. | **Profile**: The device type (for example, PC or Xbox) <br> **ContentId**: The content identifier <br> **doClientVersion**: The version of the dosvc client <br> **altCatalogId**: If ContentId isn't available, use the download URL instead <br> **PeerId**:  Identified of the device running DO client <br> **ReportedIp**: The internal / private IP Address <br> **IsBackground**: Is the download interactive or background <br> **Uploaded**: Total bytes uploaded to peers <br> **Downloaded**: Total bytes downloaded from peers <br> **DownloadedCdn**: Total bytes downloaded from CDN <br> **Left**: Bytes left to download <br> **Peers Wanted**: Total number of peers wanted <br> **Group Id**: Group the device belongs to (set via DownloadMode 2 + Group ID GP / MDM policies) <br> **Scope**: The Download mode <br> **UploadedBPS**: The upload speed in bytes per second <br> **DownloadBPS**: The download speed in Bytes per second <br> **eId**: Client grouping Id |
| dl.delivery.mp.microsoft.com <br> emdl.ws.microsoft.com |  | Metadata download can come from different hostnames, but it's required for peer to peer |  
