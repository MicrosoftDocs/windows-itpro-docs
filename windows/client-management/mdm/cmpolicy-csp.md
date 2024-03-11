---
title: CMPolicy CSP
description: Learn how the CMPolicy configuration service provider (CSP) is used to define rules that the Connection Manager uses to identify correct connections.
ms.date: 06/26/2017
---

# CMPolicy CSP

The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

The CMPolicy configuration service provider defines rules that the Connection Manager uses to identify the correct connection for a connection request.

> [!NOTE]
> This configuration service provider requires the ID\_CAP\_CSP\_FOUNDATION and ID\_CAP\_NETWORKING\_ADMIN capabilities to be accessed from a network configuration application.

Each policy entry identifies one or more applications in combination with a host pattern. The policy entry is assigned a list of connection details that Connection Manager uses to satisfy connection requests matching the application and host patterns. CMPolicy configuration service provider can have multiple policies

**Policy Ordering**: There's no explicit ordering of policies. The general rule is that the most concrete or specific policy mappings take a higher precedence.

**Default Policies**: Policies are applied in order of their scope with the most specific policies considered before the more general policies. The phone's default behavior applies to all applications and all domains and is only used when no other, more specific policy is available. The default policy is to use any available Wi-Fi network first and then any available APN.

The following shows the CMPolicy configuration service provider management object in tree format as used by both Open Mobile Alliance (OMA) Client Provisioning and OMA Device Management.

```console
./Vendor/MSFT
CMPolicy
----PolicyName
--------SID
--------ClientType
--------Host
--------OrderedConnections
--------Connections
------------ConnXXX
----------------ConnectionID
----------------Type
```

<a href="" id="policyname"></a>***policyName***
Defines the name of the policy.

<a href="" id="sid"></a>**SID**
The value of SID depends on the ClientType.

For Universal Windows Platform (UWP) app-based mapping policies, SID is the Package family name without curly brackets {}, not the application.

For non-UWP application-based mapping policies, SID is the application product ID in GUID format. The curly brackets {} around the GUID are required.

For host-based mapping policies, SID must be set to `*`.

<a href="" id="clienttype"></a>**ClientType**
Specifies the mapping policy type.

The following list describes the available mapping policy types:

- Application-based mapping policies are applied to applications. To specify this mapping type, use the value `app`.

- Host-based mapping policies are applied to all types of clients requesting connections to specified host(s). To specify this mapping type, use the value `*`.

<a href="" id="host"></a>**Host**
Specifies the name of a host pattern. The host name is matched to the connection request to select the right policy to use.

The host pattern can have two wild cards, `*` and `+`. The host pattern isn't a URL pattern and there's no concept of transport or paths on the specific host. For example, the host pattern might be `*.host_name.com` to match any prefix to the `host_name.com` domains. The host pattern will match `www.host_name.com` and `mail.host_name.com`, but it won't match `host_name.com`.

<a href="" id="orderedconnections"></a>**OrderedConnections**
Specifies whether the list of connections is in preference order.

A value of "0" specifies that the connections aren't listed in order of preference. A value of "1" indicates that the listed connections are in order of preference.

<a href="" id="connxxx"></a>**Conn**<strong>*XXX*</strong>
Enumerates the connections associated with the policy. Element names begin with "Conn" followed by three digits, which increment starting from "000". For example, a policy, which applied to five connections would have element entries named "Conn000", "Conn001", "Conn002", "Conn003", and "Conn004".

<a href="" id="connectionid"></a>**ConnectionID**
Specifies a unique identifier for a connection within a group of connections. The exact value is based on the Type parameter.

For `CMST_CONNECTION_NAME`, specify the connection name. For example, if you have a connection configured by using the CM\_CellularEntries configuration service provider, the connection name could be the name of the connection. If you have a NAP configured with the NAPID set to "GPRS1", the connection name could be "GPRS1@WAP".

For `CMST_CONNECTION_TYPE`, specify the GUID for the desired connection type. The curly brackets {} around the GUID are required. The following connection types are available:

