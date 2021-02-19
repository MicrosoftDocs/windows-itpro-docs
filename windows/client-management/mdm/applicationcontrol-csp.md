---
title: ApplicationControl CSP
description: The ApplicationControl CSP allows you to manage multiple Windows Defender Application Control (WDAC) policies from a MDM server.
keywords: security, malware
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: ManikaDhiman
ms.reviewer: jsuther1974
ms.date: 09/10/2020
---

# ApplicationControl CSP

Windows Defender Application Control (WDAC) policies can be managed from an MDM server or locally using PowerShell via the WMI Bridge through the ApplicationControl configuration service provider (CSP). The ApplicationControl CSP was added in Windows 10, version 1903. This CSP provides expanded diagnostic capabilities and support for [multiple policies](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-application-control/deploy-multiple-windows-defender-application-control-policies) (introduced in Windows 10, version 1903). It also provides support for rebootless policy deployment (introduced in Windows 10, version 1709). Unlike the [AppLocker CSP](applocker-csp.md), the ApplicationControl CSP correctly detects the presence of no-reboot option and consequently does not schedule a reboot.
Existing WDAC policies deployed using the AppLocker CSP's CodeIntegrity node can now be deployed using the ApplicationControl CSP URI. Although WDAC policy deployment via the AppLocker CSP will continue to be supported, all new feature work will be done in the ApplicationControl CSP only.

The following diagram shows the ApplicationControl CSP in tree format.

![tree diagram for applicationcontrol csp](images/provisioning-csp-applicationcontrol.png)

<a href="" id="vendor-msft-applicationcontrol"></a>**./Vendor/MSFT/ApplicationControl**  
Defines the root node for the ApplicationControl CSP.

Scope is permanent. Supported operation is Get.

<a href="" id="applicationcontrol-policies"></a>**ApplicationControl/Policies**  
An interior node that contains all the policies, each identified by their globally unique identifier (GUID).

Scope is permanent. Supported operation is Get.

<a href="" id="applicationcontrol-policies-policyguid"></a>**ApplicationControl/Policies/_Policy GUID_**  
The ApplicationControl CSP enforces that the "ID" segment of a given policy URI is the same GUID as the policy ID in the policy blob. Each *Policy GUID* node contains a Policy node and a corresponding PolicyInfo node.

Scope is dynamic. Supported operation is Get.

<a href="" id="applicationcontrol-policies-policyguid-policy"></a>**ApplicationControl/Policies/_Policy GUID_/Policy**  
This node is the policy binary itself, which is encoded as base64.

Scope is dynamic. Supported operations are Get, Add, Delete, and Replace.

Value type is b64. Supported value is a binary file, converted from the policy XML file by the ConvertFrom-CIPolicy cmdlet.

Default value is empty.

<a href="" id="applicationcontrol-policies-policyguid-policyinfo"></a>**ApplicationControl/Policies/_Policy GUID_/PolicyInfo**  
An interior node that contains the nodes that describe the policy indicated by the GUID.

Scope is dynamic. Supported operation is Get.

<a href="" id="applicationcontrol-policies-policyguid-policyinfo-version"></a>**ApplicationControl/Policies/_Policy GUID_/PolicyInfo/Version**  
This node provides the version of the policy indicated by the GUID. Stored as a string, but when parsing use a uint64 as the containing data type.

Scope is dynamic. Supported operation is Get.

Value type is char.

<a href="" id="applicationcontrol-policies-policyguid-policyinfo-iseffective"></a>**ApplicationControl/Policies/_Policy GUID_/PolicyInfo/IsEffective**  
This node specifies whether a policy is actually loaded by the enforcement engine and is in effect on a system.

Scope is dynamic. Supported operation is Get.

Value type is bool. Supported values are as follows:

- True — Indicates that the policy is actually loaded by the enforcement engine and is in effect on a system.
- False — Indicates that the policy is not loaded by the enforcement engine and is not in effect on a system. This is the default.

<a href="" id="applicationcontrol-policies-policyguid-policyinfo-isdeployed"></a>**ApplicationControl/Policies/_Policy GUID_/PolicyInfo/IsDeployed**  
This node specifies whether a policy is deployed on the system and is present on the physical machine.

Scope is dynamic. Supported operation is Get.

Value type is bool. Supported values are as follows:

- True — Indicates that the policy is deployed on the system and is present on the physical machine.
- False — Indicates that the policy is not deployed on the system and is not present on the physical machine. This is the default.

