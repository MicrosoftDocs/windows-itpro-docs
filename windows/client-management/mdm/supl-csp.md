---
title: SUPL CSP
description: Learn how the SUPL configuration service provider (CSP) is used to configure the location client.
ms.reviewer: 
manager: aaroncz
ms.author: vinpa
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 09/12/2019
---

# SUPL CSP

The SUPL configuration service provider is used to configure the location client, as shown in the following:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

The SUPL configuration service provider is used to configure the location client, as shown in the following table:

- **Location Service**: Connection type
  - **SUPL**: All connections other than CDMA
  - **V2 UPL**: CDMA

- **Location Service**: Configuration
  - **SUPL**:
    - Settings that need to get pushed to the GNSS driver to configure the SUPL behavior:
      - Address of the Home SUPL (H-SLP) server.
      - H-SLP server certificate.
      - Positioning method.
      - Version of the protocol to use by default.
    - MCC/MNC value pairs that are used to specify which networks' UUIC the SUPL account matches.
  - **V2 UPL**:
    - Address of the server—a mobile positioning center for non-trusted mode.
    - The positioning method used by the MPC for non-trusted mode.

The SUPL or V2 UPL connection will be reconfigured every time the device is rebooted. A new UICC is inserted, or new settings are provisioned by using OMA Client Provisioning, OMA DM, or test tools. When the device is in roaming mode, it reverts to Mobile Station Standalone mode, in which only the built–in Microsoft location components are used.

The following example shows the SUPL configuration service provider management object in tree format as used by OMA DM and OMA Client Provisioning.

> [!NOTE]
> This configuration service provider requires the ID\_CAP\_CSP\_FOUNDATION capability to be accessed from a network configuration application. 

```console
./Vendor/MSFT/
SUPL
----SUPL1
--------AppID
--------Addr
--------Ext
------------Microsoft
----------------Version
----------------MCCMNPairs
----------------HighAccPositioningMethod
----------------LocMasterSwitchDependencyNII
----------------NIDefaultTimeout
----------------ServerAccessInterval
----------------RootCertificate
--------------------Name
--------------------Data
----------------RootCertificate2
--------------------Name
--------------------Data
----------------RootCertificate3
--------------------Name
--------------------Data
----V2UPL1
--------MPC
--------PDE
--------PositioningMethod_MR
--------LocMasterSwitchDependencyNII
--------ApplicationTypeIndicator_MR
--------NIDefaultTimeout
--------ServerAccessInterval
```

<a href="" id="supl1"></a>**SUPL1**
Required for SUPL. Defines the account for the SUPL Enabled Terminal (SET) node. Only one SUPL account is supported at a given time.

<a href="" id="appid"></a>**AppID**
Required. The AppID for SUPL is automatically set to `"ap0004"`. This value is a read-only value.

<a href="" id="addr"></a>**Addr**
Optional. Specifies the address of the Home SUPL Location Platform (H-SLP) server for non-proxy mode. The value is a server address specified as a fully qualified domain name, and the port specified as an integer, with the format *server*: *port*.

If this value isn't specified, the device infers the H-SLP address from the IMSI as defined in the SUPL standard. To use automatic generation of the H-SLP address based on the IMSI, the MNC length must be set correctly on the UICC. Generally, this value is 2 or 3.

For OMA DM, if the format for this node is incorrect the entry will be ignored and an error will be returned. But the configuration service provider will continue processing the rest of the parameters.

<a href="" id="version"></a>**Version**
Optional. Determines the major version of the SUPL protocol to use. For SUPL 1.0.0, set this value to 1. For SUPL 2.0.0, set this value to 2. The default is 1. Refer to FullVersion to define the minor version and the service indicator.

<a href="" id="fullversion"></a>**FullVersion**
Added in Windows 10, version 2004. Optional. Determines the full version (X.Y.Z where X, Y, and Z are the major version, the minor version, and the service indicator, respectively) of the SUPL protocol to use. The default is 1.0.0. If FullVersion is defined, Version field is ignored.

<a href="" id="mccmncpairs"></a>**MCCMNCPairs**
Required. List all of the MCC and MNC pairs owned by the mobile operator. This list is used to verify that the UICC matches the network and SUPL can be used. When the UICC and network don't match, the device uses the default location service and doesn't use SUPL.