|Connection type|GUID|
|--- |--- |
|GSM|{A05DC613-E393-40ad-AA89-CCCE04277CD9}|
|CDMA|{274AD55A-4A70-4E35-93B3-AE2D2E6727FC}|
|Legacy 3GPP|{6DE4C04B-B74E-47FA-99E5-8F2097C06A92}|
|LTE|{2378E547-8312-46A5-905E-5C581E92693B}|
|Wi-Fi|{8568B401-858E-4B7B-B3DF-0FD4927F131B}|
|Wi-Fi hotspot|{072FC7DC-1D93-40D1-9BB0-2114D7D73434}|

For `CMST_CONNECTION_NETWORK_TYPE`, specify the GUID for the desired network type. The curly brackets {} around the GUID are required. The following network types are available:

|Network type|GUID|
|--- |--- |
|GPRS|{AFB7D659-FC1F-4EA5-BDD0-0FDA62676D96}|
|1XRTT|{B1E700AE-A62F-49FF-9BBE-B880C995F27D}|
|EDGE|{C347F8EC-7095-423D-B838-7C7A7F38CD03}|
|WCDMA UMTS|{A72F04C6-9BE6-4151-B5EF-15A53E12C482}|
|WCDMA FOMA|{B8326098-F845-42F3-804E-8CC3FF7B50B4}|
|1XEVDO|{DD42DF39-EBDF-407C-8146-1685416401B2}|
|1XEVDV|{61BF1BFD-5218-4CD4-949C-241CA3F326F6}|
|HSPA HSDPA|{047F7282-BABD-4893-AA77-B8B312657F8C}|
|HSPA HSUPA|{1536A1C6-A4AF-423C-8884-6BDDA3656F84}|
|LTE|{B41CBF43-6994-46FF-9C2F-D6CA6D45889B}|
|EHRPD|{7CFA04A5-0F3F-445C-88A4-C86ED2AD94EA}|
|Ethernet 10 Mbps|{97D3D1B3-854A-4C32-BD1C-C13069078370}|
|Ethernet 100 Mbps|{A8F4FE66-8D04-43F5-9DD2-2A85BD21029B}|
|Ethernet Gbps|{556C1E6B-B8D4-448E-836D-9451BA4CCE75}|

For `CMST_CONNECTION_DEVICE_TYPE`, specify the GUID for the desired device type. The curly brackets {} around the GUID are required. The following device types are available:

|Device type|GUID|
|--- |--- |
|Cellular device|{F9A53167-4016-4198-9B41-86D9522DC019}|
|Ethernet|{97844272-00C7-4572-B20A-D8D861C095F2}|
|Bluetooth|{1D793123-701A-4fd0-B6AE-9C3C57E99C2C}|
|Virtual|{EAA02CE5-9C70-4E87-97FE-55C9DEC847D4}|

<a href="" id="type"></a>**Type**
Specifies the type of connection being referenced. The following list describes the available connection types:

- `CMST_CONNECTION_NAME` – A connection specified by name.

- `CMST_CONNECTION_TYPE` – Any connection of a specified type.

- `CMST_CONNECTION_NETWORK_TYPE` – Any connection of a specified network type.

- `CMST_CONNECTION_DEVICE_TYPE` – Any connection of the specified device type.

## OMA client provisioning examples

Adding an application-based mapping policy. In this example, the ConnectionId for type CMST\_CONNECTION\_NAME is set to the name of the connection ("GPRSConn1") that is configured with the CM\_CellularEntries configuration service provider.

