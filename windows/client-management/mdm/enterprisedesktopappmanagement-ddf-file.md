---
title: EnterpriseDesktopAppManagement DDF file
description: View the XML file containing the device description framework (DDF) for the EnterpriseDesktopAppManagement configuration service provider.
ms.date: 06/19/2024
---

<!-- Auto-Generated CSP Document -->

# EnterpriseDesktopAppManagement DDF file

The following XML file contains the device description framework (DDF) for the EnterpriseDesktopAppManagement configuration service provider.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN" "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"[<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
  <MSFT:Diagnostics>
  </MSFT:Diagnostics>
  <Node>
    <NodeName>EnterpriseDesktopAppManagement</NodeName>
    <Path>./User/Vendor/MSFT</Path>
    <DFProperties>
      <AccessType>
        <Get />
      </AccessType>
      <Description>The root node for the EnterpriseDesktopAppManagement configuration service provider.</Description>
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
        <MSFT:OsBuildVersion>10.0.10586</MSFT:OsBuildVersion>
        <MSFT:CspVersion>1.0</MSFT:CspVersion>
        <MSFT:EditionAllowList>0x4;0x1B;0x30;0x31;0x48;0x54;0x77;0x79;0x7A;0x7D;0x7E;0x81;0x82;0x8A;0x8B;0xA1;0xA2;0xA4;0xA5;0xAB;0xAC;0xAF;0xB4;0xBC;0xBD;0xBF;0xCA;0xCB;</MSFT:EditionAllowList>
      </MSFT:Applicability>
    </DFProperties>
    <Node>
      <NodeName>MSI</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Product Type is MSI</Description>
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
        <CaseSense>
          <CIS />
        </CaseSense>
      </DFProperties>
      <Node>
        <NodeName>
        </NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
          </AccessType>
          <Description>The MSI product code for the application.</Description>
          <DFFormat>
            <node />
          </DFFormat>
          <Occurrence>
            <ZeroOrMore />
          </Occurrence>
          <Scope>
            <Dynamic />
          </Scope>
          <DFTitle>ProductID</DFTitle>
          <DFType>
            <DDFName />
          </DFType>
          <CaseSense>
            <CIS />
          </CaseSense>
          <MSFT:DynamicNodeNaming>
            <MSFT:UniqueName>The MSI product code for the application.</MSFT:UniqueName>
          </MSFT:DynamicNodeNaming>
          <MSFT:AtomicRequired />
        </DFProperties>
        <Node>
          <NodeName>Version</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>MSI Product Version</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>Name</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Name of the application.</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>Publisher</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Publisher of application.</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>InstallPath</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Installation path of the application.</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>InstallDate</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Installation date of the application.</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>DownloadInstall</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Exec />
              <Get />
              <Replace />
            </AccessType>
            <Description><![CDATA[Executes the download and installation of the application. In Windows 10, version 1703 service release, a new tag <DownloadFromAad> was added to the <Enforcement> section of the XML. The default value is 0 (do not send token). This tag is optional and needs to be set to 1 in case the server wants the download URL to get the AADUserToken.]]></Description>
            <DFFormat>
              <xml />
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
            <CaseSense>
              <CIS />
            </CaseSense>
            <MSFT:AllowedValues ValueType="None">
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>Status</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Status of the application. Valid values: 10-Initialized, 20-Download In Progress, 25-Pending Download Retry, 30-Download Failed, 40-Download Completed, 48-Pending User Session, 50-Enforcement In Progress, 55-Pending Enforcement Retry, 60-Enforcement Failed, 70-Enforcement Completed</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>LastError</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>The last error code during the application installation process. This is typically stored as an HRESULT format. Depending on what was occurring when the error happened, this could be the result of executing MSIExec.exe or the error result from an API that failed.</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>LastErrorDesc</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Contains the last error code description. The LastErrorDesc value is looked up for the matching LastError value. Sometimes there is no LastErrorDesc returned.</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
      </Node>
      <Node>
        <NodeName>UpgradeCode</NodeName>
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
          <CaseSense>
            <CS />
          </CaseSense>
          <MSFT:Applicability>
            <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.0</MSFT:CspVersion>
          </MSFT:Applicability>
        </DFProperties>
        <Node>
          <NodeName>
          </NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description> A gateway (or device management server) uses this method to detect matching upgrade MSI product when a Admin wants to update an existing MSI app. If the same upgrade product is installed, then the update is allowed.</Description>
            <DFFormat>
              <chr />
            </DFFormat>
            <Occurrence>
              <OneOrMore />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFTitle>Guid</DFTitle>
            <DFType>
              <MIME />
            </DFType>
            <CaseSense>
              <CIS />
            </CaseSense>
            <MSFT:DynamicNodeNaming>
              <MSFT:ClientInventory />
            </MSFT:DynamicNodeNaming>
          </DFProperties>
        </Node>
      </Node>
    </Node>
  </Node>
  <Node>
    <NodeName>EnterpriseDesktopAppManagement</NodeName>
    <Path>./Device/Vendor/MSFT</Path>
    <DFProperties>
      <AccessType>
        <Get />
      </AccessType>
      <Description>The root node for the EnterpriseDesktopAppManagement configuration service provider.</Description>
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
        <MSFT:OsBuildVersion>10.0.10586</MSFT:OsBuildVersion>
        <MSFT:CspVersion>1.0</MSFT:CspVersion>
        <MSFT:EditionAllowList>0x4;0x1B;0x30;0x31;0x48;0x54;0x77;0x79;0x7A;0x7D;0x7E;0x81;0x82;0x8A;0x8B;0xA1;0xA2;0xA4;0xA5;0xAB;0xAC;0xAF;0xB4;0xBC;0xBD;0xBF;0xCA;0xCB;</MSFT:EditionAllowList>
      </MSFT:Applicability>
    </DFProperties>
    <Node>
      <NodeName>MSI</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Product Type is MSI</Description>
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
        <CaseSense>
          <CIS />
        </CaseSense>
      </DFProperties>
      <Node>
        <NodeName>
        </NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
          </AccessType>
          <Description>The MSI product code for the application.</Description>
          <DFFormat>
            <node />
          </DFFormat>
          <Occurrence>
            <ZeroOrMore />
          </Occurrence>
          <Scope>
            <Dynamic />
          </Scope>
          <DFTitle>ProductID</DFTitle>
          <DFType>
            <DDFName />
          </DFType>
          <CaseSense>
            <CIS />
          </CaseSense>
          <MSFT:DynamicNodeNaming>
            <MSFT:UniqueName>The MSI product code for the application.</MSFT:UniqueName>
          </MSFT:DynamicNodeNaming>
          <MSFT:AtomicRequired />
        </DFProperties>
        <Node>
          <NodeName>Version</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>MSI Product Version</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>Name</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Name of the application.</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>Publisher</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Publisher of application.</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>InstallPath</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Installation path of the application.</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>InstallDate</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Installation date of the application.</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>DownloadInstall</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Exec />
              <Get />
              <Replace />
            </AccessType>
            <Description><![CDATA[Executes the download and installation of the application. In Windows 10, version 1703 service release, a new tag <DownloadFromAad> was added to the <Enforcement> section of the XML. The default value is 0 (do not send token). This tag is optional and needs to be set to 1 in case the server wants the download URL to get the AADUserToken.]]></Description>
            <DFFormat>
              <xml />
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
            <CaseSense>
              <CIS />
            </CaseSense>
            <MSFT:AllowedValues ValueType="None">
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>Status</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Status of the application. Valid values: 10-Initialized, 20-Download In Progress, 25-Pending Download Retry, 30-Download Failed, 40-Download Completed, 48-Pending User Session, 50-Enforcement In Progress, 55-Pending Enforcement Retry, 60-Enforcement Failed, 70-Enforcement Completed</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>LastError</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>The last error code during the application installation process. This is typically stored as an HRESULT format. Depending on what was occurring when the error happened, this could be the result of executing MSIExec.exe or the error result from an API that failed.</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>LastErrorDesc</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Contains the last error code description. The LastErrorDesc value is looked up for the matching LastError value. Sometimes there is no LastErrorDesc returned.</Description>
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
            <CaseSense>
              <CIS />
            </CaseSense>
          </DFProperties>
        </Node>
      </Node>
      <Node>
        <NodeName>UpgradeCode</NodeName>
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
          <CaseSense>
            <CS />
          </CaseSense>
          <MSFT:Applicability>
            <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.0</MSFT:CspVersion>
          </MSFT:Applicability>
        </DFProperties>
        <Node>
          <NodeName>
          </NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description> A gateway (or device management server) uses this method to detect matching upgrade MSI product when a Admin wants to update an existing MSI app. If the same upgrade product is installed, then the update is allowed.</Description>
            <DFFormat>
              <chr />
            </DFFormat>
            <Occurrence>
              <OneOrMore />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFTitle>Guid</DFTitle>
            <DFType>
              <MIME />
            </DFType>
            <CaseSense>
              <CIS />
            </CaseSense>
            <MSFT:DynamicNodeNaming>
              <MSFT:ClientInventory />
            </MSFT:DynamicNodeNaming>
          </DFProperties>
        </Node>
      </Node>
    </Node>
  </Node>
</MgmtTree>
```

## Related articles

[EnterpriseDesktopAppManagement configuration service provider reference](enterprisedesktopappmanagement-csp.md)
