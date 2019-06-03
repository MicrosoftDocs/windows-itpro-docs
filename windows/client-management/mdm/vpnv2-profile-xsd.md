---
title: ProfileXML XSD
description: Here's the XSD for the ProfileXML node in VPNv2 CSP for Windows 10 and some profile examples.
ms.assetid: 2F32E14B-F9B9-4760-AE94-E57F1D4DFDB3
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: dansimp
ms.date: 02/05/2018
---

# ProfileXML XSD


Here's the XSD for the ProfileXML node in VPNv2 CSP for Windows 10 and some profile examples.

## XSD for the VPN profile


``` syntax
<?xml version="1.0" encoding="utf-8"?>
<xs:schema attributeFormDefault="unqualified" elementFormDefault="qualified" xmlns:xs="http://www.w3.org/2001/XMLSchema">
  <xs:import namespace="http://www.microsoft.com/provisioning/EapHostConfig" />
  <xs:element name="VPNProfile">
    <xs:complexType>
      <xs:sequence>
        <xs:element name="EdpModeId" type="xs:string" minOccurs="0" maxOccurs="1" />
        <xs:element name="RememberCredentials" type="xs:boolean" minOccurs="0" maxOccurs="1" />
        <xs:element name="AlwaysOn" type="xs:boolean" minOccurs="0" maxOccurs="1" />
        <xs:element name="DnsSuffix" type="xs:string" minOccurs="0" maxOccurs="1"/>
        <xs:element name="TrustedNetworkDetection" type="xs:string" minOccurs="0" maxOccurs="1"/>
        <xs:element name="LockDown" type="xs:boolean" minOccurs="0" maxOccurs="1"/>
        <xs:element name="DeviceTunnel" type="xs:boolean" minOccurs="0" maxOccurs="1"/>
        <xs:element name="RegisterDNS" type="xs:boolean" minOccurs="0" maxOccurs="1"/>
        <xs:element name="ByPassForLocal" type="xs:boolean" minOccurs="0" maxOccurs="1"/>
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
        <xs:element name="AppTrigger" minOccurs="0" maxOccurs="1">
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
            </xs:sequence>
          </xs:complexType>
        </xs:element>
        <xs:element name="TrafficFilter" minOccurs="0" maxOccurs="unbounded">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="App" type="xs:string" minOccurs="0" maxOccurs="1"/>
              <xs:element name="Claims" type="xs:string" minOccurs="0" maxOccurs="1"/>
              <xs:element name="Protocol" type="xs:string" minOccurs="0" maxOccurs="1"/>
              <xs:element name="LocalPortRanges" type="xs:string" minOccurs="0" maxOccurs="1"/>
              <xs:element name="RemotePortRanges" type="xs:string" minOccurs="0" maxOccurs="1"/>
              <xs:element name="LocalAddressRanges" type="xs:string" minOccurs="0" maxOccurs="1"/>
              <xs:element name="RemoteAddressRanges" type="xs:string" minOccurs="0" maxOccurs="1"/>
              <xs:element name="RoutingPolicyType" type="xs:string" minOccurs="0" maxOccurs="1"/>
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
                  <xs:sequence>
                    <xs:element name="UserMethod" type="xs:string" minOccurs="0" maxOccurs="1" />
                    <xs:element name="MachineMethod" type="xs:string" minOccurs="0" maxOccurs="1" />
                    <xs:element name="Eap" minOccurs="1" maxOccurs="1">
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
                </xs:complexType>
              </xs:element>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
        <xs:element minOccurs="0" maxOccurs="unbounded" name="Route">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="Address" type="xs:string" minOccurs="1" maxOccurs="1"/>
              <xs:element name="PrefixSize" type="xs:unsignedByte" minOccurs="1" maxOccurs="1"/>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:sequence>
    </xs:complexType>
  </xs:element>
</xs:schema>
```

## Native profile example