<a href="" id="applicationcontrol-policies-policyguid-policyinfo-isauthorized"></a>**ApplicationControl/Policies/_Policy GUID_/PolicyInfo/IsAuthorized**  
This node specifies whether the policy is authorized to be loaded by the enforcement engine on the system. If not authorized, a policy cannot take effect on the system.

Scope is dynamic. Supported operation is Get.

Value type is bool. Supported values are as follows:

- True — Indicates that the policy is authorized to be loaded by the enforcement engine on the system.
- False — Indicates that the policy is not authorized to be loaded by the enforcement engine on the system. This is the default.

The following table provides the result of this policy based on different values of IsAuthorized, IsDeployed, and IsEffective nodes:

|IsAuthorized | IsDeployed | IsEffective | Resultant |
|------------ | ---------- | ----------- | --------- |
|True|True|True|Policy is currently running and in effect.|
|True|True|False|Policy requires a reboot to take effect.|
|True|False|True|Policy requires a reboot to unload from CI.|
|False|True|True|Not Reachable.|
|True|False|False|*Not Reachable.|
|False|True|False|*Not Reachable.|
|False|False|True|Not Reachable.|
|False|False|False|*Not Reachable.|

`*` denotes a valid intermediary state; however, if an MDM transaction results in this state configuration, the END_COMMAND_PROCESSING will result in a fail.

<a href="" id="applicationcontrol-policies-policyguid-policyinfo-status"></a>**ApplicationControl/Policies/_Policy GUID_/PolicyInfo/Status**  
This node specifies whether the deployment of the policy indicated by the GUID was successful.

Scope is dynamic. Supported operation is Get.

Value type is integer. Default value is 0 == OK.

<a href="" id="applicationcontrol-policies-policyguid-policyinfo-friendlyname"></a>**ApplicationControl/Policies/_Policy GUID_/PolicyInfo/FriendlyName**  
This node provides the friendly name of the policy indicated by the policy GUID.

Scope is dynamic. Supported operation is Get.

Value type is char.

## Microsoft Endpoint Manager (MEM) Intune Usage Guidance  

For customers using Intune standalone or hybrid management with Configuration Manager (MEMCM) to deploy custom policies via the ApplicationControl CSP, refer to [Deploy Windows Defender Application Control policies by using Microsoft Intune](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-application-control/deploy-windows-defender-application-control-policies-using-intune)

## Generic MDM Server Usage Guidance

In order to leverage the ApplicationControl CSP without using Intune, you must:

1. Know a generated policy's GUID, which can be found in the policy xml as `<PolicyID>` or `<PolicyTypeID>` for pre-1903 systems.
2. Convert the policies to binary format using the ConvertFrom-CIPolicy cmdlet in order to be deployed. The binary policy may be signed or unsigned.
3. Create a policy node (a Base64-encoded blob of the binary policy representation) using the certutil -encode command line tool.

Below is a sample certutil invocation:

```cmd
certutil  -encode WinSiPolicy.p7b WinSiPolicy.cer
```

An alternative to using certutil would be to use the following PowerShell invocation:

```powershell
[Convert]::toBase64String($(Get-Content -Encoding Byte -ReadCount 0 -Path <bin file>))
```

### Deploy Policies

To deploy a new base policy using the CSP, perform an ADD on **./Vendor/MSFT/ApplicationControl/Policies/_Policy GUID_/Policy** using the Base64-encoded policy node as {Data}. Refer to the the Format section in the Example 1 below.

To deploy base policy and supplemental policies:

1. Perform an ADD on **./Vendor/MSFT/ApplicationControl/Policies/_Policy GUID_/Policy** using the Base64-encoded policy node as {Data} with the GUID and policy data for the base policy.
2. Repeat for each base or supplemental policy (with its own GUID and data).

The following example shows the deployment of two base policies and a supplemental policy (which already specifies the base policy it supplements and does not need that reflected in the ADD).

#### Example 1: Add first base policy

```xml
<Add>
    <CmdID>1</CmdID>
    <Item>
        <Target>
            <LocURI>./Vendor/MSFT/ApplicationControl/Policies/{Base1GUID}/Policy</LocURI>
        </Target>
        <Meta>
             <Format xmlns="syncml:metinf">b64</Format>
        </Meta>
        <Data> {Base1Data} </Data>
    </Item>
</Add>
```

#### Example 2: Add second base policy

```xml
<Add>
    <CmdID>1</CmdID>
    <Item>
        <Target>
            <LocURI>./Vendor/MSFT/ApplicationControl/Policies/{Base2GUID}/Policy</LocURI>
        </Target>
        <Meta>
            <Format xmlns="syncml:metinf">b64</Format>
        </Meta>
        <Data> {Base2Data} </Data>
    </Item>
</Add>
```