This value is a string with the format `(X1, Y1)(X2, Y2)…(Xn, Yn)`, in which `X` is an MCC and `Y` is an MNC.

For OMA DM, if the format for this node is incorrect then an entry will be ignored and an error will be returned, but the configuration service provider will continue processing the rest of the parameters.

<a href="" id="highaccpositioningmethod"></a>**HighAccPositioningMethod**
Optional. Specifies the positioning method that the SUPL client will use for mobile originated position requests. The value can be one of the following integers:

|Value|Description|
|--- |--- |
|0|None: The device uses the default positioning method. In this default mode, the GNSS obtains assistance (time injection, coarse position injection and ephemeris data) from the Microsoft Positioning Service.|
|1|Mobile Station Assisted: The device contacts the H-SLP server to obtain a position. The H-SLP does the calculation of the position and returns it to the device.|
|2|Mobile Station Based: The device obtains location-aiding data (almanac, ephemeris data, time and coarse initial position of the device) from the H-SLP server, and the device uses this information to help GPS obtain a fix. All position calculations are done in the device.|
|3|Mobile Station Standalone: The device obtains assistance as required from the Microsoft location services.|
|4|OTDOA|
|5|AFLT|

The default is 0. The default method in Windows devices provides high-quality assisted GNSS positioning for mobile originated position requests without loading the mobile operator’s network or location services.

> [!IMPORTANT]
> The Mobile Station Assisted, OTDOA, and AFLT positioning methods must only be configured for test purposes.

For OMA DM, if the format for this node is incorrect then an entry will be ignored and an error will be returned, but the configuration service provider will continue processing the rest of the parameters.

<a href="" id="locmasterswitchdependencynii"></a>**LocMasterSwitchDependencyNII**
Optional. Boolean. Specifies whether the location toggle on the **location** screen in **Settings** is also used to manage SUPL network-initiated (NI) requests for location. If the value is set to 0, the NI behavior is independent from the current location toggle setting. If the value is set to 1, the NI behavior follows the current location toggle setting. The default value is 1.

This value manages the settings for both SUPL and v2 UPL. If a device is configured for both SUPL and V2 UPL and these values differ, the SUPL setting will always be used.

|Location toggle setting|LocMasterSwitchDependencyNII setting|NI request processing allowed|
|--- |--- |--- |
|On|0|Yes|
|On|1|Yes|
|Off|0|Yes|
|Off|1|No (unless privacyOverride is set)|

When the location toggle is set to Off and this value is set to 1, the following application requests will fail:

-   `noNotificationNoVerification`

-   `notificationOnly`

-   `notificationAndVerficationAllowedNA`

-   `notificationAndVerficationDeniedNA`

However, if `privacyOverride` is set in the message, the location will be returned.

When the location toggle is set to Off and this value is set to 0, the location toggle doesn't prevent SUPL network-initiated requests from working.

For OMA DM, if the format for this node is incorrect then an entry will be ignored and an error will be returned, but the configuration service provider will continue processing the rest of the parameters.

<a href="" id="nidefaulttimeout"></a>**NIDefaultTimeout**
Optional. Time in seconds. It defines that the network-initiated location request is displayed to the user, while awaiting a response and before doing the default action. The default is 30 seconds. A value between 20 and 60 seconds is recommended.

This value manages the settings for SUPL and v2 UPL. If a device is configured for both SUPL and V2 UPL, then these values will differ, and the SUPL setting will always be used.

<a href="" id="serveraccessinterval"></a>**ServerAccessInterval**
Optional. Integer. Defines the minimum interval of time in seconds between mobile originated requests sent to the server to prevent overloading the mobile operator's network. The default value is 60.

<a href="" id="rootcertificate"></a>**RootCertificate**
Required. Specifies the root certificate for the H-SLP server. Windows doesn't support a non-secure mode. If this node isn't included, the configuration service provider will fail but may not return a specific error.

<a href="" id="rootcertificate-name"></a>**RootCertificate/Name**
Specifies the name of the H-SLP root certificate as a string, in the format *name*.cer.

<a href="" id="rootcertificate-data"></a>**RootCertificate/Data**
The base 64 encoded blob of the H-SLP root certificate.

<a href="" id="rootcertificate"></a>**RootCertificate2**
Specifies the root certificate for the H-SLP server.

