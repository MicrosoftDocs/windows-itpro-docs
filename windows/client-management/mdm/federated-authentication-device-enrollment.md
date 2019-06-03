---
title: Federated authentication device enrollment
description: This section provides an example of the mobile device enrollment protocol using federated authentication policy.
ms.assetid: 049ECA6E-1AF5-4CB2-8F1C-A5F22D722DAA
ms.reviewer: 
manager: dansimp
ms.author: v-madhi
ms.topic: article
ms.prod: w10
ms.technology: windows
author: v-madhi
ms.date: 07/28/2017
---

# Federated authentication device enrollment


This section provides an example of the mobile device enrollment protocol using federated authentication policy. When the authentication policy is set to Federated, the web authentication broker is leveraged by the enrollment client to get a security token. The enrollment client calls the web authentication broker API within the response message to start the process. The server should build the web authentication broker pages to fit the device screen and should be consistent with the existing enrollment UI. The opaque security token that is returned from the broker as an end page is used by the enrollment client as the device security secret during the client certificate request call.

The &lt;AuthenticationServiceURL&gt; element the discovery response message specifies web authentication broker page start URL.

For details about the Microsoft mobile device enrollment protocol for Windows 10, see [\[MS-MDE2\]: Mobile Device Enrollment Protocol Version 2]( http://go.microsoft.com/fwlink/p/?LinkId=619347).

## In this topic


[Discovery service](#discovery-service)  
[Enrollment policy web service](#enrollment-policy-web-service)  
[Enrollment web service](#enrollment-web-service)  

For the list of enrollment scenarios not supported in Windows 10, see [Enrollment scenarios not supported](mobile-device-enrollment.md#enrollment-scenarios-not-supported).

## Discovery service


The discovery web service provides the configuration information necessary for a user to enroll a phone with a management service. The service is a restful web service over HTTPS (server authentication only).

> **Note**  The administrator of the discovery service must create a host with the address enterpriseenrollment.*domain\_name*.com.

 

The automatic discovery flow of the device uses the domain name of the email address that was submitted to the Workplace settings screen during sign in. The automatic discovery system constructs a URI that uses this hostname by appending the subdomain “enterpriseenrollment” to the domain of the email address, and by appending the path “/EnrollmentServer/Discovery.svc”. For example, if the email address is “sample@contoso.com”, the resulting URI for first Get request would be: http:<span></span>//enterpriseenrollment.contoso.com/EnrollmentServer/Discovery.svc

The first request is a standard HTTP GET request.

The following example shows a request via HTTP GET to the discovery server given user@contoso.com as the email address.

```
Request Full Url: http://EnterpriseEnrollment.contoso.com/EnrollmentServer/Discovery.svc
Content Type: unknown
Header Byte Count: 153
Body Byte Count: 0
```

```
GET /EnrollmentServer/Discovery.svc HTTP/1.1
User-Agent: Windows Phone 8 Enrollment Client
Host: EnterpriseEnrollment.contoso.com
Pragma: no-cache
```

```
Request Full Url: http://EnterpriseEnrollment.contoso.com/EnrollmentServer/Discovery.svc
Content Type: text/html
Header Byte Count: 248
Body Byte Count: 0
```

```
HTTP/1.1 200 OK
Connection: Keep-Alive
Pragma: no-cache
Cache-Control: no-cache
Content-Type: text/html
Content-Length: 0
```

After the device gets a response from the server, the device sends a POST request to enterpriseenrollment.*domain\_name*/EnrollmentServer/Discovery.svc. After it gets another response from the server (which should tell the device where the enrollment server is), the next message sent from the device is to enterpriseenrollment.*domain\_name* to the enrollment server.

The following logic is applied:

1.  The device first tries HTTPS. If the server cert is not trusted by the device, the HTTPS fails.
2.  If that fails, the device tries HTTP to see whether it is redirected:
    -   If the device is not redirected, it prompts the user for the server address.
    -   If the device is redirected, it prompts the user to allow the redirect.

The following example shows a request via an HTTP POST command to the discovery web service given user@contoso.com as the email address

```
https://EnterpriseEnrollment.Contoso.com/EnrollmentServer/Discovery.svc
```

The following example shows the discovery service request.

``` syntax
    <?xml version="1.0"?>
    <s:Envelope xmlns:a="http://www.w3.org/2005/08/addressing"
       xmlns:s="http://www.w3.org/2003/05/soap-envelope">
      <s:Header>
        <a:Action s:mustUnderstand="1">
          http://schemas.microsoft.com/windows/management/2012/01/enrollment/IDiscoveryService/Discover
        </a:Action>
        <a:MessageID>urn:uuid: 748132ec-a575-4329-b01b-6171a9cf8478</a:MessageID>
        <a:ReplyTo>
          <a:Address>http://www.w3.org/2005/08/addressing/anonymous</a:Address>
        </a:ReplyTo>
        <a:To s:mustUnderstand="1">
          https://ENROLLTEST.CONTOSO.COM/EnrollmentServer/Discovery.svc
        </a:To>
      </s:Header>
      <s:Body>
        <Discover xmlns="http://schemas.microsoft.com/windows/management/2012/01/enrollment/">
          <request xmlns:i="http://www.w3.org/2001/XMLSchema-instance">
            <EmailAddress>user@contoso.com</EmailAddress>
            <OSEdition>3</OSEdition> <!--New -->
            <RequestVersion>3.0</RequestVersion> <!-- Updated -->
            <DeviceType>WindowsPhone</DeviceType> <!--Updated -->
            <ApplicationVersion>10.0.0.0</ApplicationVersion>
            <AuthPolicies>
                <AuthPolicy>OnPremise</AuthPolicy>
                <AuthPolicy>Federated</AuthPolicy>
            </AuthPolicies>
          </request>
        </Discover>
      </s:Body>
```

The discovery response is in the XML format and includes the following fields:

-   Enrollment service URL (EnrollmentServiceUrl) – Specifies the URL of the enrollment endpoint that is exposed by the management service. The device should call this URL after the user has been authenticated. This field is mandatory.
-   Authentication policy (AuthPolicy) – Indicates what type of authentication is required. For the MDM server, OnPremise is the supported value, which means that the user will be authenticated when calling the management service URL. This field is mandatory.
-   In Windows, Federated is added as another supported value. This allows the server to leverage the Web Authentication Broker to perform customized user authentication, and term of usage acceptance.

> **Note**  The HTTP server response must not set Transfer-Encoding to Chunked; it must be sent as one message.

 

When authentication policy is set to be Federated, Web Authentication Broker (WAB) will be leveraged by the enrollment client to get a security token. The WAB start page URL is provided by the discovery service in the response message. The enrollment client will call the WAB API within the response message to start the WAB process. WAB pages are server hosted web pages. The server should build those pages to fit the device screen nicely and be as consistent as possible to other builds in the MDM enrollment UI. The opaque security token that is returned from WAB as an endpage will be used by the enrollment client as the device security secret during the client certificate enrollment request call.

> **Note**  Instead of relying on the user agent string that is passed during authentication to get information, such as the OS version, use the following guidance:
> -   Parse the OS version from the data sent up during the discovery request.
> -   Append the OS version as a parameter in the AuthenticationServiceURL.
> -   Parse out the OS version from the AuthenticiationServiceURL when the OS sends the response for authentication.

 

A new XML tag, AuthenticationServiceUrl, is introduced in the DiscoveryResponse XML to allow the server to specify the WAB page start URL. For Federated authentication, this XML tag must exist.

> **Note**  The enrollment client is agnostic with regards to the protocol flows for authenticating and returning the security token. While the server might prompt for user credentials directly or enter into a federation protocol with another server and directory service, the enrollment client is agnostic to all of this. To remain agnostic, all protocol flows pertaining to authentication that involve the enrollment client are passive, that is, browser-implemented.

 

The following are the explicit requirements for the server.

-   The &lt;DiscoveryResponse&gt;&lt;AuthenticationServiceUrl&gt; element must support HTTPS.
-   The authentication server must use a device trusted root certificate. Otherwise, the WAP call will fail.
-   WP doesn’t support Window Integrated Authentication (WIA) for ADFS during WAB authentication. ADFS 2012 R2 if used needs to be configured to not attempt WIA for Windows device.

The enrollment client issues an HTTPS request as follows:

```
AuthenticationServiceUrl?appru=<appid>&amp;login_hint=<User Principal Name>
```

-   &lt;appid&gt; is of the form ms-app://string
-   &lt;User Principal Name&gt; is the name of the enrolling user, for example, user@constoso.com as input by the user in an enrollment sign in page. The value of this attribute serves as a hint that can be used by the authentication server as part of the authentication.

After authentication is complete, the auth server should return an HTML form document with a POST method action of appid identified in the query string parameter.

```
HTTP/1.1 200 OK 
Content-Type: text/html; charset=UTF-8
Vary: Accept-Encoding
Content-Length: 556

<!DOCTYPE>
<html>
   <head>
      <title>Working...</title>
      <script>
         function formSubmit() {
            document.forms[0].submit();
         }
           window.onload=formSubmit;
      </script>
   </head>
   <body>
    <!-- appid below in post command must be same as appid in previous client https request. -->
      <form method="post" action="ms-app://appid">
         <p><input type="hidden" name="wresult" value="token value"/></p>
         <input type="submit"/>
      </form>
   </body>
</html>
```

The server has to send a POST to a redirect URL of the form ms-app://string (the URL scheme is ms-app) as indicated in the POST method action. The security token value is the base64-encoded string "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd\#base64binary" contained in the &lt;wsse:BinarySecurityToken&gt; EncodingType attribute. Windows does the binary encode when it sends it back to enrollment server, in the form it is just HTML encoded. This string is opaque to the enrollment client; the client does not interpret the string.

The following example shows a response received from the discovery web service which requires authentication via WAB.

``` syntax
    <s:Envelope xmlns:s="http://www.w3.org/2003/05/soap-envelope"
       xmlns:a="http://www.w3.org/2005/08/addressing">
      <s:Header>
        <a:Action s:mustUnderstand="1">
          http://schemas.microsoft.com/windows/management/2012/01/enrollment/IDiscoveryService/DiscoverResponse
        </a:Action>
        <ActivityId>
          d9eb2fdd-e38a-46ee-bd93-aea9dc86a3b8
        </ActivityId>
        <a:RelatesTo>urn:uuid: 748132ec-a575-4329-b01b-6171a9cf8478</a:RelatesTo>
      </s:Header>
      <s:Body xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xmlns:xsd="http://www.w3.org/2001/XMLSchema">
        <DiscoverResponse
           xmlns="http://schemas.microsoft.com/windows/management/2012/01/enrollment">
          <DiscoverResult>
            <AuthPolicy>Federated</AuthPolicy>
            <EnrollmentVersion>3.0</EnrollmentVersion>
            <EnrollmentPolicyServiceUrl>
              https://enrolltest.contoso.com/ENROLLMENTSERVER/DEVICEENROLLMENTWEBSERVICE.SVC
            </EnrollmentPolicyServiceUrl>
            <EnrollmentServiceUrl>
              https://enrolltest.contoso.com/ENROLLMENTSERVER/DEVICEENROLLMENTWEBSERVICE.SVC
            </EnrollmentServiceUrl>
            <AuthenticationServiceUrl>
              https://portal.manage.contoso.com/LoginRedirect.aspx
            </AuthenticationServiceUrl>
          </DiscoverResult>
        </DiscoverResponse>
      </s:Body>
    </s:Envelope>
```

## Enrollment policy web service


Policy service is optional. By default, if no policies are specified, the minimum key length is 2k and the hash algorithm is SHA-1.

This web service implements the X.509 Certificate Enrollment Policy Protocol (MS-XCEP) specification that allows customizing certificate enrollment to match different security needs of enterprises at different times (cryptographic agility). The service processes the GetPolicies message from the client, authenticates the client, and returns matching enrollment policies in the GetPoliciesResponse message.

For Federated authentication policy, The security token credential is provided in a request message using the &lt;wsse:BinarySecurityToken&gt; element \[WSS\]. The security token is retrieved as described in the discovery response section. The authentication information is as follows:

-   wsse:Security: The enrollment client implements the &lt;wsse:Security&gt; element defined in \[WSS\] section 5. The &lt;wsse:Security&gt; element must be a child of the &lt;s:Header&gt; element.
-   wsse:BinarySecurityToken: The enrollment client implements the &lt;wsse:BinarySecurityToken&gt; element defined in \[WSS\] section 6.3. The &lt;wsse:BinarySecurityToken&gt; element must be included as a child of the &lt;wsse:Security&gt; element in the SOAP header.

As was described in the discovery response section, the inclusion of the &lt;wsse:BinarySecurityToken&gt; element is opaque to the enrollment client, and the client does not interpret the string, and the inclusion of the element is agreed upon by the security token authentication server (as identified in the &lt;AuthenticationServiceUrl&gt; element of &lt;DiscoveryResponse&gt; and the enterprise server.

The &lt;wsse:BinarySecurityToken&gt; element contains a base64-encoded string. The enrollment client uses the security token received from the authentication server and base64-encodes the token to populate the &lt;wsse:BinarySecurityToken&gt; element. wsse:BinarySecurityToken/attributes/ValueType: The &lt;wsse:BinarySecurityToken&gt; ValueType attribute must be "http:<span></span>//schemas.microsoft.com/5.0.0.0/ConfigurationManager/Enrollment/DeviceEnrollmentUserToken".

wsse:BinarySecurityToken/attributes/EncodingType: The &lt;wsse:BinarySecurityToken&gt; EncodingType attribute must be "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd\#base64binary".

The following is an enrollment policy request example with a received security token as client credential.

``` syntax
    <s:Envelope xmlns:s="http://www.w3.org/2003/05/soap-envelope"
       xmlns:a="http://www.w3.org/2005/08/addressing"
       xmlns:u="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"
       xmlns:wsse="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd"
       xmlns:wst="http://docs.oasis-open.org/ws-sx/ws-trust/200512"
       xmlns:ac="http://schemas.xmlsoap.org/ws/2006/12/authorization">
      <s:Header>
        <a:Action s:mustUnderstand="1">
          http://schemas.microsoft.com/windows/pki/2009/01/enrollmentpolicy/IPolicy/GetPolicies
        </a:Action>
        <a:MessageID>urn:uuid:72048B64-0F19-448F-8C2E-B4C661860AA0</a:MessageID>
        <a:ReplyTo>
          <a:Address>http://www.w3.org/2005/08/addressing/anonymous</a:Address>
        </a:ReplyTo>
        <a:To s:mustUnderstand="1">
          https://enrolltest.contoso.com/ENROLLMENTSERVER/DEVICEENROLLMENTWEBSERVICE.SVC
        </a:To>
        <wsse:Security s:mustUnderstand="1">
          <wsse:BinarySecurityToken  ValueType= 
    "http: //schemas.microsoft.com/5.0.0.0/ConfigurationManager/Enrollment/DeviceEnrollmentUserToken"
          EncodingType=
          "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd#base64binary"
          xmlns=
          "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd">
          B64EncodedSampleBinarySecurityToken
          </wsse:BinarySecurityToken>
        </wsse:Security>
      </s:Header>
      <s:Body xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xmlns:xsd="http://www.w3.org/2001/XMLSchema">
        <GetPolicies
           xmlns="http://schemas.microsoft.com/windows/pki/2009/01/enrollmentpolicy">
          <client>
            <lastUpdate xsi:nil="true"/>
            <preferredLanguage xsi:nil="true"/>
          </client>
          <requestFilter xsi:nil="true"/>
        </GetPolicies>
      </s:Body>
    </s:Envelope>
```

After the user is authenticated, the web service retrieves the certificate template that the user should enroll with and creates enrollment policies based on the certificate template properties. A sample of the response can be found on MSDN.

MS-XCEP supports very flexible enrollment policies using various Complex Types and Attributes. For Windows device, we will first support the minimalKeyLength, the hashAlgorithmOIDReference policies, and the CryptoProviders. The hashAlgorithmOIDReference has related OID and OIDReferenceID and policySchema in the GetPolicesResponse. The policySchema refers to the certificate template version. Version 3 of MS-XCEP supports hashing algorithms.

> **Note**  The HTTP server response must not set Transfer-Encoding to Chunked; it must be sent as one message.

 

The following snippet shows the policy web service response.

``` syntax
      <s:Envelope
         xmlns:u="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"
         xmlns:s="http://www.w3.org/2003/05/soap-envelope"
         xmlns:a="http://www.w3.org/2005/08/addressing">
        <s:Header>
          <a:Action s:mustUnderstand="1">
            http://schemas.microsoft.com/windows/pki/2009/01/enrollmentpolicy/IPolicy/GetPoliciesResponse
          </a:Action>
          <a:RelatesTo>urn:uuid: 69960163-adad-4a72-82d2-bb0e5cff5598</a:RelatesTo>
        </s:Header>
        <s:Body xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
           xmlns:xsd="http://www.w3.org/2001/XMLSchema">
          <GetPoliciesResponse
             xmlns="http://schemas.microsoft.com/windows/pki/2009/01/enrollmentpolicy">
            <response>
            <policyID />
              <policyFriendlyName xsi:nil="true"
                 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"/>
              <nextUpdateHours xsi:nil="true"
                 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"/>
              <policiesNotChanged xsi:nil="true"
                 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"/>
              <policies>
                <policy>
                  <policyOIDReference>0</policyOIDReference>
                  <cAs xsi:nil="true" />
                  <attributes>
                    <commonName>CEPUnitTest</commonName>
                    <policySchema>3</policySchema>
                    <certificateValidity>
                      <validityPeriodSeconds>1209600</validityPeriodSeconds>
                      <renewalPeriodSeconds>172800</renewalPeriodSeconds>
                    </certificateValidity>
                    <permission>
                      <enroll>true</enroll>
                      <autoEnroll>false</autoEnroll>
                    </permission>
                    <privateKeyAttributes>
                      <minimalKeyLength>2048</minimalKeyLength>
                      <keySpec xsi:nil="true" />
                      <keyUsageProperty xsi:nil="true" />
                      <permissions xsi:nil="true" />
                      <algorithmOIDReference xsi:nil="true" />
                      <cryptoProviders xsi:nil="true" />
                    </privateKeyAttributes>
                    <revision>
                      <majorRevision>101</majorRevision>
                      <minorRevision>0</minorRevision>
                    </revision>
                    <supersededPolicies xsi:nil="true" />
                    <privateKeyFlags xsi:nil="true" />
                    <subjectNameFlags xsi:nil="true" />
                    <enrollmentFlags xsi:nil="true" />
                    <generalFlags xsi:nil="true" />
                    <hashAlgorithmOIDReference>0</hashAlgorithmOIDReference>
                    <rARequirements xsi:nil="true" />
                    <keyArchivalAttributes xsi:nil="true" />
                    <extensions xsi:nil="true" />
                  </attributes>
                </policy>
              </policies>
            </response>
            <cAs xsi:nil="true" />
            <oIDs>
              <oID>
                <value>1.3.14.3.2.29</value>
                <group>1</group>
                <oIDReferenceID>0</oIDReferenceID>
                <defaultName>szOID_OIWSEC_sha1RSASign</defaultName>
              </oID>
            </oIDs>
          </GetPoliciesResponse>
        </s:Body>
      </s:Envelope>
```

## Enrollment web service


This web service implements the MS-WSTEP protocol. It processes the RequestSecurityToken (RST) message from the client, authenticates the client, requests the certificate from the CA, and returns it in the RequestSecurityTokenResponse (RSTR) to the client. Besides the issued certificate, the response also contains configurations needed to provision the DM client.

The RequestSecurityToken (RST) must have the user credential and a certificate request. The user credential in an RST SOAP envelope is the same as in GetPolicies, and can vary depending on whether the authentication policy is OnPremise or Federated. The BinarySecurityToken in an RST SOAP body contains a Base64-encoded PKCS\#10 certificate request, which is generated by the client based on the enrollment policy. The client could have requested an enrollment policy by using MS-XCEP before requesting a certificate using MS-WSTEP. If the PKCS\#10 certificate request is accepted by the certification authority (CA) (the key length, hashing algorithm, and so on match the certificate template), the client can enroll successfully.

Note that the RequestSecurityToken will use a custom TokenType (http:<span></span>//schemas.microsoft.com/5.0.0.0/ConfigurationManager/Enrollment/DeviceEnrollmentToken), because our enrollment token is more than an X.509 v3 certificate. For more details, see the Response section.

The RST may also specify a number of AdditionalContext items, such as DeviceType and Version. Based on these values, for example, the web service can return device-specific and version-specific DM configuration.

> **Note**  The policy service and the enrollment service must be on the same server; that is, they must have the same host name.

 

The following example shows the enrollment web service request for federated authentication.

``` syntax
    <s:Envelope xmlns:s="http://www.w3.org/2003/05/soap-envelope"
       xmlns:a="http://www.w3.org/2005/08/addressing"
       xmlns:u="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"
       xmlns:wsse="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd"
       xmlns:wst="http://docs.oasis-open.org/ws-sx/ws-trust/200512"
       xmlns:ac="http://schemas.xmlsoap.org/ws/2006/12/authorization">
      <s:Header>
        <a:Action s:mustUnderstand="1">
          http://schemas.microsoft.com/windows/pki/2009/01/enrollment/RST/wstep
        </a:Action>
        <a:MessageID>urn:uuid:0d5a1441-5891-453b-becf-a2e5f6ea3749</a:MessageID>
        <a:ReplyTo>
          <a:Address>http://www.w3.org/2005/08/addressing/anonymous</a:Address>
        </a:ReplyTo>
        <a:To s:mustUnderstand="1">
          https://enrolltest.contoso.com:443/ENROLLMENTSERVER/DEVICEENROLLMENTWEBSERVICE.SVC
        </a:To>
        <wsse:Security s:mustUnderstand="1">
          <wsse:BinarySecurityToken  wsse:ValueType= 
    "http:"//schemas.microsoft.com/5.0.0.0/ConfigurationManager/Enrollment/DeviceEnrollmentUserToken
          wsse:EncodingType=
          http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd#base64binary"
          
    >
          B64EncodedSampleBinarySecurityToken
          </wsse:BinarySecurityToken>
        </wsse:Security>
      </s:Header>
      <s:Body>
        <wst:RequestSecurityToken>
          <wst:TokenType>
            http://schemas.microsoft.com/5.0.0.0/ConfigurationManager/Enrollment/DeviceEnrollmentToken
          </wst:TokenType>
          <wst:RequestType>
            http://docs.oasis-open.org/ws-sx/ws-trust/200512/Issue
          </wst:RequestType>
          <wsse:BinarySecurityToken
             ValueType="http://schemas.microsoft.com/windows/pki/2009/01/enrollment#PKCS10"
             EncodingType="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd#base64binary">
            DER format PKCS#10 certificate request in Base64 encoding Insterted Here
          </wsse:BinarySecurityToken>
          <ac:AdditionalContext xmlns="http://schemas.xmlsoap.org/ws/2006/12/authorization">
               <ac:ContextItem Name="OSEdition">
                   <ac:Value> 4</ac:Value>
                </ac:ContextItem>
                <ac:ContextItem Name="OSVersion">
                   <ac:Value>10.0.9999.0</ac:Value>
                </ac:ContextItem>
                <ac:ContextItem Name="DeviceName">
                   <ac:Value>MY_WINDOWS_DEVICE</ac:Value>
                </ac:ContextItem>
                <ac:ContextItem Name="MAC">
                   <ac:Value>FF:FF:FF:FF:FF:FF</ac:Value>
                </ac:ContextItem>
                <ac:ContextItem Name="MAC">
                   <ac:Value>CC:CC:CC:CC:CC:CC</ac:Value>
                <ac:ContextItem Name="IMEI">
                   <ac:Value>49015420323756</ac:Value>
                </ac:ContextItem>
                <ac:ContextItem Name="IMEI">
                   <ac:Value>30215420323756</ac:Value>
                </ac:ContextItem>
                <ac:ContextItem Name="EnrollmentType">
                   <ac:Value>Full</ac:Value>
                </ac:ContextItem>
                <ac:ContextItem Name="DeviceType">
                   <ac:Value>CIMClient_Windows</ac:Value>
                </ac:ContextItem>
                <ac:ContextItem Name="ApplicationVersion">
                   <ac:Value>10.0.9999.0</ac:Value>
                </ac:ContextItem>
                <ac:ContextItem Name="DeviceID">
                   <ac:Value>7BA748C8-703E-4DF2-A74A-92984117346A</ac:Value>
                </ac:ContextItem>
                <ac:ContextItem Name="TargetedUserLoggedIn">
                   <ac:Value>True</ac:Value>
                </ac:ContextItem>
             </ac:AdditionalContext>
        </wst:RequestSecurityToken>
      </s:Body>
```

After validating the request, the web service looks up the assigned certificate template for the client, update it if needed, sends the PKCS\#10 requests to the CA, processes the response from the CA, constructs an OMA Client Provisioning XML format, and returns it in the RequestSecurityTokenResponse (RSTR).

> **Note**  The HTTP server response must not set Transfer-Encoding to Chunked; it must be sent as one message.

 

Similar to the TokenType in the RST, the RSTR will use a custom ValueType in the BinarySecurityToken (http:<span></span>//schemas.microsoft.com/ConfigurationManager/Enrollment/DeviceEnrollmentProvisionDoc), because the token is more than an X.509 v3 certificate.

The provisioning XML contains:

-   The requested certificates (required)
-   The DM client configuration (required)

The client will install the client certificate, the enterprise root certificate, and intermediate CA certificate if there is one. The DM configuration includes the name and address of the DM server, which client certificate to use, and schedules when the DM client calls back to the server.

Enrollment provisioning XML should contain a maximum of one root certificate and one intermediate CA certificate that is needed to chain up the MDM client certificate. Additional root and intermediate CA certificates could be provisioned during an OMA DM session.

When provisioning root and intermediate CA certificates, the supported CSP node path is: CertificateStore/Root/System for root certificate provisioning, CertificateStore/My/User for intermediate CA certificate provisioning.

Here is a sample RSTR message and a sample of OMA client provisioning XML within RSTR. For more information about the configuration service providers (CSPs) used in provisioning XML, see the Enterprise settings, policies and app management section.

The following example shows the enrollment web service response.

``` syntax
    <s:Envelope xmlns:s="http://schemas.xmlsoap.org/soap/envelope/" 
       xmlns:a="http://www.w3.org/2005/08/addressing" 
       xmlns:u="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd">
       <s:Header>
          <a:Action s:mustUnderstand="1" >
             http://schemas.microsoft.com/windows/pki/2009/01/enrollment/RSTRC/wstep
          </a:Action>
          <a:RelatesTo>urn:uuid:81a5419a-496b-474f-a627-5cdd33eed8ab</a:RelatesTo>
          <o:Security s:mustUnderstand="1" xmlns:o=
             "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd">
             <u:Timestamp u:Id="_0">
                <u:Created>2012-08-02T00:32:59.420Z</u:Created>
                <u:Expires>2012-08-02T00:37:59.420Z</u:Expires>
             </u:Timestamp>
          </o:Security>
       </s:Header>
       <s:Body>
          <RequestSecurityTokenResponseCollection 
             xmlns="http://docs.oasis-open.org/ws-sx/ws-trust/200512">
             <RequestSecurityTokenResponse>
                <TokenType>
        http://schemas.microsoft.com/5.0.0.0/ConfigurationManager/Enrollment/DeviceEnrollmentToken
                </TokenType>
                 <DispositionMessage xmlns="http://schemas.microsoft.com/windows/pki/2009/01/enrollment"/>           <RequestedSecurityToken>
                   <BinarySecurityToken 
                      ValueType=
    "http://schemas.microsoft.com/5.0.0.0/ConfigurationManager/Enrollment/DeviceEnrollmentProvisionDoc"
                      EncodingType=
       "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd#base64binary"
                      xmlns=
              "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd">
                      B64EncodedSampleBinarySecurityToken
                   </BinarySecurityToken>
                </RequestedSecurityToken>
                <RequestID xmlns="http://schemas.microsoft.com/windows/pki/2009/01/enrollment">0
                </RequestID>
             </RequestSecurityTokenResponse>
          </RequestSecurityTokenResponseCollection>
       </s:Body>
    </s:Envelope>
```

The following code shows sample provisioning XML (presented in the preceding package as a security token):

```
<wap-provisioningdoc version="1.1">
   <characteristic type="CertificateStore">
      <characteristic type="Root">
         <characteristic type="System">
            <characteristic type="Encoded Root Cert Hash Inserted Here">
               <parm name="EncodedCertificate" value="B64 encoded cert insert here" />
            </characteristic>
         </characteristic>
      </characteristic>
   </characteristic>
   <characteristic type="CertificateStore">
      <characteristic type="My" >      
         <characteristic type="User">
            <characteristic type="Encoded Root Cert Hash Inserted Here">
               <parm name="EncodedCertificate" value="B64EncodedCertInsertedHere" />
            </characteristic>
            <characteristic type="PrivateKeyContainer"/> 
            <!-- This tag must be present for XML syntax correctness. -->            
         </characteristic>
         <characteristic type="WSTEP">
            <characteristic type="Renew">
             <!—If the datatype for ROBOSupport, RenewPeriod, and RetryInterval tags exist, they must be set explicitly. -->
               <parm name="ROBOSupport" value="true" datatype="boolean"/>
               <parm name="RenewPeriod" value="60" datatype="integer"/>
               <parm name="RetryInterval" value="4" datatype="integer"/>
            </characteristic>
         </characteristic>
      </characteristic>
   </characteristic>
   <characteristic type="APPLICATION">
      <parm name="APPID" value="w7"/>
      <parm name="PROVIDER-ID" value="TestMDMServer"/>
      <parm name="NAME" value="Microsoft"/>
      <parm name="ADDR" value="https://DM.contoso.com:443/omadm/Windows.ashx"/>
      <parm name="CONNRETRYFREQ" value="6" />
      <parm name="INITIALBACKOFFTIME" value="30000" />
      <parm name="MAXBACKOFFTIME" value="120000" />
      <parm name="BACKCOMPATRETRYDISABLED" />
      <parm name="DEFAULTENCODING" value="application/vnd.syncml.dm+wbxml" />
      <parm name="SSLCLIENTCERTSEARCHCRITERIA" value=
  "Subject=DC%3dcom%2cDC%3dmicrosoft%2cCN%3dUsers%2cCN%3dAdministrator&amp;amp;Stores=My%5CUser"/>
      <characteristic type="APPAUTH">
         <parm name="AAUTHLEVEL" value="CLIENT"/>
         <parm name="AAUTHTYPE" value="DIGEST"/>
         <parm name="AAUTHSECRET" value="password1"/>
         <parm name="AAUTHDATA" value="B64encodedBinaryNonceInsertedHere"/>
      </characteristic>
      <characteristic type="APPAUTH">
         <parm name="AAUTHLEVEL" value="APPSRV"/>
         <parm name="AAUTHTYPE" value="BASIC"/>
         <parm name="AAUTHNAME" value="testclient"/>
         <parm name="AAUTHSECRET" value="password2"/>
      </characteristic>
   </characteristic>
   <characteristic type="DMClient"> <!-- In Windows 10, an enrollment server should use DMClient CSP XML to configure DM polling schedules. -->
      <characteristic type="Provider">
<!-- ProviderID in DMClient CSP must match to PROVIDER-ID in w7 APPLICATION characteristics -->
    <characteristic type="TestMDMServer">
          <parm name="UPN" value="UserPrincipalName@contoso.com" datatype="string" /> 
             <characteristic type="Poll">
                <parm name="NumberOfFirstRetries" value="8" datatype="integer" />
                <parm name="IntervalForFirstSetOfRetries" value="15" datatype="integer" />
                <parm name="NumberOfSecondRetries" value="5" datatype="integer" />
                <parm name="IntervalForSecondSetOfRetries" value="3" datatype="integer" />
                <parm name="NumberOfRemainingScheduledRetries" value="0" datatype="integer" />
<!-- Windows 10 supports MDM push for real-time communication. The DM client long term polling schedule’s retry waiting interval should be more than 24 hours (1440) to reduce the impact to data consumption and battery life. Refer to the DMClient Configuration Service Provider section for information about polling schedule parameters.-->
         <parm name="IntervalForRemainingScheduledRetries" value="1560" datatype="integer" />
         <parm name="PollOnLogin" value="true" datatype="boolean" />
 </characteristic>
        <parm name="EntDeviceName" value="Administrator_Windows" datatype="string" />
</characteristic>
      </characteristic>
   </characteristic>
   <!-- For Windows 10, we removed EnterpriseAppManagement from the enrollment 
        protocol. -->
</wap-provisioningdoc>
```

**Notes**

-   &lt;Parm name&gt; and &lt;characteristic type=&gt; elements in the w7 APPLICATION CSP XML are case sensitive and must be all uppercase.
-   In w7 APPLICATION characteristic, both CLIENT and APPSRV credentials should be provided in XML.
-   Detailed descriptions of these settings are located in the [Enterprise settings, policies and app management](windows-mdm-enterprise-settings.md) section of this document.
-   The **PrivateKeyContainer** characteristic is required and must be present in the Enrollment provisioning XML by the enrollment. Other important settings are the **PROVIDER-ID**, **NAME**, and **ADDR** parameter elements, which need to contain the unique ID and NAME of your DM provider and the address where the device can connect for configuration provisioning. The ID and NAME can be arbitrary values, but they must be unique.
-   Also important is SSLCLIENTCERTSEARCHCRITERIA, which is used for selecting the certificate to be used for client authentication. The search is based on the subject attribute of the signed user certificate.
-   CertificateStore/WSTEP enables certificate renewal. If the server does not support it, do not set it.

 






