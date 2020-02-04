---
title: Certificate Renewal
description: The enrolled client certificate expires after a period of use.
MS-HAID: 
  - 'p\_phdevicemgmt.certificate\_renewal'
  - 'p\_phDeviceMgmt.certificate\_renewal\_windows\_mdm'
ms.assetid: F910C50C-FF67-40B0-AAB0-CA7CE02A9619
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: lomayor
ms.date: 06/26/2017
---

# Certificate Renewal


The enrolled client certificate expires after a period of use. The expiration date of the certificate is specified by the server. To ensure continuous access to enterprise applications, Windows supports a user-triggered certificate renewal process. The user is prompted to provide the current password for the corporate account, and the enrollment client gets a new client certificate from the enrollment server and deletes the old certificate. The client generates a new private/public key pair, generates a PKCS\#7 request, and signs the PKCS\#7 request with the existing certificate. In Windows, automatic MDM client certificate renewal is also supported.

> **Note**  Make sure that the EntDMID in the DMClient configuration service provider is set before the certificate renewal request is triggered.

 

## In this topic


-   [Automatic certificate renewal request](#automatic-certificate-renewal-request)
-   [Certificate renewal schedule configuration](#certificate-renewal-schedule-configuration)
-   [Certificate renewal response](#certificate-renewal-response)
-   [Configuration service providers supported during MDM enrollment and certificate renewal](#configuration-service-providers-supported-during-mdm-enrollment-and-certificate-renewal)

<a href="" id="automatic-certificate-renewal"></a>
## Automatic certificate renewal request


In addition to manual certificate renewal, Windows includes support for automatic certificate renewal, also known as Renew On Behalf Of (ROBO), that does not require any user interaction. For auto renewal, the enrollment client uses the existing MDM client certificate to perform client Transport Layer Security (TLS). The user security token is not needed in the SOAP header. As a result, the MDM certificate enrollment server is required to support client TLS for certificate based client authentication for automatic certificate renewal.

> **Note**  Certificate renewal of the enrollment certificate through ROBO is only supported with Microsoft PKI.

 

Auto certificate renewal is the only supported MDM client certificate renewal method for the device that is enrolled using WAB authentication (meaning that the AuthPolicy is set to Federated). It also means if the server supports WAB authentication, the MDM certificate enrollment server MUST also support client TLS in order to renew the MDM client certificate.

For the device that is enrolled with the OnPremise authentication method, for backward compatibility, the default renewal method is user manual certificate renewal. However, for Windows devices, during the MDM client certificate enrollment phase or during MDM management section, the enrollment server or MDM server could configure the device to support automatic MDM client certificate renewal via CertificateStore CSP’s ROBOSupport node under CertificateStore/My/WSTEP/Renew URL. For more information about Renew related configuration settings, refer to the CertificateStore configuration service provider.

Unlike manual certificate renewal where there is an additional b64 encoding for PKCS\#7 message content, with automatic renewal, the PKCS\#7 message content isn’t b64 encoded separately.

During the automatic certificate renewal process, if the root certificate isn’t trusted by the device, the authentication will fail. Make sure using one of device pre-installed root certificates or provision the root cert over a DM session via CertificateStore Configuration Service Provider.

During the automatic certificate renew process, the device will deny HTTP redirect request from the server unless it is the same redirect URL that the user explicitly accepted during the initial MDM enrollment process.

The following example shows the details of an automatic renewal request.

```
<s:Envelope xmlns:s="http://www.w3.org/2003/05/soap-envelope" 
   xmlns:a="http://www.w3.org/2005/08/addressing" xmlns:u=
   "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd">
   <s:Header>
      <a:Action s:mustUnderstand="1">
         http://schemas.microsoft.com/windows/pki/2009/01/enrollment/RST/wstep</a:Action>
      <a:MessageID>urn:uuid:61a17f2c-42e9-4a45-9c85-f15c1c8baee8</a:MessageID>
      <a:ReplyTo>
         <a:Address>http://www.w3.org/2005/08/addressing/anonymous</a:Address>
      </a:ReplyTo>
      <a:To s:mustUnderstand="1">
         https://dm.contoso.com/EnrollmentService/DeviceEnrollmentService.svc</a:To>
      <o:Security s:mustUnderstand="1" xmlns:o=
         "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd">
         <u:Timestamp u:Id="_0">
            <u:Created>2011-07-11T19:49:08.579Z</u:Created>
            <u:Expires>2011-07-11T19:54:08.579Z</u:Expires>
         </u:Timestamp>
         <o:UsernameToken u:Id="uuid-2a734df6-b227-4e60-82a8-ed53c574b718-5">
            <o:Username>user@contoso.com</o:Username>
            <o:Password o:Type=
               "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-username-token-profile-1.0#PasswordText">                
            </o:Password>
         </o:UsernameToken>
      </o:Security>
   </s:Header>
   <s:Body>
      <RequestSecurityToken xmlns="http://docs.oasis-open.org/ws-sx/ws-trust/200512">
         <TokenType>
    http://schemas.microsoft.com/5.0.0.0/ConfigurationManager/Enrollment/DeviceEnrollmentToken
         </TokenType>
         <RequestType>http://docs.oasis-open.org/ws-sx/ws-trust/200512/Renew</RequestType>
         <BinarySecurityToken 
            ValueType="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd#PKCS7" 
            EncodingType="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd#base64binary" 
            xmlns="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd">
            BinarySecurityTokenInsertedHere
         </BinarySecurityToken>
         <AdditionalContext xmlns="http://schemas.xmlsoap.org/ws/2006/12/authorization">
            <ContextItem Name="DeviceType">
               <Value>WindowsPhone</Value>
            </ContextItem>
            <ContextItem Name="ApplicationVersion">
               <Value>5.0.7616.0</Value>
            </ContextItem>
         </AdditionalContext>
      </RequestSecurityToken>
   </s:Body>
</s:Envelope>
```


<a href="" id="certificate-renewal-schedule"></a>
## Certificate renewal schedule configuration

In Windows, the renewal period can only be set during the MDM enrollment phase. Windows supports a certificate renewal period and renewal failure retry to be configurable by both MDM enrollment server and later by the MDM management server using CertificateStore CSP’s RenewPeriod and RenewInterval nodes. The device could retry automatic certificate renewal multiple times until the certificate expires. For manual certificate renewal, instead of only reminding the user once, the Windows device will remind the user with a prompt dialog at every renewal retry time until the certificate is expired.

For more information about the parameters, see the CertificateStore configuration service provider.

Unlike manual certificate renewal, the device will not perform an automatic MDM client certificate renewal if the certificate is already expired. To make sure that the device has enough time to perform an automatic renewal, we recommend that you set a renewal period a couple months (40-60 days) before the certificate expires and set the renewal retry interval to be every few days such as every 4-5 days instead every 7 days (weekly) to increase the chance that the device will a connectivity at different days of the week.

> **Note**  For PCs that were previously enrolled in MDM in Windows 8.1 and then upgraded to Windows 10, renewal will be triggered for the enrollment certificate. Thereafter, renewal will happen at the configured ROBO interval.
> For Windows Phone 8.1 devices upgraded to Windows 10 Mobile, renewal will happen at the configured ROBO internal. This is expected and by design.

 

## Certificate renewal response

When RequestType is set to Renew, the web service verifies the following (in additional to initial enrollment):

-   The signature of the PKCS\#7 BinarySecurityToken is correct
-   The client’s certificate is in the renewal period
-   The certificate was issued by the enrollment service
-   The requester is the same as the requester for initial enrollment
-   For standard client’s request, the client hasn’t been blocked

After validation is completed, the web service retrieves the PKCS\#10 content from the PKCS\#7 BinarySecurityToken. The rest is the same as initial enrollment, except that the Provisioning XML only needs to have the new certificate issued by the CA.

> **Note**  The HTTP server response must not be chunked; it must be sent as one message.


The following example shows the details of an certificate renewal response.

```
<wap-provisioningdoc version="1.1">
   <characteristic type="CertificateStore">
<!-- Root certificate provision is only needed here if it is not in the device already -->      <characteristic type="Root">
         <characteristic type="System">
            <characteristic type="EncodedRootCertHashInsertedHere ">
               <parm name="EncodedCertificate" value="EncodedCertInsertedHere" />
            </characteristic>
         </characteristic>
      </characteristic>
      <characteristic type="My" >
         <characteristic type="User">
            <characteristic type="EncodedClientCertHashInsertedHere">
               <parm name="EncodedCertificate" value="EncodedCertInsertedHere" />
               <characteristic type="PrivateKeyContainer"/>
            </characteristic>
         </characteristic>
      </characteristic>
   </characteristic>
   <characteristic type="APPLICATION">
      <parm name="PROVIDER-ID" value="TestMDMServer"/>
   </characteristic>
</wap-provisioningdoc>
```

> **Note**  The client receives a new certificate, instead of renewing the initial certificate. The administrator controls which certificate template the client should use. The templates may be different at renewal time than the initial enrollment time.

 

<a href="" id="csp-support-during-enrollment-and-renewal"></a>
## Configuration service providers supported during MDM enrollment and certificate renewal


The following configuration service providers are supported during MDM enrollment and certificate renewal process. See Configuration service provider reference for detailed descriptions of each configuration service provider.

-   CertificateStore
-   w7 APPLICATION
-   DMClient
-   EnterpriseAppManagement

 