```xml
<wap-provisioningdoc>

   <characteristic type="CM_CellularEntries">
       <characteristic type="GPRSConn1">
          <parm name="ConnectionType" value="gprs" />
             <characteristic type="DevSpecificCellular">
                <parm name="GPRSInfoAccessPointName" value="apn.adatum.com" />
         </characteristic>
          <parm name="AlwaysOn" value="0" />
          <parm name="Enabled" value="1" />
       </characteristic>
    </characteristic>

   <characteristic type="CMPolicy">
      <characteristic type="Policy1">
       <parm name="SID" value="{A05D1234-F393-9385-AA89-CD3E049367D2}" />
       <parm name="ClientType" value="app" />
       <parm name="Host" value="*.+" />
       <parm name="OrderedConnections" value="1" />
       <characteristic type="Connections">
           <characteristic type="Conn000">
               <parm name="Type" value="CMST_CONNECTION_DEVICE_TYPE" />
               <parm name="ConnectionId" value="{F9A53167-4016-4198-9B41-86D9522DC019}" />
           </characteristic>
           <characteristic type="Conn001">
               <parm name="Type" value="CMST_CONNECTION_NETWORK_TYPE" />
               <parm name="ConnectionId" value="{AFB7D659-FC1F-4EA5-BDD0-0FDA62676D96}" />
           </characteristic>
           <characteristic type="Conn002">
               <parm name="Type" value="CMST_CONNECTION_NAME" />
               <parm name="ConnectionId" value="GPRSConn1" />
           </characteristic>
           <characteristic type="Conn003">
              <parm name="Type" value="CMST_CONNECTION_TYPE" />
              <parm name="ConnectionId" value="{072FC7DC-1D93-40d1-9BB0-2114D7D73434}" />
           </characteristic>
       </characteristic>
      </characteristic>
    </characteristic>
</wap-provisioningdoc>
```

Adding a host-based mapping policy:

In this example, the ConnectionId for type CMST\_CONNECTION\_NAME is set to the name of the connection ("GPRSConn1") that is configured with the CM\_CellularEntries configuration service provider.

```xml
<wap-provisioningdoc>

   <characteristic type="CM_CellularEntries">
       <characteristic type="GPRSConn1">
          <parm name="ConnectionType" value="gprs" />
             <characteristic type="DevSpecificCellular">
                <parm name="GPRSInfoAccessPointName" value="apn.adatum.com" />
         </characteristic>
          <parm name="AlwaysOn" value="0" />
          <parm name="Enabled" value="1" />
       </characteristic>
    </characteristic>

   <characteristic type="CMPolicy">
      <characteristic type="Policy3">
       <parm name="SID" value="*" />
       <parm name="ClientType" value="*" />
       <parm name="Host" value="*.contoso.com" />
       <parm name="OrderedConnections" value="1" />
       <characteristic type="Connections">
           <characteristic type="Conn000">
               <parm name="Type" value="CMST_CONNECTION_DEVICE_TYPE" />
               <parm name="ConnectionId" value="{F9A53167-4016-4198-9B41-86D9522DC019}" />
           </characteristic>
           <characteristic type="Conn001">
               <parm name="Type" value="CMST_CONNECTION_NETWORK_TYPE" />
               <parm name="ConnectionId" value="{AFB7D659-FC1F-4EA5-BDD0-0FDA62676D96}" />
           </characteristic>
           <characteristic type="Conn002">
               <parm name="Type" value="CMST_CONNECTION_NAME" />
               <parm name="ConnectionId" value="GPRSConn1" />
           </characteristic>
           <characteristic type="Conn003">
               <parm name="Type" value="CMST_CONNECTION_TYPE" />
               <parm name="ConnectionId" value="{072FC7DC-1D93-40d1-9BB0-2114D7D73434}" />
           </characteristic>
       </characteristic>
      </characteristic>
    </characteristic>

</wap-provisioningdoc>
```

## OMA DM examples

Adding an application-based mapping policy:

