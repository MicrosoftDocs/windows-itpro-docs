---
title: Certificate Renewal
description: Learn how to find all the resources that you need to provide continuous access to client certificates.
ms.topic: conceptual
ms.date: 07/08/2024
---

# Certificate Renewal

The enrolled client certificate expires after a period of use. The expiration date of the certificate is specified by the server. To ensure continuous access to enterprise applications, Windows supports a user-triggered certificate renewal process. The user is prompted to provide the current password for the corporate account. The enrollment client gets a new client certificate from the enrollment server, and deletes the old certificate. The client generates a new private/public key pair, generates a PKCS#7 request, and signs the PKCS#7 request with the existing certificate. In Windows, automatic MDM client certificate renewal is also supported.

> [!NOTE]
> Make sure that the EntDMID in the DMClient configuration service provider is set before the certificate renewal request is triggered.

## Automatic certificate renewal request

Windows supports automatic certificate renewal, also known as Renew On Behalf Of (ROBO), that doesn't require any user interaction. For auto renewal, the enrollment client uses the existing MDM client certificate to do client Transport Layer Security (TLS). The user security token isn't needed in the SOAP header. As a result, the MDM certificate enrollment server is required to support client TLS for certificate-based client authentication for automatic certificate renewal.

> [!NOTE]
> Certificate renewal of the enrollment certificate through ROBO is only supported with Microsoft PKI.

Auto certificate renewal is the only supported MDM client certificate renewal method for a device enrolled using WAB authentication. Meaning, the AuthPolicy is set to Federated. It also means if the server supports WAB authentication, then the MDM certificate enrollment server MUST also support client TLS to renew the MDM client certificate.

For Windows devices, during the MDM client certificate enrollment phase or during MDM management section, the enrollment server or MDM server could configure the device to support automatic MDM client certificate renewal using [CertificateStore CSP's](mdm/certificatestore-csp.md) ROBOSupport node under `CertificateStore/My/WSTEP/Renew` URL.

With automatic renewal, the PKCS#7 message content isn't base64 encoded separately. With manual certificate renewal, base64 encoding for PKCS#7 message content is required.

During the automatic certificate renewal process, if the device doesn't trust the root certificate, the authentication fails. Use one of device preinstalled root certificates, or configure the root cert over a DM session using the [CertificateStore CSP](mdm/certificatestore-csp.md).

During the automatic certificate renewal process, the device denies HTTP redirect request from the server. It doesn't deny the request if the same redirect URL that the user accepted during the initial MDM enrollment process is used.

The following example shows the details of an automatic renewal request.

```xml
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

## Certificate renewal schedule configuration

In Windows, the renewal period can only be set during the MDM enrollment phase. Windows supports a certificate renewal period and renewal failure retry. They're configurable by both MDM enrollment server and later by the MDM management server using CertificateStore CSP's RenewPeriod and RenewInterval nodes. The device could retry automatic certificate renewal multiple times until the certificate expires. For manual certificate renewal, the Windows device reminds the user with a dialog at every renewal retry time until the certificate is expired.

For more information about the parameters, see the [CertificateStore configuration service provider](mdm/certificatestore-csp.md).

Unlike manual certificate renewal, the device doesn't perform an automatic MDM client certificate renewal if the certificate is already expired. To make sure the device has enough time to automatically renew, we recommend you set a renewal period a couple months (40-60 days) before the certificate expires. And, set the renewal retry interval to every few days, like every 4-5 days instead of every seven days (weekly). This change increases the chance that the device tries to connect at different days of the week.

## Certificate renewal response

When RequestType is set to Renew, the web service verifies the following (in addition to the initial enrollment):

- The signature of the PKCS#7 BinarySecurityToken is correct
- The client's certificate is in the renewal period
- The certificate is issued by the enrollment service
- The requester is the same as the requester for initial enrollment
- For standard client's request, the client isn't blocked

After validation is completed, the web service retrieves the PKCS#10 content from the PKCS#7 BinarySecurityToken. The rest is the same as initial enrollment, except that the Provisioning XML only needs to have the new certificate issued by the CA.

> [!NOTE]
> The HTTP server response must not be chunked; it must be sent as one message.

The following example shows the details of a certificate renewal response.

```xml
<wap-provisioningdoc version="1.1">
   <characteristic type="CertificateStore">
   <!-- Root certificate provision is only needed here if it is not in the device already -->
      <characteristic type="Root">
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

> [!NOTE]
> The client receives a new certificate, instead of renewing the initial certificate. The administrator controls which certificate template the client should use. The templates may be different at renewal time than the initial enrollment time.

## Configuration service providers supported during MDM enrollment and certificate renewal

The following configuration service providers are supported during MDM enrollment and certificate renewal process.

- [CertificateStore](mdm/certificatestore-csp.md)
- [w7 APPLICATION](mdm/w7-application-csp.md)
- [DMClient](mdm/dmclient-csp.md)
- [EnterpriseAppManagement](mdm/enterpriseappvmanagement-csp.md)
