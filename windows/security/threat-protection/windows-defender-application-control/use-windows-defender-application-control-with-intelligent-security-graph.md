---
title: Authorize reputable apps with the Intelligent Security Graph (ISG) (Windows 10)
description: Automatically authorize applications that Microsoft’s ISG recognizes as having known good reputation.
keywords: security, malware
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
ms.collection: M365-security-compliance
author: jsuther1974
ms.reviewer: isbrahm
ms.author: dansimp
manager: dansimp
ms.date: 03/10/2020
ms.technology: mde
---

# Authorize reputable apps with the Intelligent Security Graph (ISG)

**Applies to:**

- Windows 10
- Windows Server 2016 and above

Application control can be difficult to implement in organizations that don't deploy and manage applications through an IT-managed system. In such environments, users can acquire the applications they want to use for work, making it hard to build an effective application control policy.

Beginning with Windows 10, version 1709, you can set an option to automatically allow applications that the Microsoft Intelligent Security Graph recognizes as having known good reputation. The ISG option helps organizations begin to implement application control even when the organization has limited control over their app ecosystem. To learn more about the Microsoft Intelligent Security Graph, see the Security section in [Major services and features in Microsoft Graph](/graph/overview-major-services).

## How does the integration between WDAC and the Intelligent Security Graph work?

The ISG uses the same vast security intelligence and machine learning analytics that power Microsoft Defender SmartScreen and Microsoft Defender Antivirus to help classify applications as having "known good," "known bad," or "unknown" reputation. When a binary runs on a system, with WDAC enabled with the ISG option, WDAC checks the file's reputation, by sending its hash and signing information to the cloud. If the ISG reports that the file has a "known good" reputation, the $KERNEL.SMARTLOCKER.ORIGINCLAIM kernel Extended Attribute (EA) is written to the file.

If your WDAC policy does not have an explicit rule to allow or deny a binary to run, then WDAC will make a call to the cloud to determine whether the binary is familiar and safe. However, if your policy already authorizes or denies the binary, then WDAC will not make a call to the cloud.

If the file with good reputation is an application installer, its reputation will pass along to any files that it writes to disk. This way, all the files needed to install and run an app inherit the positive reputation data from the installer.

WDAC periodically re-queries the reputation data on a file. Additionally, enterprises can specify that any cached reputation results are flushed on reboot by using the **Enabled:Invalidate EAs on Reboot** option.

>[!NOTE]
>Admins should make sure there is a WDAC policy in place to allow the system to boot and run any other authorized applications that may not be classified as being known good by the Intelligent Security Graph, such as custom line-of-business (LOB) apps. Since the Intelligent Security Graph is powered by global prevalence data, internal LOB apps may not be recognized as being known good. Other mechanisms like managed installer and explicit rules will help cover internal applications. Both Microsoft Endpoint Manager Configuration Manager (MEMCM) and Microsoft Endpoint Manager Intune (MEM Intune) can be used to create and push a WDAC policy to your client machines.  

## Configuring Intelligent Security Graph authorization for Windows Defender Application Control

Setting up the ISG is easy using any management solution you wish. Configuring the Microsoft Intelligent Security Graph option involves these basic steps:

