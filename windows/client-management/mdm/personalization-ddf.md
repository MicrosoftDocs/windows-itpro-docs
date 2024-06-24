---
title: Personalization DDF file
description: View the XML file containing the device description framework (DDF) for the Personalization configuration service provider.
ms.date: 06/19/2024
---

<!-- Auto-Generated CSP Document -->

# Personalization DDF file

The following XML file contains the device description framework (DDF) for the Personalization configuration service provider.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN" "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"[<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
  <MSFT:Diagnostics>
  </MSFT:Diagnostics>
  <Node>
    <NodeName>Personalization</NodeName>
    <Path>./Vendor/MSFT</Path>
    <DFProperties>
      <AccessType>
        <Add />
        <Delete />
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
        <MIME />
      </DFType>
      <MSFT:Applicability>
        <MSFT:OsBuildVersion>10.0.16299</MSFT:OsBuildVersion>
        <MSFT:CspVersion>1.0</MSFT:CspVersion>
        <MSFT:EditionAllowList>0x4;0x1B;0x30;0x31;0x48;0x54;0x77;0x79;0x7A;0x7D;0x7E;0x81;0x82;0x87;0x88;0x88*;0x8A;0x8B;0xA1;0xA2;0xA4;0xA5;0xAB;0xAC;0xAF;0xB4;0xBC;0xBD;0xBF;0xCA;0xCB;</MSFT:EditionAllowList>
      </MSFT:Applicability>
    </DFProperties>
    <Node>
      <NodeName>DesktopImageUrl</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <Description>A http or https Url to a jpg, jpeg or png image that needs to be downloaded and used as the Desktop Image or a file Url to a local image on the file system that needs to be used as the Desktop Image.</Description>
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
          <MIME />
        </DFType>
        <MSFT:AllowedValues ValueType="None">
        </MSFT:AllowedValues>
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
          <MIME />
        </DFType>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>LockScreenImageUrl</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <Description>A http or https Url to a jpg, jpeg or png image that needs to be downloaded and used as the Lock Screen Image or a file Url to a local image on the file system that needs to be used as the Lock Screen Image.</Description>
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
          <MIME />
        </DFType>
        <MSFT:AllowedValues ValueType="None">
        </MSFT:AllowedValues>
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
          <MIME />
        </DFType>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>CompanyLogoUrl</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <Description>A http or https Url to a jpg, jpeg or png image that needs to be downloaded and used as the Company Logo or a file Url to a local image on the file system that needs to be used as the Company Logo. This setting is currently available for boot to cloud shared pc mode only.</Description>
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
          <MIME />
        </DFType>
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>10.0.22621.3235</MSFT:OsBuildVersion>
          <MSFT:CspVersion>2.0</MSFT:CspVersion>
        </MSFT:Applicability>
        <MSFT:AllowedValues ValueType="None">
        </MSFT:AllowedValues>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>CompanyLogoStatus</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>This represents the status of the Company Logo. 1 - Successfully downloaded or copied. 2 - Download/Copy in progress. 3 - Download/Copy failed. 4 - Unknown file type. 5 - Unsupported Url scheme. 6 - Max retry failed. This setting is currently available for boot to cloud shared pc mode only.</Description>
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
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>10.0.22621.3235</MSFT:OsBuildVersion>
          <MSFT:CspVersion>2.0</MSFT:CspVersion>
        </MSFT:Applicability>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>CompanyName</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <Description>This represents the name of the company. It can be at most 30 characters long. This setting is currently available only for boot to cloud shared pc mode to display the company name on sign-in screen.</Description>
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
          <MIME />
        </DFType>
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>10.0.22621.3235</MSFT:OsBuildVersion>
          <MSFT:CspVersion>2.0</MSFT:CspVersion>
        </MSFT:Applicability>
        <MSFT:AllowedValues ValueType="RegEx">
          <MSFT:Value>^.{1,30}$</MSFT:Value>
        </MSFT:AllowedValues>
      </DFProperties>
    </Node>
  </Node>
</MgmtTree>
```

## Related articles

[Personalization configuration service provider reference](personalization-csp.md)