<a href="" id="rootcertificate2-name"></a>**RootCertificate2/Name**
Specifies the name of the H-SLP root certificate as a string, in the format *name*.cer.

<a href="" id="rootcertificate2-data"></a>**RootCertificate2/Data**
The base 64 encoded blob of the H-SLP root certificate.

<a href="" id="rootcertificate"></a>**RootCertificate3**
Specifies the root certificate for the H-SLP server.

<a href="" id="rootcertificate3-name"></a>**RootCertificate3/Name**
Specifies the name of the H-SLP root certificate as a string, in the format *name*.cer.

<a href="" id="rootcertificate3-data"></a>**RootCertificate3/Data**
The base 64 encoded blob of the H-SLP root certificate.

<a href="" id="rootcertificate"></a>**RootCertificate4**
Added in Windows 10, version 1809. Specifies the root certificate for the H-SLP server.

<a href="" id="rootcertificate-name"></a>**RootCertificate4/Name**
Added in Windows 10, version 1809. Specifies the name of the H-SLP root certificate as a string, in the format *name*.cer.

<a href="" id="rootcertificate-data"></a>**RootCertificate4/Data**
Added in Windows 10, version 1809. The base 64 encoded blob of the H-SLP root certificate.

<a href="" id="rootcertificate"></a>**RootCertificate5**
Added in Windows 10, version 1809. Specifies the root certificate for the H-SLP server.

<a href="" id="rootcertificate2-name"></a>**RootCertificate5/Name**
Added in Windows 10, version 1809. Specifies the name of the H-SLP root certificate as a string, in the format *name*.cer.

<a href="" id="rootcertificate2-data"></a>**RootCertificate5/Data**
Added in Windows 10, version 1809. The base 64 encoded blob of the H-SLP root certificate.

<a href="" id="rootcertificate"></a>**RootCertificate6**
Added in Windows 10, version 1809. Specifies the root certificate for the H-SLP server.

<a href="" id="rootcertificate3-name"></a>**RootCertificate6/Name**
Added in Windows 10, version 1809. Specifies the name of the H-SLP root certificate as a string, in the format *name*.cer.

<a href="" id="rootcertificate3-data"></a>**RootCertificate6/Data**
Added in Windows 10, version 1809. The base 64 encoded blob of the H-SLP root certificate.

<a href="" id="v2upl1"></a>**V2UPL1**
Required for V2 UPL for CDMA. Specifies the account settings for user plane location and IS-801 for CDMA. Only one account is supported at a given time.

<a href="" id="mpc"></a>**MPC**
Optional. Specifies the address of the mobile positioning center (MPC), in the format *ipAddress*: *portNumber*. For non-trusted mode of operation, this parameter is mandatory and the PDE parameter must be empty.

<a href="" id="pde"></a>**PDE**
Optional. Specifies the address of the Position Determination Entity (PDE), in the format *ipAddress*: *portNumber*. For non-trusted mode of operation, this parameter must be empty.

<a href="" id="positioningmethod-mr"></a>**PositioningMethod\_MR**
Optional. Specifies the positioning method that the SUPL client will use for mobile originated position requests. The value can be one of the following integers:

|Value|Description|
|--- |--- |
|0|None: The device uses the default positioning method. In this default mode, the GNSS obtains assistance (time injection, coarse position injection, and ephemeris data) from the Microsoft Positioning Service.|
|1|Mobile Station Assisted: The device contacts the H-SLP server to obtain a position. The H-SLP does the calculation of the position and returns it to the device.|
|2|Mobile Station Based: The device obtains location-aiding data (almanac, ephemeris data, time and coarse initial position of the device) from the H-SLP server, and the device uses this information to help GPS obtain a fix. All position calculations are done in the device.|
|3|Mobile Station Standalone: The device obtains assistance as required from the Microsoft location services.|
|4|AFLT|

The default is 0. The default method provides high-quality assisted GNSS positioning for mobile originated position requests without loading the mobile operator’s network or location services.

> [!IMPORTANT]
> The Mobile Station Assisted and AFLT positioning methods must only be configured for test purposes.

 
For OMA DM, if the format for this node is incorrect then an entry will be ignored and an error will be returned, but the configuration service provider will continue processing the rest of the parameters.

