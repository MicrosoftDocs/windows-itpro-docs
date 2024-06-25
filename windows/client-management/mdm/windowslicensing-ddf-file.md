---
title: WindowsLicensing DDF file
description: View the XML file containing the device description framework (DDF) for the WindowsLicensing configuration service provider.
ms.date: 06/19/2024
---

<!-- Auto-Generated CSP Document -->

# WindowsLicensing DDF file

The following XML file contains the device description framework (DDF) for the WindowsLicensing configuration service provider.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN" "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"[<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
  <MSFT:Diagnostics>
  </MSFT:Diagnostics>
  <Node>
    <NodeName>WindowsLicensing</NodeName>
    <Path>./Vendor/MSFT</Path>
    <DFProperties>
      <AccessType>
        <Get />
      </AccessType>
      <Description>This is the root node for the WindowsLicensing configuration service provider.</Description>
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
        <MSFT:EditionAllowList>0x4;0x1B;0x30;0x31;0x48;0x54;0x62;0x63;0x64;0x65;0x77;0x79;0x7A;0x7D;0x7E;0x81;0x82;0x87;0x88*;0x8A;0x8B;0xA1;0xA2;0xA4;0xA5;0xAB;0xAC;0xB4;0xBC;0xBD;0xBF;</MSFT:EditionAllowList>
      </MSFT:Applicability>
    </DFProperties>
    <Node>
      <NodeName>UpgradeEditionWithProductKey</NodeName>
      <DFProperties>
        <AccessType>
          <Exec />
        </AccessType>
        <Description>Enter a product key for an edition upgrade of Windows 10 desktop devices. Requires reboot.</Description>
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
        <MSFT:AllowedValues ValueType="None">
        </MSFT:AllowedValues>
        <MSFT:RebootBehavior>Automatic</MSFT:RebootBehavior>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>ChangeProductKey</NodeName>
      <DFProperties>
        <AccessType>
          <Exec />
        </AccessType>
        <Description>Installs a product key for Windows 10 desktop devices. Does not reboot.</Description>
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
          <MSFT:OsBuildVersion>10.0.15063</MSFT:OsBuildVersion>
          <MSFT:CspVersion>1.2</MSFT:CspVersion>
        </MSFT:Applicability>
        <MSFT:AllowedValues ValueType="None">
        </MSFT:AllowedValues>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>Edition</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Returns a value that maps to the Windows 10 edition running on desktop or mobile devices. Take the value, convert it into its hexadecimal equivalent and search the GetProductInfo function page on MSDN for edition information.</Description>
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
      </DFProperties>
    </Node>
    <Node>
      <NodeName>Status</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Returns the status of an edition upgrade on Windows 10 desktop and mobile devices.	 Status: 0 = Failed, 1 = Pending, 2 = In progress, 3 = Completed, 4 = Unknown</Description>
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
      </DFProperties>
    </Node>
    <Node>
      <NodeName>UpgradeEditionWithLicense</NodeName>
      <DFProperties>
        <AccessType>
          <Exec />
        </AccessType>
        <Description>Provide a license for an edition upgrade of Windows 10 mobile devices. Does not require reboot.</Description>
        <DFFormat>
          <xml />
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
        <MSFT:AllowedValues ValueType="None">
        </MSFT:AllowedValues>
        <MSFT:Deprecated />
      </DFProperties>
    </Node>
    <Node>
      <NodeName>LicenseKeyType</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Returns the parameter type used by Windows 10 devices for an edition upgrade. Windows 10 desktop devices require a product key for an edition upgrade. Windows 10 mobile devices require a license for an edition upgrade.</Description>
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
      </DFProperties>
    </Node>
    <Node>
      <NodeName>CheckApplicability</NodeName>
      <DFProperties>
        <AccessType>
          <Exec />
        </AccessType>
        <Description>Returns TRUE if the entered product key can be used for an edition upgrade of Windows 10 desktop devices.</Description>
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
      </DFProperties>
    </Node>
    <Node>
      <NodeName>Subscriptions</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Node for subscriptions.</Description>
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
          <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
          <MSFT:CspVersion>1.1</MSFT:CspVersion>
        </MSFT:Applicability>
      </DFProperties>
      <Node>
        <NodeName>
        </NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Node for subscription IDs.</Description>
          <DFFormat>
            <node />
          </DFFormat>
          <Occurrence>
            <ZeroOrMore />
          </Occurrence>
          <Scope>
            <Dynamic />
          </Scope>
          <DFTitle>SubscriptionId</DFTitle>
          <DFType>
            <DDFName />
          </DFType>
          <MSFT:DynamicNodeNaming>
            <MSFT:ClientInventory />
          </MSFT:DynamicNodeNaming>
        </DFProperties>
        <Node>
          <NodeName>Status</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Returns the status of the subscription.</Description>
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
          <NodeName>Name</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Returns the name of the subscription.</Description>
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
      </Node>
      <Node>
        <NodeName>SubscriptionType</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
            <Replace />
          </AccessType>
          <Description>Set device to Device Based Subscription or User Based Subscription. For Device Based Subscription this action will automatically acquire the subscription on the device. For User Based Subscription the existing process of user logon will be required.</Description>
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
            <MSFT:OsBuildVersion>99.9.99999</MSFT:OsBuildVersion>
            <MSFT:CspVersion>9.9</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>User Based Subscription</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>Device Based Subscription</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>SubscriptionStatus</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Status of last subscription operation.</Description>
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
            <MSFT:OsBuildVersion>99.9.99999</MSFT:OsBuildVersion>
            <MSFT:CspVersion>9.9</MSFT:CspVersion>
          </MSFT:Applicability>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>SubscriptionLastError</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Error code of last subscription operation. Value would be empty(0) in absence of error.</Description>
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
            <MSFT:OsBuildVersion>99.9.99999</MSFT:OsBuildVersion>
            <MSFT:CspVersion>9.9</MSFT:CspVersion>
          </MSFT:Applicability>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>SubscriptionLastErrorDescription</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Error description of last subscription operation. Value would be empty, if error description cannot be evaluated.</Description>
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
        </DFProperties>
      </Node>
      <Node>
        <NodeName>DisableSubscription</NodeName>
        <DFProperties>
          <AccessType>
            <Replace />
          </AccessType>
          <Description>Disable or Enable subscription activation on a device</Description>
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
            <MSFT:OsBuildVersion>99.9.99999</MSFT:OsBuildVersion>
            <MSFT:CspVersion>9.9</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>Enable Subscription</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>Disable Subscription. It also removes any existing subscription on the device.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>RemoveSubscription</NodeName>
        <DFProperties>
          <AccessType>
            <Exec />
          </AccessType>
          <Description>Remove subscription uninstall subscription license. It also reset subscription type to User Based Subscription.</Description>
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
          <MSFT:Applicability>
            <MSFT:OsBuildVersion>99.9.99999</MSFT:OsBuildVersion>
            <MSFT:CspVersion>9.9</MSFT:CspVersion>
          </MSFT:Applicability>
        </DFProperties>
      </Node>
    </Node>
    <Node>
      <NodeName>SMode</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Interior node for managing S mode.</Description>
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
          <MSFT:OsBuildVersion>10.0.17763</MSFT:OsBuildVersion>
          <MSFT:CspVersion>1.3</MSFT:CspVersion>
        </MSFT:Applicability>
      </DFProperties>
      <Node>
        <NodeName>SwitchingPolicy</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>Policy that determines whether a consumer can switch the device out of S mode</Description>
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
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>No Restriction: The user is allowed to switch the device out of S mode.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>User Blocked: The admin has blocked the user from switching their device out of S mode. Only the admin can switch the device out of S mode through the SMode/SwitchFromSMode node.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>SwitchFromSMode</NodeName>
        <DFProperties>
          <AccessType>
            <Exec />
          </AccessType>
          <Description>Switches a device out of S mode if possible. Does not reboot.</Description>
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
          <CaseSense>
            <CIS />
          </CaseSense>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>Status</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Returns the status of the latest SwitchFromSMode or SwitchingPolicy set request.</Description>
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
        </DFProperties>
      </Node>
    </Node>
    <Node>
      <NodeName>DeviceLicensingService</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Device Based Subscription</Description>
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
          <MSFT:OsBuildVersion>10.0.22621, 10.0.22000.1165</MSFT:OsBuildVersion>
          <MSFT:CspVersion>1.4</MSFT:CspVersion>
        </MSFT:Applicability>
      </DFProperties>
      <Node>
        <NodeName>LicenseType</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
            <Replace />
          </AccessType>
          <Description>License Type: User Based Subscription or Device Based Subscription</Description>
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
              <MSFT:ValueDescription>User Based Subscription</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>Device Based Subscription</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>DeviceLicensingStatus</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Returns the status of Refresh/Remove Device License operation.</Description>
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
        <NodeName>DeviceLicensingLastError</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Returns the last error code of Refresh/Remove Device License operation. Value would be empty(0) in absence of error.</Description>
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
        <NodeName>DeviceLicensingLastErrorDescription</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Returns last error description from Device Licensing. Value would be empty, if error decription can not be evaluated.</Description>
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

[WindowsLicensing configuration service provider reference](windowslicensing-csp.md)
