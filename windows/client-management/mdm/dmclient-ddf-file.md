---
title: DMClient DDF file
description: View the XML file containing the device description framework (DDF) for the DMClient configuration service provider.
ms.date: 06/28/2024
---

<!-- Auto-Generated CSP Document -->

# DMClient DDF file

The following XML file contains the device description framework (DDF) for the DMClient configuration service provider.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN" "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"[<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
  <MSFT:Diagnostics>
  </MSFT:Diagnostics>
  <Node>
    <NodeName>DMClient</NodeName>
    <Path>./User/Vendor/MSFT</Path>
    <DFProperties>
      <AccessType>
        <Get />
      </AccessType>
      <Description>Root node for the CSP.</Description>
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
        <MSFT:OsBuildVersion>10.0.10240</MSFT:OsBuildVersion>
        <MSFT:CspVersion>1.0</MSFT:CspVersion>
        <MSFT:EditionAllowList>0x4;0x1B;0x30;0x31;0x48;0x54;0x62;0x63;0x64;0x65;0x79;0x7A;0x7D;0x7E;0x81;0x82;0x88;0x8A;0x8B;0xA1;0xA2;0xA4;0xA5;0xAB;0xAC;0xAF;0xBC;0xBF;0xCA;0xCB;0xCD;0xCF;0xD2;</MSFT:EditionAllowList>
      </MSFT:Applicability>
    </DFProperties>
    <Node>
      <NodeName>Provider</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>The root node for all settings that belong to a single management server.</Description>
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
        <NodeName>
        </NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
          </AccessType>
          <Description>This node contains the URI-encoded value of the bootstrapped device management account’s Provider ID. Scope is dynamic. This value is set and controlled by the MDM server. As a best practice, use text that doesn’t require XML/URI escaping.</Description>
          <DFFormat>
            <node />
          </DFFormat>
          <Occurrence>
            <ZeroOrOne />
          </Occurrence>
          <Scope>
            <Dynamic />
          </Scope>
          <DFTitle>ProviderID</DFTitle>
          <DFType>
            <MIME />
          </DFType>
          <MSFT:DynamicNodeNaming>
            <MSFT:ServerGeneratedUniqueIdentifier />
          </MSFT:DynamicNodeNaming>
          <MSFT:AllowedValues ValueType="None">
          </MSFT:AllowedValues>
        </DFProperties>
        <Node>
          <NodeName>FirstSyncStatus</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
            </AccessType>
            <DFFormat>
              <node />
            </DFFormat>
            <Occurrence>
              <ZeroOrOne />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFType>
              <DDFName />
            </DFType>
            <MSFT:Applicability>
              <MSFT:OsBuildVersion>10.0.16299</MSFT:OsBuildVersion>
              <MSFT:CspVersion>1.4</MSFT:CspVersion>
            </MSFT:Applicability>
          </DFProperties>
          <Node>
            <NodeName>ExpectedPolicies</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>This node contains a list of LocURIs that refer to Policies the ISV expects to provision, delimited by the character L"\xF000" (the CSP_LIST_DELIMITER).  This is per user.</Description>
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
                <MSFT:List Delimiter="\xF000" />
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>ExpectedNetworkProfiles</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>This node contains a list of LocURIs that refer to Wi-Fi profiles and VPN profiles the ISV expects to provision, delimited by the character L"\xF000".  This is per user.</Description>
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
                <MSFT:List Delimiter="\xF000" />
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>ExpectedMSIAppPackages</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>This node contains a list of LocURIs that refer to App Packages the ISV expects to provision via EnterpriseDesktopAppManagement CSP, delimited by the character L"\xF000".  The LocURI will be followed by a semicolon and a number, representing the amount of apps included in the App Package.  We will not verify that number.  E.G. ./User/Vendor/MSFT/EnterpriseDesktopAppManagement/MSI/ProductID1/Status;4"\xF000" ./User/Vendor/MSFT/EnterpriseDesktopAppManagement/MSI/ProductID2/Status;2  Which  will represent that App Package ProductID1 contains 4 apps, whereas ProductID2 contains 2 apps.  This is per user.</Description>
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
                <MSFT:List Delimiter="\xF000" />
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>ExpectedModernAppPackages</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>This node contains a list of LocURIs that refer to App Packages the ISV expects to provision via EnterpriseModernAppManagement CSP, delimited by the character L"\xF000".  The LocURI will be followed by a semicolon and a number, representing the amount of apps included in the App Package.  We will not verify that number.  E.G. ./Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/PackageFamilyName/PackageFullName/Name;4"\xF000" ./Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/PackageFamilyName/PackageFullName2/Name;2  Which  will represent that App Package PackageFullName contains 4 apps, whereas PackageFullName2 contains 2 apps.  This is per user.</Description>
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
                <MSFT:List Delimiter="\xF000" />
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>ExpectedPFXCerts</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>This node contains a list of LocURIs that refer to certs the ISV expects to provision via ClientCertificateInstall CSP, delimited by the character L"\xF000" (the CSP_LIST_DELIMITER). This is per user.</Description>
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
                <MSFT:List Delimiter="\xF000" />
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>ExpectedSCEPCerts</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>This node contains a list of LocURIs that refer to SCEP certs the ISV expects to provision via ClientCertificateInstall CSP, delimited by the character L"\xF000" (the CSP_LIST_DELIMITER). This is per user.</Description>
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
                <MSFT:List Delimiter="\xF000" />
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>ServerHasFinishedProvisioning</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
              </AccessType>
              <Description>This node is set by the server to inform the UX that the server has finished provisioning the device.  This was added so that the server can “change its mind" about what it needs to provision on the device.  When this node is set, many other DM Client nodes will no longer be able to be changed.  If this node is not True, the UX will consider the provisioning a failure.  Once set to true, it would reject attempts to change it back to false with CFGMGR_E_COMMANDNOTALLOWED.  This node applies to the per user expected policies and resources lists.</Description>
              <DFFormat>
                <bool />
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
                  <MSFT:Value>false</MSFT:Value>
                  <MSFT:ValueDescription>Server has not finished provisioning</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>true</MSFT:Value>
                  <MSFT:ValueDescription>Server has finished provisioning</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>IsSyncDone</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
              </AccessType>
              <Description>This node, when doing a get, tells the server if the “First Syncs" are done and the device is fully provisioned.  When doing a Set, this triggers the UX to override whatever state it is in and tell the user that the device is provisioned.  It cannot be set from True to False (it will not change its mind on whether or not the sync is done), and it cannot be set from True to True (to prevent notifications from firing multiple times).  This node only applies to the user MDM status page (on a per user basis).</Description>
              <DFFormat>
                <bool />
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
                  <MSFT:Value>false</MSFT:Value>
                  <MSFT:ValueDescription>The user has not finished provisioning</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>true</MSFT:Value>
                  <MSFT:ValueDescription>The user has finished provisioning.</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>WasDeviceSuccessfullyProvisioned</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
              </AccessType>
              <Description>Integer node determining if a Device was Successfully provisioned.  0 is failure, 1 is success, 2 is in progress.  Once the value is changed to 0 or 1, the value cannot be changed again.  The client will change the value of success or failure and update the node.  The server can, however, force a failure or success message to appear on the device by setting this value and then setting the IsSyncDone node to true.  This node only applies to the user MDM status page (on a per user basis).</Description>
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
                  <MSFT:ValueDescription>The device has failed to provision the user</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>1</MSFT:Value>
                  <MSFT:ValueDescription>The device has successfully provisioned the user.</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>2</MSFT:Value>
                  <MSFT:ValueDescription>Provisioning is in progress.</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>AllowCollectLogsButton</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>false</DefaultValue>
              <Description>This node decides whether or not the MDM progress page displays the Collect Logs button.  This node only applies to the user MDM status page (on a per user basis).</Description>
              <DFFormat>
                <bool />
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
              <CaseSense>
                <CIS />
              </CaseSense>
              <MSFT:Applicability>
                <MSFT:OsBuildVersion>10.0.17134</MSFT:OsBuildVersion>
                <MSFT:CspVersion>1.5</MSFT:CspVersion>
              </MSFT:Applicability>
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>false</MSFT:Value>
                  <MSFT:ValueDescription>Do not show the Collect Logs button on the progress page.</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>true</MSFT:Value>
                  <MSFT:ValueDescription>Show the Collect Logs button on the progress page.</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>CustomErrorText</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
              </AccessType>
              <Description>This node allows the MDM to set custom error text, detailing what the user needs to do in case of error.  This node only applies to the user MDM status page (on a per user basis).</Description>
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
              <CaseSense>
                <CIS />
              </CaseSense>
              <MSFT:Applicability>
                <MSFT:OsBuildVersion>10.0.17134</MSFT:OsBuildVersion>
                <MSFT:CspVersion>1.5</MSFT:CspVersion>
              </MSFT:Applicability>
              <MSFT:AllowedValues ValueType="None">
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
        </Node>
      </Node>
    </Node>
  </Node>
  <Node>
    <NodeName>DMClient</NodeName>
    <Path>./Device/Vendor/MSFT</Path>
    <DFProperties>
      <AccessType>
        <Get />
      </AccessType>
      <Description>Root node for the CSP.</Description>
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
        <MSFT:OsBuildVersion>10.0.10240</MSFT:OsBuildVersion>
        <MSFT:CspVersion>1.0</MSFT:CspVersion>
        <MSFT:EditionAllowList>0x4;0x1B;0x30;0x31;0x48;0x54;0x62;0x63;0x64;0x65;0x79;0x7A;0x7D;0x7E;0x81;0x82;0x88;0x8A;0x8B;0xA1;0xA2;0xA4;0xA5;0xAB;0xAC;0xAF;0xBC;0xBF;0xCA;0xCB;0xCD;0xCF;0xD2;</MSFT:EditionAllowList>
      </MSFT:Applicability>
    </DFProperties>
    <Node>
      <NodeName>Provider</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>The root node for all settings that belong to a single management server.</Description>
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
        <NodeName>
        </NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
          </AccessType>
          <Description>This node contains the URI-encoded value of the bootstrapped device management account’s Provider ID. Scope is dynamic. This value is set and controlled by the MDM server. As a best practice, use text that doesn’t require XML/URI escaping.</Description>
          <DFFormat>
            <node />
          </DFFormat>
          <Occurrence>
            <ZeroOrOne />
          </Occurrence>
          <Scope>
            <Dynamic />
          </Scope>
          <DFTitle>ProviderID</DFTitle>
          <DFType>
            <MIME />
          </DFType>
          <MSFT:DynamicNodeNaming>
            <MSFT:ServerGeneratedUniqueIdentifier />
          </MSFT:DynamicNodeNaming>
          <MSFT:AllowedValues ValueType="None">
          </MSFT:AllowedValues>
        </DFProperties>
        <Node>
          <NodeName>EntDeviceName</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Character string that contains the user-friendly device name used by the IT admin console. The value is set during the enrollment process by way of the DMClient CSP. You can retrieve it later during an OMA DM session.</Description>
            <DFFormat>
              <chr />
            </DFFormat>
            <Occurrence>
              <ZeroOrOne />
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
          <NodeName>ExchangeID</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Character string that contains the unique Exchange device ID used by the Outlook account of the user the session is running against. This is useful for the enterprise management server to correlate and merge records for a device that is managed by exchange and natively managed by a dedicated management server.</Description>
            <DFFormat>
              <chr />
            </DFFormat>
            <Occurrence>
              <ZeroOrOne />
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
          <NodeName>EntDMID</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Character string that contains the unique enterprise device ID. The value is set by the management server during the enrollment process by way of the DMClient CSP. You can retrieve it later during an OMA DM session.</Description>
            <DFFormat>
              <chr />
            </DFFormat>
            <Occurrence>
              <ZeroOrOne />
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
          <NodeName>SignedEntDMID</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Character string that contains the device ID. This node and the nodes CertRenewTimeStamp can be used by the MDM server to verify client identity in order to update the registration record after the device certificate is renewed. The device signs the EntDMID with the old client certificate during the certificate renewal process and saves the signature locally.</Description>
            <DFFormat>
              <chr />
            </DFFormat>
            <Occurrence>
              <ZeroOrOne />
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
          <NodeName>CertRenewTimeStamp</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>The time in OMA DM standard time format. This node is designed to reduce the risk of the certificate being used by another device. The device records the time that the new certificate was created.</Description>
            <DFFormat>
              <chr />
            </DFFormat>
            <Occurrence>
              <ZeroOrOne />
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
          <NodeName>PublisherDeviceID</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description><![CDATA[The PublisherDeviceID is a device-unique ID created based on the enterprise Publisher ID. Publisher ID is created based on the enterprise application token and enterprise ID via ./Vendor/MSFT/EnterpriseAppManagement/<enterprise id>/EnrollmentToken. It is to ensure that for one enterprise, each device has a unique ID associated with it. For the same device, if it has multiple enterprises’ applications, each enterprise is identified differently.]]></Description>
            <DFFormat>
              <chr />
            </DFFormat>
            <Occurrence>
              <ZeroOrOne />
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
          <NodeName>ManagementServiceAddress</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <Description><![CDATA[The character string that contains the device management server address. It can be updated during an OMA DM session by the management server to allow the server to load balance to another server in situations where too many devices are connected to the server. The DMClient CSP will save the address to the same location as the w7 and DMS CSPs to ensure the management client has a single place to retrieve the current server address. The initial value for this node is the same server address value as bootstrapped via the w7 APPLICATION configuration service provider. Starting in Windows 10, version 1511, this node supports multiple server addresses in the format <URL1><URL2><URL3>. If there is only a single URL, then the <> are not required. This is supported for both desktop and mobile devices. During a DM session, the device will use the first address on the list and then keep going down the list until a successful connection is achieved. The DM client should cache the successfully connected server URL for the next session.]]></Description>
            <DFFormat>
              <chr />
            </DFFormat>
            <Occurrence>
              <ZeroOrOne />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFType>
              <MIME />
            </DFType>
            <MSFT:AllowedValues ValueType="None">
            </MSFT:AllowedValues>
            <MSFT:DependencyBehavior>
              <MSFT:DependencyGroup FriendlyId="ManageServerAddressListBlock">
                <MSFT:Dependency Type="Not">
                  <MSFT:DependencyUri>Device/Vendor/MSFT/DMClient/Provider/[ProviderID]/ManagementServerAddressList</MSFT:DependencyUri>
                  <MSFT:DependencyAllowedValue ValueType="None">
                  </MSFT:DependencyAllowedValue>
                </MSFT:Dependency>
              </MSFT:DependencyGroup>
            </MSFT:DependencyBehavior>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>UPN</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Get />
              <Replace />
            </AccessType>
            <Description>Allows the management server to update the User Principal Name (UPN) of the enrolled user. This is useful in scenarios where the user email address changes in the identity system, or in the scenario where the user enters an invalid UPN during enrollment, and fixes the UPN during federated enrollment. The UPN will be recorded and the UX will reflect the updated UPN.</Description>
            <DFFormat>
              <chr />
            </DFFormat>
            <Occurrence>
              <ZeroOrOne />
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
          <NodeName>HelpPhoneNumber</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>The character string that allows the user experience to include a customized help phone number that the end user will be able to view and use if they need help or support.</Description>
            <DFFormat>
              <chr />
            </DFFormat>
            <Occurrence>
              <ZeroOrOne />
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
          <NodeName>HelpWebsite</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>The character string that allows the user experience to include a customized help website that the end user will be able to view and use if they need help or support.</Description>
            <DFFormat>
              <chr />
            </DFFormat>
            <Occurrence>
              <ZeroOrOne />
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
          <NodeName>HelpEmailAddress</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>The character string that allows the user experience to include a customized help email address that the end user will be able to view and use if they need help or support.</Description>
            <DFFormat>
              <chr />
            </DFFormat>
            <Occurrence>
              <ZeroOrOne />
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
          <NodeName>RequireMessageSigning</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>false</DefaultValue>
            <Description>Primarily used for SSL bridging mode where firewalls and proxies are deployed and where device client identity is required. When enabled, every SyncML message from the device will carry an additional HTTP header named MDM-Signature. This header contains BASE64-encoded Cryptographic Message Syntax using a Detached Signature of the complete SyncML message SHA-2 (inclusive of the SyncHdr and SyncBody). Signing is performed using the private key of the management session certificate that was enrolled as part of the enrollment process. The device public key and PKCS9 UTC signing time stamp are included as part of the authenticated attributes in the signature. When enabled, the MDM server should validate the signature and the timestamp using the device identify certificate enrolled as part of MS-MDE, ensure the certificate and time are valid, and verify that the signature is trusted by the MDM server.</Description>
            <DFFormat>
              <bool />
            </DFFormat>
            <Occurrence>
              <ZeroOrOne />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFType>
              <MIME />
            </DFType>
            <MSFT:AllowedValues ValueType="ENUM">
              <MSFT:Enum>
                <MSFT:Value>false</MSFT:Value>
                <MSFT:ValueDescription>The device management client does not include authentication information in the management session HTTP header.</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>The client authentication information is provided in the management session HTTP header.</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>SyncApplicationVersion</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>1.0</DefaultValue>
            <Description>Used by the management server to set the DM session version that the server and device should use. Default is 1.0. In Windows 10, the DM session protocol version of the client is 2.0. If the server is updated to support 2.0, then you should set this value to 2.0. In the next session, check to see if there is a client behavior change between 1.0 and 2.0.</Description>
            <DFFormat>
              <chr />
            </DFFormat>
            <Occurrence>
              <ZeroOrOne />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFType>
              <MIME />
            </DFType>
            <MSFT:AllowedValues ValueType="RegEx">
              <MSFT:Value>^(\d\.)?(\d)$</MSFT:Value>
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>MaxSyncApplicationVersion</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Used by the client to indicate the latest DM session version that it supports.</Description>
            <DFFormat>
              <chr />
            </DFFormat>
            <Occurrence>
              <ZeroOrOne />
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
          <NodeName>Unenroll</NodeName>
          <DFProperties>
            <AccessType>
              <Exec />
              <Get />
            </AccessType>
            <Description><![CDATA[The node accepts unenrollment requests by way of the OMA DM Exec command and calls the enrollment client to unenroll the device from the management server whose provider ID is specified in the <Data> tag under the <Item> element.]]></Description>
            <DFFormat>
              <null />
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
          <NodeName>AADResourceID</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Get />
              <Replace />
            </AccessType>
            <Description>This is the ResourceID used when requesting the user token from the OMA DM session for Azure Active Directory (Azure AD) enrollments (Azure AD Join or Add Accounts). The token is audience-specific, which allows for different service principals (enrollment vs. device management). It can be an application ID or the endpoint that you are trying to access.</Description>
            <DFFormat>
              <chr />
            </DFFormat>
            <Occurrence>
              <ZeroOrOne />
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
          <NodeName>AADDeviceID</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Device ID used for AAD device registration</Description>
            <DFFormat>
              <chr />
            </DFFormat>
            <Occurrence>
              <ZeroOrOne />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFType>
              <MIME />
            </DFType>
            <MSFT:Applicability>
              <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
              <MSFT:CspVersion>1.2</MSFT:CspVersion>
            </MSFT:Applicability>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>EnrollmentType</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Type of MDM enrollment  (Device or Full).</Description>
            <DFFormat>
              <chr />
            </DFFormat>
            <Occurrence>
              <ZeroOrOne />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFType>
              <MIME />
            </DFType>
            <MSFT:Applicability>
              <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
              <MSFT:CspVersion>1.2</MSFT:CspVersion>
            </MSFT:Applicability>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>EnableOmaDmKeepAliveMessage</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>false</DefaultValue>
            <Description>A boolean value that specifies whether the DM client should send out a request pending alert in case the device response to a DM request is too slow. When the server sends a configuration request, sometimes it takes the client longer than the HTTP timeout to get all information together and then the session ends unexpectedly due to timeout. By default, the MDM client does not send an alert that a DM request is pending. To work around the timeout, you can use this setting to keep the session alive by sending a heartbeat message back to the server. This is achieved by sending a SyncML message with a specific device alert element in the body until the client is able to respond back to the server with the requested information.</Description>
            <DFFormat>
              <bool />
            </DFFormat>
            <Occurrence>
              <ZeroOrOne />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFType>
              <MIME />
            </DFType>
            <MSFT:Applicability>
              <MSFT:OsBuildVersion>10.0.10586</MSFT:OsBuildVersion>
              <MSFT:CspVersion>1.1</MSFT:CspVersion>
            </MSFT:Applicability>
            <MSFT:AllowedValues ValueType="ENUM">
              <MSFT:Enum>
                <MSFT:Value>false</MSFT:Value>
                <MSFT:ValueDescription>Enable message</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>Disable message</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>HWDevID</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Returns the hardware device ID.</Description>
            <DFFormat>
              <chr />
            </DFFormat>
            <Occurrence>
              <ZeroOrOne />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFType>
              <MIME />
            </DFType>
            <MSFT:Applicability>
              <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
              <MSFT:CspVersion>1.2</MSFT:CspVersion>
            </MSFT:Applicability>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>ManagementServerAddressList</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <Description><![CDATA[The list of management server URLs in the format <URL1><URL2><URL3>, and so on. If there is only one, the angle brackets (<>) are not required. The < and > should be escaped. If ManagementServerAddressList node is set, the device will only use the server URL configured in this node and ignore the ManagementServiceAddress value. When the server is not responding after a specified number of retries, the device tries to use the next server URL in the list until it gets a successful connection. After the server list is updated, the client uses the updated list at the next session starting with the first on in the list.]]></Description>
            <DFFormat>
              <chr />
            </DFFormat>
            <Occurrence>
              <ZeroOrOne />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFType>
              <MIME />
            </DFType>
            <MSFT:Applicability>
              <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
              <MSFT:CspVersion>1.2</MSFT:CspVersion>
            </MSFT:Applicability>
            <MSFT:AllowedValues ValueType="None">
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>CommercialID</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description> Configures the identifier used to uniquely associate this diagnostic data of this device as belonging to a given organization. If your organization is participating in a program that requires this device to be identified as belonging to your organization then use this setting to provide that identification. The value for this setting will be provided by Microsoft as part of the onboarding process for the program. If you disable or do not configure this policy setting, then Microsoft will not be able to use this identifier to associate this machine and its diagnostic data with your organization.</Description>
            <DFFormat>
              <chr />
            </DFFormat>
            <Occurrence>
              <ZeroOrOne />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFType>
              <MIME />
            </DFType>
            <MSFT:Applicability>
              <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
              <MSFT:CspVersion>1.2</MSFT:CspVersion>
            </MSFT:Applicability>
            <MSFT:AllowedValues ValueType="None">
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>ManagementServerToUpgradeTo</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Specify the Discovery server URL of the MDM server to upgrade to for a MAM enrolled device</Description>
            <DFFormat>
              <chr />
            </DFFormat>
            <Occurrence>
              <ZeroOrOne />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFType>
              <MIME />
            </DFType>
            <MSFT:Applicability>
              <MSFT:OsBuildVersion>10.0.15063</MSFT:OsBuildVersion>
              <MSFT:CspVersion>1.3</MSFT:CspVersion>
            </MSFT:Applicability>
            <MSFT:AllowedValues ValueType="None">
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>NumberOfDaysAfterLostContactToUnenroll</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Number of days after last sucessful sync to unenroll</Description>
            <DFFormat>
              <int />
            </DFFormat>
            <Occurrence>
              <ZeroOrOne />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFType>
              <MIME />
            </DFType>
            <MSFT:Applicability>
              <MSFT:OsBuildVersion>10.0.16299</MSFT:OsBuildVersion>
              <MSFT:CspVersion>1.4</MSFT:CspVersion>
            </MSFT:Applicability>
            <MSFT:AllowedValues ValueType="None">
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>AADSendDeviceToken</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>For Azure AD backed enrollments, this will cause the client to send a Device Token if the User Token cannot be obtained.</Description>
            <DFFormat>
              <bool />
            </DFFormat>
            <Occurrence>
              <ZeroOrOne />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFType>
              <MIME />
            </DFType>
            <MSFT:Applicability>
              <MSFT:OsBuildVersion>10.0.17134</MSFT:OsBuildVersion>
              <MSFT:CspVersion>1.5</MSFT:CspVersion>
            </MSFT:Applicability>
            <MSFT:AllowedValues ValueType="ENUM">
              <MSFT:Enum>
                <MSFT:Value>false</MSFT:Value>
                <MSFT:ValueDescription>Do not send Device Token if User Token cannot be obtained.</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>Send Device Token if User Token cannot be obtained.</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>ForceAadToken</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Force device to send device AAD token during checkin as a separate header.</Description>
            <DFFormat>
              <bool />
            </DFFormat>
            <Occurrence>
              <ZeroOrOne />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFType>
              <MIME />
            </DFType>
            <MSFT:Applicability>
              <MSFT:OsBuildVersion>10.0.22621, 10.0.22000.739, 10.0.19044.1766, 10.0.19043.1766, 10.0.19042.1766</MSFT:OsBuildVersion>
              <MSFT:CspVersion>1.6</MSFT:CspVersion>
            </MSFT:Applicability>
            <MSFT:AllowedValues ValueType="ENUM">
              <MSFT:Enum>
                <MSFT:Value>0</MSFT:Value>
                <MSFT:ValueDescription>ForceAadTokenNotDefined: the value is not defined(default)</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>1</MSFT:Value>
                <MSFT:ValueDescription>AlwaysSendAadDeviceTokenCheckIn: always send AAD device token during checkin as a separate header section(not as Bearer token).</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>2</MSFT:Value>
                <MSFT:ValueDescription>Reserved for future. AlwaysSendAadUserTokenCheckin: always send AAD user token during checkin as a separate header section(not as Bearer token).</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>4</MSFT:Value>
                <MSFT:ValueDescription>SendAadDeviceTokenForAuth: to replace AADSendDeviceToken, send AAD Device token for auth as Bearer token.</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>8</MSFT:Value>
                <MSFT:ValueDescription>Reserved for future. ForceAadTokenMaxAllowed: max value allowed.</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>Push</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
            </AccessType>
            <Description>Not configurable during WAP Provisioning XML. If removed, DM sessions triggered by Push will no longer be supported.</Description>
            <DFFormat>
              <node />
            </DFFormat>
            <Occurrence>
              <ZeroOrOne />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFType>
              <DDFName />
            </DFType>
          </DFProperties>
          <Node>
            <NodeName>PFN</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description> A string provided by the Windows 10 ecosystem for an MDM solution. Used to register a device for Push Notifications. The server must use the same PFN as the devices it is managing.</Description>
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
            <NodeName>ChannelURI</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>A string that contains the channel that the WNS client has negotiated for the OMA DM client on the device based on the PFN that was provided. If no valid PFN is currently set, ChannelURI will return null.</Description>
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
            </DFProperties>
          </Node>
          <Node>
            <NodeName>Status</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>An integer that maps to a known error state or condition on the system. Valid values are: 0 - Success, 1 - Failure: invalid PFN, 2 - Failure: invalid or expired device authentication with MSA, 3 - Failure: WNS client registration failed due to an invalid or revoked PFN, 4 - Failure: no Channel URI assigned, 5 - Failure: Channel URI has expired, 6 - Failure: Channel URI failed to be revoked, 7 -  Failure: push notification received, but unable to establish an OMA-DM session due to power or connectivity limitations, 8 - Unknown error</Description>
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
        </Node>
        <Node>
          <NodeName>Poll</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
            </AccessType>
            <Description> Polling schedules must utilize the DMClient CSP. The Registry paths previously associated with polling using the Registry CSP are now deprecated. There are three schedules managed under the Poll node which enable a rich polling schedule experience to provide greater flexibility in managing the way in which devices poll the management server. There are a variety of ways in which polling schedules may be set. If an invalid polling configuration is set, the device will correct or remove the schedules in order to restore the polling schedules back to a valid configuration. If there is no infinite schedule set, then a 24-hour schedule is created and scheduled to launch in the maintenance window.</Description>
            <DFFormat>
              <node />
            </DFFormat>
            <Occurrence>
              <ZeroOrOne />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFType>
              <DDFName />
            </DFType>
          </DFProperties>
          <Node>
            <NodeName>IntervalForFirstSetOfRetries</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description><![CDATA[The waiting time (in minutes) for the initial set of retries as specified by the number of retries in /<ProviderID>/Poll/NumberOfFirstRetries. If IntervalForFirstSetOfRetries is not set, then the default value is used. The default value is 15. If the value is set to 0, this schedule is disabled.]]></Description>
              <DFFormat>
                <int />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
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
            <NodeName>NumberOfFirstRetries</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>The number of times the DM client should retry to connect to the server when the client is initially configured or enrolled to communicate with the server. If the value is set to 0 and the IntervalForFirstSetOfRetries value is not 0, then the schedule will be set to repeat an infinite number of times and second set and this set of schedule will not set in this case. The default value is 10. The first set of retries is intended to give the management server some buffered time to be ready to send policies and settings configuration to the device. The total time for first set of retries should not be more than a few hours. The server should not set NumberOfFirstRetries to be 0. RemainingScheduledRetries is used for the long run device polling schedule.</Description>
              <DFFormat>
                <int />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
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
            <NodeName>IntervalForSecondSetOfRetries</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description><![CDATA[The waiting time (in minutes) for the second set of retries as specified by the number of retries in /<ProviderID>/Poll/NumberOfSecondRetries. Default value is 0. If this value is set to zero, then this schedule is disabled.]]></Description>
              <DFFormat>
                <int />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
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
            <NodeName>NumberOfSecondRetries</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>The number of times the DM client should retry a second round of connecting to the server when the client is initially configured/enrolled to communicate with the server. Default value is 0. If the value is set to 0 and IntervalForSecondSetOfRetries is not set to 0 AND the first set of retries is not set as infinite retries, then the schedule repeats an infinite number of times. However, if the first set of retries is set at infinite, then this schedule is disabled. The second set of retries is also optional and temporarily retries that the total duration should be last for more than a day. And the IntervalForSecondSetOfRetries should be longer than IntervalForFirstSetOfRetries. RemainingScheduledRetries is used for the long run device polling schedule.</Description>
              <DFFormat>
                <int />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
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
            <NodeName>IntervalForRemainingScheduledRetries</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description><![CDATA[The waiting time (in minutes) for the initial set of retries as specified by the number of retries in /<ProviderID>/Poll/NumberOfRemainingScheduledRetries. Default value is 0. If IntervalForRemainingScheduledRetries is set to 0, then this schedule is disabled.]]></Description>
              <DFFormat>
                <int />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
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
            <NodeName>NumberOfRemainingScheduledRetries</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>The number of times the DM client should retry connecting to the server when the client is initially configured/enrolled to communicate with the server. Default value is 0. If the value is set to 0 and IntervalForRemainingScheduledRetries AND the first and second set of retries are not set as infinite retries, then the schedule will be set to repeat for an infinite number of times. However, if either or both of the first and second set of retries are set as infinite, then this schedule will be disabled. The RemainingScheduledRetries is used for the long run device polling schedule. IntervalForRemainingScheduledRetries should not be set smaller than 1440 minutes (24 hours) in Windows Phone 8.1 device. Windows Phone 8.1 supports MDM server push.</Description>
              <DFFormat>
                <int />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
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
            <NodeName>PollOnLogin</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>false</DefaultValue>
              <Description>Boolean value that allows the IT admin to require the device to start a management session on any user login, regardless of if the user has preciously logged in. Login is not the same as device unlock. Default value is false, where polling is disabled on first login. Supported values are true or false.</Description>
              <DFFormat>
                <bool />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFType>
                <MIME />
              </DFType>
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>false</MSFT:Value>
                  <MSFT:ValueDescription>Polling is disabled on first login</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>true</MSFT:Value>
                  <MSFT:ValueDescription>Polling is enabled on first login.</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>AllUsersPollOnFirstLogin</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>false</DefaultValue>
              <Description>Boolean value that allows the IT admin to require the device to start a management session on first user login for all NT users. A session is only kicked off the first time a user logs in to the system; subsequent logins will not trigger an MDM session. Login is not the same as device unlock. Default value is false, where polling is disabled on first login. Supported values are true or false.</Description>
              <DFFormat>
                <bool />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFType>
                <MIME />
              </DFType>
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>false</MSFT:Value>
                  <MSFT:ValueDescription>Polling is disabled on first login</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>true</MSFT:Value>
                  <MSFT:ValueDescription>Polling is enabled on first login.</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
        </Node>
        <Node>
          <NodeName>CustomEnrollmentCompletePage</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
            </AccessType>
            <Description>These nodes provision custom text for the enrollment page.</Description>
            <DFFormat>
              <node />
            </DFFormat>
            <Occurrence>
              <ZeroOrOne />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFType>
              <DDFName />
            </DFType>
            <MSFT:Applicability>
              <MSFT:OsBuildVersion>10.0.15063</MSFT:OsBuildVersion>
              <MSFT:CspVersion>1.3</MSFT:CspVersion>
            </MSFT:Applicability>
          </DFProperties>
          <Node>
            <NodeName>Title</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Specifies the title of the all done page that appears at the end of the MDM enrollment flow.</Description>
              <DFFormat>
                <chr />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
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
            <NodeName>BodyText</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Specifies the body text of the all done page that appears at the end of the MDM enrollment flow.</Description>
              <DFFormat>
                <chr />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
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
            <NodeName>HyperlinkHref</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Specifies the URL that is shown at the end of the MDM enrollment flow.</Description>
              <DFFormat>
                <chr />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
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
            <NodeName>HyperlinkText</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Specifies the display text for the URL that is shown at the end of the MDM enrollment flow.</Description>
              <DFFormat>
                <chr />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
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
        </Node>
        <Node>
          <NodeName>FirstSyncStatus</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
            </AccessType>
            <DFFormat>
              <node />
            </DFFormat>
            <Occurrence>
              <ZeroOrOne />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFType>
              <DDFName />
            </DFType>
            <MSFT:Applicability>
              <MSFT:OsBuildVersion>10.0.16299</MSFT:OsBuildVersion>
              <MSFT:CspVersion>1.4</MSFT:CspVersion>
            </MSFT:Applicability>
          </DFProperties>
          <Node>
            <NodeName>ExpectedPolicies</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>This node contains a list of LocURIs that refer to Policies the ISV expects to provision, delimited by the character L"\xF000" (the CSP_LIST_DELIMITER).</Description>
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
                <MSFT:List Delimiter="\xF000" />
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>ExpectedNetworkProfiles</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>This node contains a list of LocURIs that refer to Wi-Fi profiles and VPN profiles the ISV expects to provision, delimited by the character L"\xF000".</Description>
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
                <MSFT:List Delimiter="\xF000" />
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>ExpectedMSIAppPackages</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>This node contains a list of LocURIs that refer to App Packages the ISV expects to provision via EnterpriseDesktopAppManagement CSP, delimited by the character L"\xF000".  The LocURI will be followed by a semicolon and a number, representing the amount of apps included in the App Package.  We will not verify that number.  E.G. ./User/Vendor/MSFT/EnterpriseDesktopAppManagement/MSI/ProductID1/Status;4"\xF000" ./User/Vendor/MSFT/EnterpriseDesktopAppManagement/MSI/ProductID2/Status;2  Which  will represent that App Package ProductID1 contains 4 apps, whereas ProductID2 contains 2 apps.</Description>
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
                <MSFT:List Delimiter="\xF000" />
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>ExpectedModernAppPackages</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>This node contains a list of LocURIs that refer to App Packages the ISV expects to provision via EnterpriseModernAppManagement CSP, delimited by the character L"\xF000".  The LocURI will be followed by a semicolon and a number, representing the amount of apps included in the App Package.  We will not verify that number.  E.G. ./Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/PackageFamilyName/PackageFullName/Name;4"\xF000" ./Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/PackageFamilyName/PackageFullName2/Name;2  Which  will represent that App Package PackageFullName contains 4 apps, whereas PackageFullName2 contains 2 apps.</Description>
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
                <MSFT:List Delimiter="\xF000" />
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>ExpectedPFXCerts</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>This node contains a list of LocURIs that refer to certs the ISV expects to provision via ClientCertificateInstall CSP, delimited by the character L"\xF000" (the CSP_LIST_DELIMITER).</Description>
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
                <MSFT:List Delimiter="\xF000" />
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>ExpectedSCEPCerts</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>This node contains a list of LocURIs that refer to SCEP certs the ISV expects to provision via ClientCertificateInstall CSP, delimited by the character L"\xF000" (the CSP_LIST_DELIMITER).</Description>
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
                <MSFT:List Delimiter="\xF000" />
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>TimeOutUntilSyncFailure</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>60</DefaultValue>
              <Description>This node determines how long we will poll until we surface an error message to the user.  The unit of measurement is minutes.  Default value will be 60, while maximum value will be 1,440 (one day).</Description>
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
              <MSFT:AllowedValues ValueType="Range">
                <MSFT:Value>[1-1440]</MSFT:Value>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>ServerHasFinishedProvisioning</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
              </AccessType>
              <Description>This node is set by the server to inform the UX that the server has finished provisioning the device.  This was added so that the server can “change its mind" about what it needs to provision on the device.  When this node is set, many other DM Client nodes will no longer be able to be changed.  If this node is not True, the UX will consider the provisioning a failure.  Once set to true, it would reject attempts to change it back to false with CFGMGR_E_COMMANDNOTALLOWED.  This node applies to the per user expected policies and resources lists.</Description>
              <DFFormat>
                <bool />
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
                  <MSFT:Value>false</MSFT:Value>
                  <MSFT:ValueDescription>Server has not finished provisioning</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>true</MSFT:Value>
                  <MSFT:ValueDescription>Server has finished provisioning</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>IsSyncDone</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
              </AccessType>
              <Description>This node, when doing a get, tells the server if the “First Syncs" are done and the device is fully provisioned.  When doing a Set, this triggers the UX to override whatever state it is in and tell the user that the device is provisioned.  It cannot be set from True to False (it will not change its mind on whether or not the sync is done), and it cannot be set from True to True (to prevent notifications from firing multiple times).  This node only applies to the user MDM status page (on a per user basis).</Description>
              <DFFormat>
                <bool />
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
                  <MSFT:Value>false</MSFT:Value>
                  <MSFT:ValueDescription>The device is not finished provisioning</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>true</MSFT:Value>
                  <MSFT:ValueDescription>The device has finished provisioning.</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>WasDeviceSuccessfullyProvisioned</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
              </AccessType>
              <Description>Integer node determining if a Device was Successfully provisioned.  0 is failure, 1 is success, 2 is in progress.  Once the value is changed to 0 or 1, the value cannot be changed again.  The client will change the value of success or failure and update the node.  The server can, however, force a failure or success message to appear on the device by setting this value and then setting the IsSyncDone node to true.  This node only applies to the user MDM status page (on a per user basis).</Description>
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
                  <MSFT:ValueDescription>The device has failed to provision the device</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>1</MSFT:Value>
                  <MSFT:ValueDescription>The device has successfully provisioned the device.</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>2</MSFT:Value>
                  <MSFT:ValueDescription>Provisioning is in progress.</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>BlockInStatusPage</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>0</DefaultValue>
              <Description>Device Only.  This node determines whether or not the MDM progress page is blocking in the AADJ or DJ++ case, as well as which remediation options are available.</Description>
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
              <CaseSense>
                <CIS />
              </CaseSense>
              <MSFT:Applicability>
                <MSFT:OsBuildVersion>10.0.17134</MSFT:OsBuildVersion>
                <MSFT:CspVersion>1.5</MSFT:CspVersion>
              </MSFT:Applicability>
              <MSFT:AllowedValues ValueType="Flag">
                <MSFT:Enum>
                  <MSFT:Value>0x0</MSFT:Value>
                  <MSFT:ValueDescription>Allow the user to exit the page before provisioning completes.</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>0x1</MSFT:Value>
                  <MSFT:ValueDescription>Block the user on the page and show the Reset PC button on failure.</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>0x2</MSFT:Value>
                  <MSFT:ValueDescription>Block the user on the page and show the Try Again button on failure.</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>0x4</MSFT:Value>
                  <MSFT:ValueDescription>Block the user on the page and show the Continue Anyway button on failure.</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>AllowCollectLogsButton</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>false</DefaultValue>
              <Description>This node decides whether or not the MDM progress page displays the Collect Logs button.  This node only applies to the device MDM status page.</Description>
              <DFFormat>
                <bool />
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
              <MSFT:Applicability>
                <MSFT:OsBuildVersion>10.0.17134</MSFT:OsBuildVersion>
                <MSFT:CspVersion>1.5</MSFT:CspVersion>
              </MSFT:Applicability>
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>false</MSFT:Value>
                  <MSFT:ValueDescription>Do not show the Collect Logs button on the progress page.</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>true</MSFT:Value>
                  <MSFT:ValueDescription>Show the Collect Logs button on the progress page.</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>CustomErrorText</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>This node allows the MDM to set custom error text, detailing what the user needs to do in case of error.  This node only applies to the user MDM status page (on a per user basis).</Description>
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
              <MSFT:Applicability>
                <MSFT:OsBuildVersion>10.0.17134</MSFT:OsBuildVersion>
                <MSFT:CspVersion>1.5</MSFT:CspVersion>
              </MSFT:Applicability>
              <MSFT:AllowedValues ValueType="None">
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>SkipDeviceStatusPage</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>true</DefaultValue>
              <Description>Device only.  This node decides whether or not the MDM device progress page skips after AADJ or Hybrid AADJ in OOBE.</Description>
              <DFFormat>
                <bool />
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
              <CaseSense>
                <CIS />
              </CaseSense>
              <MSFT:Applicability>
                <MSFT:OsBuildVersion>10.0.17134</MSFT:OsBuildVersion>
                <MSFT:CspVersion>1.5</MSFT:CspVersion>
              </MSFT:Applicability>
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>false</MSFT:Value>
                  <MSFT:ValueDescription>Do not skip the device progress page after Azure AD joined or Hybrid Azure AD joined in OOBE</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>true</MSFT:Value>
                  <MSFT:ValueDescription>Skip the device progress page after Azure AD joined or Hybrid Azure AD joined in OOBE</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>SkipUserStatusPage</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>true</DefaultValue>
              <Description>Device only.  This node decides whether or not the MDM user progress page skips after AADJ or DJ++ after user login.</Description>
              <DFFormat>
                <bool />
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
              <CaseSense>
                <CIS />
              </CaseSense>
              <MSFT:Applicability>
                <MSFT:OsBuildVersion>10.0.17134</MSFT:OsBuildVersion>
                <MSFT:CspVersion>1.5</MSFT:CspVersion>
              </MSFT:Applicability>
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>false</MSFT:Value>
                  <MSFT:ValueDescription>Do not skip the MGM user progress page after Azure AD joined or Hybrid Azure AD joined in OOBE.</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>true</MSFT:Value>
                  <MSFT:ValueDescription>Skip the MGM user progress page after Azure AD joined or Hybrid Azure AD joined in OOBE</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
        </Node>
        <Node>
          <NodeName>EnhancedAppLayerSecurity</NodeName>
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
              <Dynamic />
            </Scope>
            <DFType>
              <DDFName />
            </DFType>
            <MSFT:Applicability>
              <MSFT:OsBuildVersion>10.0.16299</MSFT:OsBuildVersion>
              <MSFT:CspVersion>1.4</MSFT:CspVersion>
            </MSFT:Applicability>
          </DFProperties>
          <Node>
            <NodeName>SecurityMode</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>0</DefaultValue>
              <Description>This node specifies how the client will perform the app layer signing and encryption. 0: no op; 1: sign only; 2: encrypt only; 3: sign and encrypt. The default value is 0.</Description>
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
                  <MSFT:ValueDescription>no op</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>1</MSFT:Value>
                  <MSFT:ValueDescription>sign only</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>2</MSFT:Value>
                  <MSFT:ValueDescription>encrypt only</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>3</MSFT:Value>
                  <MSFT:ValueDescription>sign and encrypt</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>UseCertIfRevocationCheckOffline</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>false</DefaultValue>
              <Description>This node, when it is set, tells the client to use the certificate even when the client cannot check the certificate's revocation status because the device is offline. The default value is set.</Description>
              <DFFormat>
                <bool />
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
                  <MSFT:Value>false</MSFT:Value>
                  <MSFT:ValueDescription>False</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>true</MSFT:Value>
                  <MSFT:ValueDescription>True</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>Cert0</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>The node contains the primary certificate - the public key to use.</Description>
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
            <NodeName>Cert1</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>The node contains the secondary certificate - the public key to use.</Description>
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
        </Node>
        <Node>
          <NodeName>ConfigLock</NodeName>
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
              <Dynamic />
            </Scope>
            <DFType>
              <DDFName />
            </DFType>
            <MSFT:Applicability>
              <MSFT:OsBuildVersion>10.0.22000</MSFT:OsBuildVersion>
              <MSFT:CspVersion>1.6</MSFT:CspVersion>
            </MSFT:Applicability>
          </DFProperties>
          <Node>
            <NodeName>Lock</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>0</DefaultValue>
              <Description>This node specifies how the client will perform the lock mode for SecureCore PC. 0: unlock; 1: lock. The default value is 0.</Description>
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
                  <MSFT:ValueDescription>Unlock</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>1</MSFT:Value>
                  <MSFT:ValueDescription>Lock</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>UnlockDuration</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>480</DefaultValue>
              <Description>This node, when it is set, tells the client to set how many minutes the device should be temporarily unlocked from SecureCore settings protection. The default value is 480.</Description>
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
              <MSFT:AllowedValues ValueType="None">
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>SecureCore</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>The node returns the boolean value whether the device is a SecureCore PC. </Description>
              <DFFormat>
                <bool />
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
        </Node>
        <Node>
          <NodeName>LinkedEnrollment</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>The interior node for linked enrollment</Description>
            <DFFormat>
              <node />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFType>
              <DDFName />
            </DFType>
            <MSFT:Applicability>
              <MSFT:OsBuildVersion>10.0.22621, 10.0.22000.918, 10.0.19044.2193, 10.0.19043.2193, 10.0.19042.2193</MSFT:OsBuildVersion>
              <MSFT:CspVersion>1.6</MSFT:CspVersion>
            </MSFT:Applicability>
          </DFProperties>
          <Node>
            <NodeName>LastError</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Supports Get Only. Returns the HRESULT for the last error when enroll/unenroll fails.</Description>
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
            <NodeName>EnrollStatus</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Returns the current enrollment or un-enrollment status of the linked enrollment. Supports Get only.</Description>
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
                  <MSFT:ValueDescription>Undefined</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>1</MSFT:Value>
                  <MSFT:ValueDescription>Enrollment Not started.</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>2</MSFT:Value>
                  <MSFT:ValueDescription>Enrollment In Progress.</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>3</MSFT:Value>
                  <MSFT:ValueDescription>Enrollment Failed.</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>4</MSFT:Value>
                  <MSFT:ValueDescription>Enrollment Succeeded.</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>5</MSFT:Value>
                  <MSFT:ValueDescription>Unenrollment Not started.</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>6</MSFT:Value>
                  <MSFT:ValueDescription>UnEnrollment In Progress.</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>7</MSFT:Value>
                  <MSFT:ValueDescription>UnEnrollment Failed.</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>8</MSFT:Value>
                  <MSFT:ValueDescription>UnEnrollment Succeeded.</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>Enroll</NodeName>
            <DFProperties>
              <AccessType>
                <Exec />
              </AccessType>
              <Description>This is an execution node and will trigger a silent Declared Configuration unenroll, there is no user interaction needed. On un-enrollment, all the settings/resources set by Declared Configuration will be rolled back (rollback details will be covered later).</Description>
              <DFFormat>
                <null />
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
            <NodeName>Unenroll</NodeName>
            <DFProperties>
              <AccessType>
                <Exec />
              </AccessType>
              <Description>Trigger Unenroll for the Linked Enrollment</Description>
              <DFFormat>
                <null />
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
            <NodeName>DiscoveryEndpoint</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Endpoint Discovery is the process where a specific URL (the "discovery endpoint") is accessed, which returns a directory of endpoints for using the system including enrollment. On Get, if the endpoint is not set, client will return an empty string with S_OK. </Description>
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
                <MSFT:OsBuildVersion>99.9.99999</MSFT:OsBuildVersion>
                <MSFT:CspVersion>9.9</MSFT:CspVersion>
              </MSFT:Applicability>
              <MSFT:AllowedValues ValueType="None">
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
        </Node>
        <Node>
          <NodeName>MultipleSession</NodeName>
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
              <Dynamic />
            </Scope>
            <DFType>
              <DDFName />
            </DFType>
            <MSFT:Applicability>
              <MSFT:OsBuildVersion>10.0.22000</MSFT:OsBuildVersion>
              <MSFT:CspVersion>1.6</MSFT:CspVersion>
              <MSFT:EditionAllowList>0xAF</MSFT:EditionAllowList>
            </MSFT:Applicability>
          </DFProperties>
          <Node>
            <NodeName>NumAllowedConcurrentUserSessionForBackgroundSync</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Optional. Maximum number of concurrent user sync sessions in background. Default value is 25. 0 none, 1 sequential, anything else: parallel.</Description>
              <DFFormat>
                <int />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
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
            <NodeName>NumAllowedConcurrentUserSessionAtUserLogonSync</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Optional. Maximum number of concurrent user sync sessions at User Login. Default value is 25. 0 none, 1 sequential, anything else: parallel.</Description>
              <DFFormat>
                <int />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
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
            <NodeName>IntervalForScheduledRetriesForUserSession</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description><![CDATA[The waiting time (in minutes) for the initial set of retries as specified by the number of retries in NumberOfScheduledRetriesForUserSession. If IntervalForScheduledRetriesForUserSession is not set, then the default value is used. Default value is 1440. If the value is 0, this schedule is disabled.]]></Description>
              <DFFormat>
                <int />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
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
            <NodeName>NumberOfScheduledRetriesForUserSession</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>The number of times the DM client should retry connecting to the server when the client is initially configured/enrolled to communicate with the server. Default value is 0. If the value is 0 and IntervalForScheduledRetriesForUserSession is not 0, then the schedule will be set to repeat for an infinite number of times.</Description>
              <DFFormat>
                <int />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
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
        </Node>
        <Node>
          <NodeName>Recovery</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Parent node for Recovery nodes</Description>
            <DFFormat>
              <node />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFType>
              <DDFName />
            </DFType>
            <MSFT:Applicability>
              <MSFT:OsBuildVersion>10.0.22621, 10.0.22000.1165</MSFT:OsBuildVersion>
              <MSFT:CspVersion>1.6</MSFT:CspVersion>
            </MSFT:Applicability>
          </DFProperties>
          <Node>
            <NodeName>AllowRecovery</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>0</DefaultValue>
              <Description>This node determines whether or not the client will automatically initiate a MDM Recovery operation when it detects issues with the MDM certificate</Description>
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
                  <MSFT:Value>1</MSFT:Value>
                  <MSFT:ValueDescription>MDM Recovery is allowed.</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>0</MSFT:Value>
                  <MSFT:ValueDescription>MDM Recovery is not allowed.</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
              <MSFT:ConflictResolution>LastWrite</MSFT:ConflictResolution>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>InitiateRecovery</NodeName>
            <DFProperties>
              <AccessType>
                <Exec />
              </AccessType>
              <DefaultValue>0</DefaultValue>
              <Description>This node initiates a recovery action. The server can specify prerequisites before the action is taken.</Description>
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
                  <MSFT:ValueDescription>Initiate MDM Recovery</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>1</MSFT:Value>
                  <MSFT:ValueDescription>Initiate Recovery if Keys are not already protected by the TPM, there is a TPM to put the keys into, AAD keys are protected by TPM, and the TPM is ready for attestation.</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>RecoveryStatus</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <DefaultValue>0</DefaultValue>
              <Description>This node tracks the status of a Recovery request from the InitiateRecovery node.  0 - No Recovery request has been processed.  1 - Recovery is in Process.  2 - Recovery has finished successfully. 3 - Recovery has failed to start because TPM is not available.  4 - Recovery has failed to start because AAD keys are not protected by the TPM. 5 - Recovery has failed to start because the MDM keys are already protected by the TPM. 6 - Recovery has failed to start because the TPM is not ready for attestation. 7 - Recovery has failed because the client cannot authenticate to the server.  8 - Recovery has failed because the server has rejected the client's request.</Description>
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
        </Node>
        <Node>
          <NodeName>ConfigRefresh</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
            </AccessType>
            <Description>Parent node for ConfigRefresh nodes</Description>
            <DFFormat>
              <node />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFType>
              <DDFName />
            </DFType>
            <MSFT:Applicability>
              <MSFT:OsBuildVersion>99.9.99999, 10.0.22621.3235, 10.0.22000.2836</MSFT:OsBuildVersion>
              <MSFT:CspVersion>1.6</MSFT:CspVersion>
            </MSFT:Applicability>
          </DFProperties>
          <Node>
            <NodeName>Enabled</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>false</DefaultValue>
              <Description>This node determines whether or not a periodic settings refresh for MDM policies will occur.</Description>
              <DFFormat>
                <bool />
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
                  <MSFT:Value>true</MSFT:Value>
                  <MSFT:ValueDescription>Enabled</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>false</MSFT:Value>
                  <MSFT:ValueDescription>Disabled</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
              <MSFT:ConflictResolution>LastWrite</MSFT:ConflictResolution>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>Cadence</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>90</DefaultValue>
              <Description>This node determines the number of minutes between refreshes.</Description>
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
              <MSFT:AllowedValues ValueType="Range">
                <MSFT:Value>[30-1440]</MSFT:Value>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>PausePeriod</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>0</DefaultValue>
              <Description>This node determines the number of minutes ConfigRefresh should be paused for.</Description>
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
              <MSFT:AllowedValues ValueType="Range">
                <MSFT:Value>[0-1440]</MSFT:Value>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
        </Node>
      </Node>
    </Node>
    <Node>
      <NodeName>Unenroll</NodeName>
      <DFProperties>
        <AccessType>
          <Exec />
          <Get />
        </AccessType>
        <Description>&gt;<![CDATA[The node accepts unenrollment requests by way of the OMA DM Exec command and calls the enrollment client to unenroll the device from the management server whose provider ID is specified in the <Data> tag under the <Item> element. Scope is permanent.]]></Description>
        <DFFormat>
          <null />
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
      <NodeName>UpdateManagementServiceAddress</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
          <Replace />
        </AccessType>
        <Description>For provisioning packages only. Specifies the list of servers (semicolon delimited). The first server in the semicolon-delimited list is the server that will be used to instantiate MDM sessions. The list can be a permutation or a subset of the existing server list. You cannot add new servers to the list using this node.</Description>
        <DFFormat>
          <chr />
        </DFFormat>
        <Occurrence>
          <ZeroOrOne />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFType>
          <MIME />
        </DFType>
        <MSFT:AllowedValues ValueType="None">
          <MSFT:List Delimiter=";" />
        </MSFT:AllowedValues>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>HWDevID</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Returns the hardware device ID.</Description>
        <DFFormat>
          <chr />
        </DFFormat>
        <Occurrence>
          <ZeroOrOne />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFType>
          <MIME />
        </DFType>
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>10.0.16299</MSFT:OsBuildVersion>
          <MSFT:CspVersion>1.3</MSFT:CspVersion>
        </MSFT:Applicability>
      </DFProperties>
    </Node>
  </Node>
</MgmtTree>
```

## Related articles

[DMClient configuration service provider reference](dmclient-csp.md)