```
<VPNProfile>  
  <NativeProfile>  
    <Servers>testServer.VPN.com</Servers>  
    <NativeProtocolType>IKEv2</NativeProtocolType>  
    <Authentication>  
      <UserMethod>Eap</UserMethod>  
      <MachineMethod>Eap</MachineMethod>  
      <Eap>  
       <Configuration>
          <EapHostConfig xmlns="http://www.microsoft.com/provisioning/EapHostConfig">
            <EapMethod>
              <Type xmlns="http://www.microsoft.com/provisioning/EapCommon">25</Type>
              <VendorId xmlns="http://www.microsoft.com/provisioning/EapCommon">0</VendorId>
              <VendorType xmlns="http://www.microsoft.com/provisioning/EapCommon">0</VendorType>
              <AuthorId xmlns="http://www.microsoft.com/provisioning/EapCommon">0</AuthorId>
            </EapMethod>
            <Config xmlns="http://www.microsoft.com/provisioning/EapHostConfig">
              <Eap xmlns="http://www.microsoft.com/provisioning/BaseEapConnectionPropertiesV1">
                <Type>25</Type>
                <EapType xmlns="http://www.microsoft.com/provisioning/MsPeapConnectionPropertiesV1">
                  <ServerValidation>
                    <DisableUserPromptForServerValidation>true</DisableUserPromptForServerValidation>
                    <ServerNames></ServerNames>
                    <TrustedRootCA>d2 d3 8e ba 60 ca a1 c1 20 55 a2 e1 c8 3b 15 ad 45 01 10 c2 </TrustedRootCA>
                    <TrustedRootCA>d1 76 97 cc 20 6e d2 6e 1a 51 f5 bb 96 e9 35 6d 6d 61 0b 74 </TrustedRootCA>
                  </ServerValidation>
                  <FastReconnect>true</FastReconnect>
                  <InnerEapOptional>false</InnerEapOptional>
                  <Eap xmlns="http://www.microsoft.com/provisioning/BaseEapConnectionPropertiesV1">
                    <Type>13</Type>
                    <EapType xmlns="http://www.microsoft.com/provisioning/EapTlsConnectionPropertiesV1">
                      <CredentialsSource>
                        <CertificateStore>
                          <SimpleCertSelection>true</SimpleCertSelection>
                        </CertificateStore>
                      </CredentialsSource>
                      <ServerValidation>
                        <DisableUserPromptForServerValidation>true</DisableUserPromptForServerValidation>
                        <ServerNames></ServerNames>
                        <TrustedRootCA>d2 d3 8e ba 60 ca a1 c1 20 55 a2 e1 c8 3b 15 ad 45 01 10 c2 </TrustedRootCA>
                        <TrustedRootCA>d1 76 97 cc 20 6e d2 6e 1a 51 f5 bb 96 e9 35 6d 6d 61 0b 74 </TrustedRootCA>
                      </ServerValidation>
                      <DifferentUsername>false</DifferentUsername>
                      <PerformServerValidation xmlns="http://www.microsoft.com/provisioning/EapTlsConnectionPropertiesV2">true</PerformServerValidation>
                      <AcceptServerName xmlns="http://www.microsoft.com/provisioning/EapTlsConnectionPropertiesV2">false</AcceptServerName>
                      <TLSExtensions xmlns="http://www.microsoft.com/provisioning/EapTlsConnectionPropertiesV2">
                        <FilteringInfo xmlns="http://www.microsoft.com/provisioning/EapTlsConnectionPropertiesV3">
                          <EKUMapping>
                            <EKUMap>
                              <EKUName>AAD Conditional Access</EKUName>
                              <EKUOID>1.3.6.1.4.1.311.87</EKUOID>
                            </EKUMap>
                          </EKUMapping>
                          <ClientAuthEKUList Enabled="true">
                            <EKUMapInList>
                              <EKUName>AAD Conditional Access</EKUName>
                            </EKUMapInList>
                          </ClientAuthEKUList>
                        </FilteringInfo>
                      </TLSExtensions>
                    </EapType>
                  </Eap>
                  <EnableQuarantineChecks>false</EnableQuarantineChecks>
                  <RequireCryptoBinding>true</RequireCryptoBinding>
                  <PeapExtensions>
                    <PerformServerValidation xmlns="http://www.microsoft.com/provisioning/MsPeapConnectionPropertiesV2">true</PerformServerValidation>
                    <AcceptServerName xmlns="http://www.microsoft.com/provisioning/MsPeapConnectionPropertiesV2">false</AcceptServerName>
                  </PeapExtensions>
                </EapType>
              </Eap>
            </Config>
          </EapHostConfig>
        </Configuration>
      </Eap>  
    </Authentication>  
    <RoutingPolicyType>SplitTunnel</RoutingPolicyType>  
    <DisableClassBasedDefaultRoute>true</DisableClassBasedDefaultRoute>  
  </NativeProfile>  
  
  <Route>  
    <Address>192.168.0.0</Address>  
    <PrefixSize>24</PrefixSize>  
  </Route>  
  <Route>  
    <Address>10.10.0.0</Address>  
    <PrefixSize>16</PrefixSize>  
  </Route>  
  
  <AppTrigger>  
    <App>  
      <Id>Microsoft.MicrosoftEdge_8wekyb3d8bbwe</Id>  
    </App>  
  </AppTrigger>  
  <AppTrigger>  
    <App>  
      <Id>C:\windows\system32\ping.exe</Id>  
    </App>  
  </AppTrigger>  
  
  
  <TrafficFilter>  
    <App>  
      <Id>%ProgramFiles%\Internet Explorer\iexplore.exe</Id>  
    </App>  
    <Protocol>6</Protocol>  
    <LocalPortRanges>10,20-50,100-200</LocalPortRanges>  
    <RemotePortRanges>20-50,100-200,300</RemotePortRanges>  
    <RemoteAddressRanges>30.30.0.0/16,10.10.10.10-20.20.20.20</RemoteAddressRanges>  
    <RoutingPolicyType>ForceTunnel</RoutingPolicyType>  
  </TrafficFilter>  
  <TrafficFilter>  
    <App>  
      <Id>Microsoft.MicrosoftEdge_8wekyb3d8bbwe</Id>  
    </App>  
    <LocalAddressRanges>3.3.3.3/32,1.1.1.1-2.2.2.2</LocalAddressRanges>  
  </TrafficFilter>  
  
  
  <DomainNameInformation>  
    <DomainName>hrsite.corporate.contoso.com</DomainName>  
    <DnsServers>1.2.3.4,5.6.7.8</DnsServers>  
    <WebProxyServers>5.5.5.5</WebProxyServers>  
    <AutoTrigger>true</AutoTrigger>  
  </DomainNameInformation>  
  <DomainNameInformation>  
    <DomainName>.corp.contoso.com</DomainName>  
    <DnsServers>10.10.10.10,20.20.20.20</DnsServers>  
    <WebProxyServers>100.100.100.100</WebProxyServers>  
  </DomainNameInformation>  
  
  <EdpModeId>corp.contoso.com</EdpModeId>  
  <RememberCredentials>true</RememberCredentials>  
  <AlwaysOn>false</AlwaysOn>  
  <DnsSuffix>corp.contoso.com</DnsSuffix>  
  <TrustedNetworkDetection>contoso.com</TrustedNetworkDetection>  
  <Proxy>  
    <Manual>  
      <Server>HelloServer</Server>  
    </Manual>  
    <AutoConfigUrl>Helloworld.Com</AutoConfigUrl>  
  </Proxy>  
  
  <DeviceCompliance>  
        <Enabled>true</Enabled>  
        <Sso>  
            <Enabled>true</Enabled>  
            <Eku>This is my Eku</Eku>  
            <IssuerHash>This is my issuer hash</IssuerHash>  
        </Sso>  
    </DeviceCompliance>  
</VPNProfile>  
```

