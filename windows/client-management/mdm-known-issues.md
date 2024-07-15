---
title: Known issues in MDM
description: Learn about known issues for Windows devices in MDM
ms.topic: conceptual
ms.date: 07/08/2024
---

# Known issues

## Get command inside an atomic command isn't supported

A Get command inside an atomic command isn't supported.

## Apps installed using WMI classes aren't removed

Applications installed using WMI classes aren't removed when the MDM account is removed from device.

## Passing CDATA in SyncML doesn't work

Passing CDATA in data in SyncML to ConfigManager and CSPs doesn't work.

## SSL settings in IIS server for SCEP must be set to "Ignore"

The certificate setting under "SSL Settings" in the IIS server for SCEP must be set to "Ignore".

:::image type="content" source="images/ssl-settings.png" alt-text="Screenshot of SSL settings in IIS.":::

## MDM enrollment fails on the Windows device when traffic is going through proxy

When the Windows device is configured to use a proxy that requires authentication, the enrollment fails. To work around this issue, the user can use a proxy that doesn't require authentication or remove the proxy setting from the connected network.

## Server-initiated unenrollment failure

Server-initiated unenrollment for a device enrolled by adding a work account silently fails to leave the MDM account active. MDM policies and resources are still in place and the client can continue to sync with the server.

Remote server unenrollment is disabled for mobile devices enrolled via Microsoft Entra join. It returns an error message to the server. The only way to remove enrollment for a mobile device that is Microsoft Entra joined is by remotely wiping the device.

## Certificates causing issues with Wi-Fi and VPN

When using the ClientCertificateInstall to install certificates to the device store and the user store and both certificates are sent to the device in the same MDM payload, the certificate intended for the device store also gets installed in the user store. This dual installation may cause issues with Wi-Fi or VPN when choosing the correct certificate to establish a connection. We're working to fix this issue.

## Version information for Windows 11

The software version information from **DevDetail/Ext/Microsoft/OSPlatform** doesn't match the version in **Settings** under **System/About**.

## Multiple certificates might cause Wi-Fi connection instabilities

In your deployment, if you have multiple certificates provisioned on the device and the Wi-Fi profile provisioned doesn't have a strict filtering criteria, you may see connection failures when connecting to Wi-Fi. The solution is to ensure that the Wi-Fi profile provisioned has strict filtering criteria such that it matches only one certificate.

Enterprises deploying certificate-based EAP authentication for VPN/Wi-Fi can face a situation where there are multiple certificates that meet the default criteria for authentication. This situation can lead to issues such as:

- The user may be prompted to select the certificate.
- The wrong certificate may get auto selected and cause an authentication failure.

A production ready deployment must have the appropriate certificate details as part of the profile being deployed. The following information explains how to create or update an EAP Configuration XML such that the extraneous certificates are filtered out and the appropriate certificate can be used for the authentication.

EAP XML must be updated with relevant information for your environment. This task can be done either manually by editing the XML sample below, or by using the step by step UI guide. After the EAP XML is updated, refer to instructions from your MDM to deploy the updated configuration as follows:

- For Wi-Fi, look for the &lt;EAPConfig&gt; section of your current WLAN Profile XML (This detail is what you specify for the WLanXml node in the Wi-Fi CSP). Within these tags, you can find the complete EAP configuration. Replace the section under &lt;EAPConfig&gt; with your updated XML and update your Wi-Fi profile. You might need to refer to your MDM's guidance on how to deploy a new Wi-Fi profile.
- For VPN, EAP Configuration is a separate field in the MDM Configuration. Work with your MDM provider to identify and update the appropriate Field.

For information about EAP Settings, see [Extensible Authentication Protocol (EAP) for network access](/windows-server/networking/technologies/extensible-authentication-protocol/network-access).

For information about generating an EAP XML, see [EAP configuration](mdm/eap-configuration.md).

For more information about extended key usage, see <https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.12>.

For information about adding extended key usage (EKU) to a certificate, see <https://technet.microsoft.com/library/cc731792.aspx>.

The following list describes the prerequisites for a certificate to be used with EAP:

- The certificate must have at least one of the following EKU (Extended Key Usage) properties:
  - Client Authentication.
  - As defined by RFC 5280, this property is a well-defined OID with Value 1.3.6.1.5.5.7.3.2.
  - Any Purpose.
  - An EKU, defined and published by Microsoft, is a well-defined OID with value 1.3.6.1.4.1.311.10.12.1. The inclusion of this OID implies that the certificate can be used for any purpose. The advantage of this EKU over the All Purpose EKU is that other non-critical or custom EKUs can still be added to the certificate for effective filtering.
  - All Purpose.
  - As defined by RFC 5280, If a CA includes extended key usages to satisfy some application needs, but doesn't want to restrict usage of the key, the CA can add an Extended Key Usage Value of 0. A certificate with such an EKU can be used for all purposes.
