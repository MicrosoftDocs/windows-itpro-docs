---
title: VPNv2 DDF file
description: View the XML file containing the device description framework (DDF) for the VPNv2 configuration service provider.
ms.date: 06/28/2024
---

<!-- Auto-Generated CSP Document -->

# VPNv2 DDF file

The following XML file contains the device description framework (DDF) for the VPNv2 configuration service provider.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN" "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"[<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
  <MSFT:Diagnostics>
  </MSFT:Diagnostics>
  <Node>
    <NodeName>VPNv2</NodeName>
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
        <MIME />
      </DFType>
      <MSFT:Applicability>
        <MSFT:OsBuildVersion>10.0.10586</MSFT:OsBuildVersion>
        <MSFT:CspVersion>1.0</MSFT:CspVersion>
        <MSFT:EditionAllowList>0x4;0x1B;0x30;0x31;0x48;0x54;0x62;0x63;0x64;0x65;0x79;0x7A;0x7D;0x7E;0x81;0x82;0x88;0x8A;0x8B;0xA1;0xA2;0xA4;0xA5;0xAB;0xAC;0xAF;0xBC;0xBF;0xCA;0xCB;0xCD;0xCF;0xD2;</MSFT:EditionAllowList>
      </MSFT:Applicability>
    </DFProperties>
    <Node>
      <NodeName>
      </NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <Description>Unique alpha numeric identifier for the profile. The profile name must not include a forward slash (/). If the profile name has a space or other non-alphanumeric character, it must be properly escaped according to the URL encoding standard.</Description>
        <DFFormat>
          <node />
        </DFFormat>
        <Occurrence>
          <ZeroOrMore />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFTitle>ProfileName</DFTitle>
        <DFType>
          <DDFName />
        </DFType>
        <MSFT:DynamicNodeNaming>
          <MSFT:ServerGeneratedUniqueIdentifier />
        </MSFT:DynamicNodeNaming>
        <MSFT:AllowedValues ValueType="RegEx">
          <MSFT:Value>^[^/]*$</MSFT:Value>
        </MSFT:AllowedValues>
        <MSFT:AtomicRequired />
      </DFProperties>
      <Node>
        <NodeName>AppTriggerList</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>List of applications set to trigger the VPN. If any of these apps are launched and the VPN Profile is currently the active Profile, this VPN Profile will be triggered to connect.</Description>
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
          <NodeName>
          </NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
            </AccessType>
            <Description>A sequential integer identifier which allows the ability to specify multiple apps for App Trigger. Sequencing must start at 0 and you should not skip numbers.</Description>
            <DFFormat>
              <node />
            </DFFormat>
            <Occurrence>
              <ZeroOrMore />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFTitle>appTriggerRowId</DFTitle>
            <DFType>
              <DDFName />
            </DFType>
            <MSFT:DynamicNodeNaming>
              <MSFT:UniqueName>A sequential integer identifier which allows the ability to specify multiple apps for App Trigger. Sequencing must start at 0 and you should not skip numbers.</MSFT:UniqueName>
            </MSFT:DynamicNodeNaming>
          </DFProperties>
          <Node>
            <NodeName>App</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>App Node under the Row Id.</Description>
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
            </DFProperties>
            <Node>
              <NodeName>Id</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Delete />
                  <Get />
                  <Replace />
                </AccessType>
                <Description>App Identity. Specified, based on the Type Field.</Description>
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
              <NodeName>Type</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Returns the type of App/Id. This value can be either of the following: PackageFamilyName - When this is returned, the App/Id value represents the PackageFamilyName of the app. The PackageFamilyName is the unique name of the Microsoft Store application. FilePath - When this is returned, the App/Id value represents the full file path of the app. For example, C:\Windows\System\Notepad.exe.</Description>
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
        </Node>
      </Node>
      <Node>
        <NodeName>RouteList</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>List of routes to be added to the Routing table for the VPN Interface. Required in the Split Tunneling case where the VPN Server site has more subnets than the default subnet based on the IP assigned to Interface.</Description>
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
          <NodeName>
          </NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
            </AccessType>
            <Description>A sequential integer identifier for the RouteList. This is required if you are adding routes. Sequencing must start at 0.</Description>
            <DFFormat>
              <node />
            </DFFormat>
            <Occurrence>
              <ZeroOrMore />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFTitle>routeRowId</DFTitle>
            <DFType>
              <DDFName />
            </DFType>
            <MSFT:DynamicNodeNaming>
              <MSFT:UniqueName>A sequential integer identifier for the RouteList. This is required if you are adding routes. Sequencing must start at 0.</MSFT:UniqueName>
            </MSFT:DynamicNodeNaming>
          </DFProperties>
          <Node>
            <NodeName>Address</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Subnet address in IPv4/v6 address format which, along with the prefix will be used to determine the destination prefix to send via the VPN Interface. This is the IP address part of the destination prefix.</Description>
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
            <NodeName>PrefixSize</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>The subnet prefix size part of the destination prefix for the route entry. This, along with the address will be used to determine the destination prefix to route through the VPN Interface.</Description>
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
                <MSFT:Value>[0-4294967295]</MSFT:Value>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>Metric</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>The route's metric.</Description>
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
                <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
                <MSFT:CspVersion>1.2</MSFT:CspVersion>
              </MSFT:Applicability>
              <MSFT:AllowedValues ValueType="None">
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>ExclusionRoute</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>false</DefaultValue>
              <Description>A boolean value that specifies if the route being added should point to the VPN Interface or the Physical Interface as the Gateway.</Description>
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
              <MSFT:Applicability>
                <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
                <MSFT:CspVersion>1.2</MSFT:CspVersion>
              </MSFT:Applicability>
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>false</MSFT:Value>
                  <MSFT:ValueDescription>This route will direct traffic over the VPN.</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>true</MSFT:Value>
                  <MSFT:ValueDescription>This route will direct traffic over the physical interface.</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
        </Node>
      </Node>
      <Node>
        <NodeName>DomainNameInformationList</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>NRPT (Name Resolution Policy Table) Rules for the VPN Profile.</Description>
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
          <NodeName>
          </NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
            </AccessType>
            <Description>A sequential integer identifier for the Domain Name information. Sequencing must start at 0.</Description>
            <DFFormat>
              <node />
            </DFFormat>
            <Occurrence>
              <ZeroOrMore />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFTitle>dniRowId</DFTitle>
            <DFType>
              <DDFName />
            </DFType>
            <MSFT:DynamicNodeNaming>
              <MSFT:UniqueName>A sequential integer identifier for the Domain Name information. Sequencing must start at 0.</MSFT:UniqueName>
            </MSFT:DynamicNodeNaming>
          </DFProperties>
          <Node>
            <NodeName>DomainName</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Used to indicate the namespace to which the policy applies. When a Name query is issued, the DNS client compares the name in the query to all of the namespaces under DomainNameInformationList to find a match. This parameter can be one of the following types: FQDN - Fully qualified domain name. Suffix - A domain suffix that will be appended to the shortname query for DNS resolution. To specify a suffix, prepend a . to the DNS suffix.</Description>
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
            <NodeName>DomainNameType</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Returns the namespace type. This value can be one of the following: FQDN - If the DomainName was not prepended with a . and applies only to the fully qualified domain name (FQDN) of a specified host. Suffix - If the DomainName was prepended with a . and applies to the specified namespace, all records in that namespace, and all subdomains.</Description>
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
            <NodeName>DnsServers</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Comma Seperated list of IP addresses for the DNS Servers to use for the domain name.</Description>
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
            <NodeName>WebProxyServers</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Web Proxy Server IP address if you are redirecting traffic through your intranet.</Description>
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
            <NodeName>AutoTrigger</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>false</DefaultValue>
              <Description>Boolean to determine whether this domain name rule will trigger the VPN.</Description>
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
                <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
                <MSFT:CspVersion>1.2</MSFT:CspVersion>
              </MSFT:Applicability>
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>false</MSFT:Value>
                  <MSFT:ValueDescription>This DomainName rule will not trigger the VPN.</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>true</MSFT:Value>
                  <MSFT:ValueDescription>This DomainName rule will trigger the VPN.</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>Persistent</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>false</DefaultValue>
              <Description>A boolean value that specifies if the rule being added should persist even when the VPN is not connected.</Description>
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
                <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
                <MSFT:CspVersion>1.2</MSFT:CspVersion>
              </MSFT:Applicability>
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>false</MSFT:Value>
                  <MSFT:ValueDescription>This DomainName rule will only be applied when VPN is connected.</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>true</MSFT:Value>
                  <MSFT:ValueDescription>This DomainName rule will always be present and applied.</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
        </Node>
      </Node>
      <Node>
        <NodeName>TrafficFilterList</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>A list of rules allowing traffic over the VPN Interface. Each Rule ID is OR'ed. Within each rule ID each Filter type is AND'ed.</Description>
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
          <NodeName>
          </NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
            </AccessType>
            <Description>A sequential integer identifier for the Traffic Filter rules. Sequencing must start at 0.</Description>
            <DFFormat>
              <node />
            </DFFormat>
            <Occurrence>
              <ZeroOrMore />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFTitle>trafficFilterId</DFTitle>
            <DFType>
              <DDFName />
            </DFType>
            <MSFT:DynamicNodeNaming>
              <MSFT:UniqueName>A sequential integer identifier for the Traffic Filter rules. Sequencing must start at 0.</MSFT:UniqueName>
            </MSFT:DynamicNodeNaming>
          </DFProperties>
          <Node>
            <NodeName>App</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Per App VPN Rule. This will Allow only the Apps specified to be allowed over VPN Interface.</Description>
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
              <NodeName>Id</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Delete />
                  <Get />
                  <Replace />
                </AccessType>
                <Description>App identity for the app-based traffic filter. The value for this node can be one of the following: PackageFamilyName - This App/Id value represents the PackageFamilyName of the app. The PackageFamilyName is the unique name of a Microsoft Store application. FilePath - This App/Id value represents the full file path of the app. For example, C:\Windows\System\Notepad.exe. SYSTEM - This value enables Kernel Drivers to send traffic through VPN (for example, PING or SMB).</Description>
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
              <NodeName>Type</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Returns the type of ID of the App/Id. Either PackageFamilyName, FilePath, or System.</Description>
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
            <NodeName>Claims</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Specifies a rule in Security Descriptor Definition Language (SDDL) format to check against local user token.</Description>
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
            <NodeName>Protocol</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>0-255 number representing the ip protocol (TCP = 6, UDP = 17).</Description>
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
              <MSFT:AllowedValues ValueType="Range">
                <MSFT:Value>[0-255]</MSFT:Value>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>LocalPortRanges</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Comma Separated list of ranges for eg. 100-120,200,300-320.</Description>
              <DFFormat>
                <chr />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFTitle>LocalPortRanges</DFTitle>
              <DFType>
                <MIME />
              </DFType>
              <MSFT:AllowedValues ValueType="RegEx">
                <MSFT:Value>^[\d]*$</MSFT:Value>
              </MSFT:AllowedValues>
              <MSFT:DependencyBehavior>
                <MSFT:DependencyGroup FriendlyId="ProtocolDependency">
                  <MSFT:Dependency Type="DependsOn">
                    <MSFT:DependencyUri>Vendor/MSFT/VPNv2/[ProfileName]/TrafficFilterList/[trafficFilterId]/Protocol</MSFT:DependencyUri>
                    <MSFT:DependencyAllowedValue ValueType="Range">
                      <MSFT:Value>[6,17]</MSFT:Value>
                    </MSFT:DependencyAllowedValue>
                  </MSFT:Dependency>
                </MSFT:DependencyGroup>
              </MSFT:DependencyBehavior>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>RemotePortRanges</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>A list of comma separated values specifying remote port ranges to allow. For example, 100-120, 200, 300-320.</Description>
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
                <MSFT:Value>^[\d]*$</MSFT:Value>
              </MSFT:AllowedValues>
              <MSFT:DependencyBehavior>
                <MSFT:DependencyGroup FriendlyId="ProtocolDependency">
                  <MSFT:Dependency Type="DependsOn">
                    <MSFT:DependencyUri>Vendor/MSFT/VPNv2/[ProfileName]/TrafficFilterList/[trafficFilterId]/Protocol</MSFT:DependencyUri>
                    <MSFT:DependencyAllowedValue ValueType="Range">
                      <MSFT:Value>[6,17]</MSFT:Value>
                    </MSFT:DependencyAllowedValue>
                  </MSFT:Dependency>
                </MSFT:DependencyGroup>
              </MSFT:DependencyBehavior>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>LocalAddressRanges</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>A list of comma separated values specifying local IP address ranges to allow.</Description>
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
            <NodeName>RemoteAddressRanges</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>A list of comma separated values specifying remote IP address ranges to allow.</Description>
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
            <NodeName>RoutingPolicyType</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Specifies the routing policy if an App or Claims type is used in the traffic filter. The scope of this property is for this traffic filter rule alone.</Description>
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
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>SplitTunnel</MSFT:Value>
                  <MSFT:ValueDescription>For this traffic filter rule, only the traffic meant for the VPN interface (as determined by the networking stack) goes over the interface. Internet traffic can continue to go over the other interfaces.</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>ForceTunnel</MSFT:Value>
                  <MSFT:ValueDescription>For this traffic rule all IP traffic must go through the VPN Interface only.</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>Direction</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>
                                Outbound - The traffic filter allows traffic to reach destinations matching this rule. This is the default.
                                Inbound - The traffic filter allows traffic coming from external locations matching this rule.
                            </Description>
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
                <MSFT:OsBuildVersion>10.0.19041</MSFT:OsBuildVersion>
                <MSFT:CspVersion>1.3</MSFT:CspVersion>
              </MSFT:Applicability>
            </DFProperties>
          </Node>
        </Node>
      </Node>
      <Node>
        <NodeName>EdpModeId</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>Enterprise ID, which is required for connecting this VPN profile with an WIP policy. When this is set, the networking stack looks for this Enterprise ID in the app token to determine if the traffic is allowed to go over the VPN. If the profile is active, it also automatically triggers the VPN to connect. We recommend having only one such profile per device.</Description>
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
        <NodeName>RememberCredentials</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>false</DefaultValue>
          <Description>Boolean value (true or false) for caching credentials.</Description>
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
              <MSFT:ValueDescription>Do not cache credentials.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>true</MSFT:Value>
              <MSFT:ValueDescription>Credentials are cached whenever possible.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
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
          <DefaultValue>false</DefaultValue>
          <Description>An optional flag to enable Always On mode. This will automatically connect the VPN at sign-in and will stay connected until the user manually disconnects.</Description>
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
              <MSFT:ValueDescription>Always On is turned off.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>true</MSFT:Value>
              <MSFT:ValueDescription>Always On is turned on.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>AlwaysOnActive</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>1</DefaultValue>
          <Description>An optional flag to activate Always On mode. This is true by default if AlwaysOn is true. Setting controls whether "Connect Automatically" is toggled on profile creation.</Description>
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
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>Always On is inactive.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>Always On is activated on provisioning.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>RegisterDNS</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>false</DefaultValue>
          <Description>Allows registration of the connection's address in DNS.</Description>
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
            <MSFT:OsBuildVersion>10.0.16299</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.3</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>false</MSFT:Value>
              <MSFT:ValueDescription>Do not register the connection's address in DNS.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>true</MSFT:Value>
              <MSFT:ValueDescription>Register the connection's addresses in DNS.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>DnsSuffix</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>Specifies one or more comma separated DNS suffixes. The first in the list is also used as the primary connection specific DNS suffix for the VPN Interface. The entire list will also be added into the SuffixSearchList.</Description>
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
        <NodeName>ByPassForLocal</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>
                        False : Do not Bypass for Local traffic
                        True : ByPass VPN Interface for Local Traffic

                        Optional. When this setting is True, requests to local resources that are available on the same Wi-Fi network as the VPN client can bypass the VPN. For example, if enterprise policy for VPN requires force tunnel for VPN, but enterprise intends to allow the remote user to connect locally to media center in their home, then this option should be set to True. The user can bypass VPN for local subnet traffic. When this is set to False, the setting is disabled and no subnet exceptions are allowed.
                    </Description>
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
        </DFProperties>
      </Node>
      <Node>
        <NodeName>TrustedNetworkDetection</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>Comma separated string to identify the trusted network. VPN will not connect automatically when the user is on their corporate wireless network where protected resources are directly accessible to the device.</Description>
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
            <MSFT:Value>,</MSFT:Value>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>DisableAdvancedOptionsEditButton</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>Optional. When this setting is True, the Advanced Options page will have its edit functions disabled, only allowing viewing and Clear Sign-In Info.
                    </Description>
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
            <MSFT:OsBuildVersion>10.0.22000</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.5</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>false</MSFT:Value>
              <MSFT:ValueDescription>Advanced Options Edit Button is available.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>true</MSFT:Value>
              <MSFT:ValueDescription>Advanced Options Edit Button is unavailable.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>DisableDisconnectButton</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>Optional. When this setting is True, the Disconnect button will not be visible for connected profiles.
                    </Description>
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
            <MSFT:OsBuildVersion>10.0.22000</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.5</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>false</MSFT:Value>
              <MSFT:ValueDescription>Disconnect Button is visible.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>true</MSFT:Value>
              <MSFT:ValueDescription>Disconnect Button is not visible.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>RequireVpnClientAppUI</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>
                        Applicable only to AppContainer profiles.

                        False : Do not show profile in Settings UI.
                        True : Show profile in Settings UI.

                        Optional. This node is only relevant for AppContainer profiles (i.e. using the VpnManagementAgent::AddProfileFromXmlAsync method).
                    </Description>
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
            <MSFT:OsBuildVersion>10.0.19628</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.4</MSFT:CspVersion>
          </MSFT:Applicability>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>ProfileXML</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>The XML schema for provisioning all the fields of a VPN.</Description>
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
          <MSFT:AllowedValues ValueType="XSD">
            <MSFT:Value><![CDATA[
<xs:schema attributeFormDefault="unqualified" elementFormDefault="qualified" xmlns:xs="http://www.w3.org/2001/XMLSchema">
  <xs:import namespace="http://www.microsoft.com/provisioning/EapHostConfig" schemaLocation="EapHostConfig.xsd" />
  <xs:element name="VPNProfile">
    <xs:complexType>
      <xs:sequence>
        <xs:element name="ProfileName" type="xs:string" minOccurs="0" maxOccurs="1" />
        <xs:element name="EdpModeId" type="xs:string" minOccurs="0" maxOccurs="1" />
        <xs:element name="RememberCredentials" type="xs:boolean" minOccurs="0" maxOccurs="1" />
        <xs:element name="AlwaysOn" type="xs:boolean" minOccurs="0" maxOccurs="1" />
        <xs:element name="DnsSuffix" type="xs:string" minOccurs="0" maxOccurs="1"/>
        <xs:element name="TrustedNetworkDetection" type="xs:string" minOccurs="0" maxOccurs="1"/>
        <xs:element name="DisableAdvancedOptionsEditButton" type="xs:boolean" minOccurs="0" maxOccurs="1" />
        <xs:element name="DisableDisconnectButton" type="xs:boolean" minOccurs="0" maxOccurs="1" />
        <xs:element name="LockDown" type="xs:boolean" minOccurs="0" maxOccurs="1"/>
        <xs:element name="DeviceTunnel" type="xs:boolean" minOccurs="0" maxOccurs="1"/>
        <xs:element name="RegisterDNS" type="xs:boolean" minOccurs="0" maxOccurs="1"/>
        <xs:element name="ByPassForLocal" type="xs:boolean" minOccurs="0" maxOccurs="1"/>
        <xs:element name="RequireVpnClientAppUI" type="xs:boolean" minOccurs="0" maxOccurs="1"/>
        <xs:element name="Proxy" minOccurs="0" maxOccurs="1">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="AutoConfigUrl" type="xs:string" minOccurs="0" maxOccurs="1"/>
              <xs:element name="Manual" minOccurs="0" maxOccurs="1">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element name="Server" type="xs:string" minOccurs="1" maxOccurs="1"/>
                  </xs:sequence>
                </xs:complexType>
              </xs:element>
            </xs:sequence>
          </xs:complexType>
        </xs:element>

        <xs:element name="APNBinding" minOccurs="0" maxOccurs="1">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ProviderId" type="xs:string" minOccurs="0" maxOccurs="1"/>
              <xs:element name="AccessPointName" type="xs:string" minOccurs="0" maxOccurs="1"/>
              <xs:element name="UserName" type="xs:string" minOccurs="0" maxOccurs="1"/>
              <xs:element name="Password" type="xs:string" minOccurs="0" maxOccurs="1"/>
              <xs:element name="IsCompressionEnabled" type="xs:boolean" minOccurs="0" maxOccurs="1"/>
              <xs:element name="AuthenticationType" type="xs:string" minOccurs="0" maxOccurs="1"/>
            </xs:sequence>
          </xs:complexType>
        </xs:element>

        <xs:element name="DeviceCompliance" minOccurs="0" maxOccurs="1">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="Enabled" type="xs:boolean" minOccurs="1" maxOccurs="1" />
              <xs:element name="Sso" minOccurs="0" maxOccurs="1">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element name="Enabled" type="xs:boolean" minOccurs="1" maxOccurs="1" />
                    <xs:element name="Eku" type="xs:string" minOccurs="0" maxOccurs="1" />
                    <xs:element name="IssuerHash" type="xs:string" minOccurs="0" maxOccurs="1"/>
                  </xs:sequence>
                </xs:complexType>
              </xs:element>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
        <xs:element name="PluginProfile" minOccurs="0" maxOccurs="1">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ServerUrlList" type="xs:string" minOccurs="1" maxOccurs="1"/>
              <xs:element name="CustomConfiguration" type="xs:string" minOccurs="0" maxOccurs="1"/>
              <xs:element name="PluginPackageFamilyName" type="xs:string" minOccurs="1" maxOccurs="1"/>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
        <xs:element name="AppTrigger" minOccurs="0" maxOccurs="unbounded">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="App" minOccurs="1" maxOccurs="1">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element name="Id" type="xs:string" minOccurs="1" maxOccurs="1"/>
                  </xs:sequence>
                </xs:complexType>
              </xs:element>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
        <xs:element name="DomainNameInformation" minOccurs="0" maxOccurs="unbounded">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="DomainName" type="xs:string" minOccurs="1" maxOccurs="1"/>
              <xs:element name="DnsServers" type="xs:string" minOccurs="0" maxOccurs="1"/>
              <xs:element name="WebProxyServers" type="xs:string" minOccurs="0" maxOccurs="1"/>
              <xs:element name="AutoTrigger" type="xs:boolean" minOccurs="0" maxOccurs="1"/>
              <xs:element name="Persistent" type="xs:boolean" minOccurs="0" maxOccurs="1"/>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
        <xs:element name="TrafficFilter" minOccurs="0" maxOccurs="unbounded">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="App" minOccurs="0" maxOccurs="1">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element name="Id" type="xs:string" minOccurs="1" maxOccurs="1"/>
                  </xs:sequence>
                </xs:complexType>
              </xs:element>
              <xs:element name="Claims" type="xs:string" minOccurs="0" maxOccurs="1"/>
              <xs:element name="Protocol" type="xs:string" minOccurs="0" maxOccurs="1"/>
              <xs:element name="LocalPortRanges" type="xs:string" minOccurs="0" maxOccurs="1"/>
              <xs:element name="RemotePortRanges" type="xs:string" minOccurs="0" maxOccurs="1"/>
              <xs:element name="LocalAddressRanges" type="xs:string" minOccurs="0" maxOccurs="1"/>
              <xs:element name="RemoteAddressRanges" type="xs:string" minOccurs="0" maxOccurs="1"/>
              <xs:element name="RoutingPolicyType" type="xs:string" minOccurs="0" maxOccurs="1"/>
              <xs:element name="Direction" type="xs:string" minOccurs="0" maxOccurs="1"/>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
        <xs:element name="NativeProfile" minOccurs="0" maxOccurs="1">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="Servers" type="xs:string" minOccurs="1" maxOccurs="1"/>
              <xs:element name="RoutingPolicyType" type="xs:string" minOccurs="0" maxOccurs="1"/>
              <xs:element name="NativeProtocolType" type="xs:string" minOccurs="0" maxOccurs="1"/>
              <xs:element name="L2tpPsk" type="xs:string" minOccurs="0" maxOccurs="1"/>
              <xs:element name="DisableClassBasedDefaultRoute" type="xs:boolean" minOccurs="0" maxOccurs="1"/>
              <xs:element name="PlumbIKEv2TSAsRoutes" type="xs:boolean" minOccurs="0" maxOccurs="1"/>
              <xs:element name="CryptographySuite" minOccurs="0" maxOccurs="1">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element name="AuthenticationTransformConstants" type="xs:string" minOccurs="0" maxOccurs="1"/>
                    <xs:element name="CipherTransformConstants" type="xs:string" minOccurs="0" maxOccurs="1"/>
                    <xs:element name="PfsGroup" type="xs:string" minOccurs="0" maxOccurs="1"/>
                    <xs:element name="DHGroup" type="xs:string" minOccurs="0" maxOccurs="1"/>
                    <xs:element name="IntegrityCheckMethod" type="xs:string" minOccurs="0" maxOccurs="1"/>
                    <xs:element name="EncryptionMethod" type="xs:string" minOccurs="0" maxOccurs="1"/>
                  </xs:sequence>
                </xs:complexType>
              </xs:element>
              <xs:element name="Authentication" minOccurs="1" maxOccurs="1">
                <xs:complexType>
                  <xs:choice>
                    <xs:sequence>
                      <xs:element name="UserMethod" type="xs:string" minOccurs="0" maxOccurs="1" />
                      <xs:element name="Eap" minOccurs="0" maxOccurs="1">
                        <xs:complexType>
                          <xs:sequence>
                            <xs:element name="Configuration" minOccurs="1" maxOccurs="1">
                              <xs:complexType>
                                <xs:sequence>
                                  <xs:element xmlns:q1="http://www.microsoft.com/provisioning/EapHostConfig" ref="q1:EapHostConfig" />
                                </xs:sequence>
                              </xs:complexType>
                            </xs:element>
                          </xs:sequence>
                        </xs:complexType>
                      </xs:element>
                    </xs:sequence>
                    <xs:element name="MachineMethod" type="xs:string" minOccurs="0" maxOccurs="1" />
                  </xs:choice>
                </xs:complexType>
              </xs:element>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
        <xs:element name="Route" minOccurs="0" maxOccurs="unbounded">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="Address" type="xs:string" minOccurs="1" maxOccurs="1"/>
              <xs:element name="PrefixSize" type="xs:unsignedByte" minOccurs="1" maxOccurs="1"/>
              <xs:element name="ExclusionRoute" type="xs:boolean" minOccurs="0" maxOccurs="1"/>
              <xs:element name="Metric" type="xs:unsignedInt" minOccurs="0" maxOccurs="1"/>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:sequence>
    </xs:complexType>
  </xs:element>
</xs:schema>]]></MSFT:Value>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>Proxy</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>A collection of configuration objects to enable a post-connect proxy support for VPN. The proxy defined for this profile is applied when this profile is active and connected.</Description>
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
          <NodeName>Manual</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Optional node containing the manual server settings.</Description>
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
            <NodeName>Server</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Optional. The value is the proxy server address as a fully qualified hostname or an IP address, with port appended after a colon for example, proxy.constoso.com:80.</Description>
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
          <NodeName>AutoConfigUrl</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Optional. Set a URL to automatically retrieve the proxy settings. </Description>
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
        <NodeName>APNBinding</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Reserved for future use.</Description>
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
          <NodeName>ProviderId</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Reserved for future use.</Description>
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
          <NodeName>AccessPointName</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Reserved for future use.</Description>
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
          <NodeName>UserName</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Reserved for future use.</Description>
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
          <NodeName>Password</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Reserved for future use.</Description>
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
          <NodeName>IsCompressionEnabled</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Reserved for future use.</Description>
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
          </DFProperties>
        </Node>
        <Node>
          <NodeName>AuthenticationType</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Reserved for future use.</Description>
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
        <NodeName>DeviceCompliance</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Get />
          </AccessType>
          <Description>Nodes under DeviceCompliance can be used to enable AAD based Conditional Access for VPN.</Description>
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
            <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.1</MSFT:CspVersion>
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
            <Description>Enables the Device Compliance flow from the client. If marked as True, the VPN Client will attempt to communicate with AAD to get a certificate to use for authentication. The VPN should be set up to use Certificate Auth and the VPN Server must trust the Server returned by Azure Active Directory.</Description>
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
                <MSFT:ValueDescription>Disabled</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>Enabled</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>Sso</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Get />
            </AccessType>
            <Description>Nodes under SSO can be used to choose a certificate different from the VPN Authentication cert for the Kerberos Authentication in the case of Device Compliance.</Description>
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
              <MIME />
            </DFType>
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
              <Description>If this field is set to True the VPN Client will look for a separate certificate for Kerberos Authentication.</Description>
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
                  <MSFT:ValueDescription>Disabled</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>true</MSFT:Value>
                  <MSFT:ValueDescription>Enabled</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>IssuerHash</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Comma Separated list of Issuer Hashes for the VPN Client to look for the correct certificate for Kerberos Authentication.</Description>
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
            <NodeName>Eku</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Comma Separated list of EKU's for the VPN Client to look for the correct certificate for Kerberos Authentication.</Description>
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
      </Node>
      <Node>
        <NodeName>PluginProfile</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Get />
          </AccessType>
          <Description>Nodes under the PluginProfile are required when using a Microsoft Store based VPN plugin.</Description>
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
          <NodeName>ServerUrlList</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Required for plug-in profiles. Semicolon-separated list of servers in URL, hostname, or IP format.</Description>
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
          <NodeName>CustomConfiguration</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Optional. This is an HTML encoded XML blob for SSL-VPN plug-in specific configuration including authentication information that is deployed to the device to make it available for SSL-VPN plug-ins. Contact the plugin provider for format and other details. Most plugins can also configure values based on the server negotiations as well as defaults.</Description>
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
          <NodeName>PluginPackageFamilyName</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Required for Plugin Profiles. This node specifies the Package Family Name of the SSL-VPN plugin app.</Description>
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
        <NodeName>NativeProfile</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Get />
          </AccessType>
          <Description>InboxNodes under NativeProfile are required when using a Windows Inbox VPN Protocol (IKEv2, PPTP, L2TP, SSTP).</Description>
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
          <NodeName>Servers</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Required for native profiles. Public or routable IP address or DNS name for the VPN gateway. It can point to the external IP of a gateway or a virtual IP for a server farm. Examples, 208.147.66.130 or vpn.contoso.com. The name can be a server name plus a friendly name separated with a semi-colon. For example, server2.example.com;server2FriendlyName. When you get the value, the return will include both the server name and the friendly name; if no friendly name had been supplied it will default to the server name. You can make a list of server by making a list of server names (with optional friendly names) seperated by commas. For example, server1.example.com,server2.example.com.</Description>
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
          <NodeName>RoutingPolicyType</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Type of routing policy.</Description>
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
            <MSFT:AllowedValues ValueType="ENUM">
              <MSFT:Enum>
                <MSFT:Value>SplitTunnel</MSFT:Value>
                <MSFT:ValueDescription>Traffic can go over any interface as determined by the networking stack.</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>ForceTunnel</MSFT:Value>
                <MSFT:ValueDescription>All IP traffic must go over the VPN interface.</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>NativeProtocolType</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Required for native profiles. Type of tunneling protocol used.</Description>
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
            <MSFT:AllowedValues ValueType="ENUM">
              <MSFT:Enum>
                <MSFT:Value>PPTP</MSFT:Value>
                <MSFT:ValueDescription>PPTP</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>L2TP</MSFT:Value>
                <MSFT:ValueDescription>L2TP</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>IKEv2</MSFT:Value>
                <MSFT:ValueDescription>IKEv2</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>Automatic</MSFT:Value>
                <MSFT:ValueDescription>Automatic</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>SSTP</MSFT:Value>
                <MSFT:ValueDescription>SSTP</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>ProtocolList</MSFT:Value>
                <MSFT:ValueDescription>ProtocolList</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>ProtocolList</NodeName>
          <DFProperties>
            <AccessType>
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
              <MSFT:OsBuildVersion>10.0.20207</MSFT:OsBuildVersion>
              <MSFT:CspVersion>1.4</MSFT:CspVersion>
            </MSFT:Applicability>
          </DFProperties>
          <Node>
            <NodeName>NativeProtocolList</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>List of inbox VPN protocols in priority order.</Description>
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
              <NodeName>
              </NodeName>
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
                  <ZeroOrMore />
                </Occurrence>
                <Scope>
                  <Dynamic />
                </Scope>
                <DFTitle>NativeProtocolRowId</DFTitle>
                <DFType>
                  <DDFName />
                </DFType>
              </DFProperties>
              <Node>
                <NodeName>Type</NodeName>
                <DFProperties>
                  <AccessType>
                    <Add />
                    <Delete />
                    <Get />
                    <Replace />
                  </AccessType>
                  <Description>Inbox VPN protocols type.</Description>
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
                  <MSFT:AllowedValues ValueType="ENUM">
                    <MSFT:Enum>
                      <MSFT:Value>Pptp</MSFT:Value>
                      <MSFT:ValueDescription>Pptp</MSFT:ValueDescription>
                    </MSFT:Enum>
                    <MSFT:Enum>
                      <MSFT:Value>L2tp</MSFT:Value>
                      <MSFT:ValueDescription>L2tp</MSFT:ValueDescription>
                    </MSFT:Enum>
                    <MSFT:Enum>
                      <MSFT:Value>Ikev2</MSFT:Value>
                      <MSFT:ValueDescription>Ikev2</MSFT:ValueDescription>
                    </MSFT:Enum>
                    <MSFT:Enum>
                      <MSFT:Value>Sstp</MSFT:Value>
                      <MSFT:ValueDescription>Sstp</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:AllowedValues>
                </DFProperties>
              </Node>
            </Node>
          </Node>
          <Node>
            <NodeName>RetryTimeInHours</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description> Default 168, max 500000.</Description>
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
            </DFProperties>
          </Node>
        </Node>
        <Node>
          <NodeName>Authentication</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Required node for native profile. It contains authentication information for the native VPN profile.</Description>
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
          </DFProperties>
          <Node>
            <NodeName>UserMethod</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>This value can be one of the following: EAP or MSChapv2 (This is not supported for IKEv2).</Description>
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
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>EAP</MSFT:Value>
                  <MSFT:ValueDescription>EAP</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>MSChapv2</MSFT:Value>
                  <MSFT:ValueDescription>MSChapv2: This is not supported for IKEv2</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>MachineMethod</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>This is only supported in IKEv2.</Description>
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
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>Certificate</MSFT:Value>
                  <MSFT:ValueDescription>Certificate</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>Eap</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Required when the native profile specifies EAP authentication. EAP configuration XML.</Description>
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
            </DFProperties>
            <Node>
              <NodeName>Configuration</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Delete />
                  <Get />
                  <Replace />
                </AccessType>
                <Description>HTML encoded XML of the EAP configuration. For more information about EAP configuration XML, see https://docs.microsoft.com/en-us/windows/client-management/mdm/eap-configuration.</Description>
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
              <NodeName>Type</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Delete />
                  <Get />
                  <Replace />
                </AccessType>
                <Description>
                    Required node for EAP profiles. This specifies the EAP Type ID
                      13 = EAP-TLS
                      26 = Ms-Chapv2
                      27 = Peap
                    </Description>
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
          </Node>
          <Node>
            <NodeName>Certificate</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Reserved for future use.</Description>
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
            </DFProperties>
            <Node>
              <NodeName>Issuer</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Delete />
                  <Get />
                  <Replace />
                </AccessType>
                <Description>Reserved for future use.</Description>
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
              <NodeName>Eku</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Delete />
                  <Get />
                  <Replace />
                </AccessType>
                <Description>Reserved for future use.</Description>
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
        </Node>
        <Node>
          <NodeName>CryptographySuite</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Properties of IPSec tunnels.</Description>
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
              <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
              <MSFT:CspVersion>1.2</MSFT:CspVersion>
            </MSFT:Applicability>
          </DFProperties>
          <Node>
            <NodeName>AuthenticationTransformConstants</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Type of authentication transform constant.</Description>
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
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>MD596</MSFT:Value>
                  <MSFT:ValueDescription>MD596</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>SHA196</MSFT:Value>
                  <MSFT:ValueDescription>SHA196</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>SHA256128</MSFT:Value>
                  <MSFT:ValueDescription>SHA256128</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>GCMAES128</MSFT:Value>
                  <MSFT:ValueDescription>GCMAES128</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>GCMAES192</MSFT:Value>
                  <MSFT:ValueDescription>GCMAES192</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>GCMAES256</MSFT:Value>
                  <MSFT:ValueDescription>GCMAES256</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>CipherTransformConstants</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Type of Cipher transform constant.</Description>
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
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>DES</MSFT:Value>
                  <MSFT:ValueDescription>DES</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>DES3</MSFT:Value>
                  <MSFT:ValueDescription>DES3</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>AES128</MSFT:Value>
                  <MSFT:ValueDescription>AES128</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>AES192</MSFT:Value>
                  <MSFT:ValueDescription>AES192</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>AES256</MSFT:Value>
                  <MSFT:ValueDescription>AES256</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>GCMAES128</MSFT:Value>
                  <MSFT:ValueDescription>GCMAES128</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>GCMAES192</MSFT:Value>
                  <MSFT:ValueDescription>GCMAES192</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>GCMAES256</MSFT:Value>
                  <MSFT:ValueDescription>GCMAES256</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>EncryptionMethod</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Type of encryption method.</Description>
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
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>DES</MSFT:Value>
                  <MSFT:ValueDescription>DES</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>DES3</MSFT:Value>
                  <MSFT:ValueDescription>DES3</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>AES128</MSFT:Value>
                  <MSFT:ValueDescription>AES128</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>AES192</MSFT:Value>
                  <MSFT:ValueDescription>AES192</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>AES256</MSFT:Value>
                  <MSFT:ValueDescription>AES256</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>AES_GCM_128</MSFT:Value>
                  <MSFT:ValueDescription>AES_GCM_128</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>AES_GCM_256</MSFT:Value>
                  <MSFT:ValueDescription>AES_GCM_256</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>IntegrityCheckMethod</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Type of integrity check.</Description>
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
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>MD5</MSFT:Value>
                  <MSFT:ValueDescription>MD5</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>SHA196</MSFT:Value>
                  <MSFT:ValueDescription>SHA196</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>SHA256</MSFT:Value>
                  <MSFT:ValueDescription>SHA256</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>SHA384</MSFT:Value>
                  <MSFT:ValueDescription>SHA384</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>DHGroup</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Group used for DH (Diffie-Hellman).</Description>
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
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>None</MSFT:Value>
                  <MSFT:ValueDescription>None</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>Group1</MSFT:Value>
                  <MSFT:ValueDescription>Group1</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>Group2</MSFT:Value>
                  <MSFT:ValueDescription>Group2</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>Group14</MSFT:Value>
                  <MSFT:ValueDescription>Group14</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>ECP256</MSFT:Value>
                  <MSFT:ValueDescription>ECP256</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>ECP384</MSFT:Value>
                  <MSFT:ValueDescription>ECP384</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>Group24</MSFT:Value>
                  <MSFT:ValueDescription>Group24</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>PfsGroup</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Group used for PFS (Perfect Forward Secrecy).</Description>
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
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>None</MSFT:Value>
                  <MSFT:ValueDescription>None</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>PFS1</MSFT:Value>
                  <MSFT:ValueDescription>PFS1</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>PFS2</MSFT:Value>
                  <MSFT:ValueDescription>PFS2</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>PFS2048</MSFT:Value>
                  <MSFT:ValueDescription>PFS2048</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>ECP256</MSFT:Value>
                  <MSFT:ValueDescription>ECP256</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>ECP384</MSFT:Value>
                  <MSFT:ValueDescription>ECP384</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>PFSMM</MSFT:Value>
                  <MSFT:ValueDescription>PFSMM</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>PFS24</MSFT:Value>
                  <MSFT:ValueDescription>PFS24</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
        </Node>
        <Node>
          <NodeName>L2tpPsk</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>The preshared key used for an L2TP connection.</Description>
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
          <NodeName>DisableClassBasedDefaultRoute</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Specifies the class based default routes. For example, if the interface IP begins with 10, it assumes a class a IP and pushes the route to 10.0.0.0/8</Description>
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
              <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
              <MSFT:CspVersion>1.2</MSFT:CspVersion>
            </MSFT:Applicability>
            <MSFT:AllowedValues ValueType="ENUM">
              <MSFT:Enum>
                <MSFT:Value>false</MSFT:Value>
                <MSFT:ValueDescription>Enabled</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>Disabled</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>PlumbIKEv2TSAsRoutes</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description> True: Plumb traffic selectors as routes onto VPN interface, False: Do not plumb traffic selectors as routes.</Description>
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
              <MSFT:OsBuildVersion>10.0.19041</MSFT:OsBuildVersion>
              <MSFT:CspVersion>1.3</MSFT:CspVersion>
            </MSFT:Applicability>
          </DFProperties>
        </Node>
      </Node>
      <Node>
        <NodeName>NetworkOutageTime</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>The amount of time in seconds the network is allowed to idle. 0 means no limit.</Description>
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
            <MSFT:OsBuildVersion>10.0.22000</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.6</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="Range">
            <MSFT:Value>[0-4294967295]</MSFT:Value>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>IPv4InterfaceMetric</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>The metric for the IPv4 interface.</Description>
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
            <MSFT:OsBuildVersion>10.0.22000</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.6</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="Range">
            <MSFT:Value>[1-9999]</MSFT:Value>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>IPv6InterfaceMetric</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>The metric for the IPv6 interface.</Description>
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
            <MSFT:OsBuildVersion>10.0.22000</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.6</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="Range">
            <MSFT:Value>[1-9999]</MSFT:Value>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>UseRasCredentials</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>true</DefaultValue>
          <Description>Determines whether the credential manager will save ras credentials after a connection.</Description>
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
            <MSFT:OsBuildVersion>10.0.22000</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.6</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>false</MSFT:Value>
              <MSFT:ValueDescription>Ras Credentials are not saved.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>true</MSFT:Value>
              <MSFT:ValueDescription>Ras Credentials are saved.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>DataEncryption</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>Require</DefaultValue>
          <Description>Determines the level of data encryption required for the connection.</Description>
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
            <MSFT:OsBuildVersion>10.0.22000</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.6</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>None</MSFT:Value>
              <MSFT:ValueDescription>No Data Encryption required.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>Require</MSFT:Value>
              <MSFT:ValueDescription>Data Encryption required.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>Max</MSFT:Value>
              <MSFT:ValueDescription>Maximum-strength Data Encryption required.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>Optional</MSFT:Value>
              <MSFT:ValueDescription>Perform encryption if possible.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>PrivateNetwork</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>true</DefaultValue>
          <Description>Determines whether the VPN connection is public or private.</Description>
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
            <MSFT:OsBuildVersion>10.0.22000</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.6</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>false</MSFT:Value>
              <MSFT:ValueDescription>VPN connection is public.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>true</MSFT:Value>
              <MSFT:ValueDescription>VPN connection is private.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>DisableIKEv2Fragmentation</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>false</DefaultValue>
          <Description>Set to disable IKEv2 Fragmentation.</Description>
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
            <MSFT:OsBuildVersion>10.0.22000</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.6</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>true</MSFT:Value>
              <MSFT:ValueDescription>IKEv2 Fragmentation will not be used.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>false</MSFT:Value>
              <MSFT:ValueDescription>IKEv2 Fragmentation is used as normal.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
    </Node>
  </Node>
  <Node>
    <NodeName>VPNv2</NodeName>
    <Path>./Device/Vendor/MSFT</Path>
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
        <MIME />
      </DFType>
      <MSFT:Applicability>
        <MSFT:OsBuildVersion>10.0.10586</MSFT:OsBuildVersion>
        <MSFT:CspVersion>1.0</MSFT:CspVersion>
        <MSFT:EditionAllowList>0x4;0x1B;0x30;0x31;0x48;0x54;0x62;0x63;0x64;0x65;0x79;0x7A;0x7D;0x7E;0x81;0x82;0x88;0x8A;0x8B;0xA1;0xA2;0xA4;0xA5;0xAB;0xAC;0xAF;0xBC;0xBF;0xCA;0xCB;0xCD;0xCF;0xD2;</MSFT:EditionAllowList>
      </MSFT:Applicability>
    </DFProperties>
    <Node>
      <NodeName>
      </NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <Description>Unique alpha numeric identifier for the profile. The profile name must not include a forward slash (/). If the profile name has a space or other non-alphanumeric character, it must be properly escaped according to the URL encoding standard.</Description>
        <DFFormat>
          <node />
        </DFFormat>
        <Occurrence>
          <ZeroOrMore />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFTitle>ProfileName</DFTitle>
        <DFType>
          <DDFName />
        </DFType>
        <MSFT:DynamicNodeNaming>
          <MSFT:ServerGeneratedUniqueIdentifier />
        </MSFT:DynamicNodeNaming>
        <MSFT:AllowedValues ValueType="RegEx">
          <MSFT:Value>^[^/]*$</MSFT:Value>
        </MSFT:AllowedValues>
        <MSFT:AtomicRequired />
      </DFProperties>
      <Node>
        <NodeName>AppTriggerList</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>List of applications set to trigger the VPN. If any of these apps are launched and the VPN Profile is currently the active Profile, this VPN Profile will be triggered to connect.</Description>
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
          <NodeName>
          </NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
            </AccessType>
            <Description>A sequential integer identifier which allows the ability to specify multiple apps for App Trigger. Sequencing must start at 0 and you should not skip numbers.</Description>
            <DFFormat>
              <node />
            </DFFormat>
            <Occurrence>
              <ZeroOrMore />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFTitle>appTriggerRowId</DFTitle>
            <DFType>
              <DDFName />
            </DFType>
            <MSFT:DynamicNodeNaming>
              <MSFT:UniqueName>A sequential integer identifier which allows the ability to specify multiple apps for App Trigger. Sequencing must start at 0 and you should not skip numbers.</MSFT:UniqueName>
            </MSFT:DynamicNodeNaming>
          </DFProperties>
          <Node>
            <NodeName>App</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>App Node under the Row Id.</Description>
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
            </DFProperties>
            <Node>
              <NodeName>Id</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Delete />
                  <Get />
                  <Replace />
                </AccessType>
                <Description>App Identity. Specified, based on the Type Field.</Description>
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
              <NodeName>Type</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Returns the type of App/Id. This value can be either of the following: PackageFamilyName - When this is returned, the App/Id value represents the PackageFamilyName of the app. The PackageFamilyName is the unique name of the Microsoft Store application. FilePath - When this is returned, the App/Id value represents the full file path of the app. For example, C:\Windows\System\Notepad.exe.</Description>
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
        </Node>
      </Node>
      <Node>
        <NodeName>RouteList</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>List of routes to be added to the Routing table for the VPN Interface. Required in the Split Tunneling case where the VPN Server site has more subnets than the default subnet based on the IP assigned to Interface.</Description>
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
          <NodeName>
          </NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
            </AccessType>
            <Description>A sequential integer identifier for the RouteList. This is required if you are adding routes. Sequencing must start at 0.</Description>
            <DFFormat>
              <node />
            </DFFormat>
            <Occurrence>
              <ZeroOrMore />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFTitle>routeRowId</DFTitle>
            <DFType>
              <DDFName />
            </DFType>
            <MSFT:DynamicNodeNaming>
              <MSFT:UniqueName>A sequential integer identifier for the RouteList. This is required if you are adding routes. Sequencing must start at 0.</MSFT:UniqueName>
            </MSFT:DynamicNodeNaming>
          </DFProperties>
          <Node>
            <NodeName>Address</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Subnet address in IPv4/v6 address format which, along with the prefix will be used to determine the destination prefix to send via the VPN Interface. This is the IP address part of the destination prefix.</Description>
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
            <NodeName>PrefixSize</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>The subnet prefix size part of the destination prefix for the route entry. This, along with the address will be used to determine the destination prefix to route through the VPN Interface.</Description>
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
                <MSFT:Value>[0-4294967295]</MSFT:Value>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>Metric</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>The route's metric.</Description>
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
                <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
                <MSFT:CspVersion>1.2</MSFT:CspVersion>
              </MSFT:Applicability>
              <MSFT:AllowedValues ValueType="None">
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>ExclusionRoute</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>false</DefaultValue>
              <Description>A boolean value that specifies if the route being added should point to the VPN Interface or the Physical Interface as the Gateway.</Description>
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
              <MSFT:Applicability>
                <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
                <MSFT:CspVersion>1.2</MSFT:CspVersion>
              </MSFT:Applicability>
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>false</MSFT:Value>
                  <MSFT:ValueDescription>This route will direct traffic over the VPN.</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>true</MSFT:Value>
                  <MSFT:ValueDescription>This route will direct traffic over the physical interface.</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
        </Node>
      </Node>
      <Node>
        <NodeName>DomainNameInformationList</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>NRPT (Name Resolution Policy Table) Rules for the VPN Profile.</Description>
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
          <NodeName>
          </NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
            </AccessType>
            <Description>A sequential integer identifier for the Domain Name information. Sequencing must start at 0.</Description>
            <DFFormat>
              <node />
            </DFFormat>
            <Occurrence>
              <ZeroOrMore />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFTitle>dniRowId</DFTitle>
            <DFType>
              <DDFName />
            </DFType>
            <MSFT:DynamicNodeNaming>
              <MSFT:UniqueName>A sequential integer identifier for the Domain Name information. Sequencing must start at 0.</MSFT:UniqueName>
            </MSFT:DynamicNodeNaming>
          </DFProperties>
          <Node>
            <NodeName>DomainName</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Used to indicate the namespace to which the policy applies. When a Name query is issued, the DNS client compares the name in the query to all of the namespaces under DomainNameInformationList to find a match. This parameter can be one of the following types: FQDN - Fully qualified domain name. Suffix - A domain suffix that will be appended to the shortname query for DNS resolution. To specify a suffix, prepend a . to the DNS suffix.</Description>
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
            <NodeName>DomainNameType</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Returns the namespace type. This value can be one of the following: FQDN - If the DomainName was not prepended with a . and applies only to the fully qualified domain name (FQDN) of a specified host. Suffix - If the DomainName was prepended with a . and applies to the specified namespace, all records in that namespace, and all subdomains.</Description>
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
            <NodeName>DnsServers</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Comma Seperated list of IP addresses for the DNS Servers to use for the domain name.</Description>
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
            <NodeName>WebProxyServers</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Web Proxy Server IP address if you are redirecting traffic through your intranet.</Description>
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
            <NodeName>AutoTrigger</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>false</DefaultValue>
              <Description>Boolean to determine whether this domain name rule will trigger the VPN.</Description>
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
                <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
                <MSFT:CspVersion>1.2</MSFT:CspVersion>
              </MSFT:Applicability>
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>false</MSFT:Value>
                  <MSFT:ValueDescription>This DomainName rule will not trigger the VPN.</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>true</MSFT:Value>
                  <MSFT:ValueDescription>This DomainName rule will trigger the VPN.</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>Persistent</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>false</DefaultValue>
              <Description>A boolean value that specifies if the rule being added should persist even when the VPN is not connected.</Description>
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
                <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
                <MSFT:CspVersion>1.2</MSFT:CspVersion>
              </MSFT:Applicability>
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>false</MSFT:Value>
                  <MSFT:ValueDescription>This DomainName rule will only be applied when VPN is connected.</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>true</MSFT:Value>
                  <MSFT:ValueDescription>This DomainName rule will always be present and applied.</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
        </Node>
      </Node>
      <Node>
        <NodeName>TrafficFilterList</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description> A list of rules allowing traffic over the VPN Interface. Each Rule ID is OR'ed. Within each rule ID each Filter type is AND'ed.</Description>
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
          <NodeName>
          </NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
            </AccessType>
            <Description>A sequential integer identifier for the Traffic Filter rules. Sequencing must start at 0.</Description>
            <DFFormat>
              <node />
            </DFFormat>
            <Occurrence>
              <ZeroOrMore />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFTitle>trafficFilterId</DFTitle>
            <DFType>
              <DDFName />
            </DFType>
            <MSFT:DynamicNodeNaming>
              <MSFT:UniqueName>A sequential integer identifier for the Traffic Filter rules. Sequencing must start at 0.</MSFT:UniqueName>
            </MSFT:DynamicNodeNaming>
          </DFProperties>
          <Node>
            <NodeName>App</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Per App VPN Rule. This will Allow only the Apps specified to be allowed over VPN Interface</Description>
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
              <NodeName>Id</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Delete />
                  <Get />
                  <Replace />
                </AccessType>
                <Description>App identity for the app-based traffic filter. The value for this node can be one of the following: PackageFamilyName - This App/Id value represents the PackageFamilyName of the app. The PackageFamilyName is the unique name of a Microsoft Store application. FilePath - This App/Id value represents the full file path of the app. For example, C:\Windows\System\Notepad.exe. SYSTEM - This value enables Kernel Drivers to send traffic through VPN (for example, PING or SMB).</Description>
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
              <NodeName>Type</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description> Returns the type of ID of the App/Id. Either PackageFamilyName, FilePath, or System.</Description>
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
            <NodeName>Claims</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Specifies a rule in Security Descriptor Definition Language (SDDL) format to check against local user token.</Description>
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
            <NodeName>Protocol</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>0-255 number representing the ip protocol (TCP = 6, UDP = 17).</Description>
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
              <MSFT:AllowedValues ValueType="Range">
                <MSFT:Value>[0-255]</MSFT:Value>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>LocalPortRanges</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Comma Separated list of ranges for eg. 100-120,200,300-320.</Description>
              <DFFormat>
                <chr />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFTitle>LocalPortRanges</DFTitle>
              <DFType>
                <MIME />
              </DFType>
              <MSFT:AllowedValues ValueType="RegEx">
                <MSFT:Value>^[\d]*$</MSFT:Value>
              </MSFT:AllowedValues>
              <MSFT:DependencyBehavior>
                <MSFT:DependencyGroup FriendlyId="ProtocolDependency">
                  <MSFT:Dependency Type="DependsOn">
                    <MSFT:DependencyUri>Vendor/MSFT/VPNv2/[ProfileName]/TrafficFilterList/[trafficFilterId]/Protocol</MSFT:DependencyUri>
                    <MSFT:DependencyAllowedValue ValueType="Range">
                      <MSFT:Value>[6,17]</MSFT:Value>
                    </MSFT:DependencyAllowedValue>
                  </MSFT:Dependency>
                </MSFT:DependencyGroup>
              </MSFT:DependencyBehavior>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>RemotePortRanges</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>A list of comma separated values specifying remote port ranges to allow. For example, 100-120, 200, 300-320.</Description>
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
                <MSFT:Value>^[\d]*$</MSFT:Value>
              </MSFT:AllowedValues>
              <MSFT:DependencyBehavior>
                <MSFT:DependencyGroup FriendlyId="ProtocolDependency">
                  <MSFT:Dependency Type="DependsOn">
                    <MSFT:DependencyUri>Vendor/MSFT/VPNv2/[ProfileName]/TrafficFilterList/[trafficFilterId]/Protocol</MSFT:DependencyUri>
                    <MSFT:DependencyAllowedValue ValueType="Range">
                      <MSFT:Value>[6,17]</MSFT:Value>
                    </MSFT:DependencyAllowedValue>
                  </MSFT:Dependency>
                </MSFT:DependencyGroup>
              </MSFT:DependencyBehavior>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>LocalAddressRanges</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>A list of comma separated values specifying local IP address ranges to allow.</Description>
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
            <NodeName>RemoteAddressRanges</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>A list of comma separated values specifying remote IP address ranges to allow.</Description>
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
            <NodeName>RoutingPolicyType</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Specifies the routing policy if an App or Claims type is used in the traffic filter. The scope of this property is for this traffic filter rule alone.</Description>
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
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>SplitTunnel</MSFT:Value>
                  <MSFT:ValueDescription>For this traffic filter rule, only the traffic meant for the VPN interface (as determined by the networking stack) goes over the interface. Internet traffic can continue to go over the other interfaces.</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>ForceTunnel</MSFT:Value>
                  <MSFT:ValueDescription>For this traffic rule all IP traffic must go through the VPN Interface only.</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>Direction</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>
                                Outbound - The traffic filter allows traffic to reach destinations matching this rule. This is the default.
                                Inbound - The traffic filter allows traffic coming from external locations matching this rule.
                            </Description>
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
                <MSFT:OsBuildVersion>10.0.19041</MSFT:OsBuildVersion>
                <MSFT:CspVersion>1.3</MSFT:CspVersion>
              </MSFT:Applicability>
            </DFProperties>
          </Node>
        </Node>
      </Node>
      <Node>
        <NodeName>EdpModeId</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>Enterprise ID, which is required for connecting this VPN profile with an WIP policy. When this is set, the networking stack looks for this Enterprise ID in the app token to determine if the traffic is allowed to go over the VPN. If the profile is active, it also automatically triggers the VPN to connect. We recommend having only one such profile per device.</Description>
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
        <NodeName>RememberCredentials</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>false</DefaultValue>
          <Description>Boolean value (true or false) for caching credentials.</Description>
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
              <MSFT:ValueDescription>Do not cache credentials.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>true</MSFT:Value>
              <MSFT:ValueDescription>Credentials are cached whenever possible.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
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
          <DefaultValue>false</DefaultValue>
          <Description>An optional flag to enable Always On mode. This will automatically connect the VPN at sign-in and will stay connected until the user manually disconnects.</Description>
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
              <MSFT:ValueDescription>Always On is turned off.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>true</MSFT:Value>
              <MSFT:ValueDescription>Always On is turned on.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>AlwaysOnActive</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>1</DefaultValue>
          <Description>An optional flag to activate Always On mode. This is true by default if AlwaysOn is true. Setting controls whether "Connect Automatically" is toggled on profile creation.</Description>
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
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>Always On is inactive.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>Always On is activated on provisioning.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>DeviceTunnel</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>false</DefaultValue>
          <Description>If turned on a device tunnel profile does four things.
                        First, it automatically becomes an always on profile.
                        Second, it does not require the presence or logging in of any user to the machine in order for it to connect.
                        Third, no other Device Tunnel profile maybe be present on the same machine.
