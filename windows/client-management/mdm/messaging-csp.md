---
title: Messaging CSP
description: Learn how to use the Messaging configuration service provider (CSP) to configure the ability to get text messages audited on a mobile device.
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: dansimp
ms.date: 06/26/2017
ms.reviewer: 
manager: dansimp
---

# Messaging CSP

The Messaging configuration service provider is used to configure the ability to get text messages audited on a mobile device. This CSP was added in Windows 10, version 1703.

The following shows the Messaging configuration service provider in tree format.

```console
./User/Vendor/MSFT
Messaging
----AuditingLevel
----Auditing
--------Messages
----------Count
----------RevisionId
----------Data
```

<a href="" id="--user-msft-applocker"></a>**./User/Vendor/MSFT/Messaging**  

Root node for the Messaging configuration service provider.

<a href="" id="auditinglevel"></a>**AuditingLevel**  
Turns on the "Text" auditing feature.
The following list shows the supported values:

- 0 (Default) - Off
- 1 - On

Supported operations are Get and Replace.

<a href="" id="auditing"></a>**Auditing**  
Node for auditing.
Supported operation is Get.

<a href="" id="messages"></a>**Messages**  
Node for messages.
Supported operation is Get.

<a href="" id="count"></a>**Count**  
The number of messages to return in the Data setting. The default is 100.
Supported operations are Get and Replace.

<a href="" id="revisionid"></a>**RevisionId**  
Retrieves messages whose revision ID is greater than RevisionId.
Supported operations are Get and Replace.

<a href="" id="data"></a>**Data**  
The JSON string of text messages on the device.
Supported operations are Get and Replace.

**SyncML example**

```xml
 <SyncML xmlns="SYNCML:SYNCML1.2">
  <SyncBody>
    <Replace>
      <CmdID>2</CmdID>
      <Item>
        <Target>
          <LocURI>
            ./User/Vendor/MSFT/Messaging/Auditing/Messages/Count
          </LocURI>
        </Target>
        <Meta>
          <Format xmlns="syncml:metinf">int</Format>
          <Type>text/plain</Type>
        </Meta>
        <Data>100</Data>
      </Item>
    </Replace>
    <Replace>
      <CmdID>3</CmdID>
      <Item>
        <Target>
          <LocURI>
            ./User/Vendor/MSFT/Messaging/Auditing/Messages/RevisionId
          </LocURI>
        </Target>
        <Meta>
          <Format xmlns="syncml:metinf">chr</Format>
          <Type>text/plain</Type>
        </Meta>
        <Data>0</Data>
      </Item>
    </Replace>
    <Get>
      <CmdID>4</CmdID>
      <Item>
        <Target>
          <LocURI>
            ./User/Vendor/MSFT/Messaging/Auditing/Messages/Data
          </LocURI>
        </Target>
      </Item>
    </Get>
    <Final/>
  </SyncBody>
</SyncML>
```

## Related topics

[Configuration service provider reference](configuration-service-provider-reference.md)