#### Example 3: Add supplemental policy

```xml
<Add>
    <CmdID>1</CmdID>
    <Item>
        <Target>
            <LocURI>./Vendor/MSFT/ApplicationControl/Policies/{Supplemental1GUID}/Policy</LocURI>
        </Target>
        <Meta>
            <Format xmlns="syncml:metinf">b64</Format>
        </Meta>
        <Data> {Supplemental1Data} </Data>
    </Item>
</Add>
```

### Get policies

Perform a GET using a deployed policy's GUID to interrogate/inspect the policy itself or information about it.

The following table displays the result of Get operation on different nodes:

|Nodes | Get Results|
|------------- | ------|
|./Vendor/MSFT/ApplicationControl/Policies/_Policy GUID_/Policy|raw p7b|
|./Vendor/MSFT/ApplicationControl/Policies/_Policy GUID_/PolicyInfo/Version|Policy version|
|./Vendor/MSFT/ApplicationControl/Policies/_Policy GUID_/PolicyInfo/IsEffective|Is the policy in effect|
|./Vendor/MSFT/ApplicationControl/Policies/_Policy GUID_/PolicyInfo/IsDeployed|Is the policy on the system|
|./Vendor/MSFT/ApplicationControl/Policies/_Policy GUID_/PolicyInfo/IsAuthorized|Is the policy authorized on the system|
|./Vendor/MSFT/ApplicationControl/Policies/_Policy GUID_/PolicyInfo/Status|Was the deployment successful|
|./Vendor/MSFT/ApplicationControl/Policies/_Policy GUID_/PolicyInfo/FriendlyName|Friendly name per the policy|

The following is an example of Get command:

```xml
 <Get>
    <CmdID>1</CmdID>
        <Item>
            <Target>
                <LocURI>./Vendor/MSFT/ApplicationControl/Policies/{PolicyGUID}/Policy</LocURI>
            </Target>
        </Item>
 </Get>
```

### Delete policies

#### Rebootless Deletion

Upon deletion, policies deployed via the ApplicationControl CSP are removed from the system but stay in effect until the next reboot. In order to functionally do a rebootless delete, first replace the existing policy with an Allow All policy (found at C:\Windows\schemas\CodeIntegrity\ExamplePolicies\AllowAll.xml) and then delete the updated policy. This will immediately prevent anything from being blocked and fully deactive the policy on the next reboot.

#### Unsigned Policies

To delete an unsigned policy, perform a DELETE on **./Vendor/MSFT/ApplicationControl/Policies/_Policy GUID_/Policy**.

#### Signed Policies

> [!NOTE]
> A signed policy by default can only be replaced by another signed policy. Hence, performing a DELETE on **./Vendor/MSFT/ApplicationControl/Policies/_Policy GUID_/Policy** is not sufficient to delete a signed policy.

To delete a signed policy:

1. Replace it with a signed update allowing unsigned policy.
2. Deploy another update with unsigned Allow All policy.
3. Perform delete.

The following is an example of Delete command:

```xml
   <Delete>
     <CmdID>1</CmdID>
        <Item>
            <Target>
                  <LocURI>./Vendor/MSFT/ApplicationControl/Policies/{PolicyGUID}/Policy</LocURI>
            </Target>
        </Item>
   </Delete>
```

## PowerShell and WMI Bridge Usage Guidance

The ApplicationControl CSP can also be managed locally from PowerShell or via Microsoft Endpoint Manager Configuration Manager's (MEMCM, formerly known as SCCM) task sequence scripting by leveraging the [WMI Bridge Provider](https://docs.microsoft.com/windows/client-management/mdm/using-powershell-scripting-with-the-wmi-bridge-provider).

### Setup for using the WMI Bridge

1. Convert your WDAC policy to Base64
2. Open PowerShell in Local System context (through PSExec or something similar)
3. Use WMI Interface:

    ```powershell
        $namespace = "root\cimv2\mdm\dmmap"
        $policyClassName = "MDM_AppControl_Policies"
        $policyBase64 = …
    ```

### Deploying a policy via WMI Bridge

Run the following command. PolicyID is a GUID which can be found in the policy xml, and should be used here without braces.

```powershell
    New-CimInstance -Namespace $namespace -ClassName $policyClassName -Property @{ParentID="./Vendor/MSFT/ApplicationControl/Policies";InstanceID="<PolicyID>";Policy=$policyBase64}
```

### Querying all policies via WMI Bridge

```powershell
Get-CimInstance -Namespace $namespace -ClassName $policyClassName
```