<a href="" id="locmasterswitchdependencynii"></a>**LocMasterSwitchDependencyNII**
Optional. Boolean. Specifies whether the location toggle on the **location** screen in **Settings** is also used to manage network-initiated requests for location. If the value is set to 0, the NI behavior is independent from the current location toggle setting. If the value is set to 1, the NI behavior follows the current location toggle setting. For CDMA devices, this value must be set to 1. The default value is 1.

This value manages the settings for both SUPL and v2 UPL. If a device is configured for both SUPL and V2 UPL, then these values will differ, and the SUPL setting will always be used.

|Location toggle setting|LocMasterSwitchDependencyNII setting|NI request processing allowed|
|--- |--- |--- |
|On|0|Yes|
|On|1|Yes|
|Off|0|Yes|
|Off|1|No (unless privacyOverride is set)|

When the location toggle is set to Off and this value is set to 1, the following application requests will fail:

-   `noNotificationNoVerification`

-   `notificationOnly`

-   `notificationAndVerficationAllowedNA`

-   `notificationAndVerficationDeniedNA`

However, if `privacyOverride` is set in the message, the location will be returned.

When the location toggle is set to Off and this value is set to 0, the location toggle doesn't prevent SUPL network-initiated requests from working.

For OMA DM, if the format for this node is incorrect then an entry will be ignored and an error will be returned, but the configuration service provider will continue processing the rest of the parameters.

<a href="" id="applicationtypeindicator-mr"></a>**ApplicationTypeIndicator\_MR**
Required. This value must always be set to `00000011`.

<a href="" id="nidefaulttimeout"></a>**NIDefaultTimeout**
Optional. Time in seconds. It defines that the network-initiated location request is displayed to the user, while awaiting a response and before doing the default action. The default is 30 seconds. A value between 20 and 60 seconds is recommended.

This value manages the settings for both SUPL and v2 UPL. If a device is configured for both SUPL and V2 UPL, then these values will differ, and the SUPL setting will always be used.

<a href="" id="serveraccessinterval"></a>**ServerAccessInterval**
Optional. Integer. Defines the minimum interval of time in seconds between mobile originated requests sent to the server to prevent overloading the mobile operator's network. The default value is 60.

## Unsupported Nodes

The following optional nodes aren't supported on Windows devices.

-   ProviderID

-   Name

-   PrefConRef

-   ToConRef

-   ToConRef/&lt;X&gt;

-   ToConRef/&lt;X&gt;/ConRef

-   AddrType

If the configuration application tries to set, delete or query these nodes, a response indicating this node isn't implemented will be returned over OMA DM. In OMA Client Provisioning, the request to set this node will be ignored and the configuration service provider will continue processing the rest of the nodes.

If a mobile operator requires the communication with the H-SLP to take place over a specific connection rather than a default cellular connection, then this configuration must be done by using the [CM\_CellularEntries configuration service provider](cm-cellularentries-csp.md) and the [CM\_ProxyEntries configuration service provider](cm-proxyentries-csp.md) to map the H-SLP server with the required connection.

## OMA Client Provisioning examples

Adding new configuration information for an H-SLP server for SUPL. Values in italic must be replaced with correct settings for the mobile operator network. A valid binary blob must be included for the root certificate data value.

```xml
<?xml version="1.0" encoding="utf-8"?>
<wap-provisioningdoc>
  <characteristic type="SUPL">
    <characteristic type="SUPL1">
      <parm name="Addr" value="supl.abc.def.example.com: 7777" />
      <characteristic type="Ext">
      <characteristic type="Microsoft">
      <characteristic type="RootCertificate">
        <parm name="Name" value="certName.cer" />
        <parm name="Data" value="" datatype="binary"/>
      </characteristic>
         <parm name="MCCMNCPairs" value="(111,000)(222,111)(333,333)(444,222)" />
         <parm name="HighAccPositioningMethod" datatype="integer" value="0" />
         <parm name="LocMasterSwitchDependencyNII" datatype="integer" value="1" />
      </characteristic>
      </characteristic>
    </characteristic>
  </characteristic>
</wap-provisioningdoc>
```

Adding a SUPL and a V2 UPL account to the same device. Values in italic must be replaced with correct settings for the mobile operator network. A valid binary BLOB must be included for the root certificate data value.