```xml
<SyncML>
    <SyncBody>
        <Atomic>
    <CmdID>8000</CmdID>
    <Add>
        <CmdID>8051</CmdID>
        <Item>
            <Target>
                <LocURI>./Vendor/MSFT/CMPolicy/BTHPolicy4/SID</LocURI>
            </Target>
            <Data>{A05D1234-F393-9385-AA89-CD3E049367D2}</Data>
        </Item>
    </Add>
    <Add>
        <CmdID>8052</CmdID>
        <Item>
            <Target>
                <LocURI>./Vendor/MSFT/CMPolicy/BTHPolicy4/ClientType</LocURI>
            </Target>
            <Data>app</Data>
        </Item>
    </Add>
    <Add>
        <CmdID>8053</CmdID>
        <Item>
            <Target>
                <LocURI>./Vendor/MSFT/CMPolicy/BTHPolicy4/Host</LocURI>
            </Target>
            <Data>*.+</Data>
        </Item>
    </Add>
    <Add>
        <CmdID>8054</CmdID>
        <Item>
            <Target>
                <LocURI>./Vendor/MSFT/CMPolicy/BTHPolicy4/OrderedConnections</LocURI>
            </Target>
            <Data>1</Data>
        </Item>
    </Add>
    <Add>
        <CmdID>8055</CmdID>
        <Item>
            <Target>
                <LocURI>./Vendor/MSFT/CMPolicy/BTHPolicy4/Connections/Conn000/ConnectionId</LocURI>
            </Target>
            <Data>{A05DC613-E393-40AD-AA89-CCCE04277CD9}</Data>
        </Item>
    </Add>
    <Add>
        <CmdID>8056</CmdID>
        <Item>
            <Target>
                <LocURI>./Vendor/MSFT/CMPolicy/BTHPolicy4/Connections/Conn000/Type</LocURI>
            </Target>
            <Data>CMST_CONNECTION_DEVICE_TYPE</Data>
        </Item>
    </Add>
        </Atomic>
        <Final/>
    </SyncBody>
</SyncML>
```

Adding a host-based mapping policy:

```xml
<SyncML>
    <SyncBody>
        <Atomic>
    <CmdID>8000</CmdID>
    <Add>
        <CmdID>8049</CmdID>
        <Item>
            <Target>
                <LocURI>./Vendor/MSFT/CMPolicy/BTHPolicy6/SID</LocURI>
            </Target>
            <Data>*</Data>
        </Item>
    </Add>
    <Add>
        <CmdID>8050</CmdID>
        <Item>
            <Target>
                <LocURI>./Vendor/MSFT/CMPolicy/BTHPolicy6/ClientType</LocURI>
            </Target>
            <Data>*</Data>
        </Item>
    </Add>
    <Add>
        <CmdID>8051</CmdID>
        <Item>
            <Target>
                <LocURI>./Vendor/MSFT/CMPolicy/BTHPolicy6/Host</LocURI>
            </Target>
            <Data>*.contoso.com</Data>
        </Item>
    </Add>
    <Add>
        <CmdID>8052</CmdID>
        <Item>
            <Target>
                <LocURI>./Vendor/MSFT/CMPolicy/BTHPolicy6/OrderedConnections</LocURI>
            </Target>
            <Data>1</Data>
        </Item>
    </Add>
    <Add>
        <CmdID>8053</CmdID>
        <Item>
            <Target>
                <LocURI>./Vendor/MSFT/CMPolicy/BTHPolicy6/Connections/Conn000/ConnectionId</LocURI>
            </Target>
            <Data>{AFB7D659-FC1F-4EA5-BDD0-0FDA62676D96}</Data>
        </Item>
    </Add>
    <Add>
        <CmdID>8054</CmdID>
        <Item>
            <Target>
                <LocURI>./Vendor/MSFT/CMPolicy/BTHPolicy6/Connections/Conn000/Type</LocURI>
            </Target>
            <Data>CMST_CONNECTION_NETWORK_TYPE</Data>
        </Item>
    </Add>
        </Atomic>
        <Final/>
    </SyncBody>
</SyncML>
```

## Microsoft Custom Elements

|Element|Available|
|--- |--- |
|parm-query|Yes|
|uncharacteristic|Yes|
|characteristic-query|Yes<br> <br>Recursive query: Yes<br> <br>Top-level query: Yes|

## Related topics

[Configuration service provider reference](index.yml)










