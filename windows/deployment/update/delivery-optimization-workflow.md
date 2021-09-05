---
title: Understand the Delivery Optimization Client-Service Communication Explained
manager: laurawi
description: Settings to use with various proxy configurations to allow Delivery Optimization to work
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

# Delivery Optimization Client-Service Communication Explained

**Applies to**: Windows 10

## Download Request Workflow

The DO workflow described below allows Delivery Optimization to securely and efficiently deliver requested content to the calling device.

* When a download starts, the DO client will attempt to get its content metadata, from the DO service, which is a hash file containing the SHA-256 hash of each piece in the file, typically piece = 1 MB. Separate metadata that is obtained, through an SSL channel, provides DO a way to verify the authenticity of the hash file itself once it is downloaded.
* When DO pulls a certain piece of the hash from another peer, it is verified against the known hash in the hash file.
* If a peer provides an invalid piece, that piece is discarded. A peer that sends multiple bad pieces is banned and will no longer be used as a source by the client performing the download.
* If DO is unable to obtain the hash file, or the verification of the hash file itself fails, the download will fall back to “Simple Mode” (pulling content only from an HTTP source) and peer to peer will not be allowed.
* Once DO is done downloading and puts together the file from all the pieces it got, the caller using DO (ConfigMgr for example) performs yet another check for the entire file as well as verify the signature of it prior to proceeding with installation.

## Delivery Optimization Service Endpoint And Data Information

|Endpoint hostname|Name|Description|Data sent from the computer to the Endpoint (Field/Description)
|----|-----|---------------|-----------------------|
|<ul><li>geover-prod.do.dsp.mp.microsoft.com</li><li>geo-prod.do.dsp.mp.microsoft.com</li><li>geo.prod.do.dsp.mp.microsoft.com</li><li>geover.prod.do.dsp.mp.microsoft.com</li></ul> | Geo | Service used to identify the geo location of the device in order to direct it to the nearest data center. | <ul><li>**Profile**: The device type (ex: PC vs Xbox)</li><li>**doClientVersion**: The version of the DoSvc Client</li><li>**groupID**: Group the device belongs to (set via DownloadMode = '2' (Group download mode) + groupID group policy / MDM policies)</li></ul> |
| <ul><li>kv*-prod.do.dsp.mp.microsoft.com</li><li>kv*.prod.do.dsp.mp.microsoft.com</li>|KeyValue|Bootstrap service, provides endpoints for all other services as well as device configs| <ul><li>**countryCode**: The country the client is connected from</li><li>**doClientVersion**: The version of the DoSvc Client</li><li>**Profile**: The device type (ex: PC vs Xbox)</li><li>**eId**: Client grouping Id</li><li>**CacheHost**: Cache host id<</li></ul> |
| <ul><li>cp*-prod.do.dsp.mp.microsoft.com</li><li>cp*.prod.do.dsp.mp.microsoft.com</li></ul> | Content Policy | Provides content specific policies as well as content metadata URLs | <ul><li>**Profile**: The device type (ex: PC vs Xbox)</li><li>**ContentId**: The content identifier</li><li>**doClientVersion**: The version of the dosvc client</li><li>**countryCode**: The country the client is connected from</li><li>**altCatalogId**: If ContentId isn't available, use the download URL instead</li><li>**eId**: Client grouping Id</li><li>**CacheHost**: Cache host id </li></ul> |
| <ul><li>disc*-prod.do.dsp.mp.microsoft.com</li><li>disc*.prod.do.dsp.mp.microsoft.com</li></ul> | Discovery | Provides the client with the geo-located Array to connect to. (There are two endpoints providing this functionality: /content and /v2/content) | <ul><li>**Profile**: The device type (ex: PC vs Xbox)</li><li>**ContentId**: The content identifier</li><li>**doClientVersion**: The version of the dosvc client</li><li>**partitionId**: Client partitioning hint</li><li>**altCatalogId**: If ContentId isn't available, use the download URL instead</li><li>**eId**: Client grouping Id</li></ul> |
| <ul><li>cn*-prod.do.dsp.mp.microsoft.com</li><li>cn*.prod.do.dsp.mp.microsoft.com</li></ul> | Arrays | Provides the client with list of peers that have the same content and belong to the same peer group. | <ul><li>**Profile**: The device type (ex: PC vs Xbox)</li><li>**ContentId**: The content identifier</li><li>**doClientVersion**: The version of the dosvc client</li><li>**altCatalogId**: If ContentId isn't available, use the download URL instead</li><li>**PeerId**:  Identified of the device running DO client</li><li>**ReportedIp**: The internal / private IP Address</li><li>**IsBackground**: Is the download interactive or background</li><li>**Uploaded**: Total bytes uploaded to peers</li><li>**Downloaded**: Total bytes downloaded from peers</li><li>**DownloadedCdn**: Total bytes downloaded from CDN</li><li>**Left**: Bytes left to download</li><li>**Peers Wanted**: Total number of peers wanted</li><li>**Group Id**: Group the device belongs to (set via DownloadMode 2 + Group ID GP / MDM policies)</li><li>**Scope**: The Download mode</li><li>**UploadedBPS**: The upload speed in Bytes per Second</li><li>**DownloadBPS**: The download speed in Bytes per second</li><li>**eId**: Client grouping Id</li></ul> |
| <ul><li>dl.delivery.mp.microsoft.com</li><li>emdl.ws.microsoft.com</li></ul> |  | Metadata download can come from different hostnames, however it is required for P2P |  