```xml
<?xml version="1.0" encoding="utf-8"?>
<wap-provisioningdoc>
  <characteristic type="SUPL">
    <characteristic type="V2UPL1">
      <parm name="MPC" value="192.0.2.1:7777" />
      <parm name="PDE" value="192.0.2.1:7778" />
      <parm name="PositioningMethod_MR" datatype="integer" value="1" />
    </characteristic>
    <characteristic type="SUPL1">
      <parm name="Addr" value="supl.abc.def.example.com:7777" />
      <characteristic type="Ext">
      <characteristic type="Microsoft">
      <characteristic type="RootCertificate">
        <parm name="Name" value="certName.cer" />
        <parm name="Data" value="" datatype="binary"/>
      </characteristic>
         <parm name="MCCMNCPairs" value="(111,000)(222,111)(333,333)(444,222)" />
         <parm name="HighAccPositioningMethod" datatype="integer" value="2" />
         <parm name="LocMasterSwitchDependencyNII" datatype="integer" value="1" />
      </characteristic>
      </characteristic>
    </characteristic>
  </characteristic>
</wap-provisioningdoc>
```

## OMA DM examples

Adding a SUPL account to a device. Values in italic must be replaced with correct settings for the mobile operator network. A valid binary blob must be included for the root certificate data value.

```xml
<SyncML xmlns="SYNCML:SYNCML1.1">
    <SyncBody>
        <Add>
            <CmdID>Add FQDN</CmdID>
            <Item>
                <Target><LocURI>./Vendor/MSFT/SUPL/SUPL1/Addr</LocURI></Target>
                <Meta>
                <Format xmlns="syncml:metinf">chr</Format>
                </Meta>
                <Data>supl.abc.def.example.com:2222</Data>
            </Item>
        </Add>
        <Add>
            <CmdID>Add MCCMNC</CmdID>
            <Item>
                <Target><LocURI>./Vendor/MSFT/SUPL/SUPL1/Ext/Microsoft/MCCMNCPairs</LocURI></Target>
                <Meta>
                <Format xmlns="syncml:metinf">chr</Format>
                </Meta>
                <Data>(111,000)(222,111)(333,333)(444,222)</Data>
            </Item>
        </Add>
        <Add>
            <CmdID>Add HighAccPositioningMethod</CmdID>
            <Item>
                <Target><LocURI>./Vendor/MSFT/SUPL/SUPL1/Ext/Microsoft/HighAccPositioningMethod</LocURI></Target>
                <Meta>
                <Format xmlns="syncml:metinf">int</Format>
                </Meta>
                <Data>2</Data>
            </Item>
        </Add>
        <Add>
            <CmdID>Add LocMasterSWDepend</CmdID>
            <Item>
                <Target><LocURI>./Vendor/MSFT/SUPL/SUPL1/Ext/Microsoft/LocMasterSwitchDependencyNII</LocURI></Target>
                <Meta>
                <Format xmlns="syncml:metinf">int</Format>
                </Meta>
                <Data>1</Data>
            </Item>
        </Add>
        <Add>
            <CmdID>Add Cert name</CmdID>

            <Item>
                <Target><LocURI>./Vendor/MSFT/SUPL/SUPL1/Ext/Microsoft/RootCertificate/Name</LocURI></Target>
                <Meta>
                <Format xmlns="syncml:metinf">chr</Format>
                </Meta>
                <Data>certName.cer</Data>
            </Item>
        </Add>
        <Add>
            <CmdID>Add Cert data - 200</CmdID>

            <Item>
                <Target><LocURI>./Vendor/MSFT/SUPL/SUPL1/Ext/Microsoft/RootCertificate/Data</LocURI></Target>
                <Meta>
                <Format xmlns="syncml:metinf">b64</Format>
                </Meta>
                <Data></Data>
            </Item>
        </Add>
        <Final/>
    </SyncBody>
</SyncML>
```

## Microsoft Custom Elements

The following table shows the Microsoft custom elements that this configuration service provider supports for OMA Client Provisioning.

|Elements|Available|
|--- |--- |
|parm-query|Yes|
|characteristic-query|Yes <br/><br/>Recursive query: No<br/><br/>Top level query: No|

 
## Related topics

[Configuration service provider reference](index.yml)
