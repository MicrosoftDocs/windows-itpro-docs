---
title: Personalization DDF file
description: Personalization DDF file
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 12/05/2017
ms.reviewer: 
manager: dansimp
---

# Personalization DDF file

This topic shows the OMA DM device description framework (DDF) for the **Personalization** configuration service provider.  

Looking for the DDF XML files? See [CSP DDF files download](configuration-service-provider-reference.md#csp-ddf-files-download).

The XML below is the current version for this CSP.

``` syntax
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN"
  "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"
  [<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
      <Node>
        <NodeName>Personalization</NodeName>
        <Path>./Vendor/MSFT</Path>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Configure a PC's personalization settings such as Desktop Image and Lock Screen Image.</Description>
          <DFFormat>
            <node />
          </DFFormat>
          <Occurrence>
            <One />
          </Occurrence>
          <Scope>
            <Permanent />
          </Scope>
          <DFType>
            <MIME>com.microsoft/1.0/MDM/Personalization</MIME>
          </DFType>
        </DFProperties>
        <Node>
          <NodeName>DesktopImageUrl</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Add />
              <Delete />
              <Replace />
            </AccessType>
            <Description>A http or https Url to a jpg, jpeg or png image that needs to be downloaded and used as the Desktop Image or a file Url to a local image on the file system that needs to used as the Desktop Image.</Description>
            <DFFormat>
              <chr />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFType>
              <MIME>text/plain</MIME>
            </DFType>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>DesktopImageStatus</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>This represents the status of the DesktopImage. 1 - Successfully downloaded or copied. 2 - Download/Copy in progress. 3 - Download/Copy failed. 4 - Unknown file type. 5 - Unsupported Url scheme. 6 - Max retry failed.</Description>
            <DFFormat>
              <int />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFType>
              <MIME>text/plain</MIME>
            </DFType>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>LockScreenImageUrl</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Add />
              <Delete />
              <Replace />
            </AccessType>
            <Description>A http or https Url to a jpg, jpeg or png image that neeeds to be downloaded and used as the Lock Screen Image or a file Url to a local image on the file system that needs to be used as the Lock Screen Image.</Description>
            <DFFormat>
              <chr />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFType>
              <MIME>text/plain</MIME>
            </DFType>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>LockScreenImageStatus</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>This represents the status of the LockScreenImage. 1 - Successfully downloaded or copied. 2 - Download/Copy in progress. 3 - Download/Copy failed. 4 - Unknown file type. 5 - Unsupported Url scheme. 6 - Max retry failed.</Description>
            <DFFormat>
              <int />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFType>
              <MIME>text/plain</MIME>
            </DFType>
          </DFProperties>
        </Node>
      </Node>
</MgmtTree>
```