- The user or the computer certificate on the client chains to a trusted root CA.
- The user or the computer certificate doesn't fail any one of the checks that are performed by the CryptoAPI certificate store, and the certificate passes requirements in the remote access policy.
- The user or the computer certificate doesn't fail any one of the certificate object identifier checks that are specified in the Internet Authentication Service (IAS)/Radius Server.
- The Subject Alternative Name (SubjectAltName) extension in the certificate contains the user principal name (UPN) of the user.

The following XML sample explains the properties for the EAP TLS XML including certificate filtering.

> [!NOTE]
> For PEAP or TTLS Profiles the EAP TLS XML is embedded within some PEAP or TTLS specific elements.

```xml
<EapHostConfig xmlns="http://www.microsoft.com/provisioning/EapHostConfig">
 <EapMethod>
  <Type xmlns="http://www.microsoft.com/provisioning/EapCommon">13</Type>
  <!--The above property defines the Method type for EAP, 13 means EAP TLS -->

  <VendorId xmlns="http://www.microsoft.com/provisioning/EapCommon">0</VendorId>
  <VendorType xmlns="http://www.microsoft.com/provisioning/EapCommon">0</VendorType>
  <AuthorId xmlns="http://www.microsoft.com/provisioning/EapCommon">0</AuthorId>
  <!--The 3 properties above define the method publishers, this is seen primarily in 3rd party Vendor methods.-->
  <!-- For Microsoft EAP TLS the value of the above fields will always be 0 -->
 </EapMethod>
 <!-- Now that the EAP Method is Defined we will go into the Configuration -->
 <Config xmlns="http://www.microsoft.com/provisioning/EapHostConfig">
  <Eap xmlns="http://www.microsoft.com/provisioning/BaseEapConnectionPropertiesV1">
   <Type>13</Type>
   <EapType xmlns="http://www.microsoft.com/provisioning/EapTlsConnectionPropertiesV1">
    <CredentialsSource>
     <!-- Credential Source can be either CertificateStore or SmartCard -->
     <CertificateStore>
      <SimpleCertSelection>true</SimpleCertSelection>
      <!--SimpleCertSelection automatically selects a cert if there are mutiple identical (Same UPN, Issuer, etc.) certs.-->
      <!--It uses a combination of rules to select the right cert-->
     </CertificateStore>
    </CredentialsSource>
    <ServerValidation>
     <!-- ServerValidation fields allow for checks on whether the server being connected to and the server cert being used are trusted -->
     <DisableUserPromptForServerValidation>false</DisableUserPromptForServerValidation>
     <ServerNames/>
    </ServerValidation>
    <DifferentUsername>false</DifferentUsername>
    <PerformServerValidation xmlns="http://www.microsoft.com/provisioning/EapTlsConnectionPropertiesV2">false</PerformServerValidation>
    <AcceptServerName xmlns="http://www.microsoft.com/provisioning/EapTlsConnectionPropertiesV2">false</AcceptServerName>
    <TLSExtensions xmlns="http://www.microsoft.com/provisioning/EapTlsConnectionPropertiesV2">
     <!-- For filtering the relevant information is below -->
     <FilteringInfo xmlns="http://www.microsoft.com/provisioning/EapTlsConnectionPropertiesV3">
      <CAHashList Enabled="true">
       <!-- The above implies that you want to filter by Issuer Hash -->
       <IssuerHash>ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
        <!-- Issuing certs thumbprint goes here-->
       </IssuerHash>
       <!-- You can add multiple entries and it will find the list of certs that have at least one of these certs in its chain-->
      </CAHashList>
      <EKUMapping>
       <!-- This section defines Custom EKUs that you may be adding-->
       <!-- You do not need this section if you do not have custom EKUs -->
       <!-- You can have multiple EKUs defined here and then referenced below as shown -->
       <EKUMap>
        <EKUName>
         <!--Add a friendly Name for an EKU here for example -->ContostoITEKU</EKUName>
        <EKUOID>
         <!--Add the OID Value your CA adds to the certificate here, for example -->1.3.6.1.4.1.311.42.1.15</EKUOID>
       </EKUMap>
        <!-- All the EKU Names referenced in the example below must first be defined here
       <EKUMap>
        <EKUName>Example1</EKUName>
        <EKUOID>2.23.133.8.3</EKUOID>

       </EKUMap>
       <EKUMap>
        <EKUName>Example2</EKUName>
        <EKUOID>1.3.6.1.4.1.311.20.2.1</EKUOID>
       </EKUMap>
       -->
      </EKUMapping>
      <ClientAuthEKUList Enabled="true">
       <!-- The above implies that you want certs with Client Authentication EKU to be used for authentication -->
       <EKUMapInList>
        <!-- This section implies that the certificate should have the following custom EKUs in addition to the Client Authentication EKU -->
        <EKUName>
         <!--Use the name from the EKUMap Field above-->ContostoITEKU</EKUName>
       </EKUMapInList>
       <!-- You can have multiple Custom EKUs mapped here, Each additional EKU will be processed with an AND operand -->
       <!-- For example, Client Auth EKU AND ContosoITEKU AND Example1 etc. -->
       <EKUMapInList>
        <EKUName>Example1</EKUName>
       </EKUMapInList>
      </ClientAuthEKUList>
      <AllPurposeEnabled>true</AllPurposeEnabled>
      <!-- Implies that a certificate with the EKU field = 0 will be selected -->
      <AnyPurposeEKUList Enabled="true"/>
      <!-- Implies that a certificate with the EKU oid Value of 1.3.6.1.4.1.311.10.12.1 will be selected -->
      <!-- Like for Client Auth you can also add Custom EKU properties with AnyPurposeEKUList (but not with AllPurposeEnabled) -->
      <!-- So here is what the above policy implies.
      The certificate selected will have
      Issuer Thumbprint = ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
      AND
      ((Client Authentication EKU AND ContosoITEKU) OR (AnyPurposeEKU) OR AllPurpose Certificate)

      Any certificate(s) that match these criteria will be utilised for authentication
      -->
     </FilteringInfo>
    </TLSExtensions>
   </EapType>
  </Eap>
 </Config>
</EapHostConfig>
```

