---
title: Delivery Optimization workflow, privacy, security, and endpoints
description: Details of how Delivery Optimization communicates with the server when content is requested to download including privacy, security, and endpoints.
ms.service: windows-client
ms.subservice: itpro-updates
ms.topic: conceptual
author: cmknox
ms.author: carmenf
manager: aaroncz
ms.reviewer: mstewart
ms.collection:
  - tier3
ms.localizationpriority: medium
appliesto:
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>
- ✅ <a href=https://learn.microsoft.com/windows/deployment/do/waas-delivery-optimization target=_blank>Delivery Optimization</a>
ms.date: 05/23/2024
---

# Delivery Optimization workflow, privacy, security, and endpoints

Delivery Optimization is a cloud-managed solution that uses peer-to-peer (P2P) and local caching to deliver software updates and apps to Windows clients across your network. This article describes details of how Delivery Optimization communicates with the server when content is requested to download and contains information about privacy, security, and endpoints.

## How we help keep your data safe

Delivery Optimization can't be used to download or send personal content. Delivery Optimization doesn't access personal files or folders, and it doesn't change any files on the device.

Delivery Optimization downloads the same updates and apps that you would get through [Windows Update](../update/windows-update-security.md), Microsoft Store apps, and other Microsoft updates using the same security measures. To make sure you're getting authentic updates, Delivery Optimization gets information securely from Microsoft to check the authenticity of each part of an update or app that it downloads from other PCs. The authenticity of the downloads is checked again before installing it. <!--8658744-->

## Download request workflow

This workflow allows Delivery Optimization to securely and efficiently deliver requested content to the calling device and explains client-service communication. Delivery Optimization uses content metadata to verify the content and to determine all available locations to pull content from.

1. When a download starts, the Delivery Optimization client attempts to get its content metadata. This content metadata is a hash file containing the SHA-256 block-level hashes of each piece in the file (typically one piece = 1 MB).
2. The authenticity of the content metadata file itself is verified prior to any content being downloaded using a hash that is obtained via an SSL channel from the Delivery Optimization service. The same channel is used to ensure the content is curated and authorized to use peer-to-peer.
3. When Delivery Optimization pulls a certain piece of the hash from another peer, it verifies the hash against the known hash in the content metadata file.
4. If a peer provides an invalid piece, that piece is discarded. When a peer sends multiple bad pieces, it's banned and will no longer be used as a source by the Delivery Optimization client performing the download.
5. If Delivery Optimization is unable to obtain the content metadata file, or if the verification of the hash file itself fails, the download will fall back to simple mode. Simple mode will only pull content from the HTTP source and peer-to-peer won't be allowed.
6. Once downloading is complete, Delivery Optimization uses all retrieved pieces of the content to put the file together. At that point, the Delivery Optimization caller (for example, Windows Update) checks the entire file to verify the signature prior to installing it.

## Delivery Optimization service endpoint and data information

|Endpoint hostname | Port|Name|Description|Data sent from the computer to the endpoint
|--------------------------------------------|--------|---------------|-----------------------|------------------------|
| geover-prod.do.dsp.mp.microsoft.com <br> geo-prod.do.dsp.mp.microsoft.com <br> geo.prod.do.dsp.mp.microsoft.com <br> geover.prod.do.dsp.mp.microsoft.com | 443 | Geo | Service used to identify the location of the device in order to direct it to the nearest data center. | **Profile**: The device type (for example, PC or Xbox) <br> **doClientVersion**: The version of the DoSvc client <br> **groupID**: Group the device belongs to (set with DownloadMode = '2' (Group download mode) + groupID group policy / MDM policies) |
| kv\*.prod.do.dsp.mp.microsoft.com | 443| KeyValue | Bootstrap service provides endpoints for all other services and device configs. | **countryCode**: The country or region the client is connected from <br> **doClientVersion**: The version of the DoSvc client <br> **Profile**: The device type (for example, PC or Xbox) <br> **eId**: Client grouping ID <br> **CacheHost**: Cache host ID |
| cp\*.prod.do.dsp.mp.microsoft.com <br> | 443 | Content Policy | Provides content specific policies and as content metadata URLs. | **Profile**: The device type (for example, PC or Xbox) <br> **ContentId**: The content identifier <br> **doClientVersion**: The version of the DoSvc client <br> **countryCode**: The country the client is connected from <br> **altCatalogID**: If ContentID isn't available, use the download URL instead <br> **eID**: Client grouping ID <br> **CacheHost**: Cache host ID |
| disc\*.prod.do.dsp.mp.microsoft.com | 443 | Discovery | Directs clients to a particular instance of the peer matching service (Array), ensuing that clients are collocated by factors, such as content, groupID and external IP. | **Profile**: The device type (for example, PC or Xbox) <br> **ContentID**: The content identifier <br> **doClientVersion**: The version of the DoSvc client <br> **partitionID**: Client partitioning hint <br> **altCatalogID**: If ContentID isn't available, use the download URL instead <br> **eID**: Client grouping ID |
| array\*.prod.do.dsp.mp.microsoft.com | 443 | Arrays | Provides the client with list of peers that have the same content and belong to the same peer group. | **Profile**: The device type (for example, PC or Xbox) <br> **ContentID**: The content identifier <br> **doClientVersion**: The version of the DoSvc client <br> **altCatalogID**: If ContentID isn't available, use the download URL instead <br> **PeerID**:  Identity of the device running DO client <br> **ReportedIp**: The internal / private IP Address <br> **IsBackground**: Is the download interactive or background <br> **Uploaded**: Total bytes uploaded to peers <br> **Downloaded**: Total bytes downloaded from peers <br> **DownloadedCdn**: Total bytes downloaded from CDN <br> **Left**: Bytes left to download <br> **Peers Wanted**: Total number of peers wanted <br> **Group ID**: Group the device belongs to (set via DownloadMode 2 + Group ID GP / MDM policies) <br> **Scope**: The Download mode <br> **UploadedBPS**: The upload speed in bytes per second <br> **DownloadBPS**: The download speed in Bytes per second <br> **eID**: Client grouping ID |
| dl.delivery.mp.microsoft.com <br> download.windowsupdate.com | 80 | Delivery Optimization metadata file hosting | CDN hostnames for Delivery Optimization content metadata files | Metadata download can come from different hostnames, but it's required for peer to peer. |
