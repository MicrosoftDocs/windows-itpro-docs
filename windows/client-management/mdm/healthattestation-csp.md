---
title: Device HealthAttestation CSP
description: Learn how the DHA-CSP enables enterprise IT managers to assess if a device is booted to a trusted and compliant state, and take enterprise policy actions.
ms.assetid: 6F2D783C-F6B4-4A81-B9A2-522C4661D1AC
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: dansimp
ms.date: 
---

# Device HealthAttestation CSP

The Device HealthAttestation configuration service provider (DHA-CSP) enables enterprise IT adminstrators to assess if a device is booted to a trusted and compliant state, and to take enterprise policy actions.

The following is a list of functions performed by the Device HealthAttestation CSP:

-   Collects device boot logs, Trusted Platform Module (TPM) audit trails and the TPM certificate (DHA-BootData) from a managed device
-   Forwards DHA-BootData to a Device Health Attestation Service (DHA-Service)
-   Receives an encrypted blob (DHA-EncBlob) from DHA-Service, and stores it in a local cache on the device
-   Receives attestation requests (DHA-Requests) from a DHA-Enabled MDM, and replies with Device Health Attestation data (DHA-Data)

## Windows 11 Device health attestation

Windows 11 introduces an update to the device health attestation feature. This helps add support for deeper insights to Windows boot security, supporting a zero trust approach to device security. Device health attestation on Windows can be accessed by using the HealthAttestation CSP. This CSP helps assess if a device is booted to a trusted and compliant state and then to take appropriate action. Windows 11 introduces additional child nodes to the HealthAttestation node for the MDM providers to connect to the Microsoft Azure Attestation service which provides a simplified approach to attestation.

The attestation report provides a health assessment of the boot-time properties of the device to ensure that the devices are automatically secure as soon as they power on. The health attestation result can then be used to allow or deny access to networks, apps, or services, depending on the health of the device.

### Terms
**TPM (Trusted Platform Module)**
<p>TPM is a specialized hardware-protected logic that performs a series of hardware protected security operations including providing protected storage, random number generation, encryption and signing.</p>

**DHA (Device HealthAttestation) feature**
<p>The Device HealthAttestation (DHA) feature enables enterprise IT administrators to monitor the security posture of managed devices remotely by using hardware (TPM) protected and attested data via a tamper-resistant and tamper-evident communication channel.</p>

**MAA-Session (Microsoft Azure Attestaiton service based device HealthAttestation session)**
<p>The Microsoft Azure Attestaiton service based device HealthAttestation session (MAA-Session) describes the end-to-end communication flow that is performed in one device health attestation session.</p>

**MAA-CSP Nodes (Microsoft Azure Attestaiton based Configuration Service Provider)**
<p>The Configuration Service Provider nodes added to Windhows 11 to integrate with Microsoft Azure Attestation Service.</p>
<p>The following list of operations is performed by MAA-CSP:</p>
<ul>
<li>Receives attestation trigger requests from a HealthAttestation enabled MDM provider.</li>
<li>The device collects Attestation Evidence (device boot logs, TPM audit trails and the TPM certificate) from a managed device.</li>
<li>Forwards the Attestation Evidence to the Azure Attestation Service instance as configured by the MDM provider.</li>
<li>Receives a signed report from the Azure Attestation Service instance and stores it in a local cache on the device.</li>
</ul>

**MAA endpoint**
Microsoft Azure attestation service is an azure resource, and every intance of the service gets adminintrator configured URL. The URI generated is unique in nature and for the puposes of device health attestation is known as the MAA endpoint.

**JWT (JSON Web Token)**
JSON Web Token (JWT) is an open standard RFC7519 method for securely transmitting information between parties as a JavaScript Object Notation (JSON) object. This information can be verified and trusted because it is digitally signed. JWTs can be signed using a secret or a public/private key pair.

### Attestation Flow with Microsoft Azure Attestation Service

![Attestation Flow with Microsoft Azure Attestation Service](./images/maa-attestation-flow.png)

<br>
<p>Attestation flow can be broadly in three main steps:</p>
<ul>
    <li>An instance of the Azure Attestation service is setup with an appropriate attestation policy. The attestation policy allows the MDM provider to attest to particular events in the boot as well security features.</li>
    <li>The MDM provider triggers a call to the attestation service, the device then performs an attestation check keeping the report ready to be retrieved.</li>
    <li>The MDM provider after verifying the token is coming from the attestation service it can parse the attestation token to reflect on the attested state of the device.</li>
</ul>

The protocol implemented can be found here: <a href="/azure/attestation/virtualization-based-security-protocol" id="attestationprotocol"> Attestation Protocol</a>.

### Configuration Service Provider Nodes
Windows 11 introduces additions to the HealthAttestation CSP node to integrate with Microsoft Azure Attestaiton service.
```
./Vendor/MSFT
HealthAttestation
----...
----TriggerAttestation                    |
----AttestStatus                          | Added in Windows 11
----GetAttestReport                       |
----GetServiceCorrelationIDs              |
----VerifyHealth
----Status
----ForceRetrieve
----Certificate
----Nonce
----CorrelationID
----HASEndpoint
----TpmReadyStatus
----CurrentProtocolVersion
----PreferredMaxProtocolVersion
----MaxSupportedProtocolVersion
```


<a href="" id="healthattestation"></a>**./Vendor/MSFT/HealthAttestation**  
<p>The root node for the device HealthAttestation configuration service provider.</p>

<a href="" id="triggerAttestation"></a>**TriggerAttestation** (Required)  
<p>Node type: EXECUTE
This node will trigger attestation flow by launching an attestation process. If the attestation process is launched successfully, this node will return code 202 indicating the request is received and being processed. Otherwise, an error will be returned.
</p>

<p>Templated SyncML Call:</p>

    <SyncML xmlns="SYNCML:SYNCML1.2">
        <SyncBody>
            <Exec>
                <CmdID>VERIFYHEALTHV2</CmdID>
                <Item>
                    <Target>
                        <LocURI>
                            ./Vendor/MSFT/HealthAttestation/TriggerAttestation
                        </LocURI>
                    </Target>
                    <Data>
                        {
                        rpID : "rpID", serviceEndpoint : “MAA endpoint”,
                        nonce : “nonce”, aadToken : “aadToken”, "cv" : "CorrelationVector"
                        }                    
                    </Data>
                </Item>
            </Exec>
            <Final/>
        </SyncBody>
    </SyncML>

<p>Data fields:</p>
<ul>
<li>rpID (Relying Party Identifier): This field contains an identifier that can be used to help determine the caller.</li>
<li>serviceEndpoint : This field contains the complete URL of the Microsoft Azure Attestation provider instance to be used for evaluation.</li>
<li>nonce : This field contains an arbitrary number that can be used just once in a cryptographic communication. It is often a random or pseudo-random number issued in an authentication protocol to ensure that old communications cannot be reused in replay attacks.</li>
<li>aadToken : The AAD token to used for authentication against the Microsoft Azure Attestation service.</li>
<li>cv : This field contains an identifier(Correlation Vector) that will passed in to the service call, that can be used for diagnostics purposes.</li>
</ul>

<p>Sample Data:</p>

     <Data>
     { 
     "rpid" : "https://www.contoso.com/attestation",
      "endpoint" : "https://contoso.eus.attest.azure.net/attest/tpm?api-version=2020-10-01",
      "nonce" : "5468697320697320612054657374204e6f6e6365",
      "aadToken" : "dummytokenstring",
      "cv" : "testonboarded" 
     }
     </Data>

<a href="" id="AttestStatus"></a>**AttestStatus**
<p>Node type: GET
This node will retrieve the status(HRESULT value) stored in registry updated by the attestation process triggered in the previous step.
The status is always cleared prior to making the attest service call.
</p>

<p>Templated SyncML Call:</p>

    <SyncML xmlns="SYNCML:SYNCML1.2">
      <SyncBody>
        <Get>
          <Item>
            <Target>
              <LocURI>
                ./Device/Vendor/MSFT/HealthAttestation/AttestStatus
              </LocURI>
            </Target>
          </Item>
        </Get>
        <Final/> 
      </SyncBody>
    </SyncML>

<p>Sample Data:</p>

     If Successful: 0
     If Failed: A corresponding HRESULT error code
     Example: 0x80072efd,  WININET_E_CANNOT_CONNECT

<a href="" id="getAttestReport"></a>**GetAttestReport**
<p>Node type: GET
This node will retrieve the attestation report per the call made by the TriggerAttestation, if there is any, for the given MDM provider. The report is stored in a registry key in the respective MDM enrollment store.
</p>

<p>Templated SyncML Call:</p>

     <SyncML xmlns="SYNCML:SYNCML1.2">
       <SyncBody>
         <Get>
           <Item>
             <Target>
               <LocURI>
                 ./Device/Vendor/MSFT/HealthAttestation/GetAttestReport
               </LocURI>
             </Target>
           </Item>
         </Get>
         <Final/> 
       </SyncBody>
     </SyncML>

<p>Sample data:</p>

     If Success:
     JWT token: aaaaaaaaaaaaa.bbbbbbbbbbbbb.cccccccccc
     If failed:
     Previously cached report if available (the token may have already expired per the attestation policy).
     OR Sync ML 404 error if not cached report available.

<a href="" id="getServiceCorrelationIDs"></a>**GetServiceCorrelationIDs**
<p>Node type: GET
This node will retrieve the service generated correlation IDs for the given MDM provider. If there are more than one correlation id, they are separated by “;” in the string.
</p>
<p>Templated SyncML Call:</p>

     <SyncML xmlns="SYNCML:SYNCML1.2">
       <SyncBody>
         <Get>
           <Item>
             <Target>
               <LocURI>
                 ./Device/Vendor/MSFT/HealthAttestation/GetServiceCorrelationIDs
               </LocURI>
             </Target>
           </Item>
         </Get>
         <Final/> 
       </SyncBody>
     </SyncML>

<p>Sample data:</p>

    If success:
    GUID returned by the attestation service: 1k9+vQOn00S8ZK33;CMc969r1JEuHwDpM
    If Trigger Attestation call failed and no previous data is present. The field remains empty.
    Otherwise, the last service correlation id will be returned. In a successful attestation there are two 
    calls between client and MAA and for each call the GUID is separated by semicolon.

> **_Note:_** MAA CSP nodes are available on arm64 but is not currently supported.


### MAA CSP Intergation Steps
<ol>
<li>Setup a MAA provider instance:<br>
MAA instance can be created following the steps here <a href="/azure/attestation/quickstart-portal" id="quickstartsetup">Quickstart: Set up Azure Attestation by using the Azure portal | Microsoft Docs.</a></li>
<br><li>Update the provider with an appropriate policy:<br>
The MAA instance should be updated with an appropriate policy. <a href="/azure/attestation/claim-rule-grammar" id="policy">How to author an Azure Attestation policy | Microsoft Docs</a>
<br>A Sample attestation policy:

```
version=1.2;

configurationrules{
};

authorizationrules { 
    => permit();
};

issuancerules{

// SecureBoot enabled 
c:[type == "events", issuer=="AttestationService"] => add(type = "efiConfigVariables", value = JmesPath(c.value, "Events[?EventTypeString == 'EV_EFI_VARIABLE_DRIVER_CONFIG' && ProcessedData.VariableGuid == '8BE4DF61-93CA-11D2-AA0D-00E098032B8C']"));
c:[type == "efiConfigVariables", issuer=="AttestationPolicy"]=> issue(type = "secureBootEnabled", value = JsonToClaimValue(JmesPath(c.value, "[?ProcessedData.UnicodeName == 'SecureBoot'] | length(@) == `1` && @[0].ProcessedData.VariableData == 'AQ'")));
![type=="secureBootEnabled", issuer=="AttestationPolicy"] => issue(type="secureBootEnabled", value=false);

// Retrieve bool properties
c:[type=="events", issuer=="AttestationService"] => add(type="boolProperties", value=JmesPath(c.value, "Events[? EventTypeString == 'EV_EVENT_TAG' && (PcrIndex == `12` || PcrIndex == `13` || PcrIndex == `19` || PcrIndex == `20`)].ProcessedData.EVENT_TRUSTBOUNDARY"));
c:[type=="boolProperties", issuer=="AttestationPolicy"] => add(type="codeIntegrityEnabledSet", value=JsonToClaimValue(JmesPath(c.value, "[*].EVENT_CODEINTEGRITY")));
c:[type=="codeIntegrityEnabledSet", issuer=="AttestationPolicy"] => issue(type="codeIntegrityEnabled", value=ContainsOnlyValue(c.value, true));
![type=="codeIntegrityEnabled", issuer=="AttestationPolicy"] => issue(type="codeIntegrityEnabled", value=false);

// Bitlocker Boot Status, The first non zero measurement or zero.
c:[type=="events", issuer=="AttestationService"] => add(type="srtmDrtmEventPcr", value=JmesPath(c.value, "Events[? EventTypeString == 'EV_EVENT_TAG' && (PcrIndex == `12` || PcrIndex == `19`)].ProcessedData.EVENT_TRUSTBOUNDARY"));
c:[type=="srtmDrtmEventPcr", issuer=="AttestationPolicy"] => issue(type="bitlockerEnabledValue", value=JsonToClaimValue(JmesPath(c.value, "[*].EVENT_BITLOCKER_UNLOCK | @[? Value != `0`].Value | @[0]")));
[type=="bitlockerEnabledValue"] => issue(type="bitlockerEnabled", value=true);
![type=="bitlockerEnabledValue"] => issue(type="bitlockerEnabled", value=false);

// Elam Driver (windows defender) Loaded
c:[type=="boolProperties", issuer=="AttestationPolicy"] => add(type="elamDriverLoaded", value=JsonToClaimValue(JmesPath(c.value, "[*].EVENT_LOADEDMODULE_AGGREGATION[] | [? EVENT_IMAGEVALIDATED == `true` && (equals_ignore_case(EVENT_FILEPATH, '\\windows\\system32\\drivers\\wdboot.sys') || equals_ignore_case(EVENT_FILEPATH, '\\windows\\system32\\drivers\\wd\\wdboot.sys'))] | @ != `null`")));
[type=="elamDriverLoaded", issuer=="AttestationPolicy"] => issue(type="WindowsDefenderElamDriverLoaded", value=true);
![type=="elamDriverLoaded", issuer=="AttestationPolicy"] => issue(type="WindowsDefenderElamDriverLoaded", value=false);

// Boot debugging
c:[type=="boolProperties", issuer=="AttestationPolicy"] => add(type="bootDebuggingEnabledSet", value=JsonToClaimValue(JmesPath(c.value, "[*].EVENT_BOOTDEBUGGING")));
c:[type=="bootDebuggingEnabledSet", issuer=="AttestationPolicy"] => issue(type="bootDebuggingDisabled", value=ContainsOnlyValue(c.value, false));
![type=="bootDebuggingDisabled", issuer=="AttestationPolicy"] => issue(type="bootDebuggingDisabled", value=false);

// Kernel Debugging
c:[type=="boolProperties", issuer=="AttestationPolicy"] => add(type="osKernelDebuggingEnabledSet", value=JsonToClaimValue(JmesPath(c.value, "[*].EVENT_OSKERNELDEBUG")));
c:[type=="osKernelDebuggingEnabledSet", issuer=="AttestationPolicy"] => issue(type="osKernelDebuggingDisabled", value=ContainsOnlyValue(c.value, false));
![type=="osKernelDebuggingDisabled", issuer=="AttestationPolicy"] => issue(type="osKernelDebuggingDisabled", value=false);

// DEP Policy
c:[type=="boolProperties", issuer=="AttestationPolicy"] => issue(type="depPolicy", value=JsonToClaimValue(JmesPath(c.value, "[*].EVENT_DATAEXECUTIONPREVENTION.Value | @[-1]")));
![type=="depPolicy"] => issue(type="depPolicy", value=0);

// Test Signing
c:[type=="boolProperties", issuer=="AttestationPolicy"] => add(type="testSigningEnabledSet", value=JsonToClaimValue(JmesPath(c.value, "[*].EVENT_TESTSIGNING")));
c:[type=="testSigningEnabledSet", issuer=="AttestationPolicy"] => issue(type="testSigningDisabled", value=ContainsOnlyValue(c.value, false));
![type=="testSigningDisabled", issuer=="AttestationPolicy"] => issue(type="testSigningDisabled", value=false);

// Flight Signing
c:[type=="boolProperties", issuer=="AttestationPolicy"] => add(type="flightSigningEnabledSet", value=JsonToClaimValue(JmesPath(c.value, "[*].EVENT_FLIGHTSIGNING")));
c:[type=="flightSigningEnabledSet", issuer=="AttestationPolicy"] => issue(type="flightSigningNotEnabled", value=ContainsOnlyValue(c.value, false));
![type=="flightSigningNotEnabled", issuer=="AttestationPolicy"] => issue(type="flightSigningNotEnabled", value=false);

// VSM enabled
c:[type=="events", issuer=="AttestationService"] => add(type="srtmDrtmEventPcr", value=JmesPath(c.value, "Events[? EventTypeString == 'EV_EVENT_TAG' && (PcrIndex == `12` || PcrIndex == `19`)].ProcessedData.EVENT_TRUSTBOUNDARY"));
c:[type=="srtmDrtmEventPcr", issuer=="AttestationPolicy"] => add(type="vbsEnabledSet", value=JsonToClaimValue(JmesPath(c.value, "[*].EVENT_VBS_VSM_REQUIRED")));
c:[type=="srtmDrtmEventPcr", issuer=="AttestationPolicy"] => add(type="vbsEnabledSet", value=JsonToClaimValue(JmesPath(c.value, "[*].EVENT_VBS_MANDATORY_ENFORCEMENT")));
c:[type=="vbsEnabledSet", issuer=="AttestationPolicy"] => issue(type="vbsEnabled", value=ContainsOnlyValue(c.value, true));
![type=="vbsEnabled", issuer=="AttestationPolicy"] => issue(type="vbsEnabled", value=false);
c:[type=="vbsEnabled", issuer=="AttestationPolicy"] => issue(type="vbsEnabled", value=c.value);

// HVCI
c:[type=="srtmDrtmEventPcr", issuer=="AttestationPolicy"] => add(type="hvciEnabledSet", value=JsonToClaimValue(JmesPath(c.value, "[*].EVENT_VBS_HVCI_POLICY | @[?String == 'HypervisorEnforcedCodeIntegrityEnable'].Value")));
c:[type=="hvciEnabledSet", issuer=="AttestationPolicy"] => issue(type="hvciEnabled", value=ContainsOnlyValue(c.value, 1));
![type=="hvciEnabled", issuer=="AttestationPolicy"] => issue(type="hvciEnabled", value=false);

// IOMMU
c:[type=="boolProperties", issuer=="AttestationPolicy"] => add(type="iommuEnabledSet", value=JsonToClaimValue(JmesPath(c.value, "[*].EVENT_VBS_IOMMU_REQUIRED")));
c:[type=="iommuEnabledSet", issuer=="AttestationPolicy"] => issue(type="iommuEnabled", value=ContainsOnlyValue(c.value, true));
![type=="iommuEnabled", issuer=="AttestationPolicy"] => issue(type="iommuEnabled", value=false);

// Find the Boot Manager SVN, this is measured as part of a sequence and find the various measurements
// Find the first EV_SEPARATOR in PCR 12, 13, Or 14
c:[type=="events", issuer=="AttestationService"] => add(type="evSeparatorSeq", value=JmesPath(c.value, "Events[? EventTypeString == 'EV_SEPARATOR' && (PcrIndex == `12` || PcrIndex == `13` || PcrIndex == `14`)] | @[0].EventSeq"));
c:[type=="evSeparatorSeq", value != "null", issuer=="AttestationPolicy"] => add(type="beforeEvSepClause", value=AppendString(AppendString("Events[? EventSeq < `", c.value), "`"));
[type=="evSeparatorSeq", value=="null", issuer=="AttestationPolicy"] => add(type="beforeEvSepClause", value="Events[? `true` "); 

// Find the first EVENT_APPLICATION_SVN. 
c:[type=="beforeEvSepClause", issuer=="AttestationPolicy"] => add(type="bootMgrSvnSeqQuery", value=AppendString(c.value, " && EventTypeString == 'EV_EVENT_TAG' && PcrIndex == `12` && ProcessedData.EVENT_TRUSTBOUNDARY.EVENT_APPLICATION_SVN] | @[0].EventSeq"));
c1:[type=="bootMgrSvnSeqQuery", issuer=="AttestationPolicy"] && c2:[type=="events", issuer=="AttestationService"] => add(type="bootMgrSvnSeq", value=JmesPath(c2.value, c1.value));
c:[type=="bootMgrSvnSeq", value!="null", issuer=="AttestationPolicy"] => add(type="bootMgrSvnQuery", value=AppendString(AppendString("Events[? EventSeq == `", c.value), "`].ProcessedData.EVENT_TRUSTBOUNDARY.EVENT_APPLICATION_SVN | @[0]"));

// The first EVENT_APPLICATION_SVN. That value is the Boot Manager SVN
c1:[type=="bootMgrSvnQuery", issuer=="AttestationPolicy"] && c2:[type=="events", issuer=="AttestationService"] => issue(type="bootMgrSvn", value=JsonToClaimValue(JmesPath(c2.value, c1.value)));

// OS Rev List Info
c:[type=="events", issuer=="AttestationService"] => issue(type="osRevListInfo", value=JsonToClaimValue(JmesPath(c.value, "Events[? EventTypeString == 'EV_EVENT_TAG' && PcrIndex == `13`].ProcessedData.EVENT_TRUSTBOUNDARY.EVENT_OS_REVOCATION_LIST.RawData | @[0]")));

// Safe mode
c:[type=="boolProperties", issuer=="AttestationPolicy"] => add(type="safeModeEnabledSet", value=JsonToClaimValue(JmesPath(c.value, "[*].EVENT_SAFEMODE")));
c:[type=="safeModeEnabledSet", issuer=="AttestationPolicy"] => issue(type="notSafeMode", value=ContainsOnlyValue(c.value, false));
![type=="notSafeMode", issuer=="AttestationPolicy"] => issue(type="notSafeMode", value=true);

// Win PE
c:[type=="boolProperties", issuer=="AttestationPolicy"] => add(type="winPEEnabledSet", value=JsonToClaimValue(JmesPath(c.value, "[*].EVENT_WINPE")));
c:[type=="winPEEnabledSet", issuer=="AttestationPolicy"] => issue(type="notWinPE", value=ContainsOnlyValue(c.value, false));
![type=="notWinPE", issuer=="AttestationPolicy"] => issue(type="notWinPE", value=true);

// CI Policy
c:[type=="events", issuer=="AttestationService"] => issue(type="codeIntegrityPolicy", value=JsonToClaimValue(JmesPath(c.value, "Events[? EventTypeString == 'EV_EVENT_TAG' && PcrIndex == `13`].ProcessedData.EVENT_TRUSTBOUNDARY.EVENT_SI_POLICY[].RawData")));

// Secure Boot Custom Policy
c:[type=="events", issuer=="AttestationService"] => issue(type="secureBootCustomPolicy", value=JsonToClaimValue(JmesPath(c.value, "Events[? EventTypeString == 'EV_EFI_VARIABLE_DRIVER_CONFIG' && PcrIndex == `7` && ProcessedData.UnicodeName == 'CurrentPolicy' && ProcessedData.VariableGuid == '77FA9ABD-0359-4D32-BD60-28F4E78F784B'].ProcessedData.VariableData | @[0]")));

// Find the first EV_SEPARATOR in PCR 12, 13, Or 14
c:[type=="events", issuer=="AttestationService"] => add(type="evSeparatorSeq", value=JmesPath(c.value, "Events[? EventTypeString == 'EV_SEPARATOR' && (PcrIndex == `12` || PcrIndex == `13` || PcrIndex == `14`)] | @[0].EventSeq"));
c:[type=="evSeparatorSeq", value != "null", issuer=="AttestationPolicy"] => add(type="beforeEvSepClause", value=AppendString(AppendString("Events[? EventSeq < `", c.value), "`"));
[type=="evSeparatorSeq", value=="null", issuer=="AttestationPolicy"] => add(type="beforeEvSepClause", value="Events[? `true` "); // No restriction of EV_SEPARATOR in case it is not present

//Finding the Boot App SVN
// Find the first EVENT_TRANSFER_CONTROL with value 1 or 2 in PCR 12 which is before the EV_SEPARATOR
c1:[type=="beforeEvSepClause", issuer=="AttestationPolicy"] && c2:[type=="bootMgrSvnSeq", value != "null", issuer=="AttestationPolicy"] => add(type="beforeEvSepAfterBootMgrSvnClause", value=AppendString(AppendString(AppendString(c1.value, "&& EventSeq >= `"), c2.value), "`"));
c:[type=="beforeEvSepAfterBootMgrSvnClause", issuer=="AttestationPolicy"] => add(type="tranferControlQuery", value=AppendString(c.value, " && EventTypeString == 'EV_EVENT_TAG' && PcrIndex == `12`&& (ProcessedData.EVENT_TRUSTBOUNDARY.EVENT_TRANSFER_CONTROL.Value == `1` || ProcessedData.EVENT_TRUSTBOUNDARY.EVENT_TRANSFER_CONTROL.Value == `2`)] | @[0].EventSeq"));
c1:[type=="tranferControlQuery", issuer=="AttestationPolicy"] && c2:[type=="events", issuer=="AttestationService"] => add(type="tranferControlSeq", value=JmesPath(c2.value, c1.value));

// Find the first non-null EVENT_MODULE_SVN in PCR 13 after the transfer control.
c:[type=="tranferControlSeq", value!="null", issuer=="AttestationPolicy"] => add(type="afterTransferCtrlClause", value=AppendString(AppendString(" && EventSeq > `", c.value), "`"));
c1:[type=="beforeEvSepClause", issuer=="AttestationPolicy"] && c2:[type=="afterTransferCtrlClause", issuer=="AttestationPolicy"] => add(type="moduleQuery", value=AppendString(AppendString(c1.value, c2.value), " && EventTypeString == 'EV_EVENT_TAG' && PcrIndex == `13` && ((ProcessedData.EVENT_TRUSTBOUNDARY.EVENT_LOADEDMODULE_AGGREGATION[].EVENT_MODULE_SVN | @[0]) || (ProcessedData.EVENT_LOADEDMODULE_AGGREGATION[].EVENT_MODULE_SVN | @[0]))].EventSeq | @[0]"));
c1:[type=="moduleQuery", issuer=="AttestationPolicy"] && c2:[type=="events", issuer=="AttestationService"] => add(type="moduleSeq", value=JmesPath(c2.value, c1.value));

// Find the first EVENT_APPLICATION_SVN after EV_EVENT_TAG in PCR 12. 
c:[type=="moduleSeq", value!="null", issuer=="AttestationPolicy"] => add(type="applicationSvnAfterModuleClause", value=AppendString(AppendString(" && EventSeq > `", c.value), "`"));
c1:[type=="beforeEvSepClause", issuer=="AttestationPolicy"] && c2:[type=="applicationSvnAfterModuleClause", issuer=="AttestationPolicy"] => add(type="bootAppSvnQuery", value=AppendString(AppendString(c1.value, c2.value), " && EventTypeString == 'EV_EVENT_TAG' && PcrIndex == `12`].ProcessedData.EVENT_TRUSTBOUNDARY.EVENT_APPLICATION_SVN | @[0]"));
c1:[type=="bootAppSvnQuery", issuer=="AttestationPolicy"] && c2:[type=="events", issuer=="AttestationService"] => issue(type="bootAppSvn", value=JsonToClaimValue(JmesPath(c2.value, c1.value)));

// Finding the Boot Rev List Info
c:[type=="events", issuer=="AttestationService"] => issue(type="bootRevListInfo", value=JsonToClaimValue(JmesPath(c.value, "Events[? EventTypeString == 'EV_EVENT_TAG' && PcrIndex == `13`].ProcessedData.EVENT_TRUSTBOUNDARY.EVENT_BOOT_REVOCATION_LIST.RawData | @[0]")));

};
```    
</li>
<br><li>Call TriggerAttestation with your rpid, AAD token and the attestURI:<br>
Use the Attestation URL generated in step 1, and append the appropriate api version you want to hit. More information about the api version can be found here Attestation - Attest Tpm - REST API (Azure Azure Attestation) | Microsoft Docs</li>
<br><li>Call GetAttestReport and decode and parse the report to ensure the attested report contains the required properties:<br>
GetAttestReport return the signed attestation token as a JWT.The JWT can be decoded to parse the information per the attestation policy.
<br>

    
    {
      "typ": "JWT",
      "alg": "RS256",
      "x5c": [
        "MIIE.....=",
        "MIIG.....=",
        "MIIF.....="
      ],
      "kid": "8FUer20z6wzf1rod044wOAFdjsg"
    }.{
      "nbf": 1633664812,
      "exp": 1634010712,
      "iat": 1633665112,
      "iss": "https://contosopolicy.eus.attest.azure.net",
      "jti": "2b63663acbcafefa004d20969991c0b1f063c9be",
      "ver": "1.0",
      "x-ms-ver": "1.0",
      "rp_data": "AQIDBA",
      "nonce": "AQIDBA",
      "cnf": {
        "jwk": {
          "kty": "RSA",
          "n": "yZGC3-1rFZBt6n6vRHjRjvrOYlH69TftIQWOXiEHz__viQ_Z3qxWVa4TfrUxiQyDQnxJ8-f8tBRmlunMdFDIQWhnew_rc3-UYMUPNcTQ0IkrLBDG6qDjFFeEAMbn8gqr0rRWu_Qt7Cb_Cq1upoEBkv0RXk8yR6JXmFIvLuSdewGs-xCWlHhd5w3n1rVk0hjtRk9ZErlbPXt74E5l-ZZQUIyeYEZ1FmbivOIL-2f6NnKJ-cR4cdhEU8i9CH1YV0r578ry89nGvBJ5u4_3Ib9Ragdmxm259npH53hpnwf0I6V-_ZhGPyF6LBVUG_7x4CyxuHCU20uI0vXKXJNlbj1wsQ",
          "e": "AQAB"
        }
      },
      "x-ms-policy-hash": "GiGQCTOylCohHt4rd3pEppD9arh5mXC3ifF1m1hONh0",
      "WindowsDefenderElamDriverLoaded": true,
      "bitlockerEnabled": true,
      "bitlockerEnabledValue": 4,
      "bootAppSvn": 1,
      "bootDebuggingDisabled": true,
      "bootMgrSvn": 1,
      "bootRevListInfo": "gHWqR2F-1wEgAAAACwBxrZXHbaiuTuO0PSaJ7WQMF8yz37Z2ATgSNTTlRkwcTw",
      "codeIntegrityEnabled": true,
      "codeIntegrityPolicy": [
        "AAABAAAAAQBWAAsAIAAAAHsAOABmAGIANAA4ADYANQBlAC0AZQA5ADAAYgAtADQANAA0AGYALQBiADUAYgA1AC0AZQAyAGEAYQA1ADEAZAA4ADkAMABmAGQAfQAuAEMASQBQAAAAVnW86ERqAg5n9QT1UKFr-bOP2AlNtBaaHXjZODnNLlk",
        "AAAAAAAACgBWAAsAIAAAAHsAYgBjADQAYgBmADYAZAA3AC0AYwBjADYAMAAtADQAMABmADAALQA4ADYANAA0AC0AMQBlADYANAA5ADEANgBmADgAMQA4ADMAfQAuAEMASQBQAAAAQ7vOXuAbBRIMglSSg7g_LHNeHoR4GrY-M-2W5MNvf0o",
        "AAAAAAAACgBWAAsAIAAAAHsAYgAzADEAOAA5ADkAOQBhAC0AYgAxADMAZQAtADQANAA3ADUALQBiAGMAZgBkAC0AMQBiADEANgBlADMAMABlADYAMAAzADAAfQAuAEMASQBQAAAALTmwU3eadNtg0GyAyKIAkYed127RJCSgmfFmO1jN_aI",
        "AAAAAAAACgBWAAsAIAAAAHsAZgBlADgAMgBkADUAOAA5AC0ANwA3AGQAMQAtADQAYwA3ADYALQA5AGEANABhAC0AZQA0ADUANQA0ADYAOAA4ADkANAAxAGIAfQAuAEMASQBQAAAA8HGUwA85gHN_ThItTYtu6sw657gVuOb4fOhYl-YJRoc",
        "AACRVwAACgAmAAsAIAAAAEQAcgBpAHYAZQByAFMAaQBQAG8AbABpAGMAeQAuAHAANwBiAAAAYcVuY0HdW4Iqr5B-6Sl85kwIXRG9bqr43pVhkirg4qM"
      ],
      "depPolicy": 0,
      "flightSigningNotEnabled": false,
      "hvciEnabled": true,
      "iommuEnabled": true,
      "notSafeMode": true,
      "notWinPE": true,
      "osKernelDebuggingDisabled": true,
      "osRevListInfo": "gHLuW2F-1wEgAAAACwDLyDTUQILjdz_RfNlShVgNYT9EghL7ceMReWg9TuwdKA",
      "secureBootEnabled": true,
      "testSigningDisabled": true,
      "vbsEnabled": true
    }.[Signature]

