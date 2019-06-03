---
title: On-premises authentication device enrollment
description: This section provides an example of the mobile device enrollment protocol using on-premises authentication policy.
ms.assetid: 626AC8B4-7575-4C41-8D59-185D607E3A47
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: dansimp
ms.date: 06/26/2017
---

# On-premises authentication device enrollment

This section provides an example of the mobile device enrollment protocol using on-premises authentication policy. For details about the Microsoft mobile device enrollment protocol for Windows 10, see [\[MS-MDE2\]: Mobile Device Enrollment Protocol Version 2]( http://go.microsoft.com/fwlink/p/?LinkId=619347).

## In this topic

- [On-premises authentication device enrollment](#on-premises-authentication-device-enrollment)
  - [In this topic](#in-this-topic)
  - [Discovery service](#discovery-service)
  - [Enrollment policy web service](#enrollment-policy-web-service)
  - [Enrollment web service](#enrollment-web-service)

For the list of enrollment scenarios not supported in Windows 10, see [Enrollment scenarios not supported](mobile-device-enrollment.md#enrollment-scenarios-not-supported).

## Discovery service

The discovery web service provides the configuration information necessary for a user to enroll a device with a management service. The service is a restful web service over HTTPS (server authentication only).

>[!NOTE]
>The administrator of the discovery service must create a host with the address enterpriseenrollment.*domain\_name*.com.

The device’s automatic discovery flow uses the domain name of the email address that was submitted to the Workplace settings screen during sign in. The automatic discovery system constructs a URI that uses this hostname by appending the subdomain “enterpriseenrollment” to the domain of the email address, and by appending the path “/EnrollmentServer/Discovery.svc”. For example, if the email address is “sample@contoso.com”, the resulting URI for first Get request would be: http:<span></span>//enterpriseenrollment.contoso.com/EnrollmentServer/Discovery.svc

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
            </AuthPolicies>
          </request>
        </Discover>
      </s:Body>
    </s:Envelope>
```

If a domain and user name are provided by the user instead of an email address, the &lt;EmailAddress&gt; tag should contain domain\\username. In this case, the user needs to enter the server address directly.

&lt;EmailAddress&gt;contoso\\user&lt;/EmailAddress&gt; Response

The discovery response is in the XML format and includes the following fields:

-   Enrollment service URL (EnrollmentServiceUrl) – Specifies the URL of the enrollment endpoint that is exposed by the management service. The device should call this URL after the user has been authenticated. This field is mandatory.
-   Authentication policy (AuthPolicy) – Indicates what type of authentication is required. For the MDM server, OnPremise is the supported value, which means that the user will be authenticated when calling the management service URL. This field is mandatory.
-   Federated is added as another supported value. This allows the server to leverage the Web Authentication Broker to perform customized user authentication, and term of usage acceptance.

>[!NOTE]
>The HTTP server response must not be chunked; it must be sent as one message.

The following example shows a response received from the discovery web service for OnPremise authentication:

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
            <AuthPolicy>OnPremise</AuthPolicy>
            <EnrollmentVersion>3.0</EnrollmentVersion>
            <EnrollmentPolicyServiceUrl>
              https://enrolltest.contoso.com/ENROLLMENTSERVER/DEVICEENROLLMENTWEBSERVICE.SVC
            </EnrollmentPolicyServiceUrl>
            <EnrollmentServiceUrl>
              https://enrolltest.contoso.com/ENROLLMENTSERVER/DEVICEENROLLMENTWEBSERVICE.SVC
            </EnrollmentServiceUrl>
          </DiscoverResult>
        </DiscoverResponse>
      </s:Body>
    </s:Envelope>
```

## Enrollment policy web service

For the OnPremise authentication policy, the UsernameToken in GetPolicies contains the user credential, whose value is based on the authentication policy in discovery. A sample of the request can be found on the MSDN website; the following is another sample, with "user@contoso.com" as the user name and "mypassword" as the password.

The following example shows the policy web service request.

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
          <wsse:UsernameToken u:Id="uuid-cc1ccc1f-2fba-4bcf-b063-ffc0cac77917-4">
            <wsse:Username>user@contoso.com</wsse:Username>
            <wsse:Password wsse:Type="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-username-token-profile-1.0#PasswordText">mypassword</wsse:Password>
          </wsse:UsernameToken>
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

MS-XCEP supports very flexible enrollment policies using various Complex Types and Attributes. We will first support the minimalKeyLength, the hashAlgorithmOIDReference policies, and the CryptoProviders. The hashAlgorithmOIDReference has related OID and OIDReferenceID and policySchema in the GetPolicesResponse. The policySchema refers to the certificate template version. Version 3 of MS-XCEP supports hashing algorithms.

>[!NOTE]
>The HTTP server response must not be chunked; it must be sent as one message.

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

The RequestSecurityToken will use a custom TokenType (http:<span></span>//schemas.microsoft.com/5.0.0.0/ConfigurationManager/Enrollment/DeviceEnrollmentToken), because our enrollment token is more than an X.509 v3 certificate. For more details, see the Response section.

The RST may also specify a number of AdditionalContext items, such as DeviceType and Version. Based on these values, for example, the web service can return device-specific and version-specific DM configuration.

>[!NOTE]
>The policy service and the enrollment service must be on the same server; that is, they must have the same host name.

The following example shows the enrollment web service request for OnPremise authentication.

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
             <wsse:UsernameToken u:Id="uuid-cc1ccc1f-2fba-4bcf-b063-ffc0cac77917-4">
                <wsse:Username>user@contoso.com</wsse:Username>
                <wsse:Password wsse:Type=
                  "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-username-token-profile-1.0#PasswordText">mypassword
                </wsse:Password>
             </wsse:UsernameToken>
          </wsse:Security>
       </s:Header>
       <s:Body>
          <wst:RequestSecurityToken>
             <wst:TokenType>
        http://schemas.microsoft.com/5.0.0.0/ConfigurationManager/Enrollment/DeviceEnrollmentToken
             </wst:TokenType>
             <wst:RequestType>
                http://docs.oasis-open.org/ws-sx/ws-trust/200512/Issue</wst:RequestType>
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
                </ac:ContextItem>
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
    </s:Envelope>
```

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

The following example shows the encoded provisioning XML.

```
<wap-provisioningdoc version="1.1">
   <characteristic type="CertificateStore">
      <characteristic type="Root">
         <characteristic type="System">
            <characteristic type="031336C933CC7E228B88880D78824FB2909A0A2F">
               <parm name="EncodedCertificate" value="B64 encoded cert insert here" />
            </characteristic>
         </characteristic>
      </characteristic>
   </characteristic>
   <characteristic type="CertificateStore">
      <characteristic type="My" >      
         <characteristic type="User">
            <characteristic type="F9A4F20FC50D990FDD0E3DB9AFCBF401818D5462">
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
        protocol. This configuration service provider is being deprecated for Windows 10. -->
</wap-provisioningdoc>
```