A device tunnel profile must be deleted before another device tunnel profile can be added, removed, or connected.</Description>
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
            <MSFT:OsBuildVersion>10.0.16299</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.3</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>false</MSFT:Value>
              <MSFT:ValueDescription>This is not a device tunnel profile.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>true</MSFT:Value>
              <MSFT:ValueDescription>This is a device tunnel profile.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>RegisterDNS</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>false</DefaultValue>
          <Description>Allows registration of the connection's address in DNS.</Description>
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
            <MSFT:OsBuildVersion>10.0.16299</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.3</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>false</MSFT:Value>
              <MSFT:ValueDescription>Do not register the connection's address in DNS.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>true</MSFT:Value>
              <MSFT:ValueDescription>Register the connection's addresses in DNS.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>DnsSuffix</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>Specifies one or more comma separated DNS suffixes. The first in the list is also used as the primary connection specific DNS suffix for the VPN Interface. The entire list will also be added into the SuffixSearchList.</Description>
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
        <NodeName>ByPassForLocal</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>
                        False : Do not Bypass for Local traffic
                        True : ByPass VPN Interface for Local Traffic

                        Optional. When this setting is True, requests to local resources that are available on the same Wi-Fi network as the VPN client can bypass the VPN. For example, if enterprise policy for VPN requires force tunnel for VPN, but enterprise intends to allow the remote user to connect locally to media center in their home, then this option should be set to True. The user can bypass VPN for local subnet traffic. When this is set to False, the setting is disabled and no subnet exceptions are allowed.
                    </Description>
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
        </DFProperties>
      </Node>
      <Node>
        <NodeName>TrustedNetworkDetection</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>Comma separated string to identify the trusted network. VPN will not connect automatically when the user is on their corporate wireless network where protected resources are directly accessible to the device.</Description>
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
            <MSFT:Value>,</MSFT:Value>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>DisableAdvancedOptionsEditButton</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>
                        Optional. When this setting is True, the Advanced Options page will have its edit functions disabled, only allowing viewing and Clear Sign-In Info.
                    </Description>
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
            <MSFT:OsBuildVersion>10.0.22000</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.5</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>false</MSFT:Value>
              <MSFT:ValueDescription>Advanced Options Edit Button is available.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>true</MSFT:Value>
              <MSFT:ValueDescription>Advanced Options Edit Button is unavailable.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>DisableDisconnectButton</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>
                        Optional. When this setting is True, the Disconnect button will not be visible for connected profiles.
                    </Description>
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
            <MSFT:OsBuildVersion>10.0.22000</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.5</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>false</MSFT:Value>
              <MSFT:ValueDescription>Disconnect Button is visible.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>true</MSFT:Value>
              <MSFT:ValueDescription>Disconnect Button is not visible.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>ProfileXML</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>The XML schema for provisioning all the fields of a VPN.</Description>
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
          <MSFT:AllowedValues ValueType="XSD">
            <MSFT:Value><![CDATA[
<xs:schema attributeFormDefault="unqualified" elementFormDefault="qualified" xmlns:xs="http://www.w3.org/2001/XMLSchema">
  <xs:import namespace="http://www.microsoft.com/provisioning/EapHostConfig" schemaLocation="EapHostConfig.xsd" />
  <xs:element name="VPNProfile">
    <xs:complexType>
      <xs:sequence>
        <xs:element name="ProfileName" type="xs:string" minOccurs="0" maxOccurs="1" />
        <xs:element name="EdpModeId" type="xs:string" minOccurs="0" maxOccurs="1" />
        <xs:element name="RememberCredentials" type="xs:boolean" minOccurs="0" maxOccurs="1" />
        <xs:element name="AlwaysOn" type="xs:boolean" minOccurs="0" maxOccurs="1" />
        <xs:element name="DnsSuffix" type="xs:string" minOccurs="0" maxOccurs="1"/>
        <xs:element name="TrustedNetworkDetection" type="xs:string" minOccurs="0" maxOccurs="1"/>
        <xs:element name="DisableAdvancedOptionsEditButton" type="xs:boolean" minOccurs="0" maxOccurs="1" />
        <xs:element name="DisableDisconnectButton" type="xs:boolean" minOccurs="0" maxOccurs="1" />
        <xs:element name="LockDown" type="xs:boolean" minOccurs="0" maxOccurs="1"/>
        <xs:element name="DeviceTunnel" type="xs:boolean" minOccurs="0" maxOccurs="1"/>
        <xs:element name="RegisterDNS" type="xs:boolean" minOccurs="0" maxOccurs="1"/>
        <xs:element name="ByPassForLocal" type="xs:boolean" minOccurs="0" maxOccurs="1"/>
        <xs:element name="RequireVpnClientAppUI" type="xs:boolean" minOccurs="0" maxOccurs="1"/>
        <xs:element name="Proxy" minOccurs="0" maxOccurs="1">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="AutoConfigUrl" type="xs:string" minOccurs="0" maxOccurs="1"/>
              <xs:element name="Manual" minOccurs="0" maxOccurs="1">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element name="Server" type="xs:string" minOccurs="1" maxOccurs="1"/>
                  </xs:sequence>
                </xs:complexType>
              </xs:element>
            </xs:sequence>
          </xs:complexType>
        </xs:element>

        <xs:element name="APNBinding" minOccurs="0" maxOccurs="1">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ProviderId" type="xs:string" minOccurs="0" maxOccurs="1"/>
              <xs:element name="AccessPointName" type="xs:string" minOccurs="0" maxOccurs="1"/>
              <xs:element name="UserName" type="xs:string" minOccurs="0" maxOccurs="1"/>
              <xs:element name="Password" type="xs:string" minOccurs="0" maxOccurs="1"/>
              <xs:element name="IsCompressionEnabled" type="xs:boolean" minOccurs="0" maxOccurs="1"/>
              <xs:element name="AuthenticationType" type="xs:string" minOccurs="0" maxOccurs="1"/>
            </xs:sequence>
          </xs:complexType>
        </xs:element>

        <xs:element name="DeviceCompliance" minOccurs="0" maxOccurs="1">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="Enabled" type="xs:boolean" minOccurs="1" maxOccurs="1" />
              <xs:element name="Sso" minOccurs="0" maxOccurs="1">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element name="Enabled" type="xs:boolean" minOccurs="1" maxOccurs="1" />
                    <xs:element name="Eku" type="xs:string" minOccurs="0" maxOccurs="1" />
                    <xs:element name="IssuerHash" type="xs:string" minOccurs="0" maxOccurs="1"/>
                  </xs:sequence>
                </xs:complexType>
              </xs:element>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
        <xs:element name="PluginProfile" minOccurs="0" maxOccurs="1">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ServerUrlList" type="xs:string" minOccurs="1" maxOccurs="1"/>
              <xs:element name="CustomConfiguration" type="xs:string" minOccurs="0" maxOccurs="1"/>
              <xs:element name="PluginPackageFamilyName" type="xs:string" minOccurs="1" maxOccurs="1"/>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
        <xs:element name="AppTrigger" minOccurs="0" maxOccurs="unbounded">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="App" minOccurs="1" maxOccurs="1">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element name="Id" type="xs:string" minOccurs="1" maxOccurs="1"/>
                  </xs:sequence>
                </xs:complexType>
              </xs:element>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
        <xs:element name="DomainNameInformation" minOccurs="0" maxOccurs="unbounded">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="DomainName" type="xs:string" minOccurs="1" maxOccurs="1"/>
              <xs:element name="DnsServers" type="xs:string" minOccurs="0" maxOccurs="1"/>
              <xs:element name="WebProxyServers" type="xs:string" minOccurs="0" maxOccurs="1"/>
              <xs:element name="AutoTrigger" type="xs:boolean" minOccurs="0" maxOccurs="1"/>
              <xs:element name="Persistent" type="xs:boolean" minOccurs="0" maxOccurs="1"/>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
        <xs:element name="TrafficFilter" minOccurs="0" maxOccurs="unbounded">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="App" minOccurs="0" maxOccurs="1">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element name="Id" type="xs:string" minOccurs="1" maxOccurs="1"/>
                  </xs:sequence>
                </xs:complexType>
              </xs:element>
              <xs:element name="Claims" type="xs:string" minOccurs="0" maxOccurs="1"/>
              <xs:element name="Protocol" type="xs:string" minOccurs="0" maxOccurs="1"/>
              <xs:element name="LocalPortRanges" type="xs:string" minOccurs="0" maxOccurs="1"/>
              <xs:element name="RemotePortRanges" type="xs:string" minOccurs="0" maxOccurs="1"/>
              <xs:element name="LocalAddressRanges" type="xs:string" minOccurs="0" maxOccurs="1"/>
              <xs:element name="RemoteAddressRanges" type="xs:string" minOccurs="0" maxOccurs="1"/>
              <xs:element name="RoutingPolicyType" type="xs:string" minOccurs="0" maxOccurs="1"/>
              <xs:element name="Direction" type="xs:string" minOccurs="0" maxOccurs="1"/>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
        <xs:element name="NativeProfile" minOccurs="0" maxOccurs="1">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="Servers" type="xs:string" minOccurs="1" maxOccurs="1"/>
              <xs:element name="RoutingPolicyType" type="xs:string" minOccurs="0" maxOccurs="1"/>
              <xs:element name="NativeProtocolType" type="xs:string" minOccurs="0" maxOccurs="1"/>
              <xs:element name="L2tpPsk" type="xs:string" minOccurs="0" maxOccurs="1"/>
              <xs:element name="DisableClassBasedDefaultRoute" type="xs:boolean" minOccurs="0" maxOccurs="1"/>
              <xs:element name="PlumbIKEv2TSAsRoutes" type="xs:boolean" minOccurs="0" maxOccurs="1"/>
              <xs:element name="CryptographySuite" minOccurs="0" maxOccurs="1">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element name="AuthenticationTransformConstants" type="xs:string" minOccurs="0" maxOccurs="1"/>
                    <xs:element name="CipherTransformConstants" type="xs:string" minOccurs="0" maxOccurs="1"/>
                    <xs:element name="PfsGroup" type="xs:string" minOccurs="0" maxOccurs="1"/>
                    <xs:element name="DHGroup" type="xs:string" minOccurs="0" maxOccurs="1"/>
                    <xs:element name="IntegrityCheckMethod" type="xs:string" minOccurs="0" maxOccurs="1"/>
                    <xs:element name="EncryptionMethod" type="xs:string" minOccurs="0" maxOccurs="1"/>
                  </xs:sequence>
                </xs:complexType>
              </xs:element>
              <xs:element name="Authentication" minOccurs="1" maxOccurs="1">
                <xs:complexType>
                  <xs:choice>
                    <xs:sequence>
                      <xs:element name="UserMethod" type="xs:string" minOccurs="0" maxOccurs="1" />
                      <xs:element name="Eap" minOccurs="0" maxOccurs="1">
                        <xs:complexType>
                          <xs:sequence>
                            <xs:element name="Configuration" minOccurs="1" maxOccurs="1">
                              <xs:complexType>
                                <xs:sequence>
                                  <xs:element xmlns:q1="http://www.microsoft.com/provisioning/EapHostConfig" ref="q1:EapHostConfig" />
                                </xs:sequence>
                              </xs:complexType>
                            </xs:element>
                          </xs:sequence>
                        </xs:complexType>
                      </xs:element>
                    </xs:sequence>
                    <xs:element name="MachineMethod" type="xs:string" minOccurs="0" maxOccurs="1" />
                  </xs:choice>
                </xs:complexType>
              </xs:element>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
        <xs:element name="Route" minOccurs="0" maxOccurs="unbounded">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="Address" type="xs:string" minOccurs="1" maxOccurs="1"/>
              <xs:element name="PrefixSize" type="xs:unsignedByte" minOccurs="1" maxOccurs="1"/>
              <xs:element name="ExclusionRoute" type="xs:boolean" minOccurs="0" maxOccurs="1"/>
              <xs:element name="Metric" type="xs:unsignedInt" minOccurs="0" maxOccurs="1"/>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:sequence>
    </xs:complexType>
  </xs:element>
</xs:schema>]]></MSFT:Value>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>Proxy</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>A collection of configuration objects to enable a post-connect proxy support for VPN. The proxy defined for this profile is applied when this profile is active and connected.</Description>
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
          <NodeName>Manual</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Optional node containing the manual server settings.</Description>
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
            <NodeName>Server</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Optional. The value is the proxy server address as a fully qualified hostname or an IP address, with port appended after a colon for example, proxy.constoso.com:80.</Description>
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
          <NodeName>AutoConfigUrl</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Optional. Set a URL to automatically retrieve the proxy settings. </Description>
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
        <NodeName>APNBinding</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Reserved for future use.</Description>
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
          <NodeName>ProviderId</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Reserved for future use.</Description>
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
          <NodeName>AccessPointName</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Reserved for future use.</Description>
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
          <NodeName>UserName</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Reserved for future use.</Description>
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
          <NodeName>Password</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Reserved for future use.</Description>
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
          <NodeName>IsCompressionEnabled</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Reserved for future use.</Description>
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
          </DFProperties>
        </Node>
        <Node>
          <NodeName>AuthenticationType</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Reserved for future use.</Description>
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
        <NodeName>DeviceCompliance</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Get />
          </AccessType>
          <Description>Nodes under DeviceCompliance can be used to enable AAD based Conditional Access for VPN.</Description>
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
            <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.1</MSFT:CspVersion>
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
            <Description>Enables the Device Compliance flow from the client. If marked as True, the VPN Client will attempt to communicate with AAD to get a certificate to use for authentication. The VPN should be set up to use Certificate Auth and the VPN Server must trust the Server returned by Azure Active Directory.</Description>
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
                <MSFT:ValueDescription>Disabled</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>Enabled</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>Sso</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Get />
            </AccessType>
            <Description>Nodes under SSO can be used to choose a certificate different from the VPN Authentication cert for the Kerberos Authentication in the case of Device Compliance.</Description>
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
              <MIME />
            </DFType>
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
              <Description>If this field is set to True the VPN Client will look for a separate certificate for Kerberos Authentication.</Description>
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
                  <MSFT:ValueDescription>Disabled</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>true</MSFT:Value>
                  <MSFT:ValueDescription>Enabled</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>IssuerHash</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Comma Separated list of Issuer Hashes for the VPN Client to look for the correct certificate for Kerberos Authentication.</Description>
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
            <NodeName>Eku</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Comma Separated list of EKU's for the VPN Client to look for the correct certificate for Kerberos Authentication.</Description>
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
      </Node>
      <Node>
        <NodeName>PluginProfile</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Get />
          </AccessType>
          <Description>Nodes under the PluginProfile are required when using a Microsoft Store based VPN plugin.</Description>
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
          <NodeName>ServerUrlList</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Required for plug-in profiles. Semicolon-separated list of servers in URL, hostname, or IP format.</Description>
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
          <NodeName>CustomConfiguration</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Optional. This is an HTML encoded XML blob for SSL-VPN plug-in specific configuration including authentication information that is deployed to the device to make it available for SSL-VPN plug-ins. Contact the plugin provider for format and other details. Most plugins can also configure values based on the server negotiations as well as defaults.</Description>
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
          <NodeName>PluginPackageFamilyName</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Required for Plugin Profiles. This node specifies the Package Family Name of the SSL-VPN plugin app.</Description>
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
        <NodeName>NativeProfile</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Get />
          </AccessType>
          <Description>Nodes under NativeProfile are required when using a Windows Inbox VPN Protocol (IKEv2, PPTP, L2TP, SSTP).</Description>
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
          <NodeName>Servers</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Required for native profiles. Public or routable IP address or DNS name for the VPN gateway. It can point to the external IP of a gateway or a virtual IP for a server farm. Examples, 208.147.66.130 or vpn.contoso.com. The name can be a server name plus a friendly name separated with a semi-colon. For example, server2.example.com;server2FriendlyName. When you get the value, the return will include both the server name and the friendly name; if no friendly name had been supplied it will default to the server name. You can make a list of server by making a list of server names (with optional friendly names) seperated by commas. For example, server1.example.com,server2.example.com.</Description>
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
          <NodeName>RoutingPolicyType</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Type of routing policy.</Description>
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
            <MSFT:AllowedValues ValueType="ENUM">
              <MSFT:Enum>
                <MSFT:Value>SplitTunnel</MSFT:Value>
                <MSFT:ValueDescription>Traffic can go over any interface as determined by the networking stack.</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>ForceTunnel</MSFT:Value>
                <MSFT:ValueDescription>All IP traffic must go over the VPN interface.</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>NativeProtocolType</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Required for native profiles. Type of tunneling protocol used.</Description>
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
            <MSFT:AllowedValues ValueType="ENUM">
              <MSFT:Enum>
                <MSFT:Value>PPTP</MSFT:Value>
                <MSFT:ValueDescription>PPTP</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>L2TP</MSFT:Value>
                <MSFT:ValueDescription>L2TP</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>IKEv2</MSFT:Value>
                <MSFT:ValueDescription>IKEv2</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>Automatic</MSFT:Value>
                <MSFT:ValueDescription>Automatic</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>SSTP</MSFT:Value>
                <MSFT:ValueDescription>SSTP</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>ProtocolList</MSFT:Value>
                <MSFT:ValueDescription>ProtocolList</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>ProtocolList</NodeName>
          <DFProperties>
            <AccessType>
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
              <MSFT:OsBuildVersion>10.0.20207</MSFT:OsBuildVersion>
              <MSFT:CspVersion>1.4</MSFT:CspVersion>
            </MSFT:Applicability>
          </DFProperties>
          <Node>
            <NodeName>NativeProtocolList</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>List of inbox VPN protocols in priority order. </Description>
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
              <NodeName>
              </NodeName>
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
                  <ZeroOrMore />
                </Occurrence>
                <Scope>
                  <Dynamic />
                </Scope>
                <DFTitle>NativeProtocolRowId</DFTitle>
                <DFType>
                  <DDFName />
                </DFType>
              </DFProperties>
              <Node>
                <NodeName>Type</NodeName>
                <DFProperties>
                  <AccessType>
                    <Add />
                    <Delete />
                    <Get />
                    <Replace />
                  </AccessType>
                  <Description>Inbox VPN protocols type.</Description>
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
                  <MSFT:AllowedValues ValueType="ENUM">
                    <MSFT:Enum>
                      <MSFT:Value>Pptp</MSFT:Value>
                      <MSFT:ValueDescription>Pptp</MSFT:ValueDescription>
                    </MSFT:Enum>
                    <MSFT:Enum>
                      <MSFT:Value>L2tp</MSFT:Value>
                      <MSFT:ValueDescription>L2tp</MSFT:ValueDescription>
                    </MSFT:Enum>
                    <MSFT:Enum>
                      <MSFT:Value>Ikev2</MSFT:Value>
                      <MSFT:ValueDescription>Ikev2</MSFT:ValueDescription>
                    </MSFT:Enum>
                    <MSFT:Enum>
                      <MSFT:Value>Sstp</MSFT:Value>
                      <MSFT:ValueDescription>Sstp</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:AllowedValues>
                </DFProperties>
              </Node>
            </Node>
          </Node>
          <Node>
            <NodeName>RetryTimeInHours</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description> Default 168, max 500000.</Description>
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
            </DFProperties>
          </Node>
        </Node>
        <Node>
          <NodeName>Authentication</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Required node for native profile. It contains authentication information for the native VPN profile.</Description>
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
          </DFProperties>
          <Node>
            <NodeName>UserMethod</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Type of user authentication.</Description>
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
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>EAP</MSFT:Value>
                  <MSFT:ValueDescription>EAP</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>MSChapv2</MSFT:Value>
                  <MSFT:ValueDescription>MSChapv2: This is not supported for IKEv2</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>MachineMethod</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>This is only supported in IKEv2.</Description>
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
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>Certificate</MSFT:Value>
                  <MSFT:ValueDescription>Certificate</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>Eap</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Required when the native profile specifies EAP authentication. EAP configuration XML.</Description>
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
            </DFProperties>
            <Node>
              <NodeName>Configuration</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Delete />
                  <Get />
                  <Replace />
                </AccessType>
                <Description>HTML encoded XML of the EAP configuration. For more information about EAP configuration XML, see https://docs.microsoft.com/en-us/windows/client-management/mdm/eap-configuration.</Description>
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
              <NodeName>Type</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Delete />
                  <Get />
                  <Replace />
                </AccessType>
                <Description>
                      Required node for EAP profiles. This specifies the EAP Type ID
                      13 = EAP-TLS
                      26 = Ms-Chapv2
                      27 = Peap
                    </Description>
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
          </Node>
          <Node>
            <NodeName>Certificate</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Reserved for future use.</Description>
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
            </DFProperties>
            <Node>
              <NodeName>Issuer</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Delete />
                  <Get />
                  <Replace />
                </AccessType>
                <Description>Reserved for future use.</Description>
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
              <NodeName>Eku</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Delete />
                  <Get />
                  <Replace />
                </AccessType>
                <Description>Reserved for future use.</Description>
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
        </Node>
        <Node>
          <NodeName>CryptographySuite</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Properties of IPSec tunnels.</Description>
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
              <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
              <MSFT:CspVersion>1.2</MSFT:CspVersion>
            </MSFT:Applicability>
          </DFProperties>
          <Node>
            <NodeName>AuthenticationTransformConstants</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Type of authentication transform constant.</Description>
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
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>MD596</MSFT:Value>
                  <MSFT:ValueDescription>MD596</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>SHA196</MSFT:Value>
                  <MSFT:ValueDescription>SHA196</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>SHA256128</MSFT:Value>
                  <MSFT:ValueDescription>SHA256128</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>GCMAES128</MSFT:Value>
                  <MSFT:ValueDescription>GCMAES128</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>GCMAES192</MSFT:Value>
                  <MSFT:ValueDescription>GCMAES192</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>GCMAES256</MSFT:Value>
                  <MSFT:ValueDescription>GCMAES256</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>CipherTransformConstants</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Type of Cipher transform constant.</Description>
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
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>DES</MSFT:Value>
                  <MSFT:ValueDescription>DES</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>DES3</MSFT:Value>
                  <MSFT:ValueDescription>DES3</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>AES128</MSFT:Value>
                  <MSFT:ValueDescription>AES128</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>AES192</MSFT:Value>
                  <MSFT:ValueDescription>AES192</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>AES256</MSFT:Value>
                  <MSFT:ValueDescription>AES256</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>GCMAES128</MSFT:Value>
                  <MSFT:ValueDescription>GCMAES128</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>GCMAES192</MSFT:Value>
                  <MSFT:ValueDescription>GCMAES192</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>GCMAES256</MSFT:Value>
                  <MSFT:ValueDescription>GCMAES256</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>EncryptionMethod</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Type of encryption method.</Description>
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
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>DES</MSFT:Value>
                  <MSFT:ValueDescription>DES</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>DES3</MSFT:Value>
                  <MSFT:ValueDescription>DES3</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>AES128</MSFT:Value>
                  <MSFT:ValueDescription>AES128</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>AES192</MSFT:Value>
                  <MSFT:ValueDescription>AES192</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>AES256</MSFT:Value>
                  <MSFT:ValueDescription>AES256</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>AES_GCM_128</MSFT:Value>
                  <MSFT:ValueDescription>AES_GCM_128</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>AES_GCM_256</MSFT:Value>
                  <MSFT:ValueDescription>AES_GCM_256</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>IntegrityCheckMethod</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Type of integrity check.</Description>
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
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>MD5</MSFT:Value>
                  <MSFT:ValueDescription>MD5</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>SHA196</MSFT:Value>
                  <MSFT:ValueDescription>SHA196</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>SHA256</MSFT:Value>
                  <MSFT:ValueDescription>SHA256</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>SHA384</MSFT:Value>
                  <MSFT:ValueDescription>SHA384</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>DHGroup</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Group used for DH (Diffie-Hellman).</Description>
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
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>None</MSFT:Value>
                  <MSFT:ValueDescription>None</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>Group1</MSFT:Value>
                  <MSFT:ValueDescription>Group1</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>Group2</MSFT:Value>
                  <MSFT:ValueDescription>Group2</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>Group14</MSFT:Value>
                  <MSFT:ValueDescription>Group14</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>ECP256</MSFT:Value>
                  <MSFT:ValueDescription>ECP256</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>ECP384</MSFT:Value>
                  <MSFT:ValueDescription>ECP384</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>Group24</MSFT:Value>
                  <MSFT:ValueDescription>Group24</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>PfsGroup</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Group used for PFS (Perfect Forward Secrecy).</Description>
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
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>None</MSFT:Value>
                  <MSFT:ValueDescription>None</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>PFS1</MSFT:Value>
                  <MSFT:ValueDescription>PFS1</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>PFS2</MSFT:Value>
                  <MSFT:ValueDescription>PFS2</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>PFS2048</MSFT:Value>
                  <MSFT:ValueDescription>PFS2048</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>ECP256</MSFT:Value>
                  <MSFT:ValueDescription>ECP256</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>ECP384</MSFT:Value>
                  <MSFT:ValueDescription>ECP384</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>PFSMM</MSFT:Value>
                  <MSFT:ValueDescription>PFSMM</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>PFS24</MSFT:Value>
                  <MSFT:ValueDescription>PFS24</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
        </Node>
        <Node>
          <NodeName>L2tpPsk</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>The preshared key used for an L2TP connection.</Description>
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
          <NodeName>DisableClassBasedDefaultRoute</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Specifies the class based default routes. For example, if the interface IP begins with 10, it assumes a class a IP and pushes the route to 10.0.0.0/8</Description>
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
              <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
              <MSFT:CspVersion>1.2</MSFT:CspVersion>
            </MSFT:Applicability>
            <MSFT:AllowedValues ValueType="ENUM">
              <MSFT:Enum>
                <MSFT:Value>false</MSFT:Value>
                <MSFT:ValueDescription>Enabled</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>Disabled</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>PlumbIKEv2TSAsRoutes</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description> True: Plumb traffic selectors as routes onto VPN interface, False: Do not plumb traffic selectors as routes.</Description>
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
              <MSFT:OsBuildVersion>10.0.19041</MSFT:OsBuildVersion>
              <MSFT:CspVersion>1.3</MSFT:CspVersion>
            </MSFT:Applicability>
          </DFProperties>
        </Node>
      </Node>
      <Node>
        <NodeName>NetworkOutageTime</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>The amount of time in seconds the network is allowed to idle. 0 means no limit.</Description>
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
            <MSFT:OsBuildVersion>10.0.22000</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.6</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="Range">
            <MSFT:Value>[0-4294967295]</MSFT:Value>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>IPv4InterfaceMetric</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>The metric for the IPv4 interface.</Description>
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
            <MSFT:OsBuildVersion>10.0.22000</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.6</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="Range">
            <MSFT:Value>[1-9999]</MSFT:Value>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>IPv6InterfaceMetric</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>The metric for the IPv6 interface.</Description>
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
            <MSFT:OsBuildVersion>10.0.22000</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.6</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="Range">
            <MSFT:Value>[1-9999]</MSFT:Value>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>UseRasCredentials</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>true</DefaultValue>
          <Description>Determines whether the credential manager will save ras credentials after a connection.</Description>
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
            <MSFT:OsBuildVersion>10.0.22000</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.6</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>false</MSFT:Value>
              <MSFT:ValueDescription>Ras Credentials are not saved.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>true</MSFT:Value>
              <MSFT:ValueDescription>Ras Credentials are saved.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>DataEncryption</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>Require</DefaultValue>
          <Description>Determines the level of data encryption required for the connection.</Description>
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
            <MSFT:OsBuildVersion>10.0.22000</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.6</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>None</MSFT:Value>
              <MSFT:ValueDescription>No Data Encryption required.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>Require</MSFT:Value>
              <MSFT:ValueDescription>Data Encryption required.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>Max</MSFT:Value>
              <MSFT:ValueDescription>Maximum-strength Data Encryption required.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>Optional</MSFT:Value>
              <MSFT:ValueDescription>Perform encryption if possible.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>PrivateNetwork</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>true</DefaultValue>
          <Description>Determines whether the VPN connection is public or private.</Description>
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
            <MSFT:OsBuildVersion>10.0.22000</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.6</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>false</MSFT:Value>
              <MSFT:ValueDescription>VPN connection is public.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>true</MSFT:Value>
              <MSFT:ValueDescription>VPN connection is private.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>DisableIKEv2Fragmentation</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>false</DefaultValue>
          <Description>Set to disable IKEv2 Fragmentation.</Description>
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
            <MSFT:OsBuildVersion>10.0.22000</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.6</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>true</MSFT:Value>
              <MSFT:ValueDescription>IKEv2 Fragmentation will not be used.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>false</MSFT:Value>
              <MSFT:ValueDescription>IKEv2 Fragmentation is used as normal.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
    </Node>
  </Node>
</MgmtTree>
```

## Related articles

[VPNv2 configuration service provider reference](vpnv2-csp.md)
