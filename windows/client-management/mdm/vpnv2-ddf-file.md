---
title: VPNv2 DDF file
description: This topic shows the OMA DM device description framework (DDF) for the VPNv2 configuration service provider.
ms.assetid: 4E2F36B7-D2EE-4F48-AD1A-6BDE7E72CC94
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 12/05/2017
---

# VPNv2 DDF file


This topic shows the OMA DM device description framework (DDF) for the **VPNv2** configuration service provider.

Looking for the DDF XML files? See [CSP DDF files download](configuration-service-provider-reference.md#csp-ddf-files-download).

The XML below is for Windows 10, version 1709.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN"
  "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"
  [
    <?oma-dm-ddf-ver supported-versions="1.2"?>
]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
    <VerDTD>1.2</VerDTD>
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
                <MIME>com.microsoft/1.3/MDM/VPNv2</MIME>
            </DFType>
        </DFProperties>
        <Node>
            <NodeName></NodeName>
            <DFProperties>
                <AccessType>
                    <Add />
                    <Delete />
                    <Get />
                    <Replace />
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
                <DFTitle>ProfileName</DFTitle>
                <DFType>
                    <DDFName></DDFName>
                </DFType>
            </DFProperties>
            <Node>
                <NodeName>AppTriggerList</NodeName>
                <DFProperties>
                    <AccessType>
                        <Get />
                    </AccessType>
                    <Description>List of applications set to trigger the VPN. If any of these apps are launched and the VPN Profile is currently the active Profile, this VPN Profile will be triggered to connect</Description>
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
                            <DDFName></DDFName>
                        </DFType>
                    </DFProperties>
                    <Node>
                        <NodeName>App</NodeName>
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
                                <DDFName></DDFName>
                            </DFType>
                        </DFProperties>
                        <Node>
                            <NodeName>Id</NodeName>
                            <DFProperties>
                                <AccessType>
                                    <Get />
                                    <Add />
                                    <Delete />
                                    <Replace />
                                </AccessType>
                                <Description>App Identity. Specified, based on the Type Field..</Description>
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
                            <NodeName>Type</NodeName>
                            <DFProperties>
                                <AccessType>
                                    <Get />
                                </AccessType>
                                <Description>
                                    PackageFamilyName
                                    FQBN
                                    FilePath
                                </Description>
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
                    </Node>
                </Node>
            </Node>
            <Node>
                <NodeName>RouteList</NodeName>
                <DFProperties>
                    <AccessType>
                        <Get />
                    </AccessType>
                    <Description>List of routes to be added to the Routing table for the VPN Interface. Required in the Split Tunneling case where the VPN Server site has more subnets than the default subnet based on the IP assigned to Interface</Description>
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
                            <DDFName></DDFName>
                        </DFType>
                    </DFProperties>
                    <Node>
                        <NodeName>Address</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                                <Add />
                                <Delete />
                                <Replace />
                            </AccessType>
                            <Description>Subnet address</Description>
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
                        <NodeName>PrefixSize</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                                <Add />
                                <Delete />
                                <Replace />
                            </AccessType>
                            <Description>Subnet Prefix</Description>
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
                      <NodeName>Metric</NodeName>
                      <DFProperties>
                        <AccessType>
                          <Get />
                          <Add />
                          <Delete />
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
                          <MIME>text/plain</MIME>
                        </DFType>
                      </DFProperties>
                    </Node>
                    <Node>
                        <NodeName>ExclusionRoute</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                                <Add />
                                <Delete />
                                <Replace />
                            </AccessType>
                            <Description>
                              False = This Route will direct traffic over the VPN
                              True = This Route will direct traffic over the physical interface
                              By default, this value is false.
                            </Description>
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
                                <MIME>text/plain</MIME>
                            </DFType>
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
                    <Description>NRPT (Name Resolution Policy Table) Rules for the VPN Profile</Description>
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
                            <DDFName></DDFName>
                        </DFType>
                    </DFProperties>
                    <Node>
                        <NodeName>DomainName</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                                <Add />
                                <Delete />
                                <Replace />
                            </AccessType>
                            <Description>Value based on the DomainNameType field</Description>
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
                        <NodeName>DomainNameType</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                            </AccessType>
                            <Description>
                                a. FQDN: Select this if the policy applies only to the fully qualified domain name (FQDN) of a specified host. Do not use the FQDN of a domain.

                                b. Suffix: Select this if the policy applies to the specified namespace, all records in that namespace, and all subdomains.

                                c. Prefix: Select this if the policy applies only to a hostname. This policy will be triggered only if the hostname portion of the query matches the name configured here. A flat name (dotless name) must be configured here.

                                d. Any: Use this if the policy applies to all.
                            </Description>
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
                        <NodeName>DnsServers</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                                <Add />
                                <Delete />
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
                                <MIME>text/plain</MIME>
                            </DFType>
                        </DFProperties>
                    </Node>
                    <Node>
                        <NodeName>WebProxyServers</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                                <Add />
                                <Delete />
                                <Replace />
                            </AccessType>
                            <Description>[Optional] If you are redirecting traffic through your intranet Web proxy servers, add the webproxyserver (Singular)</Description>
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
                      <NodeName>AutoTrigger</NodeName>
                      <DFProperties>
                        <AccessType>
                          <Add />
                          <Delete />
                          <Get />
                          <Replace />
                        </AccessType>
                        <Description>
                          False = This DomainName Rule will not trigger the VPN
                          True = This DomainName Rule will trigger the VPN
                          By default, this value is false.
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
                          <MIME>text/plain</MIME>
                        </DFType>
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
                        <Description>
                          False = This DomainName Rule will only be plumbed when the VPN is connected
                          True = This DomainName Rule will always be plumbed.
                          By default, this value is false.
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
                          <MIME>text/plain</MIME>
                        </DFType>
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
                    <Description>
                        A list of rules allowing traffic over the VPN Interface.

                        Each Rule ID is ORed.
                        Within each rule ID each Filter type is AND'ed
                    </Description>
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
                            <DDFName></DDFName>
                        </DFType>
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
                                <DDFName></DDFName>
                            </DFType>
                        </DFProperties>
                        <Node>
                            <NodeName>Id</NodeName>
                            <DFProperties>
                                <AccessType>
                                    <Get />
                                    <Add />
                                    <Delete />
                                    <Replace />
                                </AccessType>
                                <Description>App Identity. Specified, based on the Type Field..</Description>
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
                            <NodeName>Type</NodeName>
                            <DFProperties>
                                <AccessType>
                                    <Get />
                                </AccessType>
                                <Description>
                                    PackageFamilyName
                                    FQBN
                                    FilePath
                                </Description>
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
                    </Node>
                    <Node>
                        <NodeName>Claims</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                                <Add />
                                <Delete />
                                <Replace />
                            </AccessType>
                            <Description>Specifies a rule in Security Descriptor Definition Language (SDDL) format to check against local user token</Description>
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
                                <MIME>text/plain</MIME>
                            </DFType>
                        </DFProperties>
                    </Node>
                    <Node>
                        <NodeName>Protocol</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                                <Add />
                                <Delete />
                                <Replace />
                            </AccessType>
                            <Description>
                                0-255 number representing the ip protocol (TCP = 6, UDP = 17)
                            </Description>
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
                                <MIME>text/plain</MIME>
                            </DFType>
                        </DFProperties>
                    </Node>
                    <Node>
                        <NodeName>LocalPortRanges</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                                <Add />
                                <Delete />
                                <Replace />
                            </AccessType>
                            <Description>
                                Comma Separated list of ranges for eg.
                                100-120,200,300-320
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
                            <DFTitle>LocalPortRanges</DFTitle>
                            <DFType>
                                <MIME>text/plain</MIME>
                            </DFType>
                        </DFProperties>
                    </Node>
                    <Node>
                        <NodeName>RemotePortRanges</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                                <Add />
                                <Delete />
                                <Replace />
                            </AccessType>
                            <Description>
                                Comma Separated list of ranges for eg.
                                100-120,200,300-320
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
                                <MIME>text/plain</MIME>
                            </DFType>
                        </DFProperties>
                    </Node>
                    <Node>
                        <NodeName>LocalAddressRanges</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                                <Add />
                                <Delete />
                                <Replace />
                            </AccessType>
                            <Description>Comma Separated list of IP ranges </Description>
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
                                <MIME>text/plain</MIME>
                            </DFType>
                        </DFProperties>
                    </Node>
                    <Node>
                        <NodeName>RemoteAddressRanges</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                                <Add />
                                <Delete />
                                <Replace />
                            </AccessType>
                            <Description>Comma Separated list of IP ranges </Description>
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
                                <MIME>text/plain</MIME>
                            </DFType>
                        </DFProperties>
                    </Node>
                    <Node>
                        <NodeName>RoutingPolicyType</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                                <Add />
                                <Delete />
                                <Replace />
                            </AccessType>
                            <Description>
                                SplitTunnel - For this Rule, you are allowed to go over the VPN as well as the Internet. Other traffic may not go over the VPN Interface.
                                ForceTunnel - All Traffic matching this rule must go over only the VPN Interface.

                                Only Applicable for App and Claims type.
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
                                <MIME>text/plain</MIME>
                            </DFType>
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
                    <Description>
                        Enterprise ID for the EDP Policy that this VPN Profile is supposed to interace with.
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
                        <MIME>text/plain</MIME>
                    </DFType>
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
                    <Description>
                        False = Remember credentials is turned off
                        True = Remember credentials is turned on
                        If True, Credentials will be cached wherever applicable.
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
                    <Description>
                        False = Always on in not turned On
                        True = Always is on is turned on

                        Note: Always On will work only for the active profile.
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
                        <MIME>text/plain</MIME>
                    </DFType>
                </DFProperties>
            </Node>
            <Node>
                <NodeName>LockDown</NodeName>
                <DFProperties>
                    <AccessType>
                        <Add />
                        <Delete />
                        <Get />
                        <Replace />
                    </AccessType>
                    <Description>
                        False = This is not a LockDown profile.
                        True = This is a LockDown profile.

                        If turned on a lockdown profile does four things.
                        First, it automatically becomes an always on profile.
                        Second, it can never be disconnected.
                        Third, if the profile is not connected, then the user
                        has no network connectivity.
                        Fourth, no other profiles may be connected or modified.

                        A lockdown profile must be deleted before any other
                        profiles can be added, removed, or connected.
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
                        <MIME>text/plain</MIME>
                    </DFType>
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
                    <Description>
                        False = This is not a Device Tunnel profile and it is the default value.
                        True = This is a Device Tunnel profile.

                        If turned on a device tunnel profile does four things.
                        First, it automatically becomes an always on profile.
                        Second, it does not require the presence or logging in
                        of any user to the machine in order for it to connect.
                        Third, no other Device Tunnel profile maybe be present on the
                        Same machine.

                        A device tunnel profile must be deleted before another device tunnel
                        profile can be added, removed, or connected.
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
                        <MIME>text/plain</MIME>
                    </DFType>
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
                    <Description>
                        False = Do not register the connection's address in DNS (default).
                        True = Register the connection's addresses in DNS.
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
                        <MIME>text/plain</MIME>
                    </DFType>
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
                    <Description>Connection Specific DNS Suffix. for eg. corp.contoso.com</Description>
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
                        <MIME>text/plain</MIME>
                    </DFType>
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
                        <MIME>text/plain</MIME>
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
                    <Description>
                        String
                        Optional.String to identify the trusted network. VPN will not connect when the user is on their corporate wireless network where protected resources are directly accessible to the device.
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
                        <MIME>text/plain</MIME>
                    </DFType>
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
                <Description>
                  Xml schema for provisioning all the fields of a VPN
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
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
                <NodeName>Proxy</NodeName>
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
                        <DDFName></DDFName>
                    </DFType>
                </DFProperties>
                <Node>
                    <NodeName>Manual</NodeName>
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
                            <DDFName></DDFName>
                        </DFType>
                    </DFProperties>
                    <Node>
                        <NodeName>Server</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                                <Add />
                                <Delete />
                                <Replace />
                            </AccessType>
                            <Description>Optional. The value is the proxy server address as a fully qualified hostname or an IP address, with port appended after a colon for example, proxy.constoso.com:80</Description>
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
                            <MIME>text/plain</MIME>
                        </DFType>
                    </DFProperties>
                </Node>
            </Node>
            <Node>
                <NodeName>APNBinding</NodeName>
                <DFProperties>
                    <AccessType>
                        <Get />
                    </AccessType>
                    <Description>Reserved for Future Use</Description>
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
                        <DDFName></DDFName>
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
                    <NodeName>AccessPointName</NodeName>
                    <DFProperties>
                        <AccessType>
                            <Add />
                            <Delete />
                            <Get />
                            <Replace />
                        </AccessType>
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
                    <NodeName>UserName</NodeName>
                    <DFProperties>
                        <AccessType>
                            <Add />
                            <Delete />
                            <Get />
                            <Replace />
                        </AccessType>
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
                    <NodeName>Password</NodeName>
                    <DFProperties>
                        <AccessType>
                            <Add />
                            <Delete />
                            <Get />
                            <Replace />
                        </AccessType>
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
                    <NodeName>IsCompressionEnabled</NodeName>
                    <DFProperties>
                        <AccessType>
                            <Add />
                            <Delete />
                            <Get />
                            <Replace />
                        </AccessType>
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
                            <MIME>text/plain</MIME>
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
            </Node>
            <Node>
                <NodeName>DeviceCompliance</NodeName>
                <DFProperties>
                    <AccessType>
                        <Add />
                        <Get />
                    </AccessType>
                    <Description>Nodes under DeviceCompliance can be used to enable AAD based Conditional Access for VPN</Description>
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
                        <DDFName></DDFName>
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
                        <Description>Enables the Device Compliance flow from the client. If marked as True, the VPN Client will attempt to communicate with AAD to get a certificate to use for authentication. The VPN should be set up to use Certificate Auth and the VPN Server must trust the Server returned by Azure Active Directory</Description>
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
                            <MIME>text/plain</MIME>
                        </DFType>
                    </DFProperties>
                </Node>
                <Node>
                    <NodeName>Sso</NodeName>
                    <DFProperties>
                        <AccessType>
                            <Add />
                            <Get />
                        </AccessType>
                        <Description>Nodes under SSO can be used to choose a certificate different from the VPN Authentication cert for the Kerberos Authentication in the case of Device Compliance</Description>
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
                            <MIME>text/plain</MIME>
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
                            <Description>If this field is set to True the VPN Client will look for a separate certificate for Kerberos Authentication</Description>
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
                                <MIME>text/plain</MIME>
                            </DFType>
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
                            <Description>Comma Separated list of Issuer Hashes for the VPN Client to look for the correct certificate for Kerberos Authentication</Description>
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
                        <NodeName>Eku</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Add />
                                <Delete />
                                <Get />
                                <Replace />
                            </AccessType>
                            <Description>Comma Separated list of EKU's for the VPN Client to look for the correct certificate for Kerberos Authentication</Description>
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
                </Node>
            </Node>
            <Node>
                <NodeName>PluginProfile</NodeName>
                <DFProperties>
                    <AccessType>
                        <Get />
                        <Add />
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
                        <DDFName></DDFName>
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
                        <Description>Required. URL for VPN Server</Description>
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
                    <NodeName>CustomConfiguration</NodeName>
                    <DFProperties>
                        <AccessType>
                            <Add />
                            <Delete />
                            <Get />
                            <Replace />
                        </AccessType>
                        <Description>Optional. This is an XML blob for SSL-VPN plugin specific configuration that is deployed to the device to make it available for SSL-VPN plugins</Description>
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
                    <NodeName>PluginPackageFamilyName</NodeName>
                    <DFProperties>
                        <AccessType>
                            <Add />
                            <Delete />
                            <Get />
                            <Replace />
                        </AccessType>
                        <Description>Required for Plugin Profiles. This node specifies the Package Family Name of the SSL-VPN plugin app</Description>
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
                    <NodeName>CustomStoreUrl</NodeName>
                    <DFProperties>
                        <AccessType>
                            <Add />
                            <Delete />
                            <Get />
                            <Replace />
                        </AccessType>
                        <Description>TO be Deleted</Description>
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
            </Node>
            <Node>
                <NodeName>NativeProfile</NodeName>
                <DFProperties>
                    <AccessType>
                        <Get />
                        <Add />
                    </AccessType>
                    <Description>Inbox VPN Profile</Description>
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
                        <DDFName></DDFName>
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
                        <Description>
                            Server


                            Required. Public or routable IP address or DNS name for the VPN gateway server farm. It can point to the external IP of a gateway or a virtual IP for a server farm
                            Some examples are 208.23.45.130 or vpn.contoso.com.
                        </Description>
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
                    <NodeName>RoutingPolicyType</NodeName>
                    <DFProperties>
                        <AccessType>
                            <Add />
                            <Delete />
                            <Get />
                            <Replace />
                        </AccessType>
                        <Description>
                            SplitTunnel - For this Connection, Traffic can go over any interface as determined by the networking stack.

                            ForceTunnel - All IP Traffic  must go over only the VPN Interface.
                        </Description>
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
                    <NodeName>NativeProtocolType</NodeName>
                    <DFProperties>
                        <AccessType>
                            <Add />
                            <Delete />
                            <Get />
                            <Replace />
                        </AccessType>
                        <Description>
                            Supported Values :

                            Pptp
                            L2tp
                            Ikev2
                            Automatic
                        </Description>
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
                    <NodeName>Authentication</NodeName>
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
                            <DDFName></DDFName>
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
                            <Description>
                                Supported Values

                                Mschapv2
                                Eap
                            </Description>
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
                        <NodeName>MachineMethod</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Add />
                                <Delete />
                                <Get />
                                <Replace />
                            </AccessType>
                            <Description>
                                Supported Values

                                Eap
                                Certificate
                                PresharedKey
                            </Description>
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
                        <NodeName>Eap</NodeName>
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
                                <DDFName></DDFName>
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
                                <Description>XML Configuration for EAP Method</Description>
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
                                    <MIME>text/plain</MIME>
                                </DFType>
                            </DFProperties>
                        </Node>
                    </Node>
                    <Node>
                        <NodeName>Certificate</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                            </AccessType>
                            <Description>Reserved for future Use</Description>
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
                                <DDFName></DDFName>
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
                                <Description>Reserved for future Use</Description>
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
                            <NodeName>Eku</NodeName>
                            <DFProperties>
                                <AccessType>
                                    <Add />
                                    <Delete />
                                    <Get />
                                    <Replace />
                                </AccessType>
                                <Description>Reserved for future Use</Description>
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
                    <DDFName></DDFName>
                  </DFType>
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
                    <Description>
                      Choices are:
                      -- MD596
                      -- SHA196
                      -- SHA256128
                      -- GCMAES128
                      -- GCMAES192
                      -- GCMAES256
                    </Description>
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
                  <NodeName>CipherTransformConstants</NodeName>
                  <DFProperties>
                    <AccessType>
                      <Add />
                      <Delete />
                      <Get />
                      <Replace />
                    </AccessType>
                    <Description>
                      Choices Are:
                      -- DES
                      -- DES3
                      -- AES128
                      -- AES192
                      -- AES256
                      -- GCMAES128
                      -- GCMAES192
                      -- GCMAES256
                    </Description>
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
                  <NodeName>EncryptionMethod</NodeName>
                  <DFProperties>
                    <AccessType>
                      <Add />
                      <Delete />
                      <Get />
                      <Replace />
                    </AccessType>
                    <Description>
                      Choices are:
                      -- DES
                      -- DES3
                      -- AES128
                      -- AES192
                      -- AES256
                      -- AES_GCM_128
                      -- AES_GCM_256
                    </Description>
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
                  <NodeName>IntegrityCheckMethod</NodeName>
                  <DFProperties>
                    <AccessType>
                      <Add />
                      <Delete />
                      <Get />
                      <Replace />
                    </AccessType>
                    <Description>
                      Choices are:
                      -- MD5
                      -- SHA196
                      -- SHA256
                      -- SHA384
                    </Description>
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
                  <NodeName>DHGroup</NodeName>
                  <DFProperties>
                    <AccessType>
                      <Add />
                      <Delete />
                      <Get />
                      <Replace />
                    </AccessType>
                    <Description>
                      Choices are:
                      -- Group1
                      -- Group2
                      -- Group14
                      -- ECP256
                      -- ECP384
                      -- Group24
                    </Description>
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
                  <NodeName>PfsGroup</NodeName>
                  <DFProperties>
                    <AccessType>
                      <Add />
                      <Delete />
                      <Get />
                      <Replace />
                    </AccessType>
                    <Description>
                      Choices are:
                      -- PFS1
                      -- PFS2
                      -- PFS2048
                      -- ECP256
                      -- ECP384
                      -- PFSMM
                      -- PFS24
                    </Description>
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
                  <Description>The preshared key used for an L2TP connection</Description>
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
                <NodeName>DisableClassBasedDefaultRoute</NodeName>
                <DFProperties>
                  <AccessType>
                    <Add />
                    <Delete />
                    <Get />
                    <Replace />
                  </AccessType>
                  <Description>
                    When false this VPN connection will plumb class based default routes.
                    i.e.
                    If the interface IP begins with 10, it assumes a class a IP
                    and pushes the route 10.0.0.0/8
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
                    <MIME>text/plain</MIME>
                  </DFType>
                </DFProperties>
              </Node>
            </Node>
        </Node>
    </Node>
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
                <MIME>com.microsoft/1.3/MDM/VPNv2</MIME>
            </DFType>
        </DFProperties>
        <Node>
            <NodeName></NodeName>
            <DFProperties>
                <AccessType>
                    <Add />
                    <Delete />
                    <Get />
                    <Replace />
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
                <DFTitle>ProfileName</DFTitle>
                <DFType>
                    <DDFName></DDFName>
                </DFType>
            </DFProperties>
            <Node>
                <NodeName>AppTriggerList</NodeName>
                <DFProperties>
                    <AccessType>
                        <Get />
                    </AccessType>
                    <Description>List of applications set to trigger the VPN. If any of these apps are launched and the VPN Profile is currently the active Profile, this VPN Profile will be triggered to connect</Description>
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
                            <DDFName></DDFName>
                        </DFType>
                    </DFProperties>
                    <Node>
                        <NodeName>App</NodeName>
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
                                <DDFName></DDFName>
                            </DFType>
                        </DFProperties>
                        <Node>
                            <NodeName>Id</NodeName>
                            <DFProperties>
                                <AccessType>
                                    <Get />
                                    <Add />
                                    <Delete />
                                    <Replace />
                                </AccessType>
                                <Description>App Identity. Specified, based on the Type Field..</Description>
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
                            <NodeName>Type</NodeName>
                            <DFProperties>
                                <AccessType>
                                    <Get />
                                </AccessType>
                                <Description>
                                    PackageFamilyName
                                    FQBN
                                    FilePath
                                </Description>
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
                    </Node>
                </Node>
            </Node>
            <Node>
                <NodeName>RouteList</NodeName>
                <DFProperties>
                    <AccessType>
                        <Get />
                    </AccessType>
                    <Description>List of routes to be added to the Routing table for the VPN Interface. Required in the Split Tunneling case where the VPN Server site has more subnets than the default subnet based on the IP assigned to Interface</Description>
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
                            <DDFName></DDFName>
                        </DFType>
                    </DFProperties>
                    <Node>
                        <NodeName>Address</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                                <Add />
                                <Delete />
                                <Replace />
                            </AccessType>
                            <Description>Subnet address</Description>
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
                        <NodeName>PrefixSize</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                                <Add />
                                <Delete />
                                <Replace />
                            </AccessType>
                            <Description>Subnet Prefix</Description>
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
                      <NodeName>Metric</NodeName>
                      <DFProperties>
                        <AccessType>
                          <Get />
                          <Add />
                          <Delete />
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
                          <MIME>text/plain</MIME>
                        </DFType>
                      </DFProperties>
                    </Node>
                    <Node>
                        <NodeName>ExclusionRoute</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                                <Add />
                                <Delete />
                                <Replace />
                            </AccessType>
                            <Description>Is this a route to never go over the VPN</Description>
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
                                <MIME>text/plain</MIME>
                            </DFType>
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
                    <Description>NRPT (Name Resolution Policy Table) Rules for the VPN Profile</Description>
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
                            <DDFName></DDFName>
                        </DFType>
                    </DFProperties>
                    <Node>
                        <NodeName>DomainName</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                                <Add />
                                <Delete />
                                <Replace />
                            </AccessType>
                            <Description>Value based on the DomainNameType field</Description>
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
                        <NodeName>DomainNameType</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                            </AccessType>
                            <Description>
                                a. FQDN: Select this if the policy applies only to the fully qualified domain name (FQDN) of a specified host. Do not use the FQDN of a domain.

                                b. Suffix: Select this if the policy applies to the specified namespace, all records in that namespace, and all subdomains.

                                c. Prefix: Select this if the policy applies only to a hostname. This policy will be triggered only if the hostname portion of the query matches the name configured here. A flat name (dotless name) must be configured here.

                                d. Any: Use this if the policy applies to all.
                            </Description>
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
                        <NodeName>DnsServers</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                                <Add />
                                <Delete />
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
                                <MIME>text/plain</MIME>
                            </DFType>
                        </DFProperties>
                    </Node>
                    <Node>
                        <NodeName>WebProxyServers</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                                <Add />
                                <Delete />
                                <Replace />
                            </AccessType>
                            <Description>[Optional] If you are redirecting traffic through your intranet Web proxy servers, add the webproxyserver (Singular)</Description>
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
                      <NodeName>AutoTrigger</NodeName>
                      <DFProperties>
                        <AccessType>
                          <Add />
                          <Delete />
                          <Get />
                          <Replace />
                        </AccessType>
                        <Description>
                          False = This DomainName Rule will not trigger the VPN
                          True = This DomainName Rule will trigger the VPN
                          By default, this value is false.
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
                          <MIME>text/plain</MIME>
                        </DFType>
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
                        <Description>
                          False = This DomainName Rule will only be plumbed when the VPN is connected
                          True = This DomainName Rule will always be plumbed.
                          By default, this value is false.
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
                          <MIME>text/plain</MIME>
                        </DFType>
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
                    <Description>
                        A list of rules allowing traffic over the VPN Interface.

                        Each Rule ID is ORed.
                        Within each rule ID each Filter type is AND'ed
                    </Description>
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
                            <DDFName></DDFName>
                        </DFType>
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
                                <DDFName></DDFName>
                            </DFType>
                        </DFProperties>
                        <Node>
                            <NodeName>Id</NodeName>
                            <DFProperties>
                                <AccessType>
                                    <Get />
                                    <Add />
                                    <Delete />
                                    <Replace />
                                </AccessType>
                                <Description>App Identity. Specified, based on the Type Field..</Description>
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
                            <NodeName>Type</NodeName>
                            <DFProperties>
                                <AccessType>
                                    <Get />
                                </AccessType>
                                <Description>
                                    PackageFamilyName
                                    FQBN
                                    FilePath
                                </Description>
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
                    </Node>
                    <Node>
                        <NodeName>Claims</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                                <Add />
                                <Delete />
                                <Replace />
                            </AccessType>
                            <Description>Specifies a rule in Security Descriptor Definition Language (SDDL) format to check against local user token</Description>
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
                                <MIME>text/plain</MIME>
                            </DFType>
                        </DFProperties>
                    </Node>
                    <Node>
                        <NodeName>Protocol</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                                <Add />
                                <Delete />
                                <Replace />
                            </AccessType>
                            <Description>
                                0-255 number representing the ip protocol (TCP = 6, UDP = 17)
                            </Description>
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
                                <MIME>text/plain</MIME>
                            </DFType>
                        </DFProperties>
                    </Node>
                    <Node>
                        <NodeName>LocalPortRanges</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                                <Add />
                                <Delete />
                                <Replace />
                            </AccessType>
                            <Description>
                                Comma Separated list of ranges for eg.
                                100-120,200,300-320
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
                            <DFTitle>LocalPortRanges</DFTitle>
                            <DFType>
                                <MIME>text/plain</MIME>
                            </DFType>
                        </DFProperties>
                    </Node>
                    <Node>
                        <NodeName>RemotePortRanges</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                                <Add />
                                <Delete />
                                <Replace />
                            </AccessType>
                            <Description>
                                Comma Separated list of ranges for eg.
                                100-120,200,300-320
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
                                <MIME>text/plain</MIME>
                            </DFType>
                        </DFProperties>
                    </Node>
                    <Node>
                        <NodeName>LocalAddressRanges</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                                <Add />
                                <Delete />
                                <Replace />
                            </AccessType>
                            <Description>Comma Separated list of IP ranges </Description>
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
                                <MIME>text/plain</MIME>
                            </DFType>
                        </DFProperties>
                    </Node>
                    <Node>
                        <NodeName>RemoteAddressRanges</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                                <Add />
                                <Delete />
                                <Replace />
                            </AccessType>
                            <Description>Comma Separated list of IP ranges </Description>
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
                                <MIME>text/plain</MIME>
                            </DFType>
                        </DFProperties>
                    </Node>
                    <Node>
                        <NodeName>RoutingPolicyType</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                                <Add />
                                <Delete />
                                <Replace />
                            </AccessType>
                            <Description>
                                SplitTunnel - For this Rule, you are allowed to go over the VPN as well as the Internet. Other traffic may not go over the VPN Interface.
                                ForceTunnel - All Traffic matching this rule must go over only the VPN Interface.

                                Only Applicable for App and Claims type.
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
                                <MIME>text/plain</MIME>
                            </DFType>
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
                    <Description>
                        Enterprise ID for the EDP Policy that this VPN Profile is supposed to interace with.
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
                        <MIME>text/plain</MIME>
                    </DFType>
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
                    <Description>
                        False = Remember credentials is turned off
                        True = Remember credentials is turned on
                        If True, Credentials will be cached wherever applicable.
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
                    <Description>
                        False = Always on in not turned On
                        True = Always is on is turned on

                        Note: Always On will work only for the active profile.
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
                        <MIME>text/plain</MIME>
                    </DFType>
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
                    <Description>Connection Specific DNS Suffix. for eg. corp.contoso.com</Description>
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
                        <MIME>text/plain</MIME>
                    </DFType>
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
                        <MIME>text/plain</MIME>
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
                    <Description>
                        String
                        Optional.String to identify the trusted network. VPN will not connect when the user is on their corporate wireless network where protected resources are directly accessible to the device.
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
                        <MIME>text/plain</MIME>
                    </DFType>
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
                <Description>
                  Xml schema for provisioning all the fields of a VPN
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
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
                <NodeName>Proxy</NodeName>
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
                        <DDFName></DDFName>
                    </DFType>
                </DFProperties>
                <Node>
                    <NodeName>Manual</NodeName>
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
                            <DDFName></DDFName>
                        </DFType>
                    </DFProperties>
                    <Node>
                        <NodeName>Server</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                                <Add />
                                <Delete />
                                <Replace />
                            </AccessType>
                            <Description>Optional. The value is the proxy server address as a fully qualified hostname or an IP address, with port appended after a colon for example, proxy.constoso.com:80</Description>
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
                            <MIME>text/plain</MIME>
                        </DFType>
                    </DFProperties>
                </Node>
            </Node>
            <Node>
                <NodeName>APNBinding</NodeName>
                <DFProperties>
                    <AccessType>
                        <Get />
                    </AccessType>
                    <Description>Reserved for Future Use</Description>
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
                        <DDFName></DDFName>
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
                    <NodeName>AccessPointName</NodeName>
                    <DFProperties>
                        <AccessType>
                            <Add />
                            <Delete />
                            <Get />
                            <Replace />
                        </AccessType>
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
                    <NodeName>UserName</NodeName>
                    <DFProperties>
                        <AccessType>
                            <Add />
                            <Delete />
                            <Get />
                            <Replace />
                        </AccessType>
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
                    <NodeName>Password</NodeName>
                    <DFProperties>
                        <AccessType>
                            <Add />
                            <Delete />
                            <Get />
                            <Replace />
                        </AccessType>
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
                    <NodeName>IsCompressionEnabled</NodeName>
                    <DFProperties>
                        <AccessType>
                            <Add />
                            <Delete />
                            <Get />
                            <Replace />
                        </AccessType>
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
                            <MIME>text/plain</MIME>
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
            </Node>
            <Node>
                <NodeName>DeviceCompliance</NodeName>
                <DFProperties>
                    <AccessType>
                        <Add />
                        <Get />
                    </AccessType>
                    <Description>Nodes under DeviceCompliance can be used to enable AAD based Conditional Access for VPN</Description>
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
                        <DDFName></DDFName>
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
                        <Description>Enables the Device Compliance flow from the client. If marked as True, the VPN Client will attempt to communicate with AAD to get a certificate to use for authentication. The VPN should be set up to use Certificate Auth and the VPN Server must trust the Server returned by Azure Active Directory</Description>
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
                            <MIME>text/plain</MIME>
                        </DFType>
                    </DFProperties>
                </Node>
                <Node>
                    <NodeName>Sso</NodeName>
                    <DFProperties>
                        <AccessType>
                            <Add />
                            <Get />
                        </AccessType>
                        <Description>Nodes under SSO can be used to choose a certificate different from the VPN Authentication cert for the Kerberos Authentication in the case of Device Compliance</Description>
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
                            <MIME>text/plain</MIME>
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
                            <Description>If this field is set to True the VPN Client will look for a separate certificate for Kerberos Authentication</Description>
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
                                <MIME>text/plain</MIME>
                            </DFType>
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
                            <Description>Comma Separated list of Issuer Hashes for the VPN Client to look for the correct certificate for Kerberos Authentication</Description>
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
                        <NodeName>Eku</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Add />
                                <Delete />
                                <Get />
                                <Replace />
                            </AccessType>
                            <Description>Comma Separated list of EKU's for the VPN Client to look for the correct certificate for Kerberos Authentication</Description>
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
                </Node>
            </Node>
            <Node>
                <NodeName>PluginProfile</NodeName>
                <DFProperties>
                    <AccessType>
                        <Get />
                        <Add />
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
                        <DDFName></DDFName>
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
                        <Description>Required. URL for VPN Server</Description>
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
                    <NodeName>CustomConfiguration</NodeName>
                    <DFProperties>
                        <AccessType>
                            <Add />
                            <Delete />
                            <Get />
                            <Replace />
                        </AccessType>
                        <Description>Optional. This is an XML blob for SSL-VPN plugin specific configuration that is deployed to the device to make it available for SSL-VPN plugins</Description>
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
                    <NodeName>PluginPackageFamilyName</NodeName>
                    <DFProperties>
                        <AccessType>
                            <Add />
                            <Delete />
                            <Get />
                            <Replace />
                        </AccessType>
                        <Description>Required for Plugin Profiles. This node specifies the Package Family Name of the SSL-VPN plugin app</Description>
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
                    <NodeName>CustomStoreUrl</NodeName>
                    <DFProperties>
                        <AccessType>
                            <Add />
                            <Delete />
                            <Get />
                            <Replace />
                        </AccessType>
                        <Description>TO be Deleted</Description>
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
            </Node>
            <Node>
                <NodeName>NativeProfile</NodeName>
                <DFProperties>
                    <AccessType>
                        <Get />
                        <Add />
                    </AccessType>
                    <Description>Inbox VPN Profile</Description>
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
                        <DDFName></DDFName>
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
                        <Description>
                            Server


                            Required. Public or routable IP address or DNS name for the VPN gateway server farm. It can point to the external IP of a gateway or a virtual IP for a server farm
                            Some examples are 208.23.45.130 or vpn.contoso.com.
                        </Description>
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
                    <NodeName>RoutingPolicyType</NodeName>
                    <DFProperties>
                        <AccessType>
                            <Add />
                            <Delete />
                            <Get />
                            <Replace />
                        </AccessType>
                        <Description>
                            SplitTunnel - For this Connection, Traffic can go over any interface as determined by the networking stack.

                            ForceTunnel - All IP Traffic  must go over only the VPN Interface.
                        </Description>
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
                    <NodeName>NativeProtocolType</NodeName>
                    <DFProperties>
                        <AccessType>
                            <Add />
                            <Delete />
                            <Get />
                            <Replace />
                        </AccessType>
                        <Description>
                            Supported Values :

                            Pptp
                            L2tp
                            Ikev2
                            Automatic
                        </Description>
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
                    <NodeName>Authentication</NodeName>
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
                            <DDFName></DDFName>
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
                            <Description>
                                Supported Values

                                Mschapv2
                                Eap
                            </Description>
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
                        <NodeName>MachineMethod</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Add />
                                <Delete />
                                <Get />
                                <Replace />
                            </AccessType>
                            <Description>
                                Supported Values

                                Eap
                                Certificate
                                PresharedKey
                            </Description>
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
                        <NodeName>Eap</NodeName>
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
                                <DDFName></DDFName>
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
                                <Description>XML Configuration for EAP Method</Description>
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
                                    <MIME>text/plain</MIME>
                                </DFType>
                            </DFProperties>
                        </Node>
                    </Node>
                    <Node>
                        <NodeName>Certificate</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                            </AccessType>
                            <Description>Reserved for future Use</Description>
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
                                <DDFName></DDFName>
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
                                <Description>Reserved for future Use</Description>
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
                            <NodeName>Eku</NodeName>
                            <DFProperties>
                                <AccessType>
                                    <Add />
                                    <Delete />
                                    <Get />
                                    <Replace />
                                </AccessType>
                                <Description>Reserved for future Use</Description>
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
                    <DDFName></DDFName>
                  </DFType>
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
                    <Description>
                      Choices are:
                      -- MD596
                      -- SHA196
                      -- SHA256128
                      -- GCMAES128
                      -- GCMAES192
                      -- GCMAES256
                    </Description>
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
                  <NodeName>CipherTransformConstants</NodeName>
                  <DFProperties>
                    <AccessType>
                      <Add />
                      <Delete />
                      <Get />
                      <Replace />
                    </AccessType>
                    <Description>
                      Choices Are:
                      -- DES
                      -- DES3
                      -- AES128
                      -- AES192
                      -- AES256
                      -- GCMAES128
                      -- GCMAES192
                      -- GCMAES256
                    </Description>
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
                  <NodeName>EncryptionMethod</NodeName>
                  <DFProperties>
                    <AccessType>
                      <Add />
                      <Delete />
                      <Get />
                      <Replace />
                    </AccessType>
                    <Description>
                      Choices are:
                      -- DES
                      -- DES3
                      -- AES128
                      -- AES192
                      -- AES256
                      -- AES_GCM_128
                      -- AES_GCM_256
                    </Description>
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
                  <NodeName>IntegrityCheckMethod</NodeName>
                  <DFProperties>
                    <AccessType>
                      <Add />
                      <Delete />
                      <Get />
                      <Replace />
                    </AccessType>
                    <Description>
                      Choices are:
                      -- MD5
                      -- SHA196
                      -- SHA256
                      -- SHA384
                    </Description>
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
                  <NodeName>DHGroup</NodeName>
                  <DFProperties>
                    <AccessType>
                      <Add />
                      <Delete />
                      <Get />
                      <Replace />
                    </AccessType>
                    <Description>
                      Choices are:
                      -- Group1
                      -- Group2
                      -- Group14
                      -- ECP256
                      -- ECP384
                      -- Group24
                    </Description>
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
                  <NodeName>PfsGroup</NodeName>
                  <DFProperties>
                    <AccessType>
                      <Add />
                      <Delete />
                      <Get />
                      <Replace />
                    </AccessType>
                    <Description>
                      Choices are:
                      -- PFS1
                      -- PFS2
                      -- PFS2048
                      -- ECP256
                      -- ECP384
                      -- PFSMM
                      -- PFS24
                    </Description>
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
                  <Description>The preshared key used for an L2TP connection</Description>
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
                <NodeName>DisableClassBasedDefaultRoute</NodeName>
                <DFProperties>
                  <AccessType>
                    <Add />
                    <Delete />
                    <Get />
                    <Replace />
                  </AccessType>
                  <Description>
                    When false this VPN connection will plumb class based default routes.
                    i.e.
                    If the interface IP begins with 10, it assumes a class a IP
                    and pushes the route 10.0.0.0/8
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
                    <MIME>text/plain</MIME>
                  </DFType>
                </DFProperties>
              </Node>
            </Node>
        </Node>
    </Node>
</MgmtTree>
```
