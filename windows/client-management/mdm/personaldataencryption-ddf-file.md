---
title: PDE DDF file
description: View the XML file containing the device description framework (DDF) for the PDE configuration service provider.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 03/23/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

# PDE DDF file

The following XML file contains the device description framework (DDF) for the PDE configuration service provider.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN" "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"[<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
  <MSFT:Diagnostics>
  </MSFT:Diagnostics>
  <Node>
    <NodeName>PDE</NodeName>
    <Path>./User/Vendor/MSFT</Path>
    <DFProperties>
      <AccessType>
        <Get />
      </AccessType>
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
        <DDFName />
      </DFType>
      <MSFT:Applicability>
        <MSFT:OsBuildVersion>10.0.22621</MSFT:OsBuildVersion>
        <MSFT:CspVersion>1.0</MSFT:CspVersion>
        <MSFT:EditionAllowList>0x4;0x1B;0x48;0x54;0x79;0x7A;0x7D;0x7E;0x81;0x82;0x87;0x88;0x88*;0xAB;0xAC;0xB4;0xBC;0xBF;0xCD;</MSFT:EditionAllowList>
      </MSFT:Applicability>
    </DFProperties>
    <Node>
      <NodeName>EnablePersonalDataEncryption</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <Description>Allows the Admin to enable Personal Data Encryption. Set to '1' to set this policy.</Description>
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
          <MIME />
        </DFType>
        <MSFT:AllowedValues ValueType="ENUM">
          <MSFT:Enum>
            <MSFT:Value>0</MSFT:Value>
            <MSFT:ValueDescription>Disable Personal Data Encryption.</MSFT:ValueDescription>
          </MSFT:Enum>
          <MSFT:Enum>
            <MSFT:Value>1</MSFT:Value>
            <MSFT:ValueDescription>Enable Personal Data Encryption.</MSFT:ValueDescription>
          </MSFT:Enum>
        </MSFT:AllowedValues>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>ProtectFolders</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
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
          <DDFName />
        </DFType>
      </DFProperties>
      <Node>
        <NodeName>ProtectDocuments</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>Allows the Admin to enable PDE on Documents folder. Set to '1' to set this policy.</Description>
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
            <MIME />
          </DFType>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>Disable PDE on the folder. If the folder is currently protected by PDE, this will result in unprotecting the folder.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>Enable PDE on the folder.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>ProtectDesktop</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>Allows the Admin to enable PDE on Desktop folder. Set to '1' to set this policy.</Description>
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
            <MIME />
          </DFType>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>Disable PDE on the folder. If the folder is currently protected by PDE, this will result in unprotecting the folder.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>Enable PDE on the folder.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>ProtectPictures</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>Allows the Admin to enable PDE on Pictures folder. Set to '1' to set this policy.</Description>
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
            <MIME />
          </DFType>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>Disable PDE on the folder. If the folder is currently protected by PDE, this will result in unprotecting the folder.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>Enable PDE on the folder.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
    </Node>
    <Node>
      <NodeName>Status</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
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
          <DDFName />
        </DFType>
      </DFProperties>
      <Node>
        <NodeName>PersonalDataEncryptionStatus</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>This node reports the current state of Personal Data Encryption for a user. '0' means disabled. '1' means enabled.</Description>
          <DFFormat>
            <int />
          </DFFormat>
          <Occurrence>
            <One />
          </Occurrence>
          <Scope>
            <Permanent />
          </Scope>
          <DFType>
            <MIME />
          </DFType>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>FolderProtectionStatus</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>This node reports folder protection status for a user. </Description>
          <DFFormat>
            <int />
          </DFFormat>
          <Occurrence>
            <One />
          </Occurrence>
          <Scope>
            <Permanent />
          </Scope>
          <DFType>
            <MIME />
          </DFType>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>Protection not started.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>Protection is completed with no failures.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>2</MSFT:Value>
              <MSFT:ValueDescription>Protection in progress.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>3</MSFT:Value>
              <MSFT:ValueDescription>Protection failed.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>FoldersProtected</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>This node reports all folders (full path to each folder) that have been protected.</Description>
          <DFFormat>
            <chr />
          </DFFormat>
          <Occurrence>
            <One />
          </Occurrence>
          <Scope>
            <Permanent />
          </Scope>
          <DFType>
            <MIME />
          </DFType>
        </DFProperties>
      </Node>
    </Node>
  </Node>
</MgmtTree>
```

## Related articles

[PDE configuration service provider reference](personaldataencryption-csp.md)
