---
title: EnterpriseAPN DDF
description: EnterpriseAPN DDF
ms.assetid: A953ADEF-4523-425F-926C-48DA62EB9E21
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 12/05/2017
---

# EnterpriseAPN DDF


This topic shows the OMA DM device description framework (DDF) for the **EnterpriseAPN** configuration service provider. DDF files are used only with OMA DM provisioning XML.

Looking for the DDF XML files? See [CSP DDF files download](configuration-service-provider-reference.md#csp-ddf-files-download).

The content below are the different versions of the DDF for this CSP.


-   [EnterpriseAPN CSP version 1.0 DDF](#enterpriseapn-csp-version-10-ddf)
-   [EnterpriseAPN CSP version 1.1 DDF](#enterpriseapn-csp-version-11-ddf)
-   [EnterpriseAPN CSP version 1.2 DDF](#enterpriseapn-csp-version-12-ddf)

### EnterpriseAPN CSP version 1.0 DDF

``` syntax
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN"
  "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"
  [<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
      <Node>
        <NodeName>EnterpriseAPN</NodeName>
        <Path>./Vendor/MSFT</Path>
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
            <DDFName></DDFName>
          </DFType>
        </DFProperties>
        <Node>
          <NodeName></NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
            </AccessType>
            <Description>Name of the connection as seen by WCM</Description>
            <DFFormat>
              <node />
            </DFFormat>
            <Occurrence>
              <ZeroOrOne />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <CaseSense>
              <CS />
            </CaseSense>
            <DFTitle>ConnectionName</DFTitle>
            <DFType>
              <DDFName></DDFName>
            </DFType>
          </DFProperties>
          <Node>
            <NodeName>APNName</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Enterprise APN name</Description>
              <DFFormat>
                <chr />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <CaseSense>
                <CIS />
              </CaseSense>
              <DFTitle>APNName</DFTitle>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>IPType</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>IPv4v6</DefaultValue>
              <Description>One of IPv4, IPv6, IPv4v6, or IPv4v6xlat</Description>
              <DFFormat>
                <chr />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <CaseSense>
                <CIS />
              </CaseSense>
              <DFTitle>IPType</DFTitle>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>IsAttachAPN</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>false</DefaultValue>
              <Description>Indicates whether this APN should be requested as part of an LTE Attach.</Description>
              <DFFormat>
                <bool />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <CaseSense>
                <CIS />
              </CaseSense>
              <DFTitle>IsAttachAPN</DFTitle>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>APNClassId</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>9476C91D-608F-47B6-856A-1D90C1BED333</DefaultValue>
              <Description>GUID that defines the APN class to the modem. This is the same as the OEMConnectionId in CM_CellularEntries.</Description>
              <DFFormat>
                <chr />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <CaseSense>
                <CIS />
              </CaseSense>
              <DFTitle>ApnClassId</DFTitle>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>AuthType</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>None</DefaultValue>
              <Description>Authentication type, one of None, Auto, PAP, CHAP, MSCHAPv2</Description>
              <DFFormat>
                <chr />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <CaseSense>
                <CIS />
              </CaseSense>
              <DFTitle>AuthType</DFTitle>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>UserName</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>User name, for use with PAP, CHAP, MSCHAPv2 authentication.</Description>
              <DFFormat>
                <chr />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <CaseSense>
                <CIS />
              </CaseSense>
              <DFTitle>UserName</DFTitle>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>Password</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Password corresponding to UserName for PAP, CHAP, and MSCHAPv2 authentication.</Description>
              <DFFormat>
                <chr />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <CaseSense>
                <CIS />
              </CaseSense>
              <DFTitle>Password</DFTitle>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>IccId</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>ICCID to be associated with the cellular connection profile.If this node is not present, the connection will be created on a single-slot device using the ICCID of the UICC and on a dual-slot device using the ICCID of the UICC that is active for data.</Description>
              <DFFormat>
                <chr />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <CaseSense>
                <CIS />
              </CaseSense>
              <DFTitle>IccId</DFTitle>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
        </Node>
      </Node>
</MgmtTree>
```

### EnterpriseAPN CSP version 1.1 DDF

``` syntax
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN"
  "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"
  [<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
      <Node>
        <NodeName>EnterpriseAPN</NodeName>
        <Path>./Vendor/MSFT</Path>
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
            <MIME>com.microsoft/1.1/MDM/EnterpriseAPN</MIME>
          </DFType>
        </DFProperties>
        <Node>
          <NodeName></NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
            </AccessType>
            <Description>Name of the connection as seen by WCM</Description>
            <DFFormat>
              <node />
            </DFFormat>
            <Occurrence>
              <ZeroOrMore />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <CaseSense>
              <CIS />
            </CaseSense>
            <DFTitle>ConnectionName</DFTitle>
            <DFType>
              <DDFName></DDFName>
            </DFType>
          </DFProperties>
          <Node>
            <NodeName>APNName</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Enterprise APN name</Description>
              <DFFormat>
                <chr />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <CaseSense>
                <CIS />
              </CaseSense>
              <DFTitle>APNName</DFTitle>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>IPType</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>IPv4v6</DefaultValue>
              <Description>One of IPv4, IPv6, IPv4v6, or IPv4v6xlat, specifying whether the connection supports IPv4 only, IPv6 only, IPv4 and IPv6 concurrently, or IPv6 with IPv4 provided by 46xlat</Description>
              <DFFormat>
                <chr />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <CaseSense>
                <CIS />
              </CaseSense>
              <DFTitle>IPType</DFTitle>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>IsAttachAPN</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>false</DefaultValue>
              <Description>Indicates whether this APN should be requested as part of an LTE Attach.</Description>
              <DFFormat>
                <bool />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <CaseSense>
                <CIS />
              </CaseSense>
              <DFTitle>IsAttachAPN</DFTitle>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>ClassId</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>9476C91D-608F-47B6-856A-1D90C1BED333</DefaultValue>
              <Description>GUID that defines the APN class to the modem. This is the same as the OEMConnectionId in CM_CellularEntries.</Description>
              <DFFormat>
                <chr />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <CaseSense>
                <CIS />
              </CaseSense>
              <DFTitle>ClassId</DFTitle>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>AuthType</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>None</DefaultValue>
              <Description>Authentication type, one of None, Auto, PAP, CHAP, MSCHAPv2</Description>
              <DFFormat>
                <chr />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <CaseSense>
                <CIS />
              </CaseSense>
              <DFTitle>AuthType</DFTitle>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>UserName</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>User name, for use with PAP, CHAP, MSCHAPv2 authentication.</Description>
              <DFFormat>
                <chr />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <CaseSense>
                <CIS />
              </CaseSense>
              <DFTitle>UserName</DFTitle>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>Password</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Password corresponding to UserName for PAP, CHAP, and MSCHAPv2 authentication.</Description>
              <DFFormat>
                <chr />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <CaseSense>
                <CIS />
              </CaseSense>
              <DFTitle>Password</DFTitle>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>IccId</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>ICCID to be associated with the cellular connection profile.If this node is not present, the connection will be created on a single-slot device using the ICCID of the UICC and on a dual-slot device using the ICCID of the UICC that is active for data.</Description>
              <DFFormat>
                <chr />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <CaseSense>
                <CIS />
              </CaseSense>
              <DFTitle>IccId</DFTitle>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>AlwaysOn</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>true</DefaultValue>
              <Description>Boolean that specifies whether the CM will automatically attempt to connect to the APN when a connection is available. Default is true.</Description>
              <DFFormat>
                <bool />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <CaseSense>
                <CIS />
              </CaseSense>
              <DFTitle>AlwaysOn</DFTitle>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>Enabled</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>true</DefaultValue>
              <Description>Boolean that specifies whether the connection is enabled. Default is true.</Description>
              <DFFormat>
                <bool />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <CaseSense>
                <CIS />
              </CaseSense>
              <DFTitle>Enabled</DFTitle>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
        </Node>
        <Node>
          <NodeName>Settings</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Global settings.</Description>
            <DFFormat>
              <node />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Permanent />
            </Scope>
            <CaseSense>
              <CS />
            </CaseSense>
            <DFTitle>Settings</DFTitle>
            <DFType>
              <DDFName></DDFName>
            </DFType>
          </DFProperties>
          <Node>
            <NodeName>AllowUserControl</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>false</DefaultValue>
              <Description>Boolean that specifies whether the cellular UX will allow users to control the visibility of enterprise APNs. Default is false.</Description>
              <DFFormat>
                <bool />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <CaseSense>
                <CIS />
              </CaseSense>
              <DFTitle>AllowUserControl</DFTitle>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>HideView</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>false</DefaultValue>
              <Description>Boolean that specifies whether the cellular UX will allow the user to view enterprise APNs. Default is false. Only applicable if AllowUserControl is true.</Description>
              <DFFormat>
                <bool />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <CaseSense>
                <CIS />
              </CaseSense>
              <DFTitle>HideView</DFTitle>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
        </Node>
      </Node>
</MgmtTree>
```

### EnterpriseAPN CSP version 1.2 DDF

``` syntax
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN"
  "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"
  [<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
      <Node>
        <NodeName>EnterpriseAPN</NodeName>
        <Path>./Vendor/MSFT</Path>
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
            <MIME>com.microsoft/1.2/MDM/EnterpriseAPN</MIME>
          </DFType>
        </DFProperties>
        <Node>
          <NodeName></NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
            </AccessType>
            <Description>Name of the connection as seen by WCM</Description>
            <DFFormat>
              <node />
            </DFFormat>
            <Occurrence>
              <ZeroOrMore />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <CaseSense>
              <CIS />
            </CaseSense>
            <DFTitle>ConnectionName</DFTitle>
            <DFType>
              <DDFName></DDFName>
            </DFType>
          </DFProperties>
          <Node>
            <NodeName>APNName</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Enterprise APN name</Description>
              <DFFormat>
                <chr />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <CaseSense>
                <CIS />
              </CaseSense>
              <DFTitle>APNName</DFTitle>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>IPType</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>IPv4v6</DefaultValue>
              <Description>One of IPv4, IPv6, IPv4v6, or IPv4v6xlat, specifying whether the connection supports IPv4 only, IPv6 only, IPv4 and IPv6 concurrently, or IPv6 with IPv4 provided by 46xlat</Description>
              <DFFormat>
                <chr />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <CaseSense>
                <CIS />
              </CaseSense>
              <DFTitle>IPType</DFTitle>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>IsAttachAPN</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>false</DefaultValue>
              <Description>Indicates whether this APN should be requested as part of an LTE Attach.</Description>
              <DFFormat>
                <bool />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <CaseSense>
                <CIS />
              </CaseSense>
              <DFTitle>IsAttachAPN</DFTitle>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>ClassId</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>9476C91D-608F-47B6-856A-1D90C1BED333</DefaultValue>
              <Description>GUID that defines the APN class to the modem. This is the same as the OEMConnectionId in CM_CellularEntries.</Description>
              <DFFormat>
                <chr />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <CaseSense>
                <CIS />
              </CaseSense>
              <DFTitle>ClassId</DFTitle>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>AuthType</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>None</DefaultValue>
              <Description>Authentication type, one of None, Auto, PAP, CHAP, MSCHAPv2</Description>
              <DFFormat>
                <chr />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <CaseSense>
                <CIS />
              </CaseSense>
              <DFTitle>AuthType</DFTitle>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>UserName</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>User name, for use with PAP, CHAP, MSCHAPv2 authentication.</Description>
              <DFFormat>
                <chr />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <CaseSense>
                <CIS />
              </CaseSense>
              <DFTitle>UserName</DFTitle>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>Password</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Password corresponding to UserName for PAP, CHAP, and MSCHAPv2 authentication.</Description>
              <DFFormat>
                <chr />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <CaseSense>
                <CIS />
              </CaseSense>
              <DFTitle>Password</DFTitle>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>IccId</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>ICCID to be associated with the cellular connection profile.If this node is not present, the connection will be created on a single-slot device using the ICCID of the UICC and on a dual-slot device using the ICCID of the UICC that is active for data.</Description>
              <DFFormat>
                <chr />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <CaseSense>
                <CIS />
              </CaseSense>
              <DFTitle>IccId</DFTitle>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>AlwaysOn</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>true</DefaultValue>
              <Description>Boolean that specifies whether the CM will automatically attempt to connect to the APN when a connection is available. Default is true.</Description>
              <DFFormat>
                <bool />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <CaseSense>
                <CIS />
              </CaseSense>
              <DFTitle>AlwaysOn</DFTitle>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>Enabled</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>true</DefaultValue>
              <Description>Boolean that specifies whether the connection is enabled. Default is true.</Description>
              <DFFormat>
                <bool />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <CaseSense>
                <CIS />
              </CaseSense>
              <DFTitle>Enabled</DFTitle>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>Roaming</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>1</DefaultValue>
              <Description>Roaming setting that specifies whether the connection should be activated when the device is roaming. 0: Disallowed, 1: Allowed, 2: DomesticRoaming, 3: UseOnlyForDomesticRoaming, 4: UseOnlyForNonDomesticRoaming, 5: UseOnlyForRoaming. Default is 1 (all roam allowed).</Description>
              <DFFormat>
                <chr />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <CaseSense>
                <CIS />
              </CaseSense>
              <DFTitle>Roaming</DFTitle>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
        </Node>
        <Node>
          <NodeName>Settings</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Global settings.</Description>
            <DFFormat>
              <node />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Permanent />
            </Scope>
            <CaseSense>
              <CS />
            </CaseSense>
            <DFTitle>Settings</DFTitle>
            <DFType>
              <DDFName></DDFName>
            </DFType>
          </DFProperties>
          <Node>
            <NodeName>AllowUserControl</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>false</DefaultValue>
              <Description>Boolean that specifies whether the cellular UX will allow users to control the visibility of enterprise APNs. Default is false.</Description>
              <DFFormat>
                <bool />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <CaseSense>
                <CIS />
              </CaseSense>
              <DFTitle>AllowUserControl</DFTitle>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>HideView</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>false</DefaultValue>
              <Description>Boolean that specifies whether the cellular UX will allow the user to view enterprise APNs. Default is false. Only applicable if AllowUserControl is true.</Description>
              <DFFormat>
                <bool />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <CaseSense>
                <CIS />
              </CaseSense>
              <DFTitle>HideView</DFTitle>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
        </Node>
      </Node>
</MgmtTree>
```


## Related topics


[EnterpriseAPN configuration service provider](enterpriseapn-csp.md)

 

 