</li>
</ol>

### Learn More 

More information about TPM attestation can be found here: [Microsoft Azure Attestation](/azure/attestation/).


## Windows 10 Device HealthAttestation

### Terms

**TPM (Trusted Platform Module)**
<p>TPM is a specialized hardware-protected logic that performs a series of hardware protected security operations including providing protected storage, random number generation, encryption and signing. </p>

**DHA (Device HealthAttestation) feature**
<p>The Device HealthAttestation (DHA) feature enables enterprise IT administrators to monitor the security posture of managed devices remotely by using hardware (TPM) protected and attested data via a tamper-resistant and tamper-evident communication channel.</p>

**DHA-Enabled device (Device HealthAttestation enabled device)**
<p>A Device HealthAttestation enabled (DHA-Enabled) device is a computing device (phone, desktop, laptop, tablet, server) that runs Windows 10 and supports TPM version 1.2 or 2.0.</p>

**DHA-Session (Device HealthAttestation session)**
<p>The Device HealthAttestation session (DHA-Session) describes the end-to-end communication flow that is performed in one device health attestation session.</p>

<p>The following list of transactions is performed in one DHA-Session:</p>
<ul>
<li>DHA-CSP and DHA-Service communication:
<ul><li>DHA-CSP forwards device boot data (DHA-BootData) to DHA-Service</li>
<li>DHA-Service replies with an encrypted data blob (DHA-EncBlob)</li>
</ul></li>

<li>DHA-CSP and MDM-Server communication: 
<ul><li>MDM-Server sends a device health verification request to DHA-CSP</li>
<li>DHA-CSP replies with a payload called DHA-Data that includes an encrypted (DHA-EncBlob) and a signed (DHA-SignedBlob) data blob </li>
</ul></li>