## Plug-in profile example


``` syntax
<VPNProfile>
    <PluginProfile>
        <ServerUrlList>testserver1.contoso.com;testserver2.contoso..com</ServerUrlList>
        <PluginPackageFamilyName>JuniperNetworks.JunosPulseVpn_cw5n1h2txyewy</PluginPackageFamilyName>
        <CustomConfiguration><pulse-schema><isSingleSignOnCredential>true</isSingleSignOnCredential></pulse-schema></CustomConfiguration>
    </PluginProfile>
    <Route>
        <Address>192.168.0.0</Address>
        <PrefixSize>24</PrefixSize>
    </Route>
    <Route>
        <Address>10.10.0.0</Address>
        <PrefixSize>16</PrefixSize>
    </Route>
    <AppTrigger>
        <App>
            <Id>Microsoft.MicrosoftEdge_8wekyb3d8bbwe</Id>
        </App>
    </AppTrigger>
    <AppTrigger>
        <App>
            <Id>%ProgramFiles%\Internet Explorer\iexplore.exe</Id>
        </App>
    </AppTrigger>
    <TrafficFilter>
        <App>
            <Id>%ProgramFiles%\Internet Explorer\iexplore.exe</Id>
        </App>
        <Protocol>6</Protocol>
        <LocalPortRanges>10,20-50,100-200</LocalPortRanges>
        <RemotePortRanges>20-50,100-200,300</RemotePortRanges>
        <RemoteAddressRanges>30.30.0.0/16,10.10.10.10-20.20.20.20</RemoteAddressRanges>
        <!--<RoutingPolicyType>ForceTunnel</RoutingPolicyType>-->
    </TrafficFilter>
    <TrafficFilter>
        <App>
            <Id>Microsoft.MicrosoftEdge_8wekyb3d8bbwe</Id>
        </App>
        <LocalAddressRanges>3.3.3.3/32,1.1.1.1-2.2.2.2</LocalAddressRanges>
    </TrafficFilter>
    <TrafficFilter>
        <App>
            <Id>Microsoft.MicrosoftEdge_8wekyb3d8bbwe</Id>
        </App>
        <Claims>O:SYG:SYD:(A;;CC;;;AU)</Claims>
        <!--<RoutingPolicyType>SplitTunnel</RoutingPolicyType>-->
    </TrafficFilter>
    <DomainNameInformation>
        <DomainName>corp.contoso.com</DomainName>
        <DnsServers>1.2.3.4,5.6.7.8</DnsServers>
        <WebProxyServers>5.5.5.5</WebProxyServers>
        <AutoTrigger>false</AutoTrigger>
    </DomainNameInformation>
    <DomainNameInformation>
        <DomainName>corp.contoso.com</DomainName>
        <DnsServers>10.10.10.10,20.20.20.20</DnsServers>
        <WebProxyServers>100.100.100.100</WebProxyServers>
    </DomainNameInformation>
    <!--<EdpModeId>corp.contoso.com</EdpModeId>-->
    <RememberCredentials>true</RememberCredentials>
    <AlwaysOn>false</AlwaysOn>
    <DeviceTunnel>false</DeviceTunnel>
    <RegisterDNS>false</RegisterDNS>
    <DnsSuffix>corp.contoso.com</DnsSuffix>
    <TrustedNetworkDetection>contoso.com,test.corp.contoso.com</TrustedNetworkDetection>
    <Proxy>
        <Manual>
            <Server>HelloServer</Server>
        </Manual>
        <AutoConfigUrl>Helloworld.Com</AutoConfigUrl>
    </Proxy>
    <APNBinding>
                <ProviderId></ProviderId>
                <AccessPointName></AccessPointName>
                <UserName></UserName>
                <Password></Password>
                <IsCompressionEnabled></IsCompressionEnabled>
                <AuthenticationType></AuthenticationType>
    </APNBinding>
</VPNProfile>  
```

 

 