- [Ensure that the Microsoft Intelligent Security Graph option is enabled in the WDAC policy XML](#ensure-that-the-intelligent-security-graph-option-is-enabled-in-the-wdac-policy-xml)
- [Enable the necessary services to allow WDAC to use the Microsoft Intelligent Security Graph correctly on the client](#enable-the-necessary-services-to-allow-wdac-to-use-the-isg-correctly-on-the-client)

### Ensure that the Intelligent Security Graph option is enabled in the WDAC policy XML

To allow apps and binaries based on the Microsoft Intelligent Security Graph, the **Enabled:Intelligent Security Graph authorization** option must be specified in the WDAC policy. This step can be done with the Set-RuleOption cmdlet. You should also enable the **Enabled:Invalidate EAs on Reboot** option so that ISG results are verified again after each reboot. The ISG option is not recommended for devices that don't have regular access to the internet. The following example shows both options being set.

```code
<Rules> 
    <Rule> 
      <Option>Enabled:Unsigned System Integrity Policy</Option> 
    </Rule> 
    <Rule> 
      <Option>Enabled:Advanced Boot Options Menu</Option> 
    </Rule> 
    <Rule> 
      <Option>Required:Enforce Store Applications</Option> 
    </Rule> 
    <Rule>
      <Option>Enabled:UMCI</Option>
    </Rule>
    <Rule>
      <Option>Enabled:Managed Installer</Option> 
    </Rule>
    <Rule> 
      <Option>Enabled:Intelligent Security Graph Authorization</Option> 
    </Rule> 
    <Rule> 
      <Option>Enabled:Invalidate EAs on Reboot</Option> 
    </Rule> 
</Rules> 
```

### Enable the necessary services to allow WDAC to use the ISG correctly on the client

In order for the heuristics used by the ISG to function properly, a number of components in Windows must be enabled. You can configure these components by running the appidtel executable in `c:\windows\system32`.

```
appidtel start
```

This step isn't required for WDAC policies deployed over MDM, as the CSP will enable the necessary components. This step is also not required when the ISG is configured using MEMCM's WDAC integration.

## Security considerations with the Intelligent Security Graph

Since the Microsoft Intelligent Security Graph is a heuristic-based mechanism, it doesn't provide the same security guarantees that explicit allow or deny rules do. It's best suited where users operate with standard user rights and where a security monitoring solution like Microsoft Defender for Endpoint is used.

Processes running with kernel privileges can circumvent WDAC by setting the ISG extended file attribute to make a binary appear to have known good reputation. Also, since the ISG option passes along reputation from application installers to the binaries they write to disk, it can over-authorize files in some cases where the installer launches the application upon completion.

## Using fsutil to query SmartLocker EA
Customers using Windows Defender Application Control (WDAC) with Managed Installer or Intelligent Security Graph enabled can use fsutil to determine whether a file was allowed to run by one of these features. This can be achieved by querying the EAs on a file using fsutil and looking for the KERNEL.SMARTLOCKER.ORIGINCLAIM EA. The presence of this EA indicates that either MI or ISG allowed the file to run. This can be used in conjunction with enabling the MI and ISG logging events.

#### Example:
```powershell
fsutil file queryEA C:\Users\Temp\Downloads\application.exe

Extended Attributes (EA) information for file C:\Users\Temp\Downloads\application.exe:

Ea Buffer Offset: 410
Ea Name: $KERNEL.SMARTLOCKER.ORIGINCLAIM
Ea Value Length: 7e
0000: 01 00 00 00 01 00 00 00 00 00 00 00 01 00 00 00 ................
0010: b2 ff 10 66 bc a8 47 c7 00 d9 56 9d 3d d4 20 2a ...f..G...V.=. *
0020: 63 a3 80 e2 d8 33 8e 77 e9 5c 8d b0 d5 a7 a3 11 c....3.w.\......
0030: 83 00 00 00 00 00 00 00 5c 00 00 00 43 00 3a 00 ........\...C.:.
0040: 5c 00 55 00 73 00 65 00 72 00 73 00 5c 00 6a 00 \.U.s.e.r.s.\.T.
0050: 6f 00 67 00 65 00 75 00 72 00 74 00 65 00 2e 00 e.m.p..\D.o.w.n...
0060: 52 00 45 00 44 00 4d 00 4f 00 4e 00 44 00 5c 00 l.o.a.d.\a.p.p.l.
0070: 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 i.c.a.t.i.o.n..e.x.e
```

## Known limitations with using the Intelligent Security Graph

Since the ISG only allows binaries that are known good, there are cases where legitimate software may be unknown to the ISG and will be blocked by WDAC. In this case, you need to allow the software with a rule in your WDAC policy, deploy a catalog signed by a certificate trusted in the WDAC policy, or install the software from a WDAC managed installer. Installers or applications that dynamically create binaries at runtime, as well as self-updating applications, may exhibit this symptom.

Packaged apps are not supported with the Microsoft Intelligent Security Graph heuristics and will need to be separately authorized in your WDAC policy. Since packaged apps have a strong app identity and must be signed, it is straightforward to authorize these apps with your WDAC policy.

The ISG doesn't authorize kernel mode drivers. The WDAC policy must have rules that allow the necessary drivers to run.  

>[!NOTE]
> A rule that explicitly denies or allows a file will take precedence over that file's reputation data. MEM Intune's built-in WDAC support includes the option to trust apps with good reputation via the Microsoft Intelligent Security Graph, but it has no option to add explicit allow or deny rules. In most circumstances, customers enforcing application control need to deploy a custom WDAC policy (which can include the Microsoft Intelligent Security Graph option if desired) using [Intune's OMA-URI functionality](deploy-windows-defender-application-control-policies-using-intune.md#deploy-wdac-policies-with-custom-oma-uri).