> [!NOTE]
> The EAP TLS XSD is located at **%systemdrive%\\Windows\\schemas\\EAPMethods\\eaptlsconnectionpropertiesv3.xsd**

Alternatively you can use the following procedure to create an EAP Configuration XML.

1. Follow steps 1 through 7 in [EAP configuration](mdm/eap-configuration.md).

1. In the Microsoft VPN SelfHost Properties dialog box, select **Microsoft : Smart Card or other Certificate** from the drop-down menu (this drop-down menu selects EAP TLS.).

    :::image type="content" alt-text="vpn selfhost properties window." source="images/certfiltering1.png":::

    > [!NOTE]
    > For PEAP or TTLS, select the appropriate method and continue following this procedure.

1. Select the **Properties** button underneath the drop-down menu.

1. In the **Smart Card or other Certificate Properties** menu, select the **Advanced** button.

    :::image type="content" alt-text="smart card or other certificate properties window." source="images/certfiltering2.png":::

1. In the **Configure Certificate Selection** menu, adjust the filters as needed.

    :::image type="content" alt-text="configure certificate selection window." source="images/certfiltering3.png":::

1. Select **OK** to close the windows to get back to the main `rasphone.exe` dialog box.

1. Close the rasphone dialog box.

1. Continue following the procedure in [EAP configuration](mdm/eap-configuration.md) from Step 9 to get an EAP TLS profile with appropriate filtering.

> [!NOTE]
> You can also set all the other applicable EAP Properties through this UI as well. A guide to what these properties mean can be found in [Extensible Authentication Protocol (EAP) for network access](/windows-server/networking/technologies/extensible-authentication-protocol/network-access).

## MDM client will immediately check in with the MDM server after client renews WNS channel URI

After the MDM client automatically renews the WNS channel URI, the MDM client will immediately check in with the MDM server. Henceforth, for every MDM client check-in, the MDM server should send a GET request for "ProviderID/Push/ChannelURI" to retrieve the latest channel URI and compare it with the existing channel URI; then update the channel URI if necessary.

## User provisioning failure in Microsoft Entra joined devices

For Microsoft Entra joined devices, provisioning `.\User` resources fails when the user isn't logged in as a Microsoft Entra user. If you attempt to join Microsoft Entra ID from **Settings** &gt; **System** &gt; **About** user interface, ensure to sign out and sign in with Microsoft Entra credentials to get your organizational configuration from your MDM server. This behavior is by design.

## Requirements to note for VPN certificates also used for Kerberos Authentication

If you want to use the certificate used for VPN authentication also for Kerberos authentication (required if you need access to on-premises resources using NTLM or Kerberos), the user's certificate must meet the requirements for smart card certificate, the Subject field should contain the DNS domain name in the DN or the SAN should contain a fully qualified UPN so that the DC can be located from the DNS registrations. If certificates that don't meet these requirements are used for VPN, users may fail to access resources that require Kerberos authentication.

## Device management agent for the push-button reset isn't working

The DM agent for [push-button reset](/windows-hardware/manufacture/desktop/push-button-reset-overview) keeps the registry settings for OMA DM sessions, but deletes the task schedules. The client enrollment is retained, but it never syncs with the MDM service.