<li>MDM-Server and DHA-Service communication:
<ul><li>MDM-Server posts data it receives from devices to DHA-Service</li>
<li>DHA-Service reviews the data it receives, and replies with a device health report (DHA-Report)</li>
</ul></li>
</ul>

<img src="images/healthattestation_1.png" alt="healthattestation session diagram"/><br/>
<strong>DHA session data (Device HealthAttestation session data)</strong>
<p>The following list of data is produced or consumed in one DHA-Transaction:</p>
<ul>
<li>DHA-BootData: the device boot data (TCG logs, PCR values, device/TPM certificate, boot and TPM counters) that are required for validating device boot health.</li>
<li>DHA-EncBlob: an encrypted summary report that DHA-Service issues to a device after reviewing the DHA-BootData it receives from devices.</li>
<li>DHA-SignedBlob: it is a signed snapshot of the current state of a device’s runtime that is captured by DHA-CSP at device health attestation time.</li>
<li>DHA-Data: an XML formatted data blob that devices forward for device health validation to DHA-Service via MDM-Server. DHA-Data has 2 parts:
<ul> 
<li>DHA-EncBlob: the encrypted data blob that the device receives from DHA-Service</li>
<li>DHA-SignedBlob: a current snapshot of the current security state of the device that is generated by DHA-CSP</li>
</ul>
</li>
<li>DHA-Report: the report that is issued by DHA-Service to MDM-Server</li>
<li>Nonce: a crypto protected number that is generated by MDM-Server, which protects the DHA-Session from man-in-the-middle type attacks </li>
</ul>

<strong>DHA-Enabled MDM (Device HealthAttestation enabled device management solution)</strong>
<p>Device HealthAttestation enabled (DHA-Enabled) device management solution is a device management tool that is integrated with the DHA feature.</p>
<p>DHA-Enabled device management solutions enable enterprise IT managers to raise the security protection bar for their managed devices based on hardware (TPM) protected data that can be trusted even if a device is compromised by advanced security threats or running a malicious (jailbroken) operating system.</p>
<p>The following list of operations is performed by DHA-Enabled-MDM</p>
<ul>
<li>Enables the DHA feature on a DHA-Enabled device</li>
<li>Issues device health attestation requests to enrolled/managed devices</li>
<li>Collects device health attestation data (DHA-Data), and sends it to Device Health Attestation Service (DHA-Service) for verification</li>
<li>Gets the device health report (DHA-Report) from DHA-Service, which triggers compliance action</li>
</ul>

<strong>DHA-CSP (Device HealthAttestation Configuration Service Provider)</strong>
<p>The Device HealthAttestation Configuration Service Provider (DHA-CSP) uses a device’s TPM and firmware to measure critical security properties of the device’s BIOS and Windows boot, such that even on a system infected with kernel level malware or a rootkit, these properties cannot be spoofed.</p>
<p>The following list of operations is performed by DHA-CSP:</p>
<ul>
<li>Collects device boot data (DHA-BootData) from a managed device</li>
<li>Forwards DHA-BootData to Device Health Attestation Service (DHA-Service)</li>
<li>Receives an encrypted blob (DHA-EncBlob) from DHA-Service, and stores it in a local cache on the device</li>
<li>Receives attestation requests (DHA-Requests) from a DHA-Enabled MDM, and replies with Device Health Attestation data (DHA-Data)</li>
</ul>

<strong>DHA-Service (Device HealthAttestation Service)</strong>
<p>Device HealthAttestation Service (DHA-Service) validates the data it receives from DHA-CSP and issues a highly trusted hardware (TPM) protected report (DHA-Report) to DHA-Enabled device management solutions through a tamper resistant and tamper evident communication channel.</p>

<p>DHA-Service is available in 2 flavors: “DHA-Cloud” and “DHA-Server2016”. DHA-Service supports a variety of implementation scenarios including cloud, on premises, air-gapped, and hybrid scenarios.</p>
<p>The following list of operations is performed by DHA-Service:</p>

- Receives device boot data (DHA-BootData) from a DHA-Enabled device</li>
- Forwards DHA-BootData to Device Health Attestation Service (DHA-Service) </li>
- Receives an encrypted blob (DHA-EncBlob) from DHA-Service, and stores it in a local cache on the device</li>
- Receives attestation requests (DHA-Requests) from a DHA-Enabled-MDM, and replies with a device health report (DHA-Report)</li>

![healthattestation service diagram.](images/healthattestation_2.png)

<table> 
<col width="20%" />
<col width="60%" />
<col width="20%" />
</colgroup>
<thead>
<tr class="header">
<th>DHA-Service type</th>
<th>Description</th>
<th>Operation cost</th>
</tr>
</thead>
<tbody>
<tr class="even">
<td>Device Health Attestation – Cloud <p>(DHA-Cloud)</p></td>
<td><p>DHA-Cloud is a Microsoft owned and operated DHA-Service that is:</p>
<ul>
<li>Available in Windows for free</li>
<li>Running on a high-availability and geo-balanced cloud infrastructure </li>
<li>Supported by most DHA-Enabled device management solutions as the default device attestation service provider</li>
<li>Accessible to all enterprise-managed devices via following:
<ul>
<li>FQDN = has.spserv.microsoft.com) port</li>
<li>Port = 443</li>
<li>Protocol = TCP</li>
</ul> 
</li>
</ul>
<td>No cost</td>
</td>
</tr>
<tr class="even">
<td>Device Health Attestation – On Premise<p>(DHA-OnPrem)</p></td>
<td><p>DHA-OnPrem refers to DHA-Service that is running on premises:</p>
<ul>
<li>Offered to Windows Server 2016 customer (no added licensing cost for enabling/running DHA-Service) </li>
<li>Hosted on an enterprise owned and managed server device/hardware</li>
<li>Supported by 1st and 3rd party DHA-Enabled device management solution providers that support on-premises and hybrid (Cloud + OnPrem) hardware attestation scenarios</li>
<li><p>Accessible to all enterprise-managed devices via following:</p>
<ul>
<li>FQDN = (enterprise assigned)</li>
<li>Port = (enterprise assigned)</li>
<li>Protocol = TCP</li>
</ul>
</li>
</ul></td>
<td>The operation cost of running one or more instances of Server 2016 on-premises.</td>
</tr>
<tr class="even">
<td>Device Health Attestation - Enterprise-Managed Cloud<p>(DHA-EMC)</p></td>
<td><p>DHA-EMC refers to an enterprise-managed DHA-Service that is running as a virtual host/service on a Windows Server 2016 compatible - enterprise-managed cloud service, such as Microsoft Azure.</p>
<ul>
<li>Offered to Windows Server 2016 customers with no additional licensing cost (no added licensing cost for enabling/running DHA-Service)</li>
<li>Supported by 1st and 3rd party DHA-Enabled device management solution providers that support on-premises and hybrid (Cloud + OnPrem) hardware attestation scenarios </li>
<li><p>Accessible to all enterprise-managed devices via following:</p>
<ul>
<li>FQDN = (enterprise assigned)</li>
<li>Port = (enterprise assigned)</li>
<li>Protocol = TCP</li>
</ul>
</li>
</ul></td>
<td>The operation cost of running Server 2016 on a compatible cloud service, such as Microsoft Azure.</td>
</tr>
</tbody>
</table>

### CSP diagram and node descriptions  


The following shows the Device HealthAttestation configuration service provider in tree format.  
```
./Vendor/MSFT
HealthAttestation
----VerifyHealth
----Status
----ForceRetrieve
----Certificate
----Nonce
----CorrelationID
----HASEndpoint
----TpmReadyStatus
----CurrentProtocolVersion
----PreferredMaxProtocolVersion
----MaxSupportedProtocolVersion
```
<a href="" id="healthattestation"></a>**./Vendor/MSFT/HealthAttestation**  
<p>The root node for the device HealthAttestation configuration service provider.</p>

<a href="" id="verifyhealth"></a>**VerifyHealth** (Required)  
<p>Notifies the device to prepare a device health verification request.</p>

<p>The supported operation is Execute.</p>

<a href="" id="status"></a>**Status** (Required)  
<p>Provides the current status of the device health request.</p>

<p>The supported operation is Get.</p>

<p>The following list shows some examples of supported values. For the complete list of status see <a href="#device-healthattestation-csp-status-and-error-codes" data-raw-source="[Device HealthAttestation CSP status and error codes](#device-healthattestation-csp-status-and-error-codes)">Device HealthAttestation CSP status and error codes</a>.</p>

-   0 - (HEALTHATTESTATION\_CERT\_RETRIEVAL_UNINITIALIZED): DHA-CSP is preparing a request to get a new DHA-EncBlob from DHA-Service
-   1 - (HEALTHATTESTATION\_CERT\_RETRIEVAL_REQUESTED): DHA-CSP is waiting for the DHA-Service to respond back, and issue a DHA-EncBlob to the device
-   2 - (HEALTHATTESTATION\_CERT\_RETRIEVAL_FAILED): A valid DHA-EncBlob could not be retrieved from the DHA-Service for reasons other than discussed in the DHA error/status codes
-   3 - (HEALTHATTESTATION\_CERT\_RETRIEVAL_COMPLETE): DHA-Data is ready for pick up

<a href="" id="forceretrieve"></a>**ForceRetrieve** (Optional)  
<p>Instructs the client to initiate a new request to DHA-Service, and get a new DHA-EncBlob (a summary of the boot state that is issued by DHA-Service). This option should only be used if the MDM server enforces a certificate freshness policy, which needs to force a device to get a fresh encrypted blob from DHA-Service.</p>

<p>Boolean value. The supported operation is Replace.</p>

<a href="" id="certificate"></a>**Certificate** (Required)  
<p>Instructs the DHA-CSP to forward DHA-Data to the MDM server.</p>

<p>Value type is b64.The supported operation is Get.</p>

<a href="" id="nonce"></a>**Nonce** (Required)  
<p>Enables MDMs to protect the device health attestation communications from man-in-the-middle type (MITM) attacks with a crypt-protected random value that is generated by the MDM Server.</p>

<p>The nonce is in hex format, with a minimum size of 8 bytes, and a maximum size of 32 bytes.</p>

<p>The supported operations are Get and Replace.</p>

<a href="" id="correlationid"></a>**CorrelationId** (Required)  
<p>Identifies a unique device health attestation session. CorrelationId is used to correlate DHA-Service logs with the MDM server events and Client event logs for debug and troubleshooting.</p>

<p>Value type is integer, the minimum value is - 2,147,483,648 and the maximum value is 2,147,483,647. The supported operation is Get.</p>

<a href="" id="hasendpoint"></a>**HASEndpoint** (Optional)
<p>Identifies the fully qualified domain name (FQDN) of the DHA-Service that is assigned to perform attestation. If an FQDN is not assigned, DHA-Cloud (Microsoft owned and operated cloud service) will be used as the default attestation service.</p>

<p>Value type is string. The supported operations are Get and Replace. The default value is has.spserv.microsoft.com.</p>

<a href="" id="tpmreadystatus"></a>**TpmReadyStatus** (Required)
<p>Added in Windows 10, version 1607 March service release. Returns a bitmask of information describing the state of TPM. It indicates whether the TPM of the device is in a ready and trusted state.</p>
<p>Value type is integer. The supported operation is Get.</p>

### **DHA-CSP integration steps**


The following list of validation and development tasks are required for integrating the Microsoft Device Health Attestation feature with a Windows Mobile device management solution (MDM):


1.  [Verify HTTPS access](#verify-access)
2.  [Assign an enterprise trusted DHA-Service](#assign-trusted-dha-service)
3.  [Instruct client to prepare DHA-data for verification](#prepare-health-data)
4.  [Take action based on the clients response](#take-action-client-response)
5.  [Instruct the client to forward DHA-data for verification](#forward-health-attestation)
6.  [Post DHA-data to DHA-service](#forward-data-to-has)
7.  [Receive response from DHA-service](#receive-has-response)
8.  [Parse DHA-Report data. Take appropriate policy action based on evaluation results](#take-policy-action)

Each step is described in detail in the following sections of this topic.

### <a href="" id="verify-access"></a>**Step 1: Verify HTTPS access**


Validate that both the MDM server and the device (MDM client) can access has.spserv.microsoft.com using the TCP protocol over port 443 (HTTPS).

You can use OpenSSL to validate access to DHA-Service. Here is a sample OpenSSL command and the response that was generated by DHA-Service:

``` syntax
PS C:\openssl> ./openssl.exe s_client -connect has.spserv.microsoft.com:443
CONNECTED(000001A8)
---
Certificate chain
 0 s:/CN=*.spserv.microsoft.com
   i:/C=US/ST=Washington/L=Redmond/O=Microsoft Corporation/OU=Microsoft IT/CN=Microsoft IT SSL SHA2
 1 s:/C=US/ST=Washington/L=Redmond/O=Microsoft Corporation/OU=Microsoft IT/CN=Microsoft IT SSL SHA2
   i:/C=IE/O=Baltimore/OU=CyberTrust/CN=Baltimore CyberTrust Root
---
Server certificate
-----BEGIN CERTIFICATE-----
MIIGOTCCBCGgAwIBAgITWgAA1KJb40tpukQoewABAADUojANBgkqhkiG9w0BAQsFA4ICAQCJaKewFQuqQwR5fkAr9kZOmtq5fk03p82eHWLaftXlc4RDvVFp4a2ciSjZL8f3f+XWPVdUj9DAi3bCSddlrcNOPRXNepFC1OEmKtE9jM0r7M8qnqFkIfbNrVNUtPxHoraQeMIgbk0SHEOlShY2GXETVBqZdDZ5Rmk4rA+3ggoeV8hNzm2dfNp0iGSrZzawbLzWU1D2Tped1k5IV63yb+cU/TmM ……………………………………………………………………………………………………………………………………
………………………………………………………………………………………………………………………………………………………………………………………………………………………………
……………2RXXwogn1UM8TZduCEjz+b05mAkvytugzzaI4wXkCP4OgNyy8gul2z5Gj/51pCTN
-----END CERTIFICATE-----
subject=/CN=*.spserv.microsoft.com
issuer=/C=US/ST=Washington/L=Redmond/O=Microsoft Corporation/OU=Microsoft IT/CN=Microsoft IT SSL SHA2
---
No client certificate CA names sent
Peer signing digest: SHA1
Server Temp Key: ECDH, P-384, 384 bits
---
SSL handshake has read 3681 bytes and written 561 bytes
New, TLSv1/SSLv3, Cipher is ECDHE-RSA-AES256-SHA384
Server public key is 2048 bit
Secure Renegotiation IS supported
Compression: NONE
Expansion: NONE
No ALPN negotiated
SSL-Session:
    Protocol: TLSv1.2
    Cipher: ECDHE-RSA-AES256-SHA384
    Session-ID: B22300009621370F84A4A3A7D9FC40D584E047C090604E5226083A02ED239C93
    Session-ID-ctx: 
    Master-Key: 9E3F6BE5B3D3B55C070470CA2B62EF59CC1D5ED9187EF5B3D1BBF4C101EE90BEB04F34FFD748A13C92A387104B8D1DE7
    Key-Arg: None
    PSK identity: None
    PSK identity hint: None
    SRP username: None
    Start Time: 1432078420
    Timeout: 300 (sec)
    Verify return code: 20 (unable to get local issuer certificate)
```


### <a href="" id="assign-trusted-dha-service"></a>**Step 2: Assign an enterprise trusted DHA-Service**

There are three types of DHA-Service:
- Device Health Attestation – Cloud (owned and operated by Microsoft)
- Device Health Attestation – On Premise (owned and operated by an enterprise, runs on Windows Server 2016 on premises)
- Device Health Attestation - Enterprise-Managed Cloud (owned and operated by an enterprise, runs on Windows Server 2016 compatible enterprise-managed cloud)

DHA-Cloud is the default setting. No further action is required if an enterprise is planning to use Microsoft DHA-Cloud as the trusted DHA-Service provider.

For DHA-OnPrem & DHA-EMC scenarios, send a SyncML command to the HASEndpoint node to instruct a managed device to communicate with the enterprise trusted DHA-Service. 

The following example shows a sample call that instructs a managed device to communicate with an enterprise-managed DHA-Service.

```xml
<Replace>
    <CmdID>1</CmdID>
    <Item>
      <Target>
          <LocURI>./Vendor/MSFT/HealthAttestation/HASEndpoint</LocURI>
      </Target>
      <Data> www.ContosoDHA-Service</Data>
    </Item>
</Replace>
```


### <a href="" id="prepare-health-data"></a>**Step 3: Instruct client to prepare health data for verification**


Send a SyncML call to start collection of the DHA-Data.

The following example shows a sample call that triggers collection and verification of health attestation data from a managed device.

```xml
<Exec>
    <CmdID>1</CmdID>
    <Item>
      <Target>
          <LocURI>./Vendor/MSFT/HealthAttestation/VerifyHealth</LocURI>
      </Target>
    </Item>
</Exec>

<Get>
    <CmdID>2</CmdID>
    <Item>
      <Target>
          <LocURI>./Vendor/MSFT/HealthAttestation/Status</LocURI>
      </Target>
    </Item>
</Get>
```

### <a href="" id="take-action-client-response"></a>**Step 4: Take action based on the clients response**


After the client receives the health attestation request, it sends a response. The following list describes the responses, along with a recommended action to take.

- If the response is HEALTHATTESTATION\_CERT_RETRIEVAL_COMPLETE (3) then proceed to the next section.
- If the response is HEALTHATTESTATION_CERT_RETRIEVAL_REQUESTED (1) or HEALTHATTESTATION_CERT_RETRIEVAL_UNINITIALIZED (0) wait for an alert, then proceed to the next section.

Here is a sample alert that is issued by DHA_CSP:

```xml
<Alert>
    <CmdID>1</CmdID>
    <Data>1226</Data>
    <Item>
        <Source>
            <LocURI>./Vendor/MSFT/HealthAttestation/VerifyHealth</LocURI>
        </Source>
        <Meta>
            <Type xmlns="syncml:metinf">com.microsoft.mdm:HealthAttestation.Result</Type>
            <Format xmlns="syncml:metinf">int</Format>
        </Meta>
        <Data>3</Data>
    </Item>
</Alert>
```
- If the response to the status node is not 0, 1 or 3, then troubleshoot the issue. For the complete list of status codes see [Device HealthAttestation CSP status and error codes](#device-healthattestation-csp-status-and-error-codes).

### <a href="" id="forward-health-attestation"></a>**Step 5: Instruct the client to forward health attestation data for verification**


Create a call to the **Nonce**, **Certificate** and **CorrelationId** nodes, and pick up an encrypted payload that includes a health certificate and related data from the device.

Here is an example:

```xml
<Replace>
    <CmdID>1</CmdID>
    <Item>
        <Target>
            <LocURI>./Vendor/MSFT/HealthAttestation/Nonce</LocURI>
        </Target>
        <Data>AAAAAAAAAFFFFFFF</Data>
    </Item>
</Replace>

<Get>
    <CmdID>2</CmdID>
    <Item>
        <Target>
            <LocURI>./Vendor/MSFT/HealthAttestation/Certificate</LocURI>
        </Target>
    </Item>
</Get>

<Get>
    <CmdID>3</CmdID>
    <Item>
        <Target>
            <LocURI>./Vendor/MSFT/HealthAttestation/CorrelationId </LocURI>
        </Target>
    </Item>
</Get>
```

### <a href="" id="forward-data-to-has"></a>**Step 6: Forward device health attestation data to DHA-service**


In response to the request that was sent in the previous step, the MDM client forwards an XML formatted blob (response from ./Vendor/MSFT/HealthAttestation/Certificate node) and a call identifier called CorrelationId (response  to ./Vendor/MSFT/HealthAttestation/CorrelationId node).

When the MDM-Server receives the above data, it must: 
- Log the CorrelationId it receives from the device (for future troubleshooting/reference), correlated to the call.
- Decode the XML formatted data blob it receives from the device
- Append the nonce that was generated by MDM service (add the nonce that was forwarded to the device in Step 5) to the XML structure that was forwarded by the device in following format:

```xml
<?xml version='1.0' encoding='utf-8' ?>
<HealthCertificateValidationRequest ProtocolVersion='1' xmlns='http://schemas.microsoft.com/windows/security/healthcertificate/validation/request/v1'>
    <Nonce>[INT]</Nonce>
    <Claims> [base64 blob, eg ‘ABc123+/…==’] </Claims>
    <HealthCertificateBlob> [base64 blob, eg ‘ABc123+/...==’]
    </HealthCertificateBlob>
</HealthCertificateValidationRequest>
```
- Forward (HTTP Post) the XML data struct (including the nonce that was appended in the previous step) to the assigned DHA-Service that runs on:
    - DHA-Cloud (Microsoft owned and operated DHA-Service) scenario: https://has.spserv.microsoft.com/DeviceHealthAttestation/ValidateHealthCertificate/v3
    - DHA-OnPrem or DHA-EMC: https://FullyQualifiedDomainName-FDQN/DeviceHealthAttestation/ValidateHealthCertificate/v3


### <a href="" id="receive-has-response"></a>**Step 7: Receive response from the DHA-service**

When the Microsoft Device Health Attestation Service receives a request for verification, it performs the following steps:
- Decrypts the encrypted data it receives.
- Validates the data it has received 
- Creates a report, and shares the evaluation results to the MDM server via SSL in XML format 

### <a href="" id="take-policy-action"></a>**Step 8: Take appropriate policy action based on evaluation results**


After the MDM server receives the verified data, the information can be used to make policy decisions by evaluating the data. Some possible actions would be:

-   Allow the device access.
-   Allow the device to access the resources, but flag the device for further investigation.
-   Prevent a device from accessing resources.

The following list of data points are verified by the DHA-Service in DHA-Report version 3:

- [Issued](#issued ) 
- [AIKPresent](#aikpresent)
- [ResetCount](#resetcount) *
- [RestartCount](#restartcount) *
- [DEPPolicy](#deppolicy)
- [BitlockerStatus](#bitlockerstatus) **
- [BootManagerRevListVersion](#bootmanagerrevlistversion)
- [CodeIntegrityRevListVersion](#codeintegrityrevlistversion)
- [SecureBootEnabled](#securebootenabled)
- [BootDebuggingEnabled](#bootdebuggingenabled)
- [OSKernelDebuggingEnabled](#oskerneldebuggingenabled)
- [CodeIntegrityEnabled](#codeintegrityenabled)
- [TestSigningEnabled](#testsigningenabled)
- [SafeMode](#safemode)
- [WinPE](#winpe)
- [ELAMDriverLoaded](#elamdriverloaded) ***
- [VSMEnabled](#vsmenabled)
- [PCRHashAlgorithmID](#pcrhashalgorithmid)
- [BootAppSVN](#bootappsvn)
- [BootManagerSVN](#bootmanagersvn)
- [TpmVersion](#tpmversion)
- [PCR0](#pcr0)
- [SBCPHash](#sbcphash)
- [CIPolicy](#cipolicy)
- [BootRevListInfo](#bootrevlistinfo)
- [OSRevListInfo](#osrevlistinfo)
- [HealthStatusMismatchFlags](#healthstatusmismatchflags)

\*  TPM 2.0 only   
\*\*  Reports if BitLocker was enabled during initial boot.    
\*\*\* The “Hybrid Resume” must be disabled on the device. Reports 1st party ELAM “Defender” was loaded during boot.  

Each of these are described in further detail in the following sections, along with the recommended actions to take.

<a href="" id="issued"></a>**Issued**
<p>The date and time DHA-report was evaluated or issued to MDM.</p>

<a href="" id="aikpresent"></a>**AIKPresent**  
<p>When an Attestation Identity Key (AIK) is present on a device, it indicates that the device has an endorsement key (EK) certificate. It can be trusted more than a device that doesn’t have an EK certificate.</p>

<p>If AIKPresent = True (1), then allow access.</p>

<p>If AIKPresent = False (0), then take one of the following actions that align with your enterprise policies:</p>

-   Disallow all access
-   Disallow access to HBI assets
-   Allow conditional access based on other data points that are present at evaluation time. For example, other attributes on the health certificate, or a devices past activities and trust history.
-   Take one of the previous actions and additionally place the device in a watch list to monitor the device more closely for potential risks.

<a href="" id="resetcount"></a>**ResetCount** (Reported only for devices that support TPM 2.0)
<p>This attribute reports the number of times a PC device has hibernated or resumed.</p>

<a href="" id="restartcount"></a>**RestartCount** (Reported only for devices that support TPM 2.0)
<p>This attribute reports the number of times a PC device has rebooted</p>

<a href="" id="deppolicy"></a>**DEPPolicy**  
<p>A device can be trusted more if the DEP Policy is enabled on the device.</p>

<p>Data Execution Prevention (DEP) Policy defines is a set of hardware and software technologies that perform additional checks on memory to help prevent malicious code from running on a system. Secure boot allows a limited list on x86/amd64 and on ARM NTOS locks it to on.</p>

<p>DEPPolicy can be disabled or enabled by using the following commands in WMI or a PowerShell script:</p>

-   To disable DEP, type **bcdedit.exe /set {current} nx AlwaysOff**
-   To enable DEP, type **bcdedit.exe /set {current} nx AlwaysOn**

<p>If DEPPolicy = 1 (On), then allow access.</p>

<p>If DEPPolicy = 0 (Off), then take one of the following actions that align with your enterprise policies:</p>

-   Disallow all access
-   Disallow access to HBI assets
-   Allow conditional access based on other data points that are present at evaluation time. For example, other attributes on the health certificate, or a devices past activities and trust history.
-   Take one of the previous actions and additionally place the device in a watch list to monitor the device more closely for potential risks.

<a href="" id="bitlockerstatus"></a>**BitLockerStatus** (at boot time) 
<p>When BitLocker is reported &quot;on&quot; at boot time, the device is able to protect data that is stored on the drive from unauthorized access, when the system is turned off or goes to hibernation.</p>

<p>Windows BitLocker Drive Encryption, encrypts all data stored on the Windows operating system volume. BitLocker uses the TPM to help protect the Windows operating system and user data and helps to ensure that a computer is not tampered with, even if it is left unattended, lost, or stolen.</p>

<p>If the computer is equipped with a compatible TPM, BitLocker uses the TPM to lock the encryption keys that protect the data. As a result, the keys cannot be accessed until the TPM has verified the state of the computer.</p>

<p>If BitLockerStatus = 1 (On), then allow access.</p>

<p>If BitLockerStatus = 0 (Off), then take one of the following actions that align with your enterprise policies:</p>

-   Disallow all access
-   Disallow access to HBI assets
-   Allow conditional access based on other data points that are present at evaluation time. For example, other attributes on the health certificate, or a devices past activities and trust history.
-   Take one of the previous actions and additionally place the device in a watch list to monitor the device more closely for potential risks.

<a href="" id="bootmanagerrevlistversion"></a>**BootManagerRevListVersion**
<p>This attribute indicates the version of the Boot Manager that is running on the device, to allow you to track and manage the security of the boot sequence/environment.</p>

<p>If BootManagerRevListVersion = [CurrentVersion], then allow access.</p>

<p>If BootManagerRevListVersion != [CurrentVersion], then take one of the following actions that align with your enterprise policies:</p>

-   Disallow all access
-   Disallow access to HBI and MBI assets
-   Place the device in a watch list to monitor the device more closely for potential risks.
-   Trigger a corrective action, such as such as informing the technical support team to contact the owner investigate the issue.

<a href="" id="codeintegrityrevlistversion"></a>**CodeIntegrityRevListVersion**
<p>This attribute indicates the version of the code that is performing integrity checks during the boot sequence. Using this attribute can help you detect if the device is running the latest version of the code that performs integrity checks, or if it is exposed to security risks (revoked) and enforce an appropriate policy action.</p>

<p>If CodeIntegrityRevListVersion = [CurrentVersion], then allow access.</p>

<p>If CodeIntegrityRevListVersion != [CurrentVersion], then take one of the following actions that align with your enterprise policies:</p>

-   Disallow all access
-   Disallow access to HBI and MBI assets
-   Place the device in a watch list to monitor the device more closely for potential risks.
-   Trigger a corrective action, such as such as informing the technical support team to contact the owner investigate the issue.

<a href="" id="securebootenabled"></a>**SecureBootEnabled**  
<p>When Secure Boot is enabled the core components used to boot the machine must have correct cryptographic signatures that are trusted by the organization that manufactured the device. The UEFI firmware verifies this before it lets the machine start. If any files have been tampered with, breaking their signature, the system will not boot.</p>

<p>If SecureBootEnabled = 1 (True), then allow access.</p>

<p>If SecurebootEnabled = 0 (False), then take one of the following actions that align with your enterprise policies:</p>

-   Disallow all access
-   Disallow access to HBI assets
-   Allow conditional access based on other data points that are present at evaluation time. For example, other attributes on the health certificate, or a devices past activities and trust history.
-   Take one of the previous actions and additionally place the device in a watch list to monitor the device more closely for potential risks.

<a href="" id="bootdebuggingenabled"></a>**BootDebuggingEnabled**
<p>Boot debug enabled points to a device that is used in development and testing. Devices that are used for test and development typically are less secure: the device may run unstable code, or be configured with fewer security restrictions that is required for testing and development.</p>

<p>Boot debugging can be disabled or enabled by using the following commands in WMI or a PowerShell script:</p>

-   To disable boot debugging, type **bcdedit.exe /set {current} bootdebug off**
-   To enable boot debugging, type **bcdedit.exe /set {current} bootdebug on**

<p>If BootdebuggingEnabled = 0 (False), then allow access.</p>

<p>If BootDebuggingEnabled = 1 (True), then take one of the following actions that align with your enterprise policies:</p>

-   Disallow all access
-   Disallow access to HBI assets
-   Place the device in a watch list to monitor the device more closely for potential risks.
-   Trigger a corrective action, such as enabling VSM using WMI or a PowerShell script.  

<a href="" id="oskerneldebuggingenabled"></a>**OSKernelDebuggingEnabled**
<p>OSKernelDebuggingEnabled points to a device that is used in development and testing. Devices that are used for test and development typically are less secure: they may run unstable code, or be configured with fewer security restrictions required for testing and development.</p>

<p>If OSKernelDebuggingEnabled = 0 (False), then allow access.</p>

<p>If OSKernelDebuggingEnabled = 1 (True), then take one of the following actions that align with your enterprise policies:</p>

-   Disallow all access
-   Disallow access to HBI assets
-   Place the device in a watch list to monitor the device more closely for potential risks.
-   Trigger a corrective action, such as such as informing the technical support team to contact the owner investigate the issue.

<a href="" id="codeintegrityenabled"></a>**CodeIntegrityEnabled**  
<p>When code integrity is enabled, code execution is restricted to integrity verified code.</p>

<p>Code integrity is a feature that validates the integrity of a driver or system file each time it is loaded into memory. Code integrity detects whether an unsigned driver or system file is being loaded into the kernel, or whether a system file has been modified by malicious software that is being run by a user account with administrator privileges.</p>

<p>On x64-based versions of the operating system, kernel-mode drivers must be digitally signed.</p>

<p>If CodeIntegrityEnabled = 1 (True), then allow access.</p>

<p>If CodeIntegrityEnabled = 0 (False), then take one of the following actions that align with your enterprise policies:</p>

-   Disallow all access
-   Disallow access to HBI assets
-   Allow conditional access based on other data points that are present at evaluation time. For example, other attributes on the health certificate, or a devices past activities and trust history.
-   Take one of the previous actions and additionally place the device in a watch list to monitor the device more closely for potential risks.

<a href="" id="testsigningenabled"></a>**TestSigningEnabled**
<p>When test signing is enabled, the device does not enforce signature validation during boot, and allows the unsigned drivers (such as unsigned UEFI modules) to load during boot.</p>

<p>Test signing can be disabled or enabled by using the following commands in WMI or a PowerShell script:</p>

-   To disable boot debugging, type **bcdedit.exe /set {current} testsigning off**
-   To enable boot debugging, type **bcdedit.exe /set {current} testsigning on**

<p>If TestSigningEnabled = 0 (False), then allow access.</p>

<p>If TestSigningEnabled = 1 (True), then take one of the following actions that align with your enterprise policies:</p>

-   Disallow all access
-   Disallow access to HBI and MBI assets
-   Place the device in a watch list to monitor the device more closely for potential risks.
-   Trigger a corrective action, such as enabling test signing using WMI or a PowerShell script.

<a href="" id="safemode"></a>**SafeMode**  
<p>Safe mode is a troubleshooting option for Windows that starts your computer in a limited state. Only the basic files and drivers necessary to run Windows are started.</p>

<p>If SafeMode = 0 (False), then allow access.</p>

<p>If SafeMode = 1 (True), then take one of the following actions that align with your enterprise policies:</p>

-   Disallow all access
-   Disallow access to HBI assets
-   Trigger a corrective action, such as informing the technical support team to contact the owner investigate the issue.

<a href="" id="winpe"></a>**WinPE**  
<p>Windows pre-installation Environment (Windows PE) is a minimal operating system with limited services that is used to prepare a computer for Windows installation, to copy disk images from a network file server, and to initiate Windows Setup.</p>

<p>If WinPE = 0 (False), then allow access.</p>

<p>If WinPE = 1 (True), then limit access to remote resources that are required for Windows OS installation.</p>

<a href="" id="elamdriverloaded"></a>**ELAMDriverLoaded**  (Windows Defender)
<p>To use this reporting feature you must disable &quot;Hybrid Resume&quot; on the device. Early launch anti-malware (ELAM) provides protection for the computers in your network when they start up and before third-party drivers initialize.</p>

<p>In the current release, this attribute only monitors/reports if a Microsoft 1st party ELAM  (Windows Defender) was loaded during initial boot.</p>

<p>If a device is expected to use a 3rd party antivirus program, ignore the reported state.</p>

<p>If a device is expected to use Windows Defender and ELAMDriverLoaded = 1 (True), then allow access.</p>

<p>If a device is expected to use Windows Defender and ELAMDriverLoaded = 0 (False), then take one of the following actions that align with your enterprise policies, also accounting for whether it is a desktop or mobile device:</p>

-   Disallow all access
-   Disallow access to HBI assets
-   Trigger a corrective action, such as informing the technical support team to contact the owner investigate the issue.

**Bcdedit.exe /set {current} vsmlaunchtype auto**

<p>If ELAMDriverLoaded = 1 (True), then allow access.</p>

<p>If ELAMDriverLoaded = 0 (False), then take one of the following actions that align with your enterprise policies:</p>

-   Disallow all access
-   Disallow access to HBI assets
-   Trigger a corrective action, such as informing the technical support team to contact the owner investigate the issue.

<a href="" id="vsmenabled"></a>**VSMEnabled**  
<p>Virtual Secure Mode (VSM) is a container that protects high value assets from a compromised kernel. VSM requires about 1GB of memory – it has just enough capability to run the LSA service that is used for all authentication brokering.</p>

<p>VSM can be enabled by using the following command in WMI or a PowerShell script:</p>

<p>bcdedit.exe /set {current} vsmlaunchtype auto</p>

<p>If VSMEnabled = 1 (True), then allow access.</p>
<p>If VSMEnabled = 0 (False), then take one of the following actions that align with your enterprise policies:</p>

- Disallow all access
- Disallow access to HBI assets
- Trigger a corrective action, such as informing the technical support team to contact the owner investigate the issue

<a href="" id="pcrhashalgorithmid"></a>**PCRHashAlgorithmID**
<p>This attribute is an informational attribute that identifies the HASH algorithm that was used by TPM; no compliance action required.</p>

<a href="" id="bootappsvn"></a>**BootAppSVN**
<p>This attribute identifies the security version number of the Boot Application that was loaded during initial boot on the attested device</p>

<p>If reported BootAppSVN equals an accepted value, then allow access.</p>

 <p>If reported BootAppSVN does not equal an accepted value, then take one of the following actions that align with your enterprise policies:</p>

- Disallow all access
- Direct the device to an enterprise honeypot, to further monitor the device's activities.

<a href="" id="bootmanagersvn"></a>**BootManagerSVN**
<p>This attribute identifies the security version number of the Boot Manager that was loaded during initial boot on the attested device.</p>

<p>If reported BootManagerSVN equals an accepted value, then allow access.</p>

<p>If reported BootManagerSVN does not equal an accepted value, then take one of the following actions that align with your enterprise policies:</p>

- Disallow all access
- Direct the device to an enterprise honeypot, to further monitor the device's activities.

<a href="" id="tpmversion"></a>**TPMVersion**

<p>This attribute identifies the version of the TPM that is running on the attested device.</p>
<p>TPMVersion node provides to replies &quot;1&quot; and &quot;2&quot;:</p>
<ul>
<li>1 means TPM specification version 1.2</li>
<li>2 means TPM specification version 2.0</li>
</ul>

<p>Based on the reply you receive from TPMVersion node:</p>

- If reported TPMVersion equals an accepted value, then allow access.
- If reported TPMVersion does not equal an accepted value, then take one of the following actions that align with your enterprise policies:
    - Disallow all access
    - Direct the device to an enterprise honeypot, to further monitor the device's activities.

<a href="" id="pcr0"></a>**PCR0**
<p>The measurement that is captured in PCR[0] typically represents a consistent view of the Host Platform between boot cycles. It contains a measurement of components that are provided by the host platform manufacturer.</p>

<p>Enterprise managers can create a allow list of trusted PCR[0] values, compare the PCR[0] value of the managed devices (the value that is verified and reported by HAS) with the allow list, and then make a trust decision based on the result of the comparison.</p>

<p>If your enterprise does not have a allow list of accepted PCR[0] values, then take no action.</p>

<p>If PCR[0] equals an accepted allow list value, then allow access.</p>

<p>If PCR[0] does not equal any accepted listed value, then take one of the following actions that align with your enterprise policies:</p>

-   Disallow all access
-   Direct the device to an enterprise honeypot, to further monitor the device's activities.

<a href="" id="sbcphash"></a>**SBCPHash**
<p>SBCPHash is the finger print of the Custom Secure Boot Configuration Policy (SBCP) that was loaded during boot in Windows devices, except PCs.</p>

<p>If SBCPHash is not present, or is an accepted allow-listed value, then allow access.

<p>If SBCPHash is present in DHA-Report, and is not a allow-listed value, then take one of the following actions that align with your enterprise policies:</p>

- Disallow all access
- Place the device in a watch list to monitor the device more closely for potential risks.

<a href="" id="cipolicy"></a>**CIPolicy**
<p>This attribute indicates the Code Integrity policy that is controlling the security of the boot environment.</p>

<p>If CIPolicy is not present, or is an accepted allow-listed value, then allow access.</p>

<p>If CIPolicy is present and is not a allow-listed value, then take one of the following actions that align with your enterprise policies:</p>

- Disallow all access
- Place the device in a watch list to monitor the device more closely for potential risks.

<a href="" id="bootrevlistinfo"></a>**BootRevListInfo**
<p>This attribute identifies the Boot Revision List that was loaded during initial boot on the attested device.</p>

<p>If reported BootRevListInfo version equals an accepted value, then allow access.</p>

<p>If reported BootRevListInfo version does not equal an accepted value, then take one of the following actions that align with your enterprise policies:</p>

- Disallow all access
- Direct the device to an enterprise honeypot, to further monitor the device's activities.

<a href="" id="osrevlistinfo"></a>**OSRevListInfo**
<p>This attribute identifies the Operating System Revision List that was loaded during initial boot on the attested device.</p>

<p>If reported OSRevListInfo version equals an accepted value, then allow access.</p>

<p>If reported OSRevListInfo version does not equal an accepted value, then take one of the following actions that align with your enterprise policies:</p>

- Disallow all access
- Direct the device to an enterprise honeypot, to further monitor the device's activities.  

<a href="" id="healthstatusmismatchflags"></a>**HealthStatusMismatchFlags**
<p>HealthStatusMismatchFlags attribute appears if DHA-Service detects an integrity issue (mismatch) in the DHA-Data it receives from device management solutions, for validation.</p>

<p>In case of a detected issue a list of impacted DHA-report elements will be listed under the HealthStatusMismatchFlags attribute.</p>

### **Device HealthAttestation CSP status and error codes**

<table>
    <tr>
        <th>Error code</th>
        <th>Error name</th>
        <th>Description</th>
    </tr>
    <tr>
        <td>0</td>
        <td>HEALTHATTESTATION_CERT_RETRIEVAL_UNINITIALIZED</td>
        <td>This is the initial state for devices that have never participated in a DHA-Session. </td>
    </tr>
    <tr>
        <td>1</td>
        <td>HEALTHATTESTATION_CERT_RETRIEVAL_REQUESTED</td>
        <td>This state signifies that MDM client’s Exec call on the node VerifyHealth has been triggered and now the OS is trying to retrieve DHA-EncBlob from DHA-Server.</td>
    </tr>
    <tr>
        <td>2</td>
        <td>HEALTHATTESTATION_CERT_RETRIEVAL_FAILED</td>
        <td>This state signifies that the device failed to retrieve DHA-EncBlob from DHA-Server.</td>
    </tr>
    <tr>
        <td>3</td>
        <td>HEALTHATTESTATION_CERT_RETRIEVAL_COMPLETE</td>
        <td>This state signifies that the device has successfully retrieved DHA-EncBlob from the DHA-Server.</td>
    </tr>
    <tr>
        <td>4</td>
        <td>HEALTHATTESTATION_CERT_RETRIEVAL_PCR_FAIL</td>
        <td>Deprecated in Windows 10, version 1607.</td>
    </tr>
    <tr>
        <td>5</td>
        <td>HEALTHATTESTATION_CERT_RETRIEVAL_GETQUOTE_FAIL</td>
        <td>DHA-CSP failed to get a claim quote.</td>
    </tr>
    <tr>
        <td>6</td>
        <td>HEALTHATTESTATION_CERT_RETRIEVAL_DEVICE_NOT_READY</td>
        <td>DHA-CSP failed in opening a handle to Microsoft Platform Crypto Provider.</td>
    </tr>
    <tr>
        <td>7</td>
        <td>HEALTHATTESTATION_CERT_RETRIEVAL_WINDOWS_AIK_FAIL</td>
        <td>DHA-CSP failed in retrieving Windows AIK</td>
    </tr>
    <tr>
        <td>8</td>
        <td>HEALTHATTESTATION_CERT_RETRIEVAL_FROM_WEB_FAIL</td>
        <td>Deprecated in Windows 10, version 1607.</td>
    </tr>
    <tr>
        <td>9</td>
        <td>HEALTHATTESTATION_CERT_RETRIEVAL_INVALID_TPM_VERSION</td>
        <td>Invalid TPM version (TPM version is not 1.2 or 2.0)</td>
    </tr>
    <tr>
        <td>10</td>
        <td>HEALTHATTESTATION_CERT_RETRIEVAL_GETNONCE_FAIL</td>
        <td>Nonce was not found in the registry.</td>
    </tr>
    <tr>
        <td>11</td>
        <td>HEALTHATTESTATION_CERT_RETRIEVAL_GETCORRELATIONID_FAIL</td>
        <td>Correlation ID was not found in the registry.</td>
    </tr>
    <tr>
        <td>12</td>
        <td>HEALTHATTESTATION_CERT_RETRIEVAL_GETCERT_FAIL</td>
        <td>Deprecated in Windows 10, version 1607.</td>
    </tr>
    <tr>
        <td>13</td>
        <td>HEALTHATTESTATION_CERT_RETRIEVAL_GETCLAIM_FAIL</td>
        <td>Deprecated in Windows 10, version 1607.</td>
    </tr>
    <tr>
        <td>14</td>
        <td>HEALTHATTESTATION_CERT_RETRIEVAL_ENCODING_FAIL</td>
        <td>Failure in Encoding functions. (Extremely unlikely scenario)</td>
    </tr>
    <tr>
        <td>15</td>
        <td>HEALTHATTESTATION_CERT_RETRIEVAL_ENDPOINTOVERRIDE_FAIL</td>
        <td>Deprecated in Windows 10, version 1607.</td>
    </tr>
    <tr>
        <td>16</td>
        <td>HEALTHATTESTATION_CERT_RETRIEVAL_FAILED_LOAD_XML</td>
        <td>DHA-CSP failed to load the payload it received from DHA-Service </td>
    </tr>
    <tr>
        <td>17</td>
        <td>HEALTHATTESTATION_CERT_RETRIEVAL_FAILED_CORRUPT_XML</td>
        <td>DHA-CSP received a corrupted response from DHA-Service.</td>
    </tr>
    <tr>
        <td>18</td>
        <td>HEALTHATTESTATION_CERT_RETRIEVAL_FAILED_EMPTY_XML</td>
        <td>DHA-CSP received an empty response from DHA-Service.</td>
    </tr>
    <tr>
        <td>19</td>
        <td>HEALTHATTESTATION_CERT_RETRIEVAL_FAILED_DECRYPT_AES_EK</td>
        <td>DHA-CSP failed in decrypting the AES key from the EK challenge.</td>
    </tr>
    <tr>
        <td>20</td>
        <td>HEALTHATTESTATION_CERT_RETRIEVAL_FAILED_DECRYPT_CERT_AES_EK</td>
        <td>DHA-CSP failed in decrypting the health cert with the AES key.</td>
    </tr>
    <tr>
        <td>21</td>
        <td>HEALTHATTESTATION_CERT_RETRIEVAL_FAILED_EXPORT_AIKPUB</td>
        <td>DHA-CSP failed in exporting the AIK Public Key.</td>
    </tr>
    <tr>
        <td>22</td>
        <td>HEALTHATTESTATION_CERT_RETRIEVAL_FAILED_CREATE_CLAIMAUTHORITYONLY</td>
        <td>DHA-CSP failed in trying to create a claim with AIK attestation data.</td>
    </tr>
    <tr>
        <td>23</td>
        <td>HEALTHATTESTATION_CERT_RETRIEVAL_FAILED_APPEND_AIKPUB</td>
        <td>DHA-CSP failed in appending the AIK Pub to the request blob.</td>
    </tr>
    <tr>
        <td>24</td>
        <td>HEALTHATTESTATION_CERT_RETRIEVAL_FAILED_APPEND_AIKCERT</td>
        <td>DHA-CSP failed in appending the AIK Cert to the request blob.</td>
    </tr>
    <tr>
        <td>25</td>
        <td>HEALTHATTESTATION_CERT_RETRIEVAL_FAILED_INIT_HTTPHANDLE</td>
        <td>DHA-CSP failed to obtain a Session handle.</td>
    </tr>
    <tr>
        <td>26</td>
        <td>HEALTHATTESTATION_CERT_RETRIEVAL_FAILED_GETTARGET_HTTPHANDLE</td>
        <td>DHA-CSP failed to connect to the DHA-Service.</td>
    </tr>
    <tr>
        <td>27</td>
        <td>HEALTHATTESTATION_CERT_RETRIEVAL_FAILED_CREATE_HTTPHANDLE</td>
        <td>DHA-CSP failed to create a HTTP request handle.</td>
    </tr>
    <tr>
        <td>28</td>
        <td>HEALTHATTESTATION_CERT_RETRIEVAL_FAILED_SET_INTERNETOPTION</td>
        <td>DHA-CSP failed to set options.</td>
    </tr>
    <tr>
        <td>29</td>
        <td>HEALTHATTESTATION_CERT_RETRIEVAL_FAILED_ADD_REQUESTHEADERS</td>
        <td>DHA-CSP failed to add request headers.</td>
    </tr>
    <tr>
        <td>30</td>
        <td>HEALTHATTESTATION_CERT_RETRIEVAL_FAILED_SEND_REQUEST</td>
        <td>DHA-CSP failed to send the HTTP request.</td>
    </tr>
    <tr>
        <td>31</td>
        <td>HEALTHATTESTATION_CERT_RETRIEVAL_FAILED_RECEIVE_RESPONSE</td>
        <td>DHA-CSP failed to receive a response from the DHA-Service.</td>
    </tr>
    <tr>
        <td>32</td>
        <td>HEALTHATTESTATION_CERT_RETRIEVAL_FAILED_QUERY_HEADERS</td>
        <td>DHA-CSP failed to query headers when trying to get HTTP status code.</td>
    </tr>
    <tr>
        <td>33</td>
        <td>HEALTHATTESTATION_CERT_RETRIEVAL_FAILED_EMPTY_RESPONSE</td>
        <td>DHA-CSP received an empty response from DHA-Service even though HTTP status was OK.</td>
    </tr>
    <tr>
        <td>34</td>
        <td>HEALTHATTESTATION_CERT_RETRIEVAL_FAILED_MISSING_RESPONSE</td>
        <td>DHA-CSP received an empty response along with a HTTP error code from DHA-Service.</td>
    </tr>
    <tr>
        <td>35</td>
        <td>HEALTHATTESTATION_CERT_RETRIEVAL_FAILED_IMPERSONATE_USER</td>
        <td>DHA-CSP failed to impersonate user.</td>
    </tr>
    <tr>
        <td>36</td>
        <td>HEALTHATTESTATION_CERT_RETRIEVAL_FAILED_ACQUIRE_PDCNETWORKACTIVATOR</td>
        <td>DHA-CSP failed to acquire the PDC activators that are needed for network communication when the device is in Connected standby mode.</td>
    </tr>
    <tr>
        <td>0xFFFF</td>
        <td>HEALTHATTESTATION_CERT_RETRIEVAL_FAILED_UNKNOWN</td>
        <td>DHA-CSP failed due to an unknown reason, this error is highly unlikely to occur.</td>
    </tr>
    <tr>
        <td>400</td>
        <td>Bad_Request_From_Client</td>
        <td>DHA-CSP has received a bad (malformed) attestation request.</td>
    </tr>
    <tr>
        <td>404</td>
        <td>Endpoint_Not_Reachable</td>
        <td>DHA-Service is not reachable by DHA-CSP</td>
    </tr>

</table>

### DHA-Report V3 schema


```xml
<?xml version="1.0" encoding="UTF-8"?>
<xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema"
           xmlns="http://schemas.microsoft.com/windows/security/healthcertificate/validation/response/v3"
           targetNamespace="http://schemas.microsoft.com/windows/security/healthcertificate/validation/response/v3"
           elementFormDefault="qualified">

    <xs:element name="HealthCertificateValidationResponse" type="HealthCertificateValidationResponse_T"/>
    <xs:complexType name="ResponseCommon_T">
        <xs:attribute name="ErrorCode" type="xs:int" use="required"/>
        <xs:attribute name="ErrorMessage" type="xs:string" use="required"/>
        <xs:attribute name="ProtocolVersion" use="required">
          <xs:simpleType>
            <xs:restriction base="xs:int">
              <xs:minInclusive value="3"/>
            </xs:restriction>
          </xs:simpleType>
        </xs:attribute>
    </xs:complexType>
    <xs:complexType name="HealthCertificatePublicProperties_T">
        <xs:annotation>
            <xs:documentation>Health certificate non machine identifiable properties </xs:documentation>
        </xs:annotation>
        <xs:sequence>
            <xs:element name="Issued"                       type="xs:dateTime"/>
            <xs:element name="AIKPresent"                   type="Boolean_T" />
            <xs:element name="ResetCount"                   type="xs:unsignedInt"/>
            <xs:element name="RestartCount"                 type="xs:unsignedInt"/>
            <xs:element name="DEPPolicy"                    type="xs:unsignedInt"/>
            <xs:element name="BitlockerStatus"              type="xs:unsignedInt"/>
            <xs:element name="BootManagerRevListVersion"    type="xs:unsignedInt"/>
            <xs:element name="CodeIntegrityRevListVersion"  type="xs:unsignedInt"/>
            <xs:element name="SecureBootEnabled"            type="Boolean_T"/>
            <xs:element name="BootDebuggingEnabled"         type="Boolean_T"/>
            <xs:element name="OSKernelDebuggingEnabled"     type="Boolean_T"/>
            <xs:element name="CodeIntegrityEnabled"         type="Boolean_T"/>
            <xs:element name="TestSigningEnabled"           type="Boolean_T"/>
            <xs:element name="SafeMode"                     type="Boolean_T"/>
            <xs:element name="WinPE"                        type="Boolean_T"/>
            <xs:element name="ELAMDriverLoaded"             type="Boolean_T"/>
            <xs:element name="VSMEnabled"                   type="Boolean_T"/>
            <xs:element name="PCRHashAlgorithmID"           type="xs:unsignedInt"/>
            <xs:element name="BootAppSVN"                   type="xs:unsignedInt"/>
            <xs:element name="BootManagerSVN"               type="xs:unsignedInt"/>
            <xs:element name="TpmVersion"                   type="xs:unsignedInt"/>
            <xs:element name="PCR0"                         type="xs:hexBinary"/>
            <xs:element name="CIPolicy"                     type="xs:hexBinary" minOccurs ="0" maxOccurs ="1"/>
            <xs:element name="SBCPHash"                     type="xs:hexBinary" minOccurs ="0" maxOccurs ="1"/>
            <xs:element name="BootRevListInfo"              type="xs:hexBinary" minOccurs ="0" maxOccurs ="1"/>
            <xs:element name="OSRevListInfo"                type="xs:hexBinary" minOccurs ="0" maxOccurs ="1"/>

          <!--
<xs:element name="PCRCount"                     type="xs:unsignedInt"/>
<xs:element name="PCRSize"                      type="xs:unsignedShort"/>
<xs:element name="PCRHashAlgorithmID"           type="xs:unsignedShort"/>

<xs:element name="PCR"                          type="xs:hexBinary"/>
            -->
        </xs:sequence>
    </xs:complexType>

    <xs:complexType name="HealthStatusMismatchFlags_T">
        <xs:annotation>
            <xs:documentation>If there's a status mismatch, these flags will be set</xs:documentation>
        </xs:annotation>
        <xs:sequence>
            <!-- Hibernate/Resume count -->
            <xs:element name="ResumeCount"                   type="Boolean_T"/>
            <!-- Reboot count -->
            <xs:element name="RebootCount"                   type="Boolean_T"/> 
            <xs:element name="PCR"                           type="Boolean_T"/>
            <xs:element name="BootAppSVN"                   type="Boolean_T"/>
            <xs:element name="BootManagerSVNChain"           type="Boolean_T"/>
            <xs:element name="BootAppSVNChain"              type="Boolean_T"/>
        </xs:sequence>
    </xs:complexType>

    <xs:complexType name="HealthCertificateValidationResponse_T" >
        <xs:annotation>
            <xs:documentation>Health certificate validation response </xs:documentation>
        </xs:annotation>
        <xs:complexContent>
            <xs:extension base="ResponseCommon_T">
<xs:sequence>
    <!--Optional element, present only when the certificate can be verified and decrypted-->
    <xs:element name="HealthCertificateProperties"  type="HealthCertificatePublicProperties_T"  minOccurs="0"/>
    <!--Optional element, present only when the reason for a validation failure is a mismatch between the 
                    current health state and the certificate health state-->
    <xs:element name="HealthStatusMismatchFlags"       type="HealthStatusMismatchFlags_T"             minOccurs="0"/>
</xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:simpleType name="Boolean_T">
        <xs:restriction base="xs:boolean">
            <xs:pattern value="true|false"/>
        </xs:restriction>
    </xs:simpleType>
</xs:schema>
```

### DHA-Report example


```xml
<?xml version="1.0" encoding="utf-8"?>
<HealthCertificateValidationResponse xmlns:xsd="http://www.w3.org/2001/XMLSchema"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" ErrorCode="0" ProtocolVersion="0"
xmlns="http://schemas.microsoft.com/windows/security/healthcertificate/validation/response/v3">
<HealthCertificateProperties>
     <Issued>2016-10-21T02:12:58.6656577Z</Issued>
     <AIKPresent>false</AIKPresent>
     <ResetCount>2107533174</ResetCount>
     <RestartCount>2749041230</RestartCount>
     <DEPPolicy>0</DEPPolicy>
     <BitlockerStatus>0</BitlockerStatus>
     <BootManagerRevListVersion>0</BootManagerRevListVersion>
     <CodeIntegrityRevListVersion>0</CodeIntegrityRevListVersion>
     <SecureBootEnabled>false</SecureBootEnabled>
     <BootDebuggingEnabled>false</BootDebuggingEnabled>
     <OSKernelDebuggingEnabled>false</OSKernelDebuggingEnabled>
     <CodeIntegrityEnabled>true</CodeIntegrityEnabled>
     <TestSigningEnabled>true</TestSigningEnabled>
     <SafeMode>false</SafeMode>
     <WinPE>false</WinPE>
     <ELAMDriverLoaded>true</ELAMDriverLoaded>
     <VSMEnabled>false</VSMEnabled>
     <PCRHashAlgorithmID>0</PCRHashAlgorithmID>
     <BootAppSVN>1</BootAppSVN>
     <BootManagerSVN>1</BootManagerSVN>
     <TpmVersion>2</TpmVersion>
     <PCR0>4ACCBE0ADB9627FFD6285C2E06EC5AC59ABF62C7</PCR0> 
     <CIPolicy>00000000000001001A000B00200000005300690050006F006C006900630079002E007000370062000000A4BF7EF05585876A61CBFF7CAE8123BE756D58B1BBE04F9719D15D6271514CF5</CIPolicy>
     <BootRevListInfo>005D447A7CC6D101200000000B00CBB56E8B19267E24A2986C4A616CCB58B4D53F6020AC8FD5FC205C20F2AB00BC</BootRevListInfo>
     <OSRevListInfo>8073EEA7F8FAD001200000000B00A8285B04DE618ACF4174C59F07AECC002D11DD7D97FA5D464F190C9D9E3479BA</OSRevListInfo>
 </HealthCertificateProperties>
</HealthCertificateValidationResponse>
```



## Related topics


[Configuration service provider reference](configuration-service-provider-reference.md)

