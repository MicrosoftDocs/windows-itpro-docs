---
title: Microsoft recommended driver block rules
description: View a list of recommended block rules to block vulnerable third-party drivers discovered by Microsoft and the security research community.
ms.localizationpriority: medium
ms.collection:
- tier3
- must-keep
ms.date: 01/24/2024
ms.topic: how-to
---

# Microsoft recommended driver block rules

>[!NOTE]
>Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Windows Defender Application Control feature availability](/windows/security/threat-protection/windows-defender-application-control/feature-availability).

Microsoft has strict requirements for code running in kernel. So, malicious actors are turning to exploit vulnerabilities in legitimate and signed kernel drivers to run malware in kernel. One of the many strengths of the Windows platform is our strong collaboration with independent hardware vendors (IHVs) and OEMs. Microsoft works closely with our IHVs and security community to ensure the highest level of driver security for our customers. When vulnerabilities in drivers are found, we work with our partners to ensure they're quickly patched and rolled out to the ecosystem. The vulnerable driver blocklist is designed to help harden systems against non-Microsoft-developed drivers across the Windows ecosystem with any of the following attributes:

- Known security vulnerabilities that can be exploited by attackers to elevate privileges in the Windows kernel
- Malicious behaviors (malware) or certificates used to sign malware
- Behaviors that aren't malicious but circumvent the Windows Security Model and can be exploited by attackers to elevate privileges in the Windows kernel

Drivers can be submitted to Microsoft for security analysis at the [Microsoft Security Intelligence Driver Submission page](https://www.microsoft.com/en-us/wdsi/driversubmission). For more information about driver submission, see [Improve kernel security with the new Microsoft Vulnerable and Malicious Driver Reporting Center](https://www.microsoft.com/security/blog/2021/12/08/improve-kernel-security-with-the-new-microsoft-vulnerable-and-malicious-driver-reporting-center/). To report an issue or request a change to the blocklist, including updating a block rule once a driver has been fixed, visit the [Microsoft Security Intelligence portal](https://www.microsoft.com/wdsi) or submit feedback on this article.

> [!NOTE]
> Blocking drivers can cause devices or software to malfunction, and in rare cases, lead to blue screen. The vulnerable driver blocklist is not guaranteed to block every driver found to have vulnerabilities. Microsoft attempts to balance the security risks from vulnerable drivers with the potential impact on compatibility and reliability to produce the blocklist. As always, Microsoft recommends using an explicit allow list approach to security wherever possible.

## Microsoft vulnerable driver blocklist

<!-- MAXADO-6286432 -->

With Windows 11 2022 update, the vulnerable driver blocklist  is enabled by default for all devices, and can be turned on or off via the [Windows Security](https://support.microsoft.com/windows/device-protection-in-windows-security-afa11526-de57-b1c5-599f-3a4c6a61c5e2) app. Except on Windows Server 2016, the vulnerable driver blocklist is also enforced when either memory integrity (also known as hypervisor-protected code integrity or HVCI), Smart App Control, or S mode is active. Users can opt in to HVCI using the [Windows Security](https://support.microsoft.com/windows/device-protection-in-windows-security-afa11526-de57-b1c5-599f-3a4c6a61c5e2) app, and HVCI is on by-default for most new Windows 11 devices.

> [!NOTE]
>
> - **Windows Security** is updated separately from the OS and ships out of box. The version with the vulnerable driver blocklist toggle is in the final validation ring and will ship to all customers very soon. Initially, you will be able to view the configuration state only and the toggle will appear grayed out. The ability to turn the toggle on or off will come with a future Windows update.
>
> - For Windows Insiders, the option to turn Microsoft's vulnerable driver blocklist on or off using **Windows Security** settings is grayed out when HVCI, Smart App Control, or S mode is enabled. You must disable HVCI or Smart App Control, or switch the device out of S mode, and restart the device before you can turn off the Microsoft vulnerable driver blocklist.

The blocklist is updated with each new major release of Windows, typically 1-2 times per year, including most recently with the Windows 11 2022 update released in September 2022. The most current blocklist is now also available for Windows 10 20H2 and Windows 11 21H2 users as an optional update from Windows Update. Microsoft will occasionally publish future updates through regular Windows servicing.

Customers who always want the most up-to-date driver blocklist can also use Windows Defender Application Control (WDAC) to apply the latest recommended driver blocklist contained in this article. For your convenience, we provide a download of the most up-to-date vulnerable driver blocklist along with instructions to apply it on your computer at the end of this article. Otherwise, use the following XML to create your own custom WDAC policies.

## Blocking vulnerable drivers using WDAC

Microsoft recommends enabling [HVCI](../../../../hardware-security/enable-virtualization-based-protection-of-code-integrity.md) or S mode to protect your devices against security threats. If this setting isn't possible, Microsoft recommends blocking [this list of drivers](#vulnerable-driver-blocklist-xml) within your existing Windows Defender Application Control policy. Blocking kernel drivers without sufficient testing can cause devices or software to malfunction, and in rare cases, blue screen. It's recommended to first validate this policy in [audit mode](/windows/security/threat-protection/windows-defender-application-control/audit-windows-defender-application-control-policies) and review the audit block events.

> [!IMPORTANT]
> Microsoft also recommends enabling Attack Surface Reduction (ASR) rule [**Block abuse of exploited vulnerable signed drivers**](/microsoft-365/security/defender-endpoint/attack-surface-reduction-rules-reference#block-abuse-of-exploited-vulnerable-signed-drivers) to prevent an application from writing a vulnerable signed driver to disk. The ASR rule doesn't block a driver already existing on the system from loading, however enabling **Microsoft vulnerable driver blocklist** or applying this WDAC policy will prevent the existing driver from loading.

## Steps to download and apply the vulnerable driver blocklist binary

If you prefer to apply the [vulnerable driver blocklist](#vulnerable-driver-blocklist-xml) exactly as shown, follow these steps:

1. Download the [WDAC policy refresh tool](https://aka.ms/refreshpolicy)
2. Download and extract the [vulnerable driver blocklist binaries](https://aka.ms/VulnerableDriverBlockList)
3. Select either the audit only version or the enforced version and rename the file to SiPolicy.p7b
4. Copy SiPolicy.p7b to %windir%\system32\CodeIntegrity
5. Run the WDAC policy refresh tool you downloaded in Step 1 above to activate and refresh all WDAC policies on your computer

To check that the policy was successfully applied on your computer:

1. Open Event Viewer
2. Browse to **Applications and Services Logs - Microsoft - Windows - CodeIntegrity - Operational**
3. Select **Filter Current Log...**
4. Replace "&lt;All Event IDs&gt;" with "3099" and select OK.
5. Look for a 3099 event where the PolicyNameBuffer and PolicyIdBuffer match the Name and Id PolicyInfo settings found at the bottom of the blocklist WDAC Policy XML in this article. NOTE: Your computer may have more than one 3099 event if other WDAC policies are also present.

> [!NOTE]
> If any vulnerable drivers are already running that would be blocked by the policy, you must reboot your computer for those drivers to be blocked. Running processes aren't shutdown when activating a new WDAC policy without reboot.

## Vulnerable driver blocklist XML

> [!IMPORTANT]
> The following policy contains **Allow All** rules. If your version of Windows supports WDAC multiple policies, we recommend deploying this policy alongside any existing WDAC policies. If you do plan to merge this policy with another policy, you may need to remove the **Allow All** rules before merging it if the other policy applies an explicit allow list. For more information, see [Create a WDAC Deny Policy](/windows/security/threat-protection/windows-defender-application-control/create-wdac-deny-policy#single-policy-considerations).

> [!NOTE]
> To use this policy with Windows Server 2016, you must convert the policy XML on a device running a newer operating system.

The following recommended blocklist xml policy file can also be downloaded from the [Microsoft Download Center](https://aka.ms/VulnerableDriverBlockList).

```xml
<?xml version="1.0" encoding="utf-8"?>
<SiPolicy xmlns="urn:schemas-microsoft-com:sipolicy">
  <VersionEx>10.0.26025.0</VersionEx>
  <PlatformID>{2E07F7E4-194C-4D20-B7C9-6F44A6C5A234}</PlatformID>
  <Rules>
    <Rule>
      <Option>Enabled:Unsigned System Integrity Policy</Option>
    </Rule>
    <Rule>
      <Option>Enabled:Advanced Boot Options Menu</Option>
    </Rule>
    <Rule>
      <Option>Enabled:Audit Mode</Option>
    </Rule>
    <Rule>
      <Option>Disabled:Script Enforcement</Option>
    </Rule>
    <Rule>
      <Option>Enabled:Update Policy No Reboot</Option>
    </Rule>
  </Rules>
  <!--EKUS-->
  <EKUs />
  <!--File Rules-->
  <FileRules>
    <Allow ID="ID_ALLOW_ALL_1" FriendlyName="" FileName="*" />
    <Allow ID="ID_ALLOW_ALL_2" FriendlyName="" FileName="*" />
    <Deny ID="ID_DENY_AGENT64_SHA1" FriendlyName="Agent64\05f052_4045ae_694848_8cb62c_b1d962 Hash Sha1" Hash="94F7575A6BB378D0CF85B3DC65941C95415E7A80" />
    <Deny ID="ID_DENY_AGENT64_SHA256" FriendlyName="Agent64\05f052_4045ae_694848_8cb62c_b1d962 Hash Sha256" Hash="3BC0CEC99DCE687304DAD8F7A6DAF772E695CBD0169D346D03AE12500361A1E8" />
    <Deny ID="ID_DENY_AGENT64_SHA1_PAGE" FriendlyName="Agent64\05f052_4045ae_694848_8cb62c_b1d962 Hash Page Sha1" Hash="E083142033C9653977D319B3DF4D2DE369756138" />
    <Deny ID="ID_DENY_AGENT64_SHA256_PAGE" FriendlyName="Agent64\05f052_4045ae_694848_8cb62c_b1d962 Hash Page Sha256" Hash="68EFBAB6FEADAB076DC97DB359A287193C51199742F92E07B60417F093040FED" />
    <Deny ID="ID_DENY_ASIO_32_SHA1" FriendlyName="ASIO32.sys Hash Sha1" Hash="D569D4BAB86E70EFBCDFDAC9D822139D6F477B7C" />
    <Deny ID="ID_DENY_ASIO_32_SHA256" FriendlyName="ASIO32.sys Hash Sha256" Hash="80599708CE61EC5D6DCFC5977208A2A0BE2252820A88D9BA260D8CDF5DC7FBE4" />
    <Deny ID="ID_DENY_ASIO_32_SHA1_PAGE" FriendlyName="ASIO32.sys Hash Page Sha1" Hash="80FA962BDFB76DFCB9E5D13EFC38BB3D392F2E77" />
    <Deny ID="ID_DENY_ASIO_32_SHA256_PAGE" FriendlyName="ASIO32.sys Hash Page Sha256" Hash="9091E044273FF624585235AC885EB2B05DFB12F3022DCF535B178FF1B2E012D1" />
    <Deny ID="ID_DENY_ASIO_32_SHA1_1" FriendlyName="ASIO32.sys Hash Sha1" Hash="5A7DD0DA0AEE0BDEDC14C1B7831B9CE9178A0346" />
    <Deny ID="ID_DENY_ASIO_32_SHA256_1" FriendlyName="ASIO32.sys Hash Sha256" Hash="92EDD48DFAC025D4069EB6491B9730D9D131B77CCEAA480AF9B3C32BC8C5E3A9" />
    <Deny ID="ID_DENY_ASIO_32_SHA1_PAGE_1" FriendlyName="ASIO32.sys Hash Page Sha1" Hash="1ACC7A486B52C5EE6619DBDC3B4210B5F48B936F" />
    <Deny ID="ID_DENY_ASIO_32_SHA256_PAGE_1" FriendlyName="ASIO32.sys Hash Page Sha256" Hash="F84634B5C0E83CA9BB25928DC3C4FC05D37451C23B780DBEEB1F10F056F1EEEE" />
    <Deny ID="ID_DENY_ASIO_32_SHA1_2" FriendlyName="ASIO32.sys Hash Sha1" Hash="55AB7E27412ECA433D76513EDC7E6E03BCDD7EDA" />
    <Deny ID="ID_DENY_ASIO_32_SHA256_2" FriendlyName="ASIO32.sys Hash Sha256" Hash="C1B41D6B91448E2409BB2F4FBF4AEB952ADF373D0DECC9D052277B89BA401407" />
    <Deny ID="ID_DENY_ASIO_32_SHA1_PAGE_2" FriendlyName="ASIO32.sys Hash Page Sha1" Hash="1E7C241B9A9EA79061B50FB19B3D141DEE175C27" />
    <Deny ID="ID_DENY_ASIO_32_SHA256_PAGE_2" FriendlyName="ASIO32.sys Hash Page Sha256" Hash="1056806F6508B4F5E8A00A6E8D07AEAC06A1BE5F9B92F1684F33682D2DA9349E" />
    <Deny ID="ID_DENY_ASIO_64_SHA1" FriendlyName="ASIO64.sys Hash Sha1" Hash="E5C090903A20744BA3583A8EA684D035E8CECC34" />
    <Deny ID="ID_DENY_ASIO_64_SHA256" FriendlyName="ASIO64.sys Hash Sha256" Hash="9DCFD796E244D0687CC35EAC9538F209F76C6DF12DE166F19DBC7D2C47FB16B3" />
    <Deny ID="ID_DENY_ASIO_64_SHA1_PAGE" FriendlyName="ASIO64.sys Hash Page Sha1" Hash="CA5FF4EB8CCBDE4EFF3491FD7941769E8D093D79" />
    <Deny ID="ID_DENY_ASIO_64_SHA256_PAGE" FriendlyName="ASIO64.sys Hash Page Sha256" Hash="D8841803F181F735D8794C82BA52D8C484B3B0A95DBBB66114314F439B75B0E9" />
    <Deny ID="ID_DENY_ASIO_64_SHA1_1" FriendlyName="ASIO64.sys Hash Sha1" Hash="C92148D0666F2235500805975BE79738B84E48C2" />
    <Deny ID="ID_DENY_ASIO_64_SHA256_1" FriendlyName="ASIO64.sys Hash Sha256" Hash="19C74EA0E0BAF04820E5642BD2FA224158801ED966BE1041539E3C55BD65C471" />
    <Deny ID="ID_DENY_ASIO_64_SHA1_PAGE_1" FriendlyName="ASIO64.sys Hash Page Sha1" Hash="F8270F774B3549079EA7D5F0D5406F307019BDFB" />
    <Deny ID="ID_DENY_ASIO_64_SHA256_PAGE_1" FriendlyName="ASIO64.sys Hash Page Sha256" Hash="A3C9C5625BA6A6075D365543603A4DD4D7790850753D5289FF976EB2A839910F" />
    <Deny ID="ID_DENY_ASIO_64_SHA1_2" FriendlyName="ASIO64.sys Hash Sha1" Hash="61E1B497A5DF0797527D6D465A8F315A82AD35EB" />
    <Deny ID="ID_DENY_ASIO_64_SHA256_2" FriendlyName="ASIO64.sys Hash Sha256" Hash="739C11FDB8673AB5B78F1A874DAF5BA3FADDB7910A6D4E0CC49ABD8B8537333F" />
    <Deny ID="ID_DENY_ASIO_64_SHA1_PAGE_2" FriendlyName="ASIO64.sys Hash Page Sha1" Hash="708855DB4202A792862E1139D673C3B4B713053C" />
    <Deny ID="ID_DENY_ASIO_64_SHA256_PAGE_2" FriendlyName="ASIO64.sys Hash Page Sha256" Hash="BE5653E4C1ED75A451BE4297FF233A22C7AAB93B2126CA428834E83CADFF5E9C" />
    <Deny ID="ID_DENY_ASRDRV10_SHA1" FriendlyName="AsrDrv10.sys Hash Sha1" Hash="2E6D61FA32E12FE4ABF7B7D87AA6824F5F528000" />
    <Deny ID="ID_DENY_ASRDRV10_SHA256" FriendlyName="AsrDrv10.sys Hash Sha256" Hash="C767A5895119154467AC3FCE8E82C20E6538A4E54F6C109001C61F8ABD58F9F8" />
    <Deny ID="ID_DENY_ASRDRV10_SHA1_PAGE" FriendlyName="AsrDrv10.sys Hash Page Sha1" Hash="085529E58BE3806D396F1BB15FF078FD4C471AAB" />
    <Deny ID="ID_DENY_ASRDRV10_SHA256_PAGE" FriendlyName="AsrDrv10.sys Hash Page Sha256" Hash="14141F03EFF7C2F44BFED93524F4EC64ABDC8F3D45D55B1BCB5701CA354319FD" />
    <Deny ID="ID_DENY_ASRDRV101_SHA1" FriendlyName="AsrDrv101.sys Hash Sha1" Hash="D0580BFC31FAEFB7E017798121C5B8A4E68155F9" />
    <Deny ID="ID_DENY_ASRDRV101_SHA256" FriendlyName="AsrDrv101.sys Hash Sha256" Hash="FEE4560F2160A951D83344857EB4587AB10C1CFD8C5CFC23B6F06BEF8EBCD984" />
    <Deny ID="ID_DENY_ASRDRV101_SHA1_PAGE" FriendlyName="AsrDrv101.sys Hash Page Sha1" Hash="55A90E7822A1444FAE81371DF7296CC5642FB353" />
    <Deny ID="ID_DENY_ASRDRV101_SHA256_PAGE" FriendlyName="AsrDrv101.sys Hash Page Sha256" Hash="B00060733F88E3897D4B1E4732DF67FF277A8D615F84E6EFAB98C79C72CBA370" />
    <Deny ID="ID_DENY_ASRDRV102_SHA1" FriendlyName="AsrDrv102.sys Hash Sha1" Hash="5F9C7D3552FFA98C9DCF9A9B7AD1263D2AB24A2F" />
    <Deny ID="ID_DENY_ASRDRV102_SHA256" FriendlyName="AsrDrv102.sys Hash Sha256" Hash="11EECF9E6E2447856ED4CF86EE1CB779CFE0672C808BBD5934CF2F09A62D6170" />
    <Deny ID="ID_DENY_ASRDRV102_SHA1_PAGE" FriendlyName="AsrDrv102.sys Hash Page Sha1" Hash="B419D69A4ED8D4EABD90A155ED15C3374BEA6FFC" />
    <Deny ID="ID_DENY_ASRDRV102_SHA256_PAGE" FriendlyName="AsrDrv102.sys Hash Page Sha256" Hash="23E39D9E40235A5C456260E03CACCC186FE79FFD7D0439AEA7530EBB0380946D" />
    <Deny ID="ID_DENY_ASRDRV103_SHA1" FriendlyName="AsrDrv103.sys Hash Sha1" Hash="B3410021EA5A46818D9FF05A96C2809A9ABE8E4A" />
    <Deny ID="ID_DENY_ASRDRV103_SHA256" FriendlyName="AsrDrv103.sys Hash Sha256" Hash="B6BF2460E023B1005CC60E107B14A3CFDF9284CC378A086D92E5DCDF6E432E2C" />
    <Deny ID="ID_DENY_ASRDRV103_SHA1_PAGE" FriendlyName="AsrDrv103.sys Hash Page Sha1" Hash="490F85E291C4D9ED0AB8457CE6B424C0F3F7E7AC" />
    <Deny ID="ID_DENY_ASRDRV103_SHA256_PAGE" FriendlyName="AsrDrv103.sys Hash Page Sha256" Hash="E22B7BA6D064C75913C3BDADAF7AADA535DDDD83175D8A47467FED5ABC56D5AC" />
    <Deny ID="ID_DENY_ASRDRV104_5A" FriendlyName="asrdrv104\4bf974f5d3489638a48ee508b4a8cfa0f0262909778ccdd2e871172b71654d89 Hash Sha1" Hash="6C1BB3A72EBFB5359B9E22CA44D0A1FF825A68F2" />
    <Deny ID="ID_DENY_ASRDRV104_5B" FriendlyName="asrdrv104\4bf974f5d3489638a48ee508b4a8cfa0f0262909778ccdd2e871172b71654d89 Hash Sha256" Hash="904D8D0DB7B3ED747ECFBB04386DFBE23B71FFD054F32AB17F65BC17D500F730" />
    <Deny ID="ID_DENY_ASRDRV104_5C" FriendlyName="asrdrv104\4bf974f5d3489638a48ee508b4a8cfa0f0262909778ccdd2e871172b71654d89 Hash Page Sha1" Hash="E039C9DD21494DBD073B4823FC3A17FBB951EC6C" />
    <Deny ID="ID_DENY_ASRDRV104_5D" FriendlyName="asrdrv104\4bf974f5d3489638a48ee508b4a8cfa0f0262909778ccdd2e871172b71654d89 Hash Page Sha256" Hash="F292E6AADD8CB18DFC59A6B6734B5F68262E09BF1DFDB44CC2F70DF176C85F72" />
    <Deny ID="ID_DENY_ASRDRV104_5E" FriendlyName="asrdrv104\53bb076e81f6104f41bc284eedae36bd99b53e42719573fa5960932720ebc854 Hash Sha1" Hash="7EEC3A1EDF3B021883A4B5DA450DB63F7C0AFEEB" />
    <Deny ID="ID_DENY_ASRDRV104_5F" FriendlyName="asrdrv104\53bb076e81f6104f41bc284eedae36bd99b53e42719573fa5960932720ebc854 Hash Sha256" Hash="3F44442F56F2CEB6213FCE103466862AC750FB99038030003C1B42DA35A43A83" />
    <Deny ID="ID_DENY_ASRDRV104_60" FriendlyName="asrdrv104\53bb076e81f6104f41bc284eedae36bd99b53e42719573fa5960932720ebc854 Hash Page Sha1" Hash="E5021A98E55D514E2376AA573D143631E5EE1C13" />
    <Deny ID="ID_DENY_ASRDRV104_61" FriendlyName="asrdrv104\53bb076e81f6104f41bc284eedae36bd99b53e42719573fa5960932720ebc854 Hash Page Sha256" Hash="2B02B3C4F298B2B4F0B7A6714CD28B0410C1430AE6FF798056CB27EED90DD424" />
    <Deny ID="ID_DENY_ASRDRV104_62" FriendlyName="asrdrv104\6ed35f310c96920a271c59a097b382da07856e40179c2a4239f8daa04eef38e7 Hash Sha1" Hash="729A8675665C61824F22F06C7B954BE4D14B52C4" />
    <Deny ID="ID_DENY_ASRDRV104_63" FriendlyName="asrdrv104\6ed35f310c96920a271c59a097b382da07856e40179c2a4239f8daa04eef38e7 Hash Sha256" Hash="6ED35F310C96920A271C59A097B382DA07856E40179C2A4239F8DAA04EEF38E7" />
    <Deny ID="ID_DENY_ASRDRV104_64" FriendlyName="asrdrv104\d20d8bf80017e98b6dfc9f6c3960271fa792a908758bef49a390e2692a2a4341 Hash Sha1" Hash="2B4D0DEAD4C1A7CC95543748B3565CFA802E5256" />
    <Deny ID="ID_DENY_ASRDRV104_65" FriendlyName="asrdrv104\d20d8bf80017e98b6dfc9f6c3960271fa792a908758bef49a390e2692a2a4341 Hash Sha256" Hash="E6A2AC52A35D470DC336BAE5C48A2EBF2D80519BFD57B703DA6CE00DDD12163A" />
    <Deny ID="ID_DENY_ASRDRV104_66" FriendlyName="asrdrv104\d20d8bf80017e98b6dfc9f6c3960271fa792a908758bef49a390e2692a2a4341 Hash Page Sha1" Hash="4A7D66874A0472A47087FABAA033A85D47413379" />
    <Deny ID="ID_DENY_ASRDRV104_67" FriendlyName="asrdrv104\d20d8bf80017e98b6dfc9f6c3960271fa792a908758bef49a390e2692a2a4341 Hash Page Sha256" Hash="C1FE339D15E5D59F9613688B85F9B627E72ED8ED3EFC53F9DD0CD7A7F0C55133" />
    <Deny ID="ID_DENY_ASRSETUPDRV103_39" FriendlyName="AsrSetupDrv103\9d9346e6f46f831e263385a9bd32428e01919cca26a035bbb8e9cb00bf410bc3 Hash Sha1" Hash="0B6EC2AEDC518849A1C61A70B1F9FB068EDE2BC3" />
    <Deny ID="ID_DENY_ASRSETUPDRV103_3A" FriendlyName="AsrSetupDrv103\9d9346e6f46f831e263385a9bd32428e01919cca26a035bbb8e9cb00bf410bc3 Hash Sha256" Hash="399EFFE75D32BDAB6FA0A6BFFE02DBF0A59219D940B654837C3BE1C0BD02E9AA" />
    <Deny ID="ID_DENY_ASRSETUPDRV103_3B" FriendlyName="AsrSetupDrv103\9d9346e6f46f831e263385a9bd32428e01919cca26a035bbb8e9cb00bf410bc3 Hash Page Sha1" Hash="461882BD59887617CADC1C7B2B22D0A45458C070" />
    <Deny ID="ID_DENY_ASRSETUPDRV103_3C" FriendlyName="AsrSetupDrv103\9d9346e6f46f831e263385a9bd32428e01919cca26a035bbb8e9cb00bf410bc3 Hash Page Sha256" Hash="27CD05527FEB020084A4A76579C125458571DA8843CDFC3733211760A11DA970" />
    <Deny ID="ID_DENY_ASRSETUPDRV103_3D" FriendlyName="AsrSetupDrv103\a0728184caead84f2e88777d833765f2d8af6a20aad77b426e07e76ef91f5c3f Hash Sha1" Hash="A7948A4E9A3A1A9ED0E4E41350E422464D8313CD" />
    <Deny ID="ID_DENY_ASRSETUPDRV103_3E" FriendlyName="AsrSetupDrv103\a0728184caead84f2e88777d833765f2d8af6a20aad77b426e07e76ef91f5c3f Hash Sha256" Hash="7AAF2AA194B936E48BC90F01EE854768C8383C0BE50CFB41B346666AEC0CF853" />
    <Deny ID="ID_DENY_ASRSETUPDRV103_3F" FriendlyName="AsrSetupDrv103\a0728184caead84f2e88777d833765f2d8af6a20aad77b426e07e76ef91f5c3f Hash Page Sha1" Hash="F3CCE7E79AB5BD055F311BB3AC44A838779270B6" />
    <Deny ID="ID_DENY_ASRSETUPDRV103_40" FriendlyName="AsrSetupDrv103\a0728184caead84f2e88777d833765f2d8af6a20aad77b426e07e76ef91f5c3f Hash Page Sha256" Hash="727E8BA66A8FF07BDC778EACB463B65F2D7167A6616CA2F259EA32571CACF8AF" />
    <Deny ID="ID_DENY_ATILLK_2" FriendlyName="atillk64\11a9787831ac4f0657aeb5e7019c23acc39d8833faf28f85bd10d7590ea4cc5f Hash Sha1" Hash="6EE2E56413CE129EA2319D6DBA28BA4F27CF75B7" />
    <Deny ID="ID_DENY_ATILLK_3" FriendlyName="atillk64\11a9787831ac4f0657aeb5e7019c23acc39d8833faf28f85bd10d7590ea4cc5f Hash Sha256" Hash="94111DE210F6B3B48DDA16B3422F0F9180E30BCB5765B6858C451D1D89196199" />
    <Deny ID="ID_DENY_ATILLK_4" FriendlyName="atillk64\11a9787831ac4f0657aeb5e7019c23acc39d8833faf28f85bd10d7590ea4cc5f Hash Page Sha1" Hash="E66E7DAA23A6F85459AB4F4CE6D74A4973E832B1" />
    <Deny ID="ID_DENY_ATILLK_5" FriendlyName="atillk64\11a9787831ac4f0657aeb5e7019c23acc39d8833faf28f85bd10d7590ea4cc5f Hash Page Sha256" Hash="29245340F8DCCC90F6CFA295EEE25C77C658965825DF27A501A5D951E7B8ECC4" />
    <Deny ID="ID_DENY_ATILLK_6" FriendlyName="atillk64\248dcc72d799d350d30b0f9e9ae93389cdcd11b43e38949ba9be414400657587 Hash Sha1" Hash="0116793210498AC83727C7B902FDBAE0FE76BB7E" />
    <Deny ID="ID_DENY_ATILLK_7" FriendlyName="atillk64\248dcc72d799d350d30b0f9e9ae93389cdcd11b43e38949ba9be414400657587 Hash Sha256" Hash="248DCC72D799D350D30B0F9E9AE93389CDCD11B43E38949BA9BE414400657587" />
    <Deny ID="ID_DENY_ATILLK_8" FriendlyName="atillk64\321cc3f24a518c70fb537ee9472b1777d05727c649d5b6538082a971c40ddcbe Hash Sha1" Hash="005C8117D7BF2E73E6139D3C91F24B70E22A844E" />
    <Deny ID="ID_DENY_ATILLK_9" FriendlyName="atillk64\321cc3f24a518c70fb537ee9472b1777d05727c649d5b6538082a971c40ddcbe Hash Sha256" Hash="73A0CCF3E32C262142BDE91C19F5B1F395878783F157C6BED5874EDE5A3AFDDD" />
    <Deny ID="ID_DENY_ATILLK_A" FriendlyName="atillk64\321cc3f24a518c70fb537ee9472b1777d05727c649d5b6538082a971c40ddcbe Hash Page Sha1" Hash="CC6B5B9351457B5ED2FC46F4E7CEE62F5979D7C6" />
    <Deny ID="ID_DENY_ATILLK_B" FriendlyName="atillk64\321cc3f24a518c70fb537ee9472b1777d05727c649d5b6538082a971c40ddcbe Hash Page Sha256" Hash="D96511C6D3E244A892D80C5950256E158A3132B2FB25700F334EA0DA4FDE5B21" />
    <Deny ID="ID_DENY_ATILLK_C" FriendlyName="atillk64\4780da56667e01cdd7eff83c23c772d68deb4d9fdb69d5302f556bb424151f51 Hash Sha1" Hash="6AE93DA169BFB914109E584371FD05914795F460" />
    <Deny ID="ID_DENY_ATILLK_D" FriendlyName="atillk64\4780da56667e01cdd7eff83c23c772d68deb4d9fdb69d5302f556bb424151f51 Hash Sha256" Hash="4780DA56667E01CDD7EFF83C23C772D68DEB4D9FDB69D5302F556BB424151F51" />
    <Deny ID="ID_DENY_ATILLK_E" FriendlyName="atillk64\61580186311f6260c6de7fa5bf9242d74687aa1c5c9fdf9d9a48eb46d67d636f Hash Sha1" Hash="1FD4D8B13E73604E2BD8E14AC7BB4657CA17A5B3" />
    <Deny ID="ID_DENY_ATILLK_F" FriendlyName="atillk64\61580186311f6260c6de7fa5bf9242d74687aa1c5c9fdf9d9a48eb46d67d636f Hash Sha256" Hash="61580186311F6260C6DE7FA5BF9242D74687AA1C5C9FDF9D9A48EB46D67D636F" />
    <Deny ID="ID_DENY_ATILLK_10" FriendlyName="atillk64\6c6c5e35accc37c928d721c800476ccf4c4b5b06a1b0906dc5ff4df71ff50943 Hash Sha1" Hash="0358BCBA83349CB23EA44D5C36B9E22ADAEC8D94" />
    <Deny ID="ID_DENY_ATILLK_11" FriendlyName="atillk64\6c6c5e35accc37c928d721c800476ccf4c4b5b06a1b0906dc5ff4df71ff50943 Hash Sha256" Hash="2952AE305F9E206BB0B6D7986F2B6942656C310F9D201CF2E2DD6E961C18804E" />
    <Deny ID="ID_DENY_ATILLK_12" FriendlyName="atillk64\6c6c5e35accc37c928d721c800476ccf4c4b5b06a1b0906dc5ff4df71ff50943 Hash Page Sha1" Hash="3FCFCDCBC6AD3320E561AEB634492D2BDB38FA27" />
    <Deny ID="ID_DENY_ATILLK_13" FriendlyName="atillk64\6c6c5e35accc37c928d721c800476ccf4c4b5b06a1b0906dc5ff4df71ff50943 Hash Page Sha256" Hash="CCBE842ECDB34D64B1CD7AA558CE723DB66F30D431DF4BF4C5F6178952FF309C" />
    <Deny ID="ID_DENY_ATILLK_14" FriendlyName="atillk64\83ffcfaf429c8368194d7b73f7729d97d6a3b80fb203d57055f3e4eec8228914 Hash Sha1" Hash="9DCBAA2ECD11D664DC13B8147442B3EB0EE172DB" />
    <Deny ID="ID_DENY_ATILLK_15" FriendlyName="atillk64\83ffcfaf429c8368194d7b73f7729d97d6a3b80fb203d57055f3e4eec8228914 Hash Sha256" Hash="83FFCFAF429C8368194D7B73F7729D97D6A3B80FB203D57055F3E4EEC8228914" />
    <Deny ID="ID_DENY_ATILLK_16" FriendlyName="atillk64\be66f3bbfed7d648cfd110853ddb8cef561f94a45405afc6be06e846b697d2b0 Hash Sha1" Hash="5853E44EA0B6B4E9844651AA57D631193C1ED0F0" />
    <Deny ID="ID_DENY_ATILLK_17" FriendlyName="atillk64\be66f3bbfed7d648cfd110853ddb8cef561f94a45405afc6be06e846b697d2b0 Hash Sha256" Hash="BE66F3BBFED7D648CFD110853DDB8CEF561F94A45405AFC6BE06E846B697D2B0" />
    <Deny ID="ID_DENY_ATILLK_18" FriendlyName="atillk64\c825a47817399e988912bb75106befaefae0babc0743a7e32b46f17469c78cad Hash Sha1" Hash="2E3CF3678D476420696EC7DF46B08D4D24D25644" />
    <Deny ID="ID_DENY_ATILLK_19" FriendlyName="atillk64\c825a47817399e988912bb75106befaefae0babc0743a7e32b46f17469c78cad Hash Sha256" Hash="C9B8ECD0657FDA14476920FE47783BD8A951D7A4A640935D9199B4A7AE4B8B69" />
    <Deny ID="ID_DENY_ATILLK_1A" FriendlyName="atillk64\c825a47817399e988912bb75106befaefae0babc0743a7e32b46f17469c78cad Hash Page Sha1" Hash="5F70E4EA95468C0D651794665D9488A18991E54F" />
    <Deny ID="ID_DENY_ATILLK_1B" FriendlyName="atillk64\c825a47817399e988912bb75106befaefae0babc0743a7e32b46f17469c78cad Hash Page Sha256" Hash="A711C1C437BCB9916D203D7ED196446E976B346D3D635D0E75C9C2713694667E" />
    <Deny ID="ID_DENY_ATILLK_1C" FriendlyName="atillk64\d2182b6ef3255c7c1a69223cd3c2d68eb8ba3112ce433cd49cd803dc76412d4b Hash Sha1" Hash="FE625D7AD61B93EA376B4924FA088CB22B3FA28D" />
    <Deny ID="ID_DENY_ATILLK_1D" FriendlyName="atillk64\d2182b6ef3255c7c1a69223cd3c2d68eb8ba3112ce433cd49cd803dc76412d4b Hash Sha256" Hash="FB19F241DDAE74EC4A0F87DFF025EC68DC809F9DD883649C0E58822DE28E6F1B" />
    <Deny ID="ID_DENY_ATILLK_1E" FriendlyName="atillk64\d2182b6ef3255c7c1a69223cd3c2d68eb8ba3112ce433cd49cd803dc76412d4b Hash Page Sha1" Hash="6698BB12B9D9D511C018D9EA8F70C61A03A041AD" />
    <Deny ID="ID_DENY_ATILLK_1F" FriendlyName="atillk64\d2182b6ef3255c7c1a69223cd3c2d68eb8ba3112ce433cd49cd803dc76412d4b Hash Page Sha256" Hash="47F6DFDDDA4F164448F14C0417839DB860BC4E9C4679BE3980B05BE920462870" />
    <Deny ID="ID_DENY_BANDAI_SHA1" FriendlyName="bandainamcoonline.sys\7ec93f34eb323823eb199fbf8d06219086d517d0e8f4b9e348d7afd41ec9fd5d Hash Sha1" Hash="0F780B7ADA5DD8464D9F2CC537D973F5AC804E9C" />
    <Deny ID="ID_DENY_BANDAI_SHA256" FriendlyName="bandainamcoonline.sys\7ec93f34eb323823eb199fbf8d06219086d517d0e8f4b9e348d7afd41ec9fd5d Hash Sha256" Hash="7FD788358585E0B863328475898BB4400ED8D478466D1B7F5CC0252671456CC8" />
    <Deny ID="ID_DENY_BANDAI_SHA1_PAGE" FriendlyName="bandainamcoonline.sys\7ec93f34eb323823eb199fbf8d06219086d517d0e8f4b9e348d7afd41ec9fd5d Hash Page Sha1" Hash="EA360A9F23BB7CF67F08B88E6A185A699F0C5410" />
    <Deny ID="ID_DENY_BANDAI_SHA256_PAGE" FriendlyName="bandainamcoonline.sys\7ec93f34eb323823eb199fbf8d06219086d517d0e8f4b9e348d7afd41ec9fd5d Hash Page Sha256" Hash="BB83738210650E09307CE869ACA9BFA251024D3C47B1006B94FCE2846313F56E" />
    <Deny ID="ID_DENY_BS_RCIO64_SHA1" FriendlyName="BS_RCIO64 73327429c505d8c5fd690a8ec019ed4fd5a726b607cabe71509111c7bfe9fc7e Hash Sha1" Hash="4BFE9E5A5A25B7CDE6C81EBE31ED4ABEB5147FAF" />
    <Deny ID="ID_DENY_BS_RCIO64_SHA256" FriendlyName="BS_RCIO64 73327429c505d8c5fd690a8ec019ed4fd5a726b607cabe71509111c7bfe9fc7e Hash Sha256" Hash="0381632CD236CD94FA9E64CCC958516AC50F9437F99092E231A607B1E6BE6CF8" />
    <Deny ID="ID_DENY_BS_RCIO64_SHA1_PAGE" FriendlyName="BS_RCIO64 5651466512138240\73327429c505d8c5fd690a8ec019ed4fd5a726b607cabe71509111c7bfe9fc7e Hash Page Sha1" Hash="C28B640BECA5E2834D2A373F139869CC309F6631" />
    <Deny ID="ID_DENY_BS_RCIO64_SHA256_PAGE" FriendlyName="BS_RCIO64 5651466512138240\73327429c505d8c5fd690a8ec019ed4fd5a726b607cabe71509111c7bfe9fc7e Hash Page Sha256" Hash="9378F7DFF94D9409D38FA1A125C52734D6BAEA90913FC3CEE2659FD36AB0DA29" />
    <Deny ID="ID_DENY_IOBITUNLOCKER_2" FriendlyName="IoBitUnlocker\0209934453e9ce60b1a5e4b85412e6faf29127987505bfb1185fc9296c578b09 Hash Sha1" Hash="0AA57861BA15DB6DC026C87F503FBE9635A29629" />
    <Deny ID="ID_DENY_IOBITUNLOCKER_3" FriendlyName="IoBitUnlocker\0209934453e9ce60b1a5e4b85412e6faf29127987505bfb1185fc9296c578b09 Hash Sha256" Hash="14E6F0D5F93DC52471AF549DE1C91C1FC1D9DBD175D5932C17E58E6B186694C9" />
    <Deny ID="ID_DENY_IOBITUNLOCKER_4" FriendlyName="IoBitUnlocker\0aff83f28d70f425539fee3d6a780210d0406264f8a4eb124e32b074e8ffd556 Hash Sha1" Hash="6093DCBB29DF29D365286D8D86B80E1027CF7D0A" />
    <Deny ID="ID_DENY_IOBITUNLOCKER_5" FriendlyName="IoBitUnlocker\0aff83f28d70f425539fee3d6a780210d0406264f8a4eb124e32b074e8ffd556 Hash Sha256" Hash="E73BB03D54B40035558DF2E990367A1C4E9C1EF8E980DF6380A63F3BC23E6740" />
    <Deny ID="ID_DENY_IOBITUNLOCKER_6" FriendlyName="IoBitUnlocker\0aff83f28d70f425539fee3d6a780210d0406264f8a4eb124e32b074e8ffd556 Hash Page Sha1" Hash="479D4A03B2A6B96ABDA21483DB0B2A69C42B4700" />
    <Deny ID="ID_DENY_IOBITUNLOCKER_7" FriendlyName="IoBitUnlocker\0aff83f28d70f425539fee3d6a780210d0406264f8a4eb124e32b074e8ffd556 Hash Page Sha256" Hash="75ADF08F18E424728B8732D4BD1E70B75DAB7DE3E67D127DAD46934774A38F3F" />
    <Deny ID="ID_DENY_IOBITUNLOCKER_8" FriendlyName="IoBitUnlocker\103d7e0387358f7b44a2e4c2da483fe0e854b720b6544f914caeb5be9dccfb93 Hash Sha1" Hash="5A45FDDB943C698C99739BBA9E4157C3045FF644" />
    <Deny ID="ID_DENY_IOBITUNLOCKER_9" FriendlyName="IoBitUnlocker\103d7e0387358f7b44a2e4c2da483fe0e854b720b6544f914caeb5be9dccfb93 Hash Sha256" Hash="103D7E0387358F7B44A2E4C2DA483FE0E854B720B6544F914CAEB5BE9DCCFB93" />
    <Deny ID="ID_DENY_IOBITUNLOCKER_A" FriendlyName="IoBitUnlocker\11bc55c0771d692279298211c1d434c04168e7c7f7c4328bfd600215b88c819b Hash Sha1" Hash="7FB190DFA6CC3E34937991C839353331998B532F" />
    <Deny ID="ID_DENY_IOBITUNLOCKER_B" FriendlyName="IoBitUnlocker\11bc55c0771d692279298211c1d434c04168e7c7f7c4328bfd600215b88c819b Hash Sha256" Hash="1FE70267698BA60012CA4C2C0F21325236BAFC7B42FA977A09AFA6A0C5ED3784" />
    <Deny ID="ID_DENY_IOBITUNLOCKER_C" FriendlyName="IoBitUnlocker\11bc55c0771d692279298211c1d434c04168e7c7f7c4328bfd600215b88c819b Hash Page Sha1" Hash="D20076402DB9B38449FD52CA75E4A0BE2D567E30" />
    <Deny ID="ID_DENY_IOBITUNLOCKER_D" FriendlyName="IoBitUnlocker\11bc55c0771d692279298211c1d434c04168e7c7f7c4328bfd600215b88c819b Hash Page Sha256" Hash="2082040EAF4E10BEF875396E50F8F9340D94D6DE7B61556B21403CF6E2A702E4" />
    <Deny ID="ID_DENY_IOBITUNLOCKER_E" FriendlyName="IoBitUnlocker\29cf2d374d7afe009bbf60ba5f50db7016314de682cf3a6f90c0996810c821ef Hash Sha1" Hash="9CFE5FDBDD41C4D4E026A588FC8DF412CC4620FC" />
    <Deny ID="ID_DENY_IOBITUNLOCKER_F" FriendlyName="IoBitUnlocker\29cf2d374d7afe009bbf60ba5f50db7016314de682cf3a6f90c0996810c821ef Hash Sha256" Hash="C025EC72D4B8297EE2E0FAC7747F39D256AAD26FBF0554E3729E3E381BC6EA86" />
    <Deny ID="ID_DENY_IOBITUNLOCKER_10" FriendlyName="IoBitUnlocker\4e1d75684923974c0333d33b789c5d1569ba5a39e8fa6816e825eadaeaf51a2a Hash Sha1" Hash="03358C32022F0C9811D40A0BDF2BD58CAB170442" />
    <Deny ID="ID_DENY_IOBITUNLOCKER_11" FriendlyName="IoBitUnlocker\4e1d75684923974c0333d33b789c5d1569ba5a39e8fa6816e825eadaeaf51a2a Hash Sha256" Hash="4E1D75684923974C0333D33B789C5D1569BA5A39E8FA6816E825EADAEAF51A2A" />
    <Deny ID="ID_DENY_IOBITUNLOCKER_12" FriendlyName="IoBitUnlocker\5ea5f339b2e40dea57378626790ca7e9a82777aacdada5bc61ebb7d82043fa07 Hash Sha1" Hash="3A54BE5A75468B20EF8E182A7AF6E6F314A5D633" />
    <Deny ID="ID_DENY_IOBITUNLOCKER_13" FriendlyName="IoBitUnlocker\5ea5f339b2e40dea57378626790ca7e9a82777aacdada5bc61ebb7d82043fa07 Hash Sha256" Hash="AFC1873543735D6299543D91D7C09EE1FA1588FF9F131BA4AEDCD32B984C8EC1" />
    <Deny ID="ID_DENY_IOBITUNLOCKER_14" FriendlyName="IoBitUnlocker\5ea5f339b2e40dea57378626790ca7e9a82777aacdada5bc61ebb7d82043fa07 Hash Page Sha1" Hash="AB531FCA04B89F8696B7064A3D00311B4093B704" />
    <Deny ID="ID_DENY_IOBITUNLOCKER_15" FriendlyName="IoBitUnlocker\5ea5f339b2e40dea57378626790ca7e9a82777aacdada5bc61ebb7d82043fa07 Hash Page Sha256" Hash="778C2B033BF6B1E1C2CB9C68902E2662BB427BE03B612048B989E36BD1A292BD" />
    <Deny ID="ID_DENY_IOBITUNLOCKER_16" FriendlyName="IoBitUnlocker\698353791261d5a9ca3245ae8f86334493df554690ec7962895c2affe4050db2 Hash Sha1" Hash="3221D04A27D9BA6646668BEA02FE9538E6EEC58D" />
    <Deny ID="ID_DENY_IOBITUNLOCKER_17" FriendlyName="IoBitUnlocker\698353791261d5a9ca3245ae8f86334493df554690ec7962895c2affe4050db2 Hash Sha256" Hash="CE12D9C2996A6626F6FC68415F8A94851B3468C9C62CC408DBDC0227CF77939D" />
    <Deny ID="ID_DENY_IOBITUNLOCKER_18" FriendlyName="IoBitUnlocker\698353791261d5a9ca3245ae8f86334493df554690ec7962895c2affe4050db2 Hash Page Sha1" Hash="38262C3B3279CBBBB7993011A6F5DC1F73DF5B02" />
    <Deny ID="ID_DENY_IOBITUNLOCKER_19" FriendlyName="IoBitUnlocker\698353791261d5a9ca3245ae8f86334493df554690ec7962895c2affe4050db2 Hash Page Sha256" Hash="20E6A8AAC84E18C6FA90DFC0C8DCBB811BA76066495C296F4B076A9E324D7E46" />
    <Deny ID="ID_DENY_IOBITUNLOCKER_1A" FriendlyName="IoBitUnlocker\7c12d9151c57fef87d6e1c89f88bd1602bf64d215533ad3cd627ddefbd220075 Hash Sha1" Hash="B2DD3C2E1748A4FC6CD691CCC5594C9B5EE56D6A" />
    <Deny ID="ID_DENY_IOBITUNLOCKER_1B" FriendlyName="IoBitUnlocker\7c12d9151c57fef87d6e1c89f88bd1602bf64d215533ad3cd627ddefbd220075 Hash Sha256" Hash="7C12D9151C57FEF87D6E1C89F88BD1602BF64D215533AD3CD627DDEFBD220075" />
    <Deny ID="ID_DENY_IOBITUNLOCKER_1C" FriendlyName="IoBitUnlocker\831b62145c21557928a694e6261e830f1545b5756ad51dcbd28a15fde570f4e7 Hash Sha1" Hash="6954D40B1E566C42A720EE5C8E32D73CDB7DC36F" />
    <Deny ID="ID_DENY_IOBITUNLOCKER_1D" FriendlyName="IoBitUnlocker\831b62145c21557928a694e6261e830f1545b5756ad51dcbd28a15fde570f4e7 Hash Sha256" Hash="A298CC166FE3BAC9E9E4CAE967F8E3BB41B08A6A97117CA4F8E5C4F198DBCFFA" />
    <Deny ID="ID_DENY_IOBITUNLOCKER_1E" FriendlyName="IoBitUnlocker\831b62145c21557928a694e6261e830f1545b5756ad51dcbd28a15fde570f4e7 Hash Page Sha1" Hash="D08B95DCAF401EBF8DD96F8DFD8EA589117C3595" />
    <Deny ID="ID_DENY_IOBITUNLOCKER_1F" FriendlyName="IoBitUnlocker\831b62145c21557928a694e6261e830f1545b5756ad51dcbd28a15fde570f4e7 Hash Page Sha256" Hash="3CDECE4649556EB5DBF4F6EE2CC42A4032903E17268722B71EED48CA00EF5754" />
    <Deny ID="ID_DENY_IOBITUNLOCKER_20" FriendlyName="IoBitUnlocker\88d2a2262e7789180dfefeab0751d28814b87eb9d3b4bc201cc1d18cbc35e0cf Hash Sha1" Hash="9BBDD40E48A2732B8383EBD24518B1734BC938BC" />
    <Deny ID="ID_DENY_IOBITUNLOCKER_21" FriendlyName="IoBitUnlocker\88d2a2262e7789180dfefeab0751d28814b87eb9d3b4bc201cc1d18cbc35e0cf Hash Sha256" Hash="392741DAD8EE5730B54637BCA112C6D15E71623A5B26C9079BE58AA432B598CA" />
    <Deny ID="ID_DENY_IOBITUNLOCKER_22" FriendlyName="IoBitUnlocker\88d2a2262e7789180dfefeab0751d28814b87eb9d3b4bc201cc1d18cbc35e0cf Hash Page Sha1" Hash="B8F5C35E293E6F5B092F5DB8EE24F19D6D58DB21" />
    <Deny ID="ID_DENY_IOBITUNLOCKER_23" FriendlyName="IoBitUnlocker\88d2a2262e7789180dfefeab0751d28814b87eb9d3b4bc201cc1d18cbc35e0cf Hash Page Sha256" Hash="D7BF8AC9C69347006236AB30B174DDECC563FF3F73DF707DA592D699041FE34C" />
    <Deny ID="ID_DENY_IOBITUNLOCKER_24" FriendlyName="IoBitUnlocker\969f73a1da331e43777a3c1f08ec0734e7cf8c8136e5d469cbad8035fbfe3b47 Hash Sha1" Hash="F96BC840DDE4D24FCD3F2F4712FDB8143AEEDF99" />
    <Deny ID="ID_DENY_IOBITUNLOCKER_25" FriendlyName="IoBitUnlocker\969f73a1da331e43777a3c1f08ec0734e7cf8c8136e5d469cbad8035fbfe3b47 Hash Sha256" Hash="198A4DC1C4BD7EFF31FF4D1952A592170B25BFB5FEDCD9D5D4C4FD3707337E42" />
    <Deny ID="ID_DENY_IOBITUNLOCKER_26" FriendlyName="IoBitUnlocker\969f73a1da331e43777a3c1f08ec0734e7cf8c8136e5d469cbad8035fbfe3b47 Hash Page Sha1" Hash="5CA0A2BD84A064E2E5A24F66DA24197512AC032E" />
    <Deny ID="ID_DENY_IOBITUNLOCKER_27" FriendlyName="IoBitUnlocker\969f73a1da331e43777a3c1f08ec0734e7cf8c8136e5d469cbad8035fbfe3b47 Hash Page Sha256" Hash="BE0DB1AA6FC1CCCEDB2859ABFC07F67E4D072FD151CC90A9CCA2301742E13BEE" />
    <Deny ID="ID_DENY_IOBITUNLOCKER_28" FriendlyName="IoBitUnlocker\a7416a7d9573f1d8873ec1b3109ec683e85412ba817e0001c3ab2d2c92043d4d Hash Sha1" Hash="68EC1D226DC2314C5F2ECC949C662B1F4D504824" />
    <Deny ID="ID_DENY_IOBITUNLOCKER_29" FriendlyName="IoBitUnlocker\a7416a7d9573f1d8873ec1b3109ec683e85412ba817e0001c3ab2d2c92043d4d Hash Sha256" Hash="773DC9256C4EADA182A5B41179A522740BA994EFF30F868641BC91574705B8E3" />
    <Deny ID="ID_DENY_IOBITUNLOCKER_2A" FriendlyName="IoBitUnlocker\a7416a7d9573f1d8873ec1b3109ec683e85412ba817e0001c3ab2d2c92043d4d Hash Page Sha1" Hash="90AE983059B8969DEA44147806B976A93C65541E" />
    <Deny ID="ID_DENY_IOBITUNLOCKER_2B" FriendlyName="IoBitUnlocker\a7416a7d9573f1d8873ec1b3109ec683e85412ba817e0001c3ab2d2c92043d4d Hash Page Sha256" Hash="BC484B73361100D2EDD14C58A79316F42EA09DC56EFB25E0F31DC551F2BE76F7" />
    <Deny ID="ID_DENY_IOBITUNLOCKER_2C" FriendlyName="IoBitUnlocker\c2e1a3dd0dfb3477a3e855368b23d12b8818df8fa3bc3508abf069a0873d6bf8 Hash Sha1" Hash="D7FE09F414EA3A9F2B979C6D883079F0ED563A4B" />
    <Deny ID="ID_DENY_IOBITUNLOCKER_2D" FriendlyName="IoBitUnlocker\c2e1a3dd0dfb3477a3e855368b23d12b8818df8fa3bc3508abf069a0873d6bf8 Hash Sha256" Hash="89D96210BF36A88ACB14086C96E916B790D21B7ADF81D0907C823CA2AFBE0CE3" />
    <Deny ID="ID_DENY_IOBITUNLOCKER_2E" FriendlyName="IoBitUnlocker\c2e1a3dd0dfb3477a3e855368b23d12b8818df8fa3bc3508abf069a0873d6bf8 Hash Page Sha1" Hash="66B089368E0AB29137505D7B848B835CEC4A05F6" />
    <Deny ID="ID_DENY_IOBITUNLOCKER_2F" FriendlyName="IoBitUnlocker\c2e1a3dd0dfb3477a3e855368b23d12b8818df8fa3bc3508abf069a0873d6bf8 Hash Page Sha256" Hash="98D3783A58611FFA9953CDC4318F3A4A95C68C6E31E3379CC5615FC743D0E192" />
    <Deny ID="ID_DENY_IOBITUNLOCKER_30" FriendlyName="IoBitUnlocker\e41d4fd99252fcf9aea529b6e148b311aa26a4ab04f6b79cce4cd19c61db0c87 Hash Sha1" Hash="F96942DE94A05F1EE53F49CA4E806790C0AA780E" />
    <Deny ID="ID_DENY_IOBITUNLOCKER_31" FriendlyName="IoBitUnlocker\e41d4fd99252fcf9aea529b6e148b311aa26a4ab04f6b79cce4cd19c61db0c87 Hash Sha256" Hash="5F4B06327FFBEC2A59725A57C357DAF54EA2F58AEF5DC7FF3F5370168AF09FB0" />
    <Deny ID="ID_DENY_IOBITUNLOCKER_32" FriendlyName="IoBitUnlocker\e41d4fd99252fcf9aea529b6e148b311aa26a4ab04f6b79cce4cd19c61db0c87 Hash Page Sha1" Hash="0F36E2D38C26266AD1DF7E90C81BACF62065A5E4" />
    <Deny ID="ID_DENY_IOBITUNLOCKER_33" FriendlyName="IoBitUnlocker\e41d4fd99252fcf9aea529b6e148b311aa26a4ab04f6b79cce4cd19c61db0c87 Hash Page Sha256" Hash="D8B64F61F2062850EE3E66167A5DCDC268B320FF8088B3278BAE2F17E57F4B31" />
    <Deny ID="ID_DENY_CAPCOM_SHA1" FriendlyName="capcom.sys Hash Sha1" Hash="1D1CAFC73C97C6BCD2331F8777D90FDCA57125A3" />
    <Deny ID="ID_DENY_CAPCOM_SHA256" FriendlyName="capcom.sys Hash Sha256" Hash="FAA08CB609A5B7BE6BFDB61F1E4A5E8ADF2F5A1D2492F262483DF7326934F5D4" />
    <Deny ID="ID_DENY_CAPCOM_SHA1_PAGE" FriendlyName="capcom.sys Hash Page Sha1" Hash="69006FBBD1B150FB9404867A5BCDC04FE0FC1BAD" />
    <Deny ID="ID_DENY_CAPCOM_SHA256_PAGE" FriendlyName="capcom.sys Hash Page Sha256" Hash="42589C7CE89941060465096C4661654B43E38C1F9D05D66239825E8FCCF52705" />
    <Deny ID="ID_DENY_DBUTIL_32_SHA1" FriendlyName="32-bit dell dbutil.sys Hash Sha1" Hash="485C0B9710A196C7177B99EE95E5DDB35B26DDD1" />
    <Deny ID="ID_DENY_DBUTIL_32_SHA256" FriendlyName="32-bit dell dbutil.sys Hash Sha256" Hash="96EE751F7C38731E97773E07E0F13F4DD361AF9AAA1D30B41652C2E6EFC3FB3E" />
    <Deny ID="ID_DENY_DBUTIL_32_SHA1_PAGE" FriendlyName="32-bit dell dbutil.sys Hash Page Sha1" Hash="50E2BC41F0186FDCE970B80E2A2CB296353AF586" />
    <Deny ID="ID_DENY_DBUTIL_32_SHA256_PAGE" FriendlyName="32-bit dell dbutil.sys Hash Page Sha256" Hash="862A262E7AF92599E6B10035B8A3C988078B92BA791A6230A85FD6D1ECEC88C7" />
    <Deny ID="ID_DENY_DBUTIL_64_SHA1" FriendlyName="64-bit dell dbutil.sys Hash Sha1" Hash="E3C1DD569AA4758552566B0213EE4D1FE6382C4B" />
    <Deny ID="ID_DENY_DBUTIL_64_SHA256" FriendlyName="64-bit dell dbutil.sys Hash Sha256" Hash="FE4270A61DBED978C28B2915FCC2826D011148DCB7533FA8BD072DDCE5944CEF" />
    <Deny ID="ID_DENY_DBUTIL_64_SHA1_PAGE" FriendlyName="64-bit dell dbutil.sys Hash Page Sha1" Hash="E09B5E80805B8FE853EA27D8773E31BFF262E3F7" />
    <Deny ID="ID_DENY_DBUTIL_64_SHA256_PAGE" FriendlyName="64-bit dell dbutil.sys Hash Page Sha256" Hash="7E2AD3D6D76F4FCD4583B865FFC12DE6C44FC16CBCBB81D480CB067F2A860422" />
    <Deny ID="ID_DENY_FIDDRV_SHA1" FriendlyName="fiddrv.sys Hash Sha1" Hash="8CC8974A05E81678E3D28ACFE434E7804ABD019C" />
    <Deny ID="ID_DENY_FIDDRV_SHA256" FriendlyName="fiddrv.sys Hash Sha256" Hash="97B976F7E7E5DF7AF0781BBBB33CB5F3F7A59EFDD07995253B31DE8123352A67" />
    <Deny ID="ID_DENY_FIDDRV_SHA1_PAGE" FriendlyName="fiddrv.sys Hash Page Sha1" Hash="282BB241BDA5C4C1B8EB9BF56D018896649CA0E1" />
    <Deny ID="ID_DENY_FIDDRV_SHA256_PAGE" FriendlyName="fiddrv.sys Hash Page Sha256" Hash="1ED9DA2DA2539284404E0701E6BA3C9EB37BE10353E826F425A194D247B8B7CE" />
    <Deny ID="ID_DENY_FIDDRV64_SHA1" FriendlyName="fiddrv64.sys Hash Sha1" Hash="10E15BA8FF8ED926DDD3636CEC66A0F08C9860A4" />
    <Deny ID="ID_DENY_FIDDRV64_SHA256" FriendlyName="fiddrv64.sys Hash Sha256" Hash="FEEF191064D18B6FB63B7299415D1B1E2EC8FCDD742854AA96268D0EC4A0F7B6" />
    <Deny ID="ID_DENY_FIDDRV64_SHA1_PAGE" FriendlyName="fiddrv64.sys Hash Page Sha1" Hash="E4436C8C42BA5FFABD58A3B2256F6E86CCC907AB" />
    <Deny ID="ID_DENY_FIDDRV64_SHA256_PAGE" FriendlyName="fiddrv64.sys Hash Page Sha256" Hash="2D48414647A7F9DEA30F19074EBF8F17E55E9031B8604794CEB88369C8C52532" />
    <Deny ID="ID_DENY_FIDPCIDRV_SHA1" FriendlyName="fidpcidrv.sys Hash Sha1" Hash="08596732304351B311970FF96B21F451F23B1E25" />
    <Deny ID="ID_DENY_FIDPCIDRV_SHA256" FriendlyName="fidpcidrv.sys Hash Sha256" Hash="7B7E0E1453E733050B586A6FAC91883DBB85AE0775C84C4CEB967CFC9B4EFD10" />
    <Deny ID="ID_DENY_FIDPCIDRV_SHA1_PAGE" FriendlyName="fidpcidrv.sys Hash Page Sha1" Hash="7838FB56FDAB816BC1900A4720EEA2FC9972EF7A" />
    <Deny ID="ID_DENY_FIDPCIDRV_SHA256_PAGE" FriendlyName="fidpcidrv.sys Hash Page Sha256" Hash="0893E186E236315FE78A7EF41ED71617E75D90D2D14FE93911E0D9344BEAF69F" />
    <Deny ID="ID_DENY_FIDPCIDRV64_SHA1" FriendlyName="fidpcidrv64.sys Hash Sha1" Hash="4789B910023A667BEE70FF1F1A8F369CFFB10FE8" />
    <Deny ID="ID_DENY_FIDPCIDRV64_SHA256" FriendlyName="fidpcidrv64.sys Hash Sha256" Hash="7FB0F6FC5BDD22D53F8532CB19DA666A77A66FFB1CF3919A2E22B66C13B415B7" />
    <Deny ID="ID_DENY_FIDPCIDRV64_SHA1_PAGE" FriendlyName="fidpcidrv64.sys Hash Page Sha1" Hash="EEFF4EC4EBC12C6ACD2C930DC2EAAF877CFEC7EC" />
    <Deny ID="ID_DENY_FIDPCIDRV64_SHA256_PAGE" FriendlyName="fidpcidrv64.sys Hash Page Sha256" Hash="B98E008DFEA10EC74C89D08F12F31C12F52234BE6FFFF06B6B9E749BFEA6CBED" />
    <Deny ID="ID_DENY_GLCKIO2_SHA1" FriendlyName="GLCKIO2.sys Hash Sha1" Hash="D99B80B3269D735CAC43AF5E43483E64CA7961C3" />
    <Deny ID="ID_DENY_GLCKIO2_SHA256" FriendlyName="GLCKIO2.sys Hash Sha256" Hash="47DBA240967FD0088BE618163672DFBDDF0138178CCCD45B54037F622B221220" />
    <Deny ID="ID_DENY_GLCKIO2_SHA1_PAGE" FriendlyName="GLCKIO2.sys Hash Page Sha1" Hash="51E0740AAEE5AE76B0095C92908C97B817DB8BEA" />
    <Deny ID="ID_DENY_GLCKIO2_SHA256_PAGE" FriendlyName="GLCKIO2.sys Hash Page Sha256" Hash="E7F011E9857C7DB5AACBD424612CD7E3D12C363FDC8F072DDFAF9E2E5C85F5F3" />
    <Deny ID="ID_DENY_GMER_1" FriendlyName="gmer\4d922fcaf6f6c794218fd2db946a650fe96a6476ebeade84372b0c4defc730d6 Hash Sha1" Hash="483B2E96862C3384E7F8ECED28F83A040367D49B" />
    <Deny ID="ID_DENY_GMER_2" FriendlyName="gmer\4d922fcaf6f6c794218fd2db946a650fe96a6476ebeade84372b0c4defc730d6 Hash Sha256" Hash="4D922FCAF6F6C794218FD2DB946A650FE96A6476EBEADE84372B0C4DEFC730D6" />
    <Deny ID="ID_DENY_GMER_3" FriendlyName="gmer\611223d444872a2ccea59cfa775e29fa0b84e9dc24c24cffe1316691d48d9593 Hash Sha1" Hash="9771F476D64C1E269DC0FCE169C48881D3BD55B5" />
    <Deny ID="ID_DENY_GMER_4" FriendlyName="gmer\611223d444872a2ccea59cfa775e29fa0b84e9dc24c24cffe1316691d48d9593 Hash Sha256" Hash="611223D444872A2CCEA59CFA775E29FA0B84E9DC24C24CFFE1316691D48D9593" />
    <Deny ID="ID_DENY_GMER_5" FriendlyName="gmer\95707b3d009cd749a4352e59e4f1b1a4b291a02066bd45c3c338fa7591749914 Hash Sha1" Hash="788652354009D1DAD75660F5FC7ED583C898AB8E" />
    <Deny ID="ID_DENY_GMER_6" FriendlyName="gmer\95707b3d009cd749a4352e59e4f1b1a4b291a02066bd45c3c338fa7591749914 Hash Sha256" Hash="95707B3D009CD749A4352E59E4F1B1A4B291A02066BD45C3C338FA7591749914" />
    <Deny ID="ID_DENY_GVCIDRV64_SHA1" FriendlyName="GVCIDrv64.sys Hash Sha1" Hash="4EAE38E9DC262EB7B6EDE4B3D3F4AD068933845E" />
    <Deny ID="ID_DENY_GVCIDRV64_SHA256" FriendlyName="GVCIDrv64.sys Hash Sha256" Hash="2FF09BB919A9909068166C30322C4E904BEFEBA5429E9A11D011297FB8A73C07" />
    <Deny ID="ID_DENY_GVCIDRV64_SHA1_PAGE" FriendlyName="GVCIDrv64.sys Hash Page Sha1" Hash="6980122AEF4E2D5D7A6DDDB6DA76A166C460E0A1" />
    <Deny ID="ID_DENY_GVCIDRV64_SHA256_PAGE" FriendlyName="GVCIDrv64.sys Hash Page Sha256" Hash="A69247025DD32DC15E06FEE362B494BCC6105D34B8D7091F7EC3D9000BD71501" />
    <Deny ID="ID_DENY_WINFLASH64_SHA1" FriendlyName="WinFlash64.sys Hash Sha1" Hash="DA21F5889F8374C3961856D681ADEC3D663D2964" />
    <Deny ID="ID_DENY_WINFLASH64_SHA256" FriendlyName="WinFlash64.sys Hash Sha256" Hash="F2B51FBEEAD17F5EE34D5B4A3A83C848FB76F8F0E80769212E137A7AA539A3BC" />
    <Deny ID="ID_DENY_WINFLASH64_SHA1_PAGE" FriendlyName="WinFlash64.sys Hash Page Sha1" Hash="C5057A4FD3C9B58F4C9AB9FE356081DF8804BF98" />
    <Deny ID="ID_DENY_WINFLASH64_SHA256_PAGE" FriendlyName="WinFlash64.sys Hash Page Sha256" Hash="C8FA1EC3D03050FBC1AA677F2C0348690521291219E8D2E94F0EA9E9174B9156" />
    <Deny ID="ID_DENY_AMIFLDRV_1" FriendlyName="amifldrv64\26ba58c9af9c8a7aebf222f491f786daa0626be44d34f170fea3623d92828e63 Hash Sha1" Hash="40603C7230D74FF33524A11C0B09F9459E7AFE91" />
    <Deny ID="ID_DENY_AMIFLDRV_2" FriendlyName="amifldrv64\26ba58c9af9c8a7aebf222f491f786daa0626be44d34f170fea3623d92828e63 Hash Sha256" Hash="8B4CBD2BC16071A1868597EC86857DBA1140F981E3E943B0857341DAFFFF4E69" />
    <Deny ID="ID_DENY_AMIFLDRV_3" FriendlyName="amifldrv64\26ba58c9af9c8a7aebf222f491f786daa0626be44d34f170fea3623d92828e63 Hash Page Sha1" Hash="277E2D1EDB93CA4A3066014FB4D597864160A880" />
    <Deny ID="ID_DENY_AMIFLDRV_4" FriendlyName="amifldrv64\26ba58c9af9c8a7aebf222f491f786daa0626be44d34f170fea3623d92828e63 Hash Page Sha256" Hash="2FEFE2C489DD1442FD6DF3C44C6F7357BD942529CBA3782D29C35514AE99F2B8" />
    <Deny ID="ID_DENY_AMIFLDRV_5" FriendlyName="amifldrv64\2f60536b25ba8c9014e4a57d7a9a681bd3189fa414eea88c256d029750e15cae Hash Sha1" Hash="73265B25F043D2520B81A68AD0342BAAFF30E7CF" />
    <Deny ID="ID_DENY_AMIFLDRV_6" FriendlyName="amifldrv64\2f60536b25ba8c9014e4a57d7a9a681bd3189fa414eea88c256d029750e15cae Hash Sha256" Hash="BEE62B69023212A5A964D323F60E5858D7CBD767A39F3D5EF87CACB080B1DBF2" />
    <Deny ID="ID_DENY_AMIFLDRV_7" FriendlyName="amifldrv64\2f60536b25ba8c9014e4a57d7a9a681bd3189fa414eea88c256d029750e15cae Hash Page Sha1" Hash="F58E305CEADEC6FF9666D696982CCCB9C6C121F0" />
    <Deny ID="ID_DENY_AMIFLDRV_8" FriendlyName="amifldrv64\2f60536b25ba8c9014e4a57d7a9a681bd3189fa414eea88c256d029750e15cae Hash Page Sha256" Hash="44CBDEDEA667F59B79D7A03FCBFB6D984C81C354D72CF98E39D68B5FD049E17C" />
    <Deny ID="ID_DENY_AMIFLDRV_9" FriendlyName="amifldrv64\42579a759f3f95f20a2c51d5ac2047a2662a2675b3fb9f46c1ed7f23393a0f00 Hash Sha1" Hash="716BCE2CE697883EBA0C051ED487DE6304D73CD3" />
    <Deny ID="ID_DENY_AMIFLDRV_A" FriendlyName="amifldrv64\42579a759f3f95f20a2c51d5ac2047a2662a2675b3fb9f46c1ed7f23393a0f00 Hash Sha256" Hash="D7841EE6DAC956CC0923368D6722063A19C9FA131E55C6F3B7484CCE78D826F0" />
    <Deny ID="ID_DENY_AMIFLDRV_B" FriendlyName="amifldrv64\42579a759f3f95f20a2c51d5ac2047a2662a2675b3fb9f46c1ed7f23393a0f00 Hash Page Sha1" Hash="FA6273B17C4EAC8915A608E8D25774D8845688E2" />
    <Deny ID="ID_DENY_AMIFLDRV_C" FriendlyName="amifldrv64\42579a759f3f95f20a2c51d5ac2047a2662a2675b3fb9f46c1ed7f23393a0f00 Hash Page Sha256" Hash="6A6A03ECE1DE6F4A8931B221995E07FD2920A56036CC2907DD710385CC2084D0" />
    <Deny ID="ID_DENY_AMIFLDRV_11" FriendlyName="amifldrv64\65c26276cadda7a36f8977d1d01120edb5c3418be2317d501761092d5f9916c9 Hash Sha1" Hash="444CE1608768884D1E9742F80CCF4F53E0AA709D" />
    <Deny ID="ID_DENY_AMIFLDRV_12" FriendlyName="amifldrv64\65c26276cadda7a36f8977d1d01120edb5c3418be2317d501761092d5f9916c9 Hash Sha256" Hash="D052299252F0F0BD70B5E7C46B9CA71A99A052B47F693582BECB6F0D567E8245" />
    <Deny ID="ID_DENY_AMIFLDRV_13" FriendlyName="amifldrv64\65c26276cadda7a36f8977d1d01120edb5c3418be2317d501761092d5f9916c9 Hash Page Sha1" Hash="86586C412916BFEDC46BF83EE590EC0EA404DCD9" />
    <Deny ID="ID_DENY_AMIFLDRV_14" FriendlyName="amifldrv64\65c26276cadda7a36f8977d1d01120edb5c3418be2317d501761092d5f9916c9 Hash Page Sha256" Hash="E41DAE8B3E17E7AEFD17C9476A52704EA27E2BB3C4C35BFD5C440B4F57F2CB48" />
    <Deny ID="ID_DENY_AMIFLDRV_15" FriendlyName="amifldrv64\6c64688444d3e004da77dcfb769d064bb38afceeef7ff915dfc71e60e19ff18a Hash Sha1" Hash="2CEA31932E00C69E6F1BB0B0BF6B16B8C72DC3F6" />
    <Deny ID="ID_DENY_AMIFLDRV_16" FriendlyName="amifldrv64\6c64688444d3e004da77dcfb769d064bb38afceeef7ff915dfc71e60e19ff18a Hash Sha256" Hash="AEF3985CAA213C9E5E0A0D5E75A9A7918A92C08690B5A04A6B14D6372C2DD71C" />
    <Deny ID="ID_DENY_AMIFLDRV_17" FriendlyName="amifldrv64\6c64688444d3e004da77dcfb769d064bb38afceeef7ff915dfc71e60e19ff18a Hash Page Sha1" Hash="54671DD066E925CC7DB600CEBD53F96B234722E1" />
    <Deny ID="ID_DENY_AMIFLDRV_18" FriendlyName="amifldrv64\6c64688444d3e004da77dcfb769d064bb38afceeef7ff915dfc71e60e19ff18a Hash Page Sha256" Hash="94FDAB81FE82761D59C62B62E7EDD9B91E621399F4D2549ACC2F300C35A16717" />
    <Deny ID="ID_DENY_AMIFLDRV_19" FriendlyName="amifldrv64\7c942801884999057aabdc01707570371afdb077979ee2f318c05276123b78e7 Hash Sha1" Hash="169D8790EC6C0415B111411FAF36C9E2626C3E98" />
    <Deny ID="ID_DENY_AMIFLDRV_1A" FriendlyName="amifldrv64\7c942801884999057aabdc01707570371afdb077979ee2f318c05276123b78e7 Hash Sha256" Hash="7CCC32E11372896CC01D7780E1176ED6FEDD17F846001BC3BF78699E4448105F" />
    <Deny ID="ID_DENY_AMIFLDRV_1B" FriendlyName="amifldrv64\7c942801884999057aabdc01707570371afdb077979ee2f318c05276123b78e7 Hash Page Sha1" Hash="E418335277DD6D885A8393C9F101671481127AD5" />
    <Deny ID="ID_DENY_AMIFLDRV_1C" FriendlyName="amifldrv64\7c942801884999057aabdc01707570371afdb077979ee2f318c05276123b78e7 Hash Page Sha256" Hash="D817E0F6FDA1762F2A677019032F2F1890FD993CD45CF480791C61D8E0956053" />
    <Deny ID="ID_DENY_AMIFLDRV_1D" FriendlyName="amifldrv64\990165725debccea7ca15aa4ed7a0e3a2a25b4a72cb309a27c899bd0e4b5148f Hash Sha1" Hash="A6D2266A4E27C71666CE5964570E87A8B0227E91" />
    <Deny ID="ID_DENY_AMIFLDRV_1E" FriendlyName="amifldrv64\990165725debccea7ca15aa4ed7a0e3a2a25b4a72cb309a27c899bd0e4b5148f Hash Sha256" Hash="9022CDD52AA3420757D5C16FE61A4FD4D538FE74981DDF3F29DE00EB7A3BE849" />
    <Deny ID="ID_DENY_AMIFLDRV_1F" FriendlyName="amifldrv64\990165725debccea7ca15aa4ed7a0e3a2a25b4a72cb309a27c899bd0e4b5148f Hash Page Sha1" Hash="9102B5601A65F60907703EE88BBEC9A33E7CB97B" />
    <Deny ID="ID_DENY_AMIFLDRV_20" FriendlyName="amifldrv64\990165725debccea7ca15aa4ed7a0e3a2a25b4a72cb309a27c899bd0e4b5148f Hash Page Sha256" Hash="8CA23D2CFF4E5CFF459F037E680E8EA5233B8FDDC93DB674CC89571B74F42A9E" />
    <Deny ID="ID_DENY_AMIFLDRV_21" FriendlyName="amifldrv64\b95b2d9b29bd25659f1c7ba5a187f8d23cde01162d9b5b1a2c4aea8f64b38441 Hash Sha1" Hash="D240DB93654CE2685D3B903DB809EDCC82322DFC" />
    <Deny ID="ID_DENY_AMIFLDRV_22" FriendlyName="amifldrv64\b95b2d9b29bd25659f1c7ba5a187f8d23cde01162d9b5b1a2c4aea8f64b38441 Hash Sha256" Hash="05E2D2F2B58DA5391598D30D7F5F33AE38CFEB0D9B9AE19B4312DE39C678F301" />
    <Deny ID="ID_DENY_AMIFLDRV_23" FriendlyName="amifldrv64\b95b2d9b29bd25659f1c7ba5a187f8d23cde01162d9b5b1a2c4aea8f64b38441 Hash Page Sha1" Hash="BBD9F4A225866767595F5F829A2AF7436482CDA7" />
    <Deny ID="ID_DENY_AMIFLDRV_24" FriendlyName="amifldrv64\b95b2d9b29bd25659f1c7ba5a187f8d23cde01162d9b5b1a2c4aea8f64b38441 Hash Page Sha256" Hash="4EFB08939946B3A74333BE0D28E654D5B3CCAC3BCD44D7C403140FB40934A6ED" />
    <Deny ID="ID_DENY_AMIFLDRV_25" FriendlyName="amifldrv64\bc7ebd191e0991fd0865a5c956a92e63792a0bb2ff888af43f7a63bb65a22248 Hash Sha1" Hash="2D6CD59A2DF6883BFEC777DDFE7D10C50555E2CB" />
    <Deny ID="ID_DENY_AMIFLDRV_26" FriendlyName="amifldrv64\bc7ebd191e0991fd0865a5c956a92e63792a0bb2ff888af43f7a63bb65a22248 Hash Sha256" Hash="846CC7C9BF2EAB3400E66481568A010FB0DFBAC01416A99258A4BAABF1E10D35" />
    <Deny ID="ID_DENY_AMIFLDRV_27" FriendlyName="amifldrv64\bc7ebd191e0991fd0865a5c956a92e63792a0bb2ff888af43f7a63bb65a22248 Hash Page Sha1" Hash="D71D86D72427C8C6034B77457BDE6FA6AEC7B153" />
    <Deny ID="ID_DENY_AMIFLDRV_28" FriendlyName="amifldrv64\bc7ebd191e0991fd0865a5c956a92e63792a0bb2ff888af43f7a63bb65a22248 Hash Page Sha256" Hash="77ED6F5F604E811EA679547C05DF9BEC941C0202852990141C164B84E633298B" />
    <Deny ID="ID_DENY_AMIFLDRV_29" FriendlyName="amifldrv64\c2fcc0fec64d5647813b84b9049d430406c4c6a7b9f8b725da21bcae2ff12247 Hash Sha1" Hash="DC0D3D244D27B85E10135FFF8D34A76C17022EE1" />
    <Deny ID="ID_DENY_AMIFLDRV_2A" FriendlyName="amifldrv64\c2fcc0fec64d5647813b84b9049d430406c4c6a7b9f8b725da21bcae2ff12247 Hash Sha256" Hash="96CB847FAB0BEFAB75A6F39080DD444D022D4BEC73017C9D7187FE6282A0FAA1" />
    <Deny ID="ID_DENY_AMIFLDRV_2B" FriendlyName="amifldrv64\c2fcc0fec64d5647813b84b9049d430406c4c6a7b9f8b725da21bcae2ff12247 Hash Page Sha1" Hash="886779B4F7E05944171D2B5226C761605D9A19FD" />
    <Deny ID="ID_DENY_AMIFLDRV_2C" FriendlyName="amifldrv64\c2fcc0fec64d5647813b84b9049d430406c4c6a7b9f8b725da21bcae2ff12247 Hash Page Sha256" Hash="664EB7057E9669F7FBE2C23CAB20421EA135475332782D1ABC0B9A99BD104DEF" />
    <Deny ID="ID_DENY_AMIFLDRV_2D" FriendlyName="amifldrv64\f06fdfe50ebc8d1d2daf5811b66288563f26a09a2ec9c2a21e2a71ff19756062 Hash Sha1" Hash="89817CFA2603B582C1E9F7F66DB5847EC6661B36" />
    <Deny ID="ID_DENY_AMIFLDRV_2E" FriendlyName="amifldrv64\f06fdfe50ebc8d1d2daf5811b66288563f26a09a2ec9c2a21e2a71ff19756062 Hash Sha256" Hash="DF4566EDEA7C02E29D7DC56FF3F7DA6C1EF846E1063B2805A5180BB0D6DB37E8" />
    <Deny ID="ID_DENY_AMIFLDRV_2F" FriendlyName="amifldrv64\f06fdfe50ebc8d1d2daf5811b66288563f26a09a2ec9c2a21e2a71ff19756062 Hash Page Sha1" Hash="6A286329D0A387A61A582AB1FE483538852CD529" />
    <Deny ID="ID_DENY_AMIFLDRV_30" FriendlyName="amifldrv64\f06fdfe50ebc8d1d2daf5811b66288563f26a09a2ec9c2a21e2a71ff19756062 Hash Page Sha256" Hash="2809DF11B2D22649C77223D0E470523C7B8AB55B202F771118D1F14A1BC564F5" />
    <Deny ID="ID_DENY_AMIFLDRV_31" FriendlyName="amifldrv64\fc22977ff721b3d718b71c42440ee2d8a144f3fbc7755e4331ddd5bcc65158d2 Hash Sha1" Hash="B0EC7D971DA8AE84C0ED8F88A5D46B23996E636C" />
    <Deny ID="ID_DENY_AMIFLDRV_32" FriendlyName="amifldrv64\fc22977ff721b3d718b71c42440ee2d8a144f3fbc7755e4331ddd5bcc65158d2 Hash Sha256" Hash="038F39558035292F1D794B7CF49F8E751E8633DAEC31454FE85CCCBEA83BA3FB" />
    <Deny ID="ID_DENY_AMIFLDRV_33" FriendlyName="amifldrv64\fc22977ff721b3d718b71c42440ee2d8a144f3fbc7755e4331ddd5bcc65158d2 Hash Page Sha1" Hash="C9CC3779ED67755220DBF9592EC2AC0E1DE363DC" />
    <Deny ID="ID_DENY_AMIFLDRV_34" FriendlyName="amifldrv64\fc22977ff721b3d718b71c42440ee2d8a144f3fbc7755e4331ddd5bcc65158d2 Hash Page Sha256" Hash="AA594D977312A944B14351C075634E7C59B42687928FBCDA8E2C4CEA46686DD9" />
    <Deny ID="ID_DENY_AMIFLDRV_35" FriendlyName="amifldrv64\fda506e2aa85dc41a4cbc23d3ecc71ab34e06f1def736e58862dc449acbc2330 Hash Sha1" Hash="E91EA7FECE914EDC7F398A05BEC3FCFB765328BB" />
    <Deny ID="ID_DENY_AMIFLDRV_36" FriendlyName="amifldrv64\fda506e2aa85dc41a4cbc23d3ecc71ab34e06f1def736e58862dc449acbc2330 Hash Sha256" Hash="2EE914C20B3E4A321BCD2EA2F0F437CDA6DA09DC0819CD6F06960C0567F4CB19" />
    <Deny ID="ID_DENY_AMIFLDRV_37" FriendlyName="amifldrv64\fda506e2aa85dc41a4cbc23d3ecc71ab34e06f1def736e58862dc449acbc2330 Hash Page Sha1" Hash="ABD4616FF35256B5D52813FB80596326047D3768" />
    <Deny ID="ID_DENY_AMIFLDRV_38" FriendlyName="amifldrv64\fda506e2aa85dc41a4cbc23d3ecc71ab34e06f1def736e58862dc449acbc2330 Hash Page Sha256" Hash="BB52155AD4262C8995115147847BC740873F8AA036D0118E263FD8C84AF9C649" />
    <Deny ID="ID_DENY_ASIO_1" FriendlyName="asio\2da330a2088409efc351118445a824f11edbe51cf3d653b298053785097fe40e Hash Sha1" Hash="B25550309C902A21B03367AE27694C5A29B891B5" />
    <Deny ID="ID_DENY_ASIO_2" FriendlyName="asio\2da330a2088409efc351118445a824f11edbe51cf3d653b298053785097fe40e Hash Sha256" Hash="C3E3719CA592BA65A67F594EC1A08D0D7AD724B088BE77D48CB33627C56F4614" />
    <Deny ID="ID_DENY_ASIO_3" FriendlyName="asio\2da330a2088409efc351118445a824f11edbe51cf3d653b298053785097fe40e Hash Page Sha1" Hash="EA7DBFB3ECFFAA134D4C3A76024F9B65126DFDC1" />
    <Deny ID="ID_DENY_ASIO_4" FriendlyName="asio\2da330a2088409efc351118445a824f11edbe51cf3d653b298053785097fe40e Hash Page Sha256" Hash="EA9A321D58DD45D747C41AD6F0C30B3B11F134755CE3E69DC3DC34257E420493" />
    <Deny ID="ID_DENY_ASIO_5" FriendlyName="asio\923ebbe8111e73d5b8ecc2db10f8ea2629a3264c3a535d01c3c118a3b4c91782 Hash Sha1" Hash="E471BA6D1327D1026EB2C6A905E2BAD3952DABBD" />
    <Deny ID="ID_DENY_ASIO_6" FriendlyName="asio\923ebbe8111e73d5b8ecc2db10f8ea2629a3264c3a535d01c3c118a3b4c91782 Hash Sha256" Hash="ED302EA33FEB557B879F64C4B7835947A9CA31054573E1487F5BBC38449753FF" />
    <Deny ID="ID_DENY_ASUPIO64_SHA1" FriendlyName="AsUpIO64.sys Hash Sha1" Hash="2A95F882DD9BAFCC57F144A2708A7EC67DD7844C" />
    <Deny ID="ID_DENY_ASUPIO64_SHA256" FriendlyName="AsUpIO64.sys Hash Sha256" Hash="7F75D91844B0C162EEB24D14BCF63B7F230E111DAA7B0A26EAA489EEB22D9057" />
    <Deny ID="ID_DENY_ASUPIO64_SHA1_PAGE" FriendlyName="AsUpIO64.sys Hash Page Sha1" Hash="316E7872A227F0EAD483D244805E9FF4D3569F6F" />
    <Deny ID="ID_DENY_ASUPIO64_SHA256_PAGE" FriendlyName="AsUpIO64.sys Hash Page Sha256" Hash="5958CBE6CF7170C4B66893777BDE66343F5536A98610BD188E10D47DB84BC04C" />
    <Deny ID="ID_DENY_BEDAISY_22" FriendlyName="BEDaisy.sys\0a9b608461d55815e99700607a52fbdb7d598f968126d38e10cc4293ac4b1ad8 Hash Sha1" Hash="9F49C6DE4FF1375D8E0369D8FFB6935E37CFC365" />
    <Deny ID="ID_DENY_BEDAISY_23" FriendlyName="BEDaisy.sys\0a9b608461d55815e99700607a52fbdb7d598f968126d38e10cc4293ac4b1ad8 Hash Sha256" Hash="D27AF8F0BED1E4F4AEB2B20DA89D0FFA1B7B5F7F14148CDF09E6444A0AA5BB1B" />
    <Deny ID="ID_DENY_BEDAISY_24" FriendlyName="BEDaisy.sys\0a9b608461d55815e99700607a52fbdb7d598f968126d38e10cc4293ac4b1ad8 Hash Page Sha1" Hash="91887E3BFC91DE452C3914C15CC2349A6CE4F5FF" />
    <Deny ID="ID_DENY_BEDAISY_25" FriendlyName="BEDaisy.sys\0a9b608461d55815e99700607a52fbdb7d598f968126d38e10cc4293ac4b1ad8 Hash Page Sha256" Hash="1FE13DBC2787C09FE17CF411334C8673C40D9F768D76896FAF3894AF1431C4C7" />
    <Deny ID="ID_DENY_BEDAISY_26" FriendlyName="BEDaisy.sys\0bd164da36bd637bb76ca66602d732af912bd9299cb3d520d26db528cb54826d Hash Sha1" Hash="0CF32234E257819204C2881FA579F16F29DF7984" />
    <Deny ID="ID_DENY_BEDAISY_27" FriendlyName="BEDaisy.sys\0bd164da36bd637bb76ca66602d732af912bd9299cb3d520d26db528cb54826d Hash Sha256" Hash="FB467E8C9EDF1AC9DDABBC666CD48FC37B05E9D9390BB347504C899E15BCE4D8" />
    <Deny ID="ID_DENY_BEDAISY_28" FriendlyName="BEDaisy.sys\0bd164da36bd637bb76ca66602d732af912bd9299cb3d520d26db528cb54826d Hash Page Sha1" Hash="28F540C77863FFD8026FE52F90CDCFBC59922D6C" />
    <Deny ID="ID_DENY_BEDAISY_29" FriendlyName="BEDaisy.sys\0bd164da36bd637bb76ca66602d732af912bd9299cb3d520d26db528cb54826d Hash Page Sha256" Hash="BCF02C23E9331A5BA566EC4D84C79B80778D60B8F98AFFDAFE41FDAFE8432022" />
    <Deny ID="ID_DENY_BEDAISY_2A" FriendlyName="BEDaisy.sys\2b120de80a5462f8395cfb7153c86dfd44f29f0776ea156ec4a34fa64e5c4797 Hash Sha1" Hash="7131F7DA22882656C5E22EC033BB95E29273F182" />
    <Deny ID="ID_DENY_BEDAISY_2B" FriendlyName="BEDaisy.sys\2b120de80a5462f8395cfb7153c86dfd44f29f0776ea156ec4a34fa64e5c4797 Hash Sha256" Hash="35A12D81F7062A22644B500D91B1603B4F97756AD165C3EA571E7FEF55C24162" />
    <Deny ID="ID_DENY_BEDAISY_2C" FriendlyName="BEDaisy.sys\2b120de80a5462f8395cfb7153c86dfd44f29f0776ea156ec4a34fa64e5c4797 Hash Page Sha1" Hash="25A796B4B69D48BDAE784DEBAB835BEBBD8A67EA" />
    <Deny ID="ID_DENY_BEDAISY_2D" FriendlyName="BEDaisy.sys\2b120de80a5462f8395cfb7153c86dfd44f29f0776ea156ec4a34fa64e5c4797 Hash Page Sha256" Hash="84664340A212D394756FCED7D0B4B9D828E3B4CED5CC68ADEC228E58712CD97A" />
    <Deny ID="ID_DENY_BEDAISY_2E" FriendlyName="BEDaisy.sys\3b19a7207a55d752db1b366b1dea2fd2c7620a825a3f0dcffca10af76611118c Hash Sha1" Hash="06DAFE91FD89A1D1F88501BA04649E70770D04A4" />
    <Deny ID="ID_DENY_BEDAISY_2F" FriendlyName="BEDaisy.sys\3b19a7207a55d752db1b366b1dea2fd2c7620a825a3f0dcffca10af76611118c Hash Sha256" Hash="8BE482157BDB504CC35F1126E31F240E0FAF6890790C65C58EC3328F58C780D8" />
    <Deny ID="ID_DENY_BEDAISY_30" FriendlyName="BEDaisy.sys\3b19a7207a55d752db1b366b1dea2fd2c7620a825a3f0dcffca10af76611118c Hash Page Sha1" Hash="55719A4F2DECF01AC975FC72D39F336C727736CE" />
    <Deny ID="ID_DENY_BEDAISY_31" FriendlyName="BEDaisy.sys\3b19a7207a55d752db1b366b1dea2fd2c7620a825a3f0dcffca10af76611118c Hash Page Sha256" Hash="221D4843D260A62D69A0963A9F9EABA0D3FA6833EA788B0037F0CBC1928ABC26" />
    <Deny ID="ID_DENY_BEDAISY_32" FriendlyName="BEDaisy.sys\3d8cfc9abea6d83dfea6da03260ff81be3b7b304321274f696ff0fdb9920c645 Hash Sha1" Hash="E52946D26810573CE95DF496337D68246DBE0C47" />
    <Deny ID="ID_DENY_BEDAISY_33" FriendlyName="BEDaisy.sys\3d8cfc9abea6d83dfea6da03260ff81be3b7b304321274f696ff0fdb9920c645 Hash Sha256" Hash="0CF72A6D8C4ADD613209A1AF41C6B09013FA688C9841210B5FF1D2908D99BF00" />
    <Deny ID="ID_DENY_BEDAISY_34" FriendlyName="BEDaisy.sys\3d8cfc9abea6d83dfea6da03260ff81be3b7b304321274f696ff0fdb9920c645 Hash Page Sha1" Hash="77D750E465B8A020A125771FDBCF66491E801CF0" />
    <Deny ID="ID_DENY_BEDAISY_35" FriendlyName="BEDaisy.sys\3d8cfc9abea6d83dfea6da03260ff81be3b7b304321274f696ff0fdb9920c645 Hash Page Sha256" Hash="B0482670A5578792F05D09E3115C1289511B8150532DD850AACA4C1736E4ADEF" />
    <Deny ID="ID_DENY_BEDAISY_36" FriendlyName="BEDaisy.sys\4ba224af60a50cad10d0091c89134c72fc021da8d34a6f25c4827184dc6ca5c7 Hash Sha1" Hash="489CB134EE754835A6A9C0D202E67E05434D8B95" />
    <Deny ID="ID_DENY_BEDAISY_37" FriendlyName="BEDaisy.sys\4ba224af60a50cad10d0091c89134c72fc021da8d34a6f25c4827184dc6ca5c7 Hash Sha256" Hash="FC7D726E0E803BB38C0F9E910D91970C3DD7444ACE1C071381E2E06939616205" />
    <Deny ID="ID_DENY_BEDAISY_38" FriendlyName="BEDaisy.sys\4ba224af60a50cad10d0091c89134c72fc021da8d34a6f25c4827184dc6ca5c7 Hash Page Sha1" Hash="418C3CA6E284CC9C057C64A38883711042F7DDA5" />
    <Deny ID="ID_DENY_BEDAISY_39" FriendlyName="BEDaisy.sys\4ba224af60a50cad10d0091c89134c72fc021da8d34a6f25c4827184dc6ca5c7 Hash Page Sha256" Hash="8CE69719A627CAD2ACC7FDCFDDBB21BE465053E47AC5E8F30EF15ECA6AAB49F6" />
    <Deny ID="ID_DENY_BEDAISY_3A" FriendlyName="BEDaisy.sys\5d7bfe05792189eaf7193bee85f0c792c33315cfcb40b2e62cc7baef6cafbc5c Hash Sha1" Hash="B72D85F73296F5EF58082050DB39CA5F80B932C0" />
    <Deny ID="ID_DENY_BEDAISY_3B" FriendlyName="BEDaisy.sys\5d7bfe05792189eaf7193bee85f0c792c33315cfcb40b2e62cc7baef6cafbc5c Hash Sha256" Hash="C29E726448AD3E6452B5D186AFB4668E6FCC942BE512FE25ED72CFA1B73A6007" />
    <Deny ID="ID_DENY_BEDAISY_3C" FriendlyName="BEDaisy.sys\5d7bfe05792189eaf7193bee85f0c792c33315cfcb40b2e62cc7baef6cafbc5c Hash Page Sha1" Hash="8BB7F98F74A2D1158D4A60CA1A5CF4752988FF21" />
    <Deny ID="ID_DENY_BEDAISY_3D" FriendlyName="BEDaisy.sys\5d7bfe05792189eaf7193bee85f0c792c33315cfcb40b2e62cc7baef6cafbc5c Hash Page Sha256" Hash="D1E26C3E7F2927E935139620FD62E57CDCF94D7B28E3F87FCEF2B1FA3653A676" />
    <Deny ID="ID_DENY_BEDAISY_3E" FriendlyName="BEDaisy.sys\7108613244f16c2279c3c917aa49cef8acf0b92fdaa9ace19bf5cf634360d727 Hash Sha1" Hash="28F9F951C83666C0A84493E2646693BFA0D227BB" />
    <Deny ID="ID_DENY_BEDAISY_3F" FriendlyName="BEDaisy.sys\7108613244f16c2279c3c917aa49cef8acf0b92fdaa9ace19bf5cf634360d727 Hash Sha256" Hash="55F736E288A101C08B7245CCAFE158F5A2E6F0A581F49A87D24E5CBBDE8961E1" />
    <Deny ID="ID_DENY_BEDAISY_40" FriendlyName="BEDaisy.sys\7108613244f16c2279c3c917aa49cef8acf0b92fdaa9ace19bf5cf634360d727 Hash Page Sha1" Hash="EE65DAAC6C8579676C377241ACA9477AB74D36F7" />
    <Deny ID="ID_DENY_BEDAISY_41" FriendlyName="BEDaisy.sys\7108613244f16c2279c3c917aa49cef8acf0b92fdaa9ace19bf5cf634360d727 Hash Page Sha256" Hash="0460FED15FEC99339739E436293174C5DACE21A9937400417D839AA90FCA38BC" />
    <Deny ID="ID_DENY_BEDAISY_42" FriendlyName="BEDaisy.sys\773999db2f07c50aad70e50c1983fa95804369d25a5b4f10bd610f864c27f2fc Hash Sha1" Hash="6A6529FBB133C9535692D92148629418E2BC315E" />
    <Deny ID="ID_DENY_BEDAISY_43" FriendlyName="BEDaisy.sys\773999db2f07c50aad70e50c1983fa95804369d25a5b4f10bd610f864c27f2fc Hash Sha256" Hash="B5603B60137FED0DFCC95EC10563B0D5FA2E033944019BA5F338F7F7BD2AA45B" />
    <Deny ID="ID_DENY_BEDAISY_44" FriendlyName="BEDaisy.sys\773999db2f07c50aad70e50c1983fa95804369d25a5b4f10bd610f864c27f2fc Hash Page Sha1" Hash="5450B8A59A05A09460854D669A94758DC4348BA3" />
    <Deny ID="ID_DENY_BEDAISY_45" FriendlyName="BEDaisy.sys\773999db2f07c50aad70e50c1983fa95804369d25a5b4f10bd610f864c27f2fc Hash Page Sha256" Hash="5F5058FACB763C2C976256BA137D306CB6C1664EF23FD81D839BA3C7825977BB" />
    <Deny ID="ID_DENY_BEDAISY_46" FriendlyName="BEDaisy.sys\7c830ed39c9de8fe711632bf44846615f84b10db383f47b7d7c9db29a2bd829a Hash Sha1" Hash="8B20C1EE70505588CDF27F5B1CF4BF1CE2EF3DD6" />
    <Deny ID="ID_DENY_BEDAISY_47" FriendlyName="BEDaisy.sys\7c830ed39c9de8fe711632bf44846615f84b10db383f47b7d7c9db29a2bd829a Hash Sha256" Hash="8483C5DC2323306D4EE3685B7E90A4C11E11B01D04CB607E0BC5AAD368FD3C6E" />
    <Deny ID="ID_DENY_BEDAISY_48" FriendlyName="BEDaisy.sys\7c830ed39c9de8fe711632bf44846615f84b10db383f47b7d7c9db29a2bd829a Hash Page Sha1" Hash="C72EDC483E14A906A39DC0F2B12C5B132A1E39E2" />
    <Deny ID="ID_DENY_BEDAISY_49" FriendlyName="BEDaisy.sys\7c830ed39c9de8fe711632bf44846615f84b10db383f47b7d7c9db29a2bd829a Hash Page Sha256" Hash="D5BEBFCA04C4DCD8077AA2BC438BAD7D2487823CFF012F14E40A6852458D122E" />
    <Deny ID="ID_DENY_BEDAISY_4A" FriendlyName="BEDaisy.sys\854bc946b557ed78c7d40547eb39e293e83942a693c94d0e798d1c4fbde7efa9 Hash Sha1" Hash="95EE60EEF4D011ED8E748BBC0B531B21CE95C66C" />
    <Deny ID="ID_DENY_BEDAISY_4B" FriendlyName="BEDaisy.sys\854bc946b557ed78c7d40547eb39e293e83942a693c94d0e798d1c4fbde7efa9 Hash Sha256" Hash="7823833A22E11345C69D0C9687B3B75E0043492ED9546D6300A3F63017384538" />
    <Deny ID="ID_DENY_BEDAISY_4C" FriendlyName="BEDaisy.sys\854bc946b557ed78c7d40547eb39e293e83942a693c94d0e798d1c4fbde7efa9 Hash Page Sha1" Hash="EC1739EA08E93E6342CC5F05619679F81A6BEB7D" />
    <Deny ID="ID_DENY_BEDAISY_4D" FriendlyName="BEDaisy.sys\854bc946b557ed78c7d40547eb39e293e83942a693c94d0e798d1c4fbde7efa9 Hash Page Sha256" Hash="58A9F87335D3779BEDF10F15CC60611AFE9FA82FDE1B1FAE921BA4E95420D88D" />
    <Deny ID="ID_DENY_BEDAISY_4E" FriendlyName="BEDaisy.sys\8ae383546761069b26826dfbf2ac0233169d155bca6a94160488092b4e70b222 Hash Sha1" Hash="2090E9738915845D1171561CB01D15CD043E80CF" />
    <Deny ID="ID_DENY_BEDAISY_4F" FriendlyName="BEDaisy.sys\8ae383546761069b26826dfbf2ac0233169d155bca6a94160488092b4e70b222 Hash Sha256" Hash="93F787E33A663311A6A553DB1C7D7E5B3F4CD20B0B7725B35DBD0DD67308CEF4" />
    <Deny ID="ID_DENY_BEDAISY_50" FriendlyName="BEDaisy.sys\8ae383546761069b26826dfbf2ac0233169d155bca6a94160488092b4e70b222 Hash Page Sha1" Hash="236D098D1F2D2C2201FAE1EE1B76362EF0080C3A" />
    <Deny ID="ID_DENY_BEDAISY_51" FriendlyName="BEDaisy.sys\8ae383546761069b26826dfbf2ac0233169d155bca6a94160488092b4e70b222 Hash Page Sha256" Hash="1624CE5E15EE55F048206B05274CFB3D393A779D2EFA54772BD68FB91551E086" />
    <Deny ID="ID_DENY_BEDAISY_52" FriendlyName="BEDaisy.sys\8bf01cd6d55502838853851703eb297ec71361fa9a0b088a30c2434f4d2bf9c6 Hash Sha1" Hash="AABD3742AB7E0D8568ACBE964EF32FA7B85672B7" />
    <Deny ID="ID_DENY_BEDAISY_53" FriendlyName="BEDaisy.sys\8bf01cd6d55502838853851703eb297ec71361fa9a0b088a30c2434f4d2bf9c6 Hash Sha256" Hash="0A2D4815A03365D40B2B22981D4D8BEE81BFBD983DB1AF30CE497FCDF77F83C9" />
    <Deny ID="ID_DENY_BEDAISY_54" FriendlyName="BEDaisy.sys\8bf01cd6d55502838853851703eb297ec71361fa9a0b088a30c2434f4d2bf9c6 Hash Page Sha1" Hash="B325BF313471BADEA77F5FBE26F5B8A8DA469410" />
    <Deny ID="ID_DENY_BEDAISY_55" FriendlyName="BEDaisy.sys\8bf01cd6d55502838853851703eb297ec71361fa9a0b088a30c2434f4d2bf9c6 Hash Page Sha256" Hash="6B5CB7CBAF9E7B40640E34F0B58A785907FF0A2666A8CABBDA8E7574DC5F1C05" />
    <Deny ID="ID_DENY_BEDAISY_56" FriendlyName="BEDaisy.sys\9bd8b0289955a6eb791f45c3203f08a64cbd457fd1b9d598a6fbbca5d0372e36 Hash Sha1" Hash="FAECBF954A50E1198B45635994BAEE4C72F08DBA" />
    <Deny ID="ID_DENY_BEDAISY_57" FriendlyName="BEDaisy.sys\9bd8b0289955a6eb791f45c3203f08a64cbd457fd1b9d598a6fbbca5d0372e36 Hash Sha256" Hash="DCB8DF13141708F0DD470B5411C065F8AD21688DAF424BD05C94EB6E63DD08AA" />
    <Deny ID="ID_DENY_BEDAISY_58" FriendlyName="BEDaisy.sys\9bd8b0289955a6eb791f45c3203f08a64cbd457fd1b9d598a6fbbca5d0372e36 Hash Page Sha1" Hash="4D1EBA7D62585B5123EC75A43DEA120CD6D5B8A4" />
    <Deny ID="ID_DENY_BEDAISY_59" FriendlyName="BEDaisy.sys\9bd8b0289955a6eb791f45c3203f08a64cbd457fd1b9d598a6fbbca5d0372e36 Hash Page Sha256" Hash="EEA91D45E1077D6C1567403B1C10BC2C60260A26183E993EBAC2411766A138B1" />
    <Deny ID="ID_DENY_BEDAISY_5A" FriendlyName="BEDaisy.sys\9e2622d8e7a0ec136ba1fff639833f05137f8a1ff03e7a93b9a4aea25e7abb8d Hash Sha1" Hash="BD3558FB46FCB2165F4965F3BA08A0640E9259EF" />
    <Deny ID="ID_DENY_BEDAISY_5B" FriendlyName="BEDaisy.sys\9e2622d8e7a0ec136ba1fff639833f05137f8a1ff03e7a93b9a4aea25e7abb8d Hash Sha256" Hash="AC76256F8CA6608ABE84CA194D46BC581706ECC6813E1ABE5FA2B6CC3B4BDADE" />
    <Deny ID="ID_DENY_BEDAISY_5C" FriendlyName="BEDaisy.sys\9e2622d8e7a0ec136ba1fff639833f05137f8a1ff03e7a93b9a4aea25e7abb8d Hash Page Sha1" Hash="8117E3CE20280541125BBD416355FE669CEFCBBC" />
    <Deny ID="ID_DENY_BEDAISY_5D" FriendlyName="BEDaisy.sys\9e2622d8e7a0ec136ba1fff639833f05137f8a1ff03e7a93b9a4aea25e7abb8d Hash Page Sha256" Hash="A5CD24B88EF8DCA0D6F33D5644A61ECDA962B0D18B6493155B662B9C9FA56D6C" />
    <Deny ID="ID_DENY_BEDAISY_5E" FriendlyName="BEDaisy.sys\a0e583bd88eb198558442f69a8bbfc96f4c5c297befea295138cfd2070f745c5 Hash Sha1" Hash="40F77890FC527C559F222ACD91F3D1013FF82DF9" />
    <Deny ID="ID_DENY_BEDAISY_5F" FriendlyName="BEDaisy.sys\a0e583bd88eb198558442f69a8bbfc96f4c5c297befea295138cfd2070f745c5 Hash Sha256" Hash="BDF49774A13D717C1F0B84BF82F4D9EC652994A475F0B8A0A3AB685CD5FD74A4" />
    <Deny ID="ID_DENY_BEDAISY_60" FriendlyName="BEDaisy.sys\a0e583bd88eb198558442f69a8bbfc96f4c5c297befea295138cfd2070f745c5 Hash Page Sha1" Hash="359E5D9B0E4B5439E085E35667AAEDA67BE7AE8E" />
    <Deny ID="ID_DENY_BEDAISY_61" FriendlyName="BEDaisy.sys\a0e583bd88eb198558442f69a8bbfc96f4c5c297befea295138cfd2070f745c5 Hash Page Sha256" Hash="2C5B7871F253F0806721B4F5AABCA2D1C5D28E67A750037EB1E2CB439975888A" />
    <Deny ID="ID_DENY_BEDAISY_62" FriendlyName="BEDaisy.sys\a19fc837ca342d2db43ee8ad7290df48a1b8b85996c58a19ca3530101862a804 Hash Sha1" Hash="2B195297AE70B4858BA8DB425F1C807E996F10BF" />
    <Deny ID="ID_DENY_BEDAISY_63" FriendlyName="BEDaisy.sys\a19fc837ca342d2db43ee8ad7290df48a1b8b85996c58a19ca3530101862a804 Hash Sha256" Hash="425406152227F499013A6C3FBCF7700D98351A30E7813A30F0003F48ECEB08EC" />
    <Deny ID="ID_DENY_BEDAISY_64" FriendlyName="BEDaisy.sys\a19fc837ca342d2db43ee8ad7290df48a1b8b85996c58a19ca3530101862a804 Hash Page Sha1" Hash="B0C51B6D8158393F06C5F7BC12A1B3704C4625F8" />
    <Deny ID="ID_DENY_BEDAISY_65" FriendlyName="BEDaisy.sys\a19fc837ca342d2db43ee8ad7290df48a1b8b85996c58a19ca3530101862a804 Hash Page Sha256" Hash="6A486BE5B7D642AB14991BDCD23AD21228B04EFDEDCD013BB24B8CAF3BBD62CA" />
    <Deny ID="ID_DENY_BEDAISY_66" FriendlyName="BEDaisy.sys\af298d940b186f922464d2ef19ccfc129c77126a4f337ecf357b4fe5162a477c Hash Sha1" Hash="AA98203BB8C6FB612712A5E44DD118BEEA49B1AB" />
    <Deny ID="ID_DENY_BEDAISY_67" FriendlyName="BEDaisy.sys\af298d940b186f922464d2ef19ccfc129c77126a4f337ecf357b4fe5162a477c Hash Sha256" Hash="E330DE98DB81F9B183EF37D31E111301DA669F1FC572E87ACF8B8C2FE4E602B5" />
    <Deny ID="ID_DENY_BEDAISY_68" FriendlyName="BEDaisy.sys\af298d940b186f922464d2ef19ccfc129c77126a4f337ecf357b4fe5162a477c Hash Page Sha1" Hash="8FB917686DA50F43BF649111A4CBCAC82FE7FE1C" />
    <Deny ID="ID_DENY_BEDAISY_69" FriendlyName="BEDaisy.sys\af298d940b186f922464d2ef19ccfc129c77126a4f337ecf357b4fe5162a477c Hash Page Sha256" Hash="5E724616ECBCE8DFF6B9E8CE6D168FFF04D3DBA3272FC6BD53D956E074241A37" />
    <Deny ID="ID_DENY_BEDAISY_6A" FriendlyName="BEDaisy.sys\b7bba82777c9912e6a728c3e873c5a8fd3546982e0d5fa88e64b3e2122f9bc3b Hash Sha1" Hash="2C7AC53B0D5F48FEA6816B561CCF1B925D878476" />
    <Deny ID="ID_DENY_BEDAISY_6B" FriendlyName="BEDaisy.sys\b7bba82777c9912e6a728c3e873c5a8fd3546982e0d5fa88e64b3e2122f9bc3b Hash Sha256" Hash="7509D30B279E30893DB7851A2912A5FFB29EC7E839220890D76DE8E3A57B4872" />
    <Deny ID="ID_DENY_BEDAISY_6C" FriendlyName="BEDaisy.sys\b7bba82777c9912e6a728c3e873c5a8fd3546982e0d5fa88e64b3e2122f9bc3b Hash Page Sha1" Hash="05A2D4EC406FC7F80B23E350A00043F3264D92AB" />
    <Deny ID="ID_DENY_BEDAISY_6D" FriendlyName="BEDaisy.sys\b7bba82777c9912e6a728c3e873c5a8fd3546982e0d5fa88e64b3e2122f9bc3b Hash Page Sha256" Hash="BF8BD209AA5EE694FD7A6BB712E9668387E51ACA1EF9AC4665F2876836DDC09C" />
    <Deny ID="ID_DENY_BEDAISY_6E" FriendlyName="BEDaisy.sys\b9ed73af3aef69dc1fb91731d6d0a649e93f83d0f07ddb9729d71c2d00ed0801 Hash Sha1" Hash="E647041E015042F8542CC042A07D0B0AC1D2F39F" />
    <Deny ID="ID_DENY_BEDAISY_6F" FriendlyName="BEDaisy.sys\b9ed73af3aef69dc1fb91731d6d0a649e93f83d0f07ddb9729d71c2d00ed0801 Hash Sha256" Hash="7128D13DC4269DE832723D4A3A6CFD7E6553576A9E96464583EB8BB5C2F243AA" />
    <Deny ID="ID_DENY_BEDAISY_70" FriendlyName="BEDaisy.sys\b9ed73af3aef69dc1fb91731d6d0a649e93f83d0f07ddb9729d71c2d00ed0801 Hash Page Sha1" Hash="7097B30017AD3920B0FE478A1D9E9CABAD0F3722" />
    <Deny ID="ID_DENY_BEDAISY_71" FriendlyName="BEDaisy.sys\b9ed73af3aef69dc1fb91731d6d0a649e93f83d0f07ddb9729d71c2d00ed0801 Hash Page Sha256" Hash="BAB5BF37B4D88A47514DC4662ACA51C143BF4B4750B9A0B5951E04A225E2D71F" />
    <Deny ID="ID_DENY_BEDAISY_72" FriendlyName="BEDaisy.sys\bceaf970b60b4457eca3c181f649a1c67f4602778171e53d9bdc9b97a09603ca Hash Sha1" Hash="01A89DBC757ADA8B800C05E190AB5E527220D855" />
    <Deny ID="ID_DENY_BEDAISY_73" FriendlyName="BEDaisy.sys\bceaf970b60b4457eca3c181f649a1c67f4602778171e53d9bdc9b97a09603ca Hash Sha256" Hash="D7CC798804F07BA04CB1ED9233C5852D147B56DF612117C54667CF3EBBA975DE" />
    <Deny ID="ID_DENY_BEDAISY_74" FriendlyName="BEDaisy.sys\bceaf970b60b4457eca3c181f649a1c67f4602778171e53d9bdc9b97a09603ca Hash Page Sha1" Hash="06951F6ABED5B324F1DE55363CFD104C00C06774" />
    <Deny ID="ID_DENY_BEDAISY_75" FriendlyName="BEDaisy.sys\bceaf970b60b4457eca3c181f649a1c67f4602778171e53d9bdc9b97a09603ca Hash Page Sha256" Hash="BFAA101839761B77D242B0A3CE53774216DE271EA013C5F329F447F7002F8F14" />
    <Deny ID="ID_DENY_BEDAISY_76" FriendlyName="BEDaisy.sys\c0ae3349ebaac9a99c47ec55d5f7de00dc03bd7c5cd15799bc00646d642aa8de Hash Sha1" Hash="604D6B46E39D0A635FDC853C8260C4DD003BAABC" />
    <Deny ID="ID_DENY_BEDAISY_77" FriendlyName="BEDaisy.sys\c0ae3349ebaac9a99c47ec55d5f7de00dc03bd7c5cd15799bc00646d642aa8de Hash Sha256" Hash="9F742D827A2E203A4C9D8FCCB1DAF2E85D451761FC9C0ACB962DD6C447EF10CA" />
    <Deny ID="ID_DENY_BEDAISY_78" FriendlyName="BEDaisy.sys\c0ae3349ebaac9a99c47ec55d5f7de00dc03bd7c5cd15799bc00646d642aa8de Hash Page Sha1" Hash="6DEC6F03E26A8BAB3137DA8A5DA0F845FDD5A4C0" />
    <Deny ID="ID_DENY_BEDAISY_79" FriendlyName="BEDaisy.sys\c0ae3349ebaac9a99c47ec55d5f7de00dc03bd7c5cd15799bc00646d642aa8de Hash Page Sha256" Hash="3946B7A043BDA62E630500FFA4A060B3AC62DDC42C41378D91EE2289E3B22806" />
    <Deny ID="ID_DENY_BEDAISY_7A" FriendlyName="BEDaisy.sys\c35f3a9da8e81e75642af20103240618b641d39724f9df438bf0f361122876b0 Hash Sha1" Hash="B52B9BEC86703AF89322EBBC412DC499FA9CA13E" />
    <Deny ID="ID_DENY_BEDAISY_7B" FriendlyName="BEDaisy.sys\c35f3a9da8e81e75642af20103240618b641d39724f9df438bf0f361122876b0 Hash Sha256" Hash="DF101558CF68E3F50FB468248699E6F3938BE7A893680BD4803FC2AFE20BFD78" />
    <Deny ID="ID_DENY_BEDAISY_7C" FriendlyName="BEDaisy.sys\c35f3a9da8e81e75642af20103240618b641d39724f9df438bf0f361122876b0 Hash Page Sha1" Hash="AFBA960AEDDFD5D315CEE21CD2ED49B2E19AF6D9" />
    <Deny ID="ID_DENY_BEDAISY_7D" FriendlyName="BEDaisy.sys\c35f3a9da8e81e75642af20103240618b641d39724f9df438bf0f361122876b0 Hash Page Sha256" Hash="837D9F8F6FBAD1C04067D728136CE59072EA2EF93A37B89263F4DB065D8980E8" />
    <Deny ID="ID_DENY_BEDAISY_7E" FriendlyName="BEDaisy.sys\c640930c29ea3610a3a5cebee573235ec70267ed223b79b9fa45a80081e686a4 Hash Sha1" Hash="5CB6613E446FA2D17036F6A63DE658C90BFB0070" />
    <Deny ID="ID_DENY_BEDAISY_7F" FriendlyName="BEDaisy.sys\c640930c29ea3610a3a5cebee573235ec70267ed223b79b9fa45a80081e686a4 Hash Sha256" Hash="6AE4D36CF42A3BD1DDF9DD98794B401CD995BC519A12FFBDE63E63B03A2424B3" />
    <Deny ID="ID_DENY_BEDAISY_80" FriendlyName="BEDaisy.sys\c640930c29ea3610a3a5cebee573235ec70267ed223b79b9fa45a80081e686a4 Hash Page Sha1" Hash="2DF5A98CEBDBAFAE8F6AF2F6C0838AF093EC08F6" />
    <Deny ID="ID_DENY_BEDAISY_81" FriendlyName="BEDaisy.sys\c640930c29ea3610a3a5cebee573235ec70267ed223b79b9fa45a80081e686a4 Hash Page Sha256" Hash="ED2B4148DC86521242982EC869EDE99E9F822A2AA34940468D9B56E70D859344" />
    <Deny ID="ID_DENY_BEDAISY_82" FriendlyName="BEDaisy.sys\c8ff7c9f510f7a2ed88d9b336d8c9339698d5e1ee14bfb91aa89703ec06dce42 Hash Sha1" Hash="5AD637DCDB85221E5BBD23AE7C13745BC19D2F50" />
    <Deny ID="ID_DENY_BEDAISY_83" FriendlyName="BEDaisy.sys\c8ff7c9f510f7a2ed88d9b336d8c9339698d5e1ee14bfb91aa89703ec06dce42 Hash Sha256" Hash="F4222E186D23160C29FE2BDF163D29561139EAE8484D081457E7278872D7E9E2" />
    <Deny ID="ID_DENY_BEDAISY_84" FriendlyName="BEDaisy.sys\c8ff7c9f510f7a2ed88d9b336d8c9339698d5e1ee14bfb91aa89703ec06dce42 Hash Page Sha1" Hash="16B6874E55072CE5A00236428C0FA4338115C7CA" />
    <Deny ID="ID_DENY_BEDAISY_85" FriendlyName="BEDaisy.sys\c8ff7c9f510f7a2ed88d9b336d8c9339698d5e1ee14bfb91aa89703ec06dce42 Hash Page Sha256" Hash="CB1879A701834973650E69A3C252BD318DF2E7DF6A59281034766010DC76EAEB" />
    <Deny ID="ID_DENY_BEDAISY_86" FriendlyName="BEDaisy.sys\cf66fcbcb8b2ea7fb4398f398b7480c50f6a451b51367718c36330182c1bb496 Hash Sha1" Hash="72F17FFB8A9676A099207DDD28BC616E018173B4" />
    <Deny ID="ID_DENY_BEDAISY_87" FriendlyName="BEDaisy.sys\cf66fcbcb8b2ea7fb4398f398b7480c50f6a451b51367718c36330182c1bb496 Hash Sha256" Hash="4AD2DF1AE0C1FFAA2492DE91BBE24FF6BF2B2BEB18A62366207DFB4257ED5C60" />
    <Deny ID="ID_DENY_BEDAISY_88" FriendlyName="BEDaisy.sys\cf66fcbcb8b2ea7fb4398f398b7480c50f6a451b51367718c36330182c1bb496 Hash Page Sha1" Hash="B7B4D4C107377D1726B1300A611F45E9A4434875" />
    <Deny ID="ID_DENY_BEDAISY_89" FriendlyName="BEDaisy.sys\cf66fcbcb8b2ea7fb4398f398b7480c50f6a451b51367718c36330182c1bb496 Hash Page Sha256" Hash="43C82F7AD5063B0DC4ED835DF42176B2E767B2CE445726E908AF0FBBC1621299" />
    <Deny ID="ID_DENY_BEDAISY_8A" FriendlyName="BEDaisy.sys\d2e843d9729da9b19d6085edf69b90b057c890a74142f5202707057ee9c0b568 Hash Sha1" Hash="60FF2C96436F6CF2A1E0DB1C3DBB203F1F6C93A6" />
    <Deny ID="ID_DENY_BEDAISY_8B" FriendlyName="BEDaisy.sys\d2e843d9729da9b19d6085edf69b90b057c890a74142f5202707057ee9c0b568 Hash Sha256" Hash="761CA3AEE052D4A34F500DEE578EF55A4E481B1D6096EB3573F3F828ECFE4F89" />
    <Deny ID="ID_DENY_BEDAISY_8C" FriendlyName="BEDaisy.sys\d2e843d9729da9b19d6085edf69b90b057c890a74142f5202707057ee9c0b568 Hash Page Sha1" Hash="719F447D764F784A70C7412E887386DA96AFD66B" />
    <Deny ID="ID_DENY_BEDAISY_8D" FriendlyName="BEDaisy.sys\d2e843d9729da9b19d6085edf69b90b057c890a74142f5202707057ee9c0b568 Hash Page Sha256" Hash="8091674FF39789D6AA713E070E277A4482C3A4BA63BA28F16ADADC0005584795" />
    <Deny ID="ID_DENY_BEDAISY_8E" FriendlyName="BEDaisy.sys\dbebf6d463c2dbf61836b3eba09b643e1d79a02652a32482ca58894703b9addb Hash Sha1" Hash="0BA998452DDE334262E0FE1C8FEC365805C8B199" />
    <Deny ID="ID_DENY_BEDAISY_8F" FriendlyName="BEDaisy.sys\dbebf6d463c2dbf61836b3eba09b643e1d79a02652a32482ca58894703b9addb Hash Sha256" Hash="5DB0FE4B16744F14B4AB1D255A4D3C63710D0073417BAE9BB3BFEEF4A09D38E0" />
    <Deny ID="ID_DENY_BEDAISY_90" FriendlyName="BEDaisy.sys\dbebf6d463c2dbf61836b3eba09b643e1d79a02652a32482ca58894703b9addb Hash Page Sha1" Hash="BE421332CF40788CEB89AB8C62D069C6BD179BC6" />
    <Deny ID="ID_DENY_BEDAISY_91" FriendlyName="BEDaisy.sys\dbebf6d463c2dbf61836b3eba09b643e1d79a02652a32482ca58894703b9addb Hash Page Sha256" Hash="095064C08AD9C955F752536BA67BC1AD34967EAC560BB9CC805C9CFA038B8834" />
    <Deny ID="ID_DENY_BEDAISY_92" FriendlyName="BEDaisy.sys\e89afd283d5789b8064d5487e04b97e2cd3fc0c711a8cec230543ebdf9ffc534 Hash Sha1" Hash="48360C28FFA27E0316856C5D392A251ADD2A83B8" />
    <Deny ID="ID_DENY_BEDAISY_93" FriendlyName="BEDaisy.sys\e89afd283d5789b8064d5487e04b97e2cd3fc0c711a8cec230543ebdf9ffc534 Hash Sha256" Hash="74F9975737DD078C75048BB01549E7678EB61C065D1F50294B80CAEB65CBD65E" />
    <Deny ID="ID_DENY_BEDAISY_94" FriendlyName="BEDaisy.sys\e89afd283d5789b8064d5487e04b97e2cd3fc0c711a8cec230543ebdf9ffc534 Hash Page Sha1" Hash="090BC37ACFB05F90E3D5DD993D863730F6DD9E82" />
    <Deny ID="ID_DENY_BEDAISY_95" FriendlyName="BEDaisy.sys\e89afd283d5789b8064d5487e04b97e2cd3fc0c711a8cec230543ebdf9ffc534 Hash Page Sha256" Hash="F9129D38C028F21B711392353ABCCF9B897CA2E33DA57A558C1E318F9C27B703" />
    <Deny ID="ID_DENY_BEDAISY_96" FriendlyName="BEDaisy.sys\eba14a2b4cefd74edaf38d963775352dc3618977e30261aab52be682a76b536f Hash Sha1" Hash="36ED967BC3B6973B695AA18C57F5B3BE5E20BB6A" />
    <Deny ID="ID_DENY_BEDAISY_97" FriendlyName="BEDaisy.sys\eba14a2b4cefd74edaf38d963775352dc3618977e30261aab52be682a76b536f Hash Sha256" Hash="9FB474B921371C4679582DF8484932B832345693DE94E3C4A158638B4D75A19C" />
    <Deny ID="ID_DENY_BEDAISY_98" FriendlyName="BEDaisy.sys\eba14a2b4cefd74edaf38d963775352dc3618977e30261aab52be682a76b536f Hash Page Sha1" Hash="59CE8DB3A0337591D9C3E6A3160C581FB38373F6" />
    <Deny ID="ID_DENY_BEDAISY_99" FriendlyName="BEDaisy.sys\eba14a2b4cefd74edaf38d963775352dc3618977e30261aab52be682a76b536f Hash Page Sha256" Hash="9D1E69EED4B37ECAD18DFF43A4F52012932EC6D0742A963DB24E67B3C5F11C2A" />
    <Deny ID="ID_DENY_BEDAISY_9A" FriendlyName="BEDaisy.sys\edfc38f91b5e198f3bf80ef6dcaebb5e86963936bcd2e5280088ca90d6998b8c Hash Sha1" Hash="7ECBE0821F670B243837F7A98C08E3229F301339" />
    <Deny ID="ID_DENY_BEDAISY_9B" FriendlyName="BEDaisy.sys\edfc38f91b5e198f3bf80ef6dcaebb5e86963936bcd2e5280088ca90d6998b8c Hash Sha256" Hash="F8AEB50A115B4D35F15F876EB1A6E5EE5F3A142DE12EEC50B6BDF81196FFBEA4" />
    <Deny ID="ID_DENY_BEDAISY_9C" FriendlyName="BEDaisy.sys\edfc38f91b5e198f3bf80ef6dcaebb5e86963936bcd2e5280088ca90d6998b8c Hash Page Sha1" Hash="5742AAA5B78E3FC2CC142D4A3F2871B2C321D90A" />
    <Deny ID="ID_DENY_BEDAISY_9D" FriendlyName="BEDaisy.sys\edfc38f91b5e198f3bf80ef6dcaebb5e86963936bcd2e5280088ca90d6998b8c Hash Page Sha256" Hash="0403838956AF7219966A763D25B651831599C3C9188E6B2DF21BCACF8355853C" />
    <Deny ID="ID_DENY_BEDAISY_9E" FriendlyName="BEDaisy.sys\f2ed6c1906663016123559d9f3407bc67f64e0d235fa6f10810a3fa7bb322967 Hash Sha1" Hash="427DDACCCA98CFDA7F6778DA1E7FF824C9B49FF8" />
    <Deny ID="ID_DENY_BEDAISY_9F" FriendlyName="BEDaisy.sys\f2ed6c1906663016123559d9f3407bc67f64e0d235fa6f10810a3fa7bb322967 Hash Sha256" Hash="1933F27EBEBDE55942291381219497019077548A074E8DCDB120C94DF1A2489E" />
    <Deny ID="ID_DENY_BEDAISY_A0" FriendlyName="BEDaisy.sys\f2ed6c1906663016123559d9f3407bc67f64e0d235fa6f10810a3fa7bb322967 Hash Page Sha1" Hash="63D1ABBEC6614232F5E9D62D3CC06683F2D892E3" />
    <Deny ID="ID_DENY_BEDAISY_A1" FriendlyName="BEDaisy.sys\f2ed6c1906663016123559d9f3407bc67f64e0d235fa6f10810a3fa7bb322967 Hash Page Sha256" Hash="28B614518E087735C18E961D10E0D3B1F65285074532553835EDC024F427DC93" />
    <Deny ID="ID_DENY_BEDAISY_A2" FriendlyName="BEDaisy.sys\fa21e3d2bfb9fafddec0488852377fbb2dbdd6c066ca05bb5c4b6aa840fb7879 Hash Sha1" Hash="344BCC6E97EC8026C1684BB97C58FA37973176A0" />
    <Deny ID="ID_DENY_BEDAISY_A3" FriendlyName="BEDaisy.sys\fa21e3d2bfb9fafddec0488852377fbb2dbdd6c066ca05bb5c4b6aa840fb7879 Hash Sha256" Hash="FACC577070CF72CB8D9247E36054FCB30C60A35AE056CFFAC7411648C513E642" />
    <Deny ID="ID_DENY_BEDAISY_A4" FriendlyName="BEDaisy.sys\fa21e3d2bfb9fafddec0488852377fbb2dbdd6c066ca05bb5c4b6aa840fb7879 Hash Page Sha1" Hash="C108FFAA673FE8DA888ADEC33C14A72185B0B949" />
    <Deny ID="ID_DENY_BEDAISY_A5" FriendlyName="BEDaisy.sys\fa21e3d2bfb9fafddec0488852377fbb2dbdd6c066ca05bb5c4b6aa840fb7879 Hash Page Sha256" Hash="C621FB06937AFC35A944BA5F495D733E512F20E3A8305A8FC6ADF15993041ADB" />
    <Deny ID="ID_DENY_BEDAISY_A6" FriendlyName="BEDaisy.sys\ffd03584246730397e231eb8d16c1449aef2c3bc79bf9da3ebf8400a21b20ae7 Hash Sha1" Hash="6A0FC9C1B6267BD2FB1C71D7EEE45CAF1F4E7B83" />
    <Deny ID="ID_DENY_BEDAISY_A7" FriendlyName="BEDaisy.sys\ffd03584246730397e231eb8d16c1449aef2c3bc79bf9da3ebf8400a21b20ae7 Hash Sha256" Hash="B1AD1AF005BD78E1EA1D1EEF5041C2BDB46F60A9BAA60F4B7BE21F9603F99DF0" />
    <Deny ID="ID_DENY_BEDAISY_A8" FriendlyName="BEDaisy.sys\ffd03584246730397e231eb8d16c1449aef2c3bc79bf9da3ebf8400a21b20ae7 Hash Page Sha1" Hash="7DCE104576DB9CB565DC9BD09955DF89782D7F44" />
    <Deny ID="ID_DENY_BEDAISY_A9" FriendlyName="BEDaisy.sys\ffd03584246730397e231eb8d16c1449aef2c3bc79bf9da3ebf8400a21b20ae7 Hash Page Sha256" Hash="B3C8D116CB3D8F3E75F216DEBDFBE2B1523D496CCF9D7E5916C476BFC8A7F477" />
    <Deny ID="ID_DENY_BSFLASH64_SHA1" FriendlyName="BS_Flash64.sys Hash Sha1" Hash="5107438A02164E1BCEDD556A786F37F59CD04231" />
    <Deny ID="ID_DENY_BSFLASH64_SHA256" FriendlyName="BS_Flash64.sys Hash Sha256" Hash="543C3F024E4AFFD0AAFA3A229FA19DBE7A70972BB18ED6347D3492DD174EDAC5" />
    <Deny ID="ID_DENY_BSFLASH64_SHA1_PAGE" FriendlyName="BS_Flash64.sys Hash Page Sha1" Hash="26C398B86FD33B3E6C4348F780C4CF758C99C8FD" />
    <Deny ID="ID_DENY_BSFLASH64_SHA256_PAGE" FriendlyName="BS_Flash64.sys Hash Page Sha256" Hash="8BF958AFA751D7AB66EBB1FAE25679E6F0FDE72078AEFC09F1824EEFA526005E" />
    <Deny ID="ID_DENY_BSHWMIO64_SHA1" FriendlyName="BS_HWMIo64.sys Hash Sha1" Hash="3281135748C9C7A9DDACE55C648C720AF810475F" />
    <Deny ID="ID_DENY_BSHWMIO64_SHA256" FriendlyName="BS_HWMIo64.sys Hash Sha256" Hash="3DE51A3102DB7297D96B4DE5B60ACA5F3A07E8577BBBED7F755F1DE9A9C38E75" />
    <Deny ID="ID_DENY_BSHWMIO64_SHA1_PAGE" FriendlyName="BS_HWMIo64.sys Hash Page Sha1" Hash="FC5F231383FE72E298893010A9A3714B205C4110" />
    <Deny ID="ID_DENY_BSHWMIO64_SHA256_PAGE" FriendlyName="BS_HWMIo64.sys Hash Page Sha256" Hash="6AD3624CA1DC38ECEEC75234E50934B1BAD7C72621DC57DEAB09044D0135877D" />
    <Deny ID="ID_DENY_BSHWMIO64_SHA1_1" FriendlyName="BS_HWMIo64.sys\6dafd15ee2fbce87fef1279312660fc399c4168f55b6e6d463bf680f1979adcf Hash Sha1" Hash="EDDCDD3838C05F5B95661D5404BF5D510EF34EB3" />
    <Deny ID="ID_DENY_BSHWMIO64_SHA256_1" FriendlyName="BS_HWMIo64.sys\6dafd15ee2fbce87fef1279312660fc399c4168f55b6e6d463bf680f1979adcf Hash Sha256" Hash="7EA9B2420483183CF7B25D6577848F2DFE2AE064A61D931D6B8B65B31A1B2685" />
    <Deny ID="ID_DENY_BSHWMIO64_SHA1_PAGE_1" FriendlyName="BS_HWMIo64.sys\6dafd15ee2fbce87fef1279312660fc399c4168f55b6e6d463bf680f1979adcf Hash Page Sha1" Hash="7E21A9D03BCB6DD7597AD70B59CBD1F5930FFBF1" />
    <Deny ID="ID_DENY_BSHWMIO64_SHA256_PAGE_1" FriendlyName="BS_HWMIo64.sys\6dafd15ee2fbce87fef1279312660fc399c4168f55b6e6d463bf680f1979adcf Hash Page Sha256" Hash="74C425BFDDD93700379E677F5CED47FC0FB4FFFC8B2E416A5247D91E5F2704E3" />
    <Deny ID="ID_DENY_BS_RCIO_08" FriendlyName="BS_RCIO\1d0105b5e41fe0280f66d7a24eb00a04c03caaec Hash Sha1" Hash="1D0105B5E41FE0280F66D7A24EB00A04C03CAAEC" />
    <Deny ID="ID_DENY_BS_RCIO_09" FriendlyName="BS_RCIO\d9111b2bedf78a769bb0799b964663cd119edaa8 Hash Sha1" Hash="D9111B2BEDF78A769BB0799B964663CD119EDAA8" />
    <Deny ID="ID_DENY_BS_RCIO_10" FriendlyName="BS_RCIO\362c4f3dadc9c393682664a139d65d80e32caa2a97b6e0361dfd713a73267ecc Hash Sha1" Hash="3311E4E94E8A6DD81859719FBE0FCBF187F0BD8A" />
    <Deny ID="ID_DENY_BS_RCIO_11" FriendlyName="BS_RCIO\362c4f3dadc9c393682664a139d65d80e32caa2a97b6e0361dfd713a73267ecc Hash Sha256" Hash="F67E60228084151FDCB84E94A48693DB864CF606B65FAEF5A1D829175380DBFA" />
    <Deny ID="ID_DENY_BS_RCIO_12" FriendlyName="BS_RCIO\362c4f3dadc9c393682664a139d65d80e32caa2a97b6e0361dfd713a73267ecc Hash Page Sha1" Hash="6C5340CA145D93FB04F8C45297B013D7A76CC816" />
    <Deny ID="ID_DENY_BS_RCIO_13" FriendlyName="BS_RCIO\362c4f3dadc9c393682664a139d65d80e32caa2a97b6e0361dfd713a73267ecc Hash Page Sha256" Hash="DB004632D7E5EB01B13D826E476A45812BAD3E84A07D00F331D4C17A94A15366" />
    <Deny ID="ID_DENY_BS_RCIO_14" FriendlyName="BS_RCIO\6191c20426dd9b131122fb97e45be64a4d6ce98cc583406f38473434636ddedc Hash Sha1" Hash="3C8CAB4C08A37A105200FEB8F07DD818C8F03BFF" />
    <Deny ID="ID_DENY_BS_RCIO_15" FriendlyName="BS_RCIO\6191c20426dd9b131122fb97e45be64a4d6ce98cc583406f38473434636ddedc Hash Sha256" Hash="545190E8B2A910E153B12559A9875154A1B40D6424CB4A6299A84B2DC99DF700" />
    <Deny ID="ID_DENY_BS_RCIO_16" FriendlyName="BS_RCIO\6191c20426dd9b131122fb97e45be64a4d6ce98cc583406f38473434636ddedc Hash Page Sha1" Hash="0B20D30317527C83B72A0F5ED6416060BF005A02" />
    <Deny ID="ID_DENY_BS_RCIO_17" FriendlyName="BS_RCIO\6191c20426dd9b131122fb97e45be64a4d6ce98cc583406f38473434636ddedc Hash Page Sha256" Hash="A2BFCECB9099B2022B51EB15977DF4EF228305FC24A3AD0F36FF43F7309B2820" />
    <Deny ID="ID_DENY_BS_RCIO_18" FriendlyName="BS_RCIO\73327429c505d8c5fd690a8ec019ed4fd5a726b607cabe71509111c7bfe9fc7e Hash Sha1" Hash="4BFE9E5A5A25B7CDE6C81EBE31ED4ABEB5147FAF" />
    <Deny ID="ID_DENY_BS_RCIO_19" FriendlyName="BS_RCIO\73327429c505d8c5fd690a8ec019ed4fd5a726b607cabe71509111c7bfe9fc7e Hash Sha256" Hash="0381632CD236CD94FA9E64CCC958516AC50F9437F99092E231A607B1E6BE6CF8" />
    <Deny ID="ID_DENY_BS_RCIO_1A" FriendlyName="BS_RCIO\73327429c505d8c5fd690a8ec019ed4fd5a726b607cabe71509111c7bfe9fc7e Hash Page Sha1" Hash="C28B640BECA5E2834D2A373F139869CC309F6631" />
    <Deny ID="ID_DENY_BS_RCIO_1B" FriendlyName="BS_RCIO\73327429c505d8c5fd690a8ec019ed4fd5a726b607cabe71509111c7bfe9fc7e Hash Page Sha256" Hash="9378F7DFF94D9409D38FA1A125C52734D6BAEA90913FC3CEE2659FD36AB0DA29" />
    <Deny ID="ID_DENY_BS_RCIO_1C" FriendlyName="BS_RCIO\d55b675941da4cc9be05f2ef7cea15784074772da585e5bf56d5be15afde4789 Hash Sha1" Hash="7297D6511634ECA91FEA5C5F3FAAB785DD13082B" />
    <Deny ID="ID_DENY_BS_RCIO_1D" FriendlyName="BS_RCIO\d55b675941da4cc9be05f2ef7cea15784074772da585e5bf56d5be15afde4789 Hash Sha256" Hash="B3346AA8A3760128C99D7A80E8BBEEE66840CE419B9819E30CB08354C096EF93" />
    <Deny ID="ID_DENY_BS_RCIO_1E" FriendlyName="BS_RCIO\d55b675941da4cc9be05f2ef7cea15784074772da585e5bf56d5be15afde4789 Hash Page Sha1" Hash="F93F92147E77B2C40BB13A30B7A469961B6E37F6" />
    <Deny ID="ID_DENY_BS_RCIO_1F" FriendlyName="BS_RCIO\d55b675941da4cc9be05f2ef7cea15784074772da585e5bf56d5be15afde4789 Hash Page Sha256" Hash="1497746B441564887F2AE97FAAC17145C727F170B225073A3CC45CF6BBABACF0" />
    <Deny ID="ID_DENY_BS_RCIO_20" FriendlyName="BS_RCIO\e9e711056fada8681f3eb5578a0d449b68568bc812e29dfcc0b92b9a9e481202 Hash Sha1" Hash="B798995FBAAB33D0DB4AC8C58551254768C76554" />
    <Deny ID="ID_DENY_BS_RCIO_21" FriendlyName="BS_RCIO\e9e711056fada8681f3eb5578a0d449b68568bc812e29dfcc0b92b9a9e481202 Hash Sha256" Hash="30591EA53FBA8BAD22A017CF5A268211790706B7863F007CE20A77F2E3459170" />
    <Deny ID="ID_DENY_BS_RCIO_22" FriendlyName="BS_RCIO\e9e711056fada8681f3eb5578a0d449b68568bc812e29dfcc0b92b9a9e481202 Hash Page Sha1" Hash="AF5B84A2456E2621F920D61130DDAAD32CD4729F" />
    <Deny ID="ID_DENY_BS_RCIO_23" FriendlyName="BS_RCIO\e9e711056fada8681f3eb5578a0d449b68568bc812e29dfcc0b92b9a9e481202 Hash Page Sha256" Hash="6F698A9123CC763F0F035CF50177BF5690B4644802746C8C2F06F59CFC0D9F81" />
    <Deny ID="ID_DENY_DELLBIOS_1" FriendlyName="DellBIOS.sys\163912dfa4ad141e689e1625e994ab7c1f335410ebff0ade86bda3b7cdf6e065 Hash Sha1" Hash="A5F8E8044E4ADD00FEF7F43725C8E6E121BA0E6A"/>
    <Deny ID="ID_DENY_DELLBIOS_2" FriendlyName="DellBIOS.sys\163912dfa4ad141e689e1625e994ab7c1f335410ebff0ade86bda3b7cdf6e065 Hash Sha256" Hash="E2B6350E17E9B24B7140EED743B4AE0B01453BBB8CB73B091B51E2306017D80F"/>
    <Deny ID="ID_DENY_DELLBIOS_3" FriendlyName="DellBIOS.sys\163912dfa4ad141e689e1625e994ab7c1f335410ebff0ade86bda3b7cdf6e065 Hash Page Sha1" Hash="BC93DBE8834352583E15F5D4A41D166EB2680660"/>
    <Deny ID="ID_DENY_DELLBIOS_4" FriendlyName="DellBIOS.sys\163912dfa4ad141e689e1625e994ab7c1f335410ebff0ade86bda3b7cdf6e065 Hash Page Sha256" Hash="DF3B9926DD1F23BEC0B0D6DFF834904F126C5A8734F936178D2259F22042E1CB"/>
    <Deny ID="ID_DENY_DELLBIOS_5" FriendlyName="DellBIOS.sys\3678ba63d62efd3b706d1b661d631ded801485c08b5eb9a3ef38380c6cff319a Hash Sha1" Hash="280FCEDFE4013A14BF122A917AE2FA469142714C"/>
    <Deny ID="ID_DENY_DELLBIOS_6" FriendlyName="DellBIOS.sys\3678ba63d62efd3b706d1b661d631ded801485c08b5eb9a3ef38380c6cff319a Hash Sha256" Hash="EE067313BD75ACAE24E1661CB6807ED6148F9AF34542ED77578144B21F5C8DA1"/>
    <Deny ID="ID_DENY_DELLBIOS_7" FriendlyName="DellBIOS.sys\3678ba63d62efd3b706d1b661d631ded801485c08b5eb9a3ef38380c6cff319a Hash Page Sha1" Hash="E6B426504312BCDD63191AD35FE6B464EB1CB1B5"/>
    <Deny ID="ID_DENY_DELLBIOS_8" FriendlyName="DellBIOS.sys\3678ba63d62efd3b706d1b661d631ded801485c08b5eb9a3ef38380c6cff319a Hash Page Sha256" Hash="0E2D9FA6D1B4E5CC73CCCB5FAB712531D3DB89F552183356077665EF5C0E119A"/>
    <Deny ID="ID_DENY_DELLBIOS_9" FriendlyName="DellBIOS.sys\5bf3985644308662ebfa2fbcc11fb4d3e2a0c817ad3da1a791020f8c8589ebc8 Hash Sha1" Hash="808B0DE6F644D48C4ED0C9B607A17362EC3DF083"/>
    <Deny ID="ID_DENY_DELLBIOS_10" FriendlyName="DellBIOS.sys\5bf3985644308662ebfa2fbcc11fb4d3e2a0c817ad3da1a791020f8c8589ebc8 Hash Sha256" Hash="B8E047A7C96A94EB7CF0416253ECA48FA7BA66914B684EE75E81651C83C7AC30"/>
    <Deny ID="ID_DENY_DELLBIOS_11" FriendlyName="DellBIOS.sys\5bf3985644308662ebfa2fbcc11fb4d3e2a0c817ad3da1a791020f8c8589ebc8 Hash Page Sha1" Hash="7E06EB584FB8815553A0A63295193DCC8E57CE47"/>
    <Deny ID="ID_DENY_DELLBIOS_12" FriendlyName="DellBIOS.sys\5bf3985644308662ebfa2fbcc11fb4d3e2a0c817ad3da1a791020f8c8589ebc8 Hash Page Sha256" Hash="F47BE8407E6D9AD6D938EE55CDC45BAB6F02A99711B99F110FE5CDA93F27A2FD"/>
    <Deny ID="ID_DENY_DELLBIOS_13" FriendlyName="DellBIOS.sys\6575ea9b319beb3845d43ce2c70ea55f0414da2055fa82eec324c4cebdefe893 Hash Sha1" Hash="AC1D5F3691326940BB3CB471097296FF7D21DC9B"/>
    <Deny ID="ID_DENY_DELLBIOS_14" FriendlyName="DellBIOS.sys\6575ea9b319beb3845d43ce2c70ea55f0414da2055fa82eec324c4cebdefe893 Hash Sha256" Hash="419B5BCA6D43650893D5E044E785C0AD87CBE1185DE0D3FEAA9F681C6E7F50B4"/>
    <Deny ID="ID_DENY_DELLBIOS_15" FriendlyName="DellBIOS.sys\6575ea9b319beb3845d43ce2c70ea55f0414da2055fa82eec324c4cebdefe893 Hash Page Sha1" Hash="8322FD18133859C11F6BFF906678BAFDF7DD2C32"/>
    <Deny ID="ID_DENY_DELLBIOS_16" FriendlyName="DellBIOS.sys\6575ea9b319beb3845d43ce2c70ea55f0414da2055fa82eec324c4cebdefe893 Hash Page Sha256" Hash="661A1CD445C0D43465F3AB44AA68F407CE1C873469AD74AA8C28109AA67F07C3"/>
    <Deny ID="ID_DENY_DELLBIOS_17" FriendlyName="DellBIOS.sys\700b9839fde53e91f0847053b4d2eb8d9bd3aca098844510f1fa3bab6a37eb24 Hash Sha1" Hash="03952B6DDCDFC4A2AB375DCE0475CEA07113AD36"/>
    <Deny ID="ID_DENY_DELLBIOS_18" FriendlyName="DellBIOS.sys\700b9839fde53e91f0847053b4d2eb8d9bd3aca098844510f1fa3bab6a37eb24 Hash Sha256" Hash="7C62A659A4F8FDECFD5A64F4F4391852996DB564D123FC5D20E3F3DFB11ED62C"/>
    <Deny ID="ID_DENY_DELLBIOS_19" FriendlyName="DellBIOS.sys\700b9839fde53e91f0847053b4d2eb8d9bd3aca098844510f1fa3bab6a37eb24 Hash Page Sha1" Hash="1C6165E7E1F075C95DE654261634AD6758DA1599"/>
    <Deny ID="ID_DENY_DELLBIOS_20" FriendlyName="DellBIOS.sys\700b9839fde53e91f0847053b4d2eb8d9bd3aca098844510f1fa3bab6a37eb24 Hash Page Sha256" Hash="DD4C3666BF9205F21709F33E51AB072F5D0857B29D02A1A6401B9079998D17E2"/>
    <Deny ID="ID_DENY_DHKERNEL_1" FriendlyName="YY_DhKernel\80cbba9f404df3e642f22c476664d63d7c229d45d34f5cd0e19c65eb41becec3 Hash Sha1" Hash="B92959042D232605ABBA254BC0368B87EC047079" />
    <Deny ID="ID_DENY_DHKERNEL_2" FriendlyName="YY_DhKernel\80cbba9f404df3e642f22c476664d63d7c229d45d34f5cd0e19c65eb41becec3 Hash Sha256" Hash="C786F3CA229DA18B2806AF4D57ECAD603859EE548549B19F71A623F477FC740E" />
    <Deny ID="ID_DENY_DHKERNEL_3" FriendlyName="YY_DhKernel\80cbba9f404df3e642f22c476664d63d7c229d45d34f5cd0e19c65eb41becec3 Hash Page Sha1" Hash="CFE049C9BAB44EDD22D135330F7825063F1307B4" />
    <Deny ID="ID_DENY_DHKERNEL_4" FriendlyName="YY_DhKernel\80cbba9f404df3e642f22c476664d63d7c229d45d34f5cd0e19c65eb41becec3 Hash Page Sha256" Hash="8146C482151930412A3A648CEFE80643FB1016214117BFF256153E52D01E4ED2" />
    <Deny ID="ID_DENY_DHKERNEL_5" FriendlyName="YY_DhKernel\bb50818a07b0eb1bd317467139b7eb4bad6cd89053fecdabfeae111689825955 Hash Sha1" Hash="508C1A26486188AA1268D6C23C65E57B8EFE71F6" />
    <Deny ID="ID_DENY_DHKERNEL_6" FriendlyName="YY_DhKernel\bb50818a07b0eb1bd317467139b7eb4bad6cd89053fecdabfeae111689825955 Hash Sha256" Hash="F5215F83138901CA7ADE60C2222446FA3DD7E8900A745BD339F8A596CB29356C" />
    <Deny ID="ID_DENY_DHKERNEL_8" FriendlyName="YY_DhKernel\bb50818a07b0eb1bd317467139b7eb4bad6cd89053fecdabfeae111689825955 Hash Page Sha1" Hash="475E1306D823702264DB8451D8A1D3512E7CA260" />
    <Deny ID="ID_DENY_DHKERNEL_9" FriendlyName="YY_DhKernel\bb50818a07b0eb1bd317467139b7eb4bad6cd89053fecdabfeae111689825955 Hash Page Sha256" Hash="2BF083DCADC1CAE99AD5C5901317130C1230A228208F37DCB4DF341394442299" />
    <Deny ID="ID_DENY_DHKERNEL_10" FriendlyName="YY_DhKernel\dcd026fd2ff8d517e2779d67b3d2d5f9a7aa39f19c66fa8ff2cab66d5c6461c6 Hash Sha1" Hash="39ED8A86F91A548AE05E71E9C1C337ED4FAD8EE4" />
    <Deny ID="ID_DENY_DHKERNEL_11" FriendlyName="YY_DhKernel\dcd026fd2ff8d517e2779d67b3d2d5f9a7aa39f19c66fa8ff2cab66d5c6461c6 Hash Sha256" Hash="8BCE2AFD04EC073143A2A4BA51671992451C8E747A84852458321F2D275B5433" />
    <Deny ID="ID_DENY_DHKERNEL_12" FriendlyName="YY_DhKernel\dcd026fd2ff8d517e2779d67b3d2d5f9a7aa39f19c66fa8ff2cab66d5c6461c6 Hash Page Sha1" Hash="890A839069A81D76EB8FB53C9D18F8BE09C101F2" />
    <Deny ID="ID_DENY_DHKERNEL_13" FriendlyName="YY_DhKernel\dcd026fd2ff8d517e2779d67b3d2d5f9a7aa39f19c66fa8ff2cab66d5c6461c6 Hash Page Sha256" Hash="F7365B2ECAD159FFD61261F114333765FD73E3039270F51837EB24A63455AE9A" />
    <Deny ID="ID_DENY_DIRECTIO_12" FriendlyName="PassMark DirectIo.sys Hash Sha1" Hash="E8F7E20061F9CC20583DCAB3B16054D106B8AA83" />
    <Deny ID="ID_DENY_DIRECTIO_13" FriendlyName="PassMark DirectIo.sys Hash Sha256" Hash="B8BF3BD441EBC5814C5D39D053FDCB263E8E58476CBDEE4B1226903305F547B6" />
    <Deny ID="ID_DENY_DIRECTIO_14" FriendlyName="PassMark DirectIo.sys Hash Page Sha1" Hash="36875A862D1E762E6CC75595EF37EA7460A1E1DF" />
    <Deny ID="ID_DENY_DIRECTIO_15" FriendlyName="PassMark DirectIo.sys Hash Page Sha256" Hash="AC706D9ED906B5C879F6AD59FFB56FA6BC5E1395FE9ADF7C60F7EB94D044D018" />
    <Deny ID="ID_DENY_DIRECTIO_16" FriendlyName="PassMark DirectIo.sys Hash Sha1" Hash="DCDB7BF7E237B9BDA190F60E386A49A7C3494F8D" />
    <Deny ID="ID_DENY_DIRECTIO_17" FriendlyName="PassMark DirectIo.sys Hash Sha256" Hash="F34C667C0DA3CD813E60F11B67338723252BEB9BD43FC5E0C8C7265F263D2BD9" />
    <Deny ID="ID_DENY_DIRECTIO_18" FriendlyName="PassMark DirectIo.sys Hash Page Sha1" Hash="179601E33B5AE4E2EA13F34FD084B1FCBD56FBCE" />
    <Deny ID="ID_DENY_DIRECTIO_19" FriendlyName="PassMark DirectIo.sys Hash Page Sha256" Hash="C7B193F92A943AFBC0EB57B23B5BE5E66F66574051BF838B6735E13733DA1809" />
    <Deny ID="ID_DENY_DIRECTIO_1A" FriendlyName="PassMark DirectIo.sys Hash Sha1" Hash="8B86E08D610BCC9AB7B7750F036DBB568F733BE0" />
    <Deny ID="ID_DENY_DIRECTIO_1B" FriendlyName="PassMark DirectIo.sys Hash Sha256" Hash="841F965977F33D621D126412032C47DD6118251623C380E5572F7553B620B0E1" />
    <Deny ID="ID_DENY_DIRECTIO_1C" FriendlyName="PassMark DirectIo.sys Hash Page Sha1" Hash="6BD3AB2E730561F7D1385DCFEF81C1FA67398C8C" />
    <Deny ID="ID_DENY_DIRECTIO_1D" FriendlyName="PassMark DirectIo.sys Hash Page Sha256" Hash="D3ECCD41C75046CA9A72AF273C132AEDED1D6572A20D1A64ED08337204B9DA83" />
    <Deny ID="ID_DENY_DIRECTIO_1E" FriendlyName="PassMark DirectIo.sys Hash Sha1" Hash="02A7E085631ECFE031B76AFA883A266C850ED61B" />
    <Deny ID="ID_DENY_DIRECTIO_1F" FriendlyName="PassMark DirectIo.sys Hash Sha256" Hash="FB5E65AEC819C5A91EF0CE0FEC0A957826B5E1AC9BAC559A1B4201A3870462A3" />
    <Deny ID="ID_DENY_DIRECTIO_20" FriendlyName="PassMark DirectIo.sys Hash Page Sha1" Hash="C3596085C90D81C2C51A75558211AD44C853C358" />
    <Deny ID="ID_DENY_DIRECTIO_21" FriendlyName="PassMark DirectIo.sys Hash Page Sha256" Hash="D402FE9EED2C0A26AAF2CB2311019FFF7004965AA2D22702974203A50A52C9B0" />
    <Deny ID="ID_DENY_DIRECTIO_22" FriendlyName="PassMark DirectIo.sys Hash Sha1" Hash="66941573DAFD7259CBA113C0FA9EACCD347355FD" />
    <Deny ID="ID_DENY_DIRECTIO_23" FriendlyName="PassMark DirectIo.sys Hash Sha256" Hash="A520FF5C754A1FB62BA88399A313D0C0FB99145BA2D3D91DBF4282388B77FA84" />
    <Deny ID="ID_DENY_DIRECTIO_24" FriendlyName="PassMark DirectIo.sys Hash Page Sha1" Hash="588A9F349E520AA5AC5BD650B75345419B28AE85" />
    <Deny ID="ID_DENY_DIRECTIO_25" FriendlyName="PassMark DirectIo.sys Hash Page Sha256" Hash="2E7B3C52FE1541B51F814B82FCED59513DE249B6834B4B2C94ACD97CA889477C" />
    <Deny ID="ID_DENY_DIRECTIO_26" FriendlyName="PassMark DirectIo.sys Hash Sha1" Hash="8EC43D1DEF8BB20354AEBA49A9084BACD2C02817" />
    <Deny ID="ID_DENY_DIRECTIO_27" FriendlyName="PassMark DirectIo.sys Hash Sha256" Hash="AD44CFD9C6262A6FF36EE9D03E59BA4B0524EF87F6B980CE15ABB10A35D39F88" />
    <Deny ID="ID_DENY_DIRECTIO_28" FriendlyName="PassMark DirectIo.sys Hash Page Sha1" Hash="708EAD1221FB176AA9594F9E0AA7F783704FB962" />
    <Deny ID="ID_DENY_DIRECTIO_29" FriendlyName="PassMark DirectIo.sys Hash Page Sha256" Hash="80BFD0EAD1EA54219D6A1A454242CAA6C2397FA94AF1B4E10D269B670AFDA898" />
    <Deny ID="ID_DENY_DIRECTIO_2A" FriendlyName="PassMark DirectIo.sys Hash Sha1" Hash="F1BDD3236F43338A119D74ECA730F0D464DED973" />
    <Deny ID="ID_DENY_DIRECTIO_2B" FriendlyName="PassMark DirectIo.sys Hash Sha256" Hash="96A5B3CD7C1A6DDA5B6F402E6C35BA535270467F56ADDC7448DBE4AA78428411" />
    <Deny ID="ID_DENY_DIRECTIO_2C" FriendlyName="PassMark DirectIo.sys Hash Page Sha1" Hash="A14331F63EC907BF3E472F1E0CB8F19DE06EF4E4" />
    <Deny ID="ID_DENY_DIRECTIO_2D" FriendlyName="PassMark DirectIo.sys Hash Page Sha256" Hash="7F0A28CCF0AB76964D40E063F9D4B88193B77E4BADF66E8C8F87C97127885987" />
    <Deny ID="ID_DENY_DIRECTIO_2E" FriendlyName="PassMark DirectIo.sys Hash Sha1" Hash="FCA1EE04BE5D7752A1AD717A6AAC9C143C5C8BCD" />
    <Deny ID="ID_DENY_DIRECTIO_2F" FriendlyName="PassMark DirectIo.sys Hash Sha256" Hash="E219276A4068B1EEA5CE08F83A322845DCE4ECA89E05C71A0C2417065CE48813" />
    <Deny ID="ID_DENY_DIRECTIO_30" FriendlyName="PassMark DirectIo.sys Hash Page Sha1" Hash="0D1DC447860DC9B9B7FA278FF16120E14064517C" />
    <Deny ID="ID_DENY_DIRECTIO_31" FriendlyName="PassMark DirectIo.sys Hash Page Sha256" Hash="EBFBFA7C84036A4CF0114BBB0C8017B532F37D846589AEB0004BC8B1F5F4D230" />
    <Deny ID="ID_DENY_DIRECTIO_32" FriendlyName="PassMark DirectIo.sys Hash Sha1" Hash="EBF8C7DC8292950ACC260A0E473678AE3C56B210" />
    <Deny ID="ID_DENY_DIRECTIO_33" FriendlyName="PassMark DirectIo.sys Hash Sha256" Hash="43B7715E38449BF82AD0BB6B11D03DA42150C1EE23148C5F396CC4AB1001622D" />
    <Deny ID="ID_DENY_DIRECTIO_34" FriendlyName="PassMark DirectIo.sys Hash Page Sha1" Hash="05E20D0274A4FCC5368F25C62174003A555917E7" />
    <Deny ID="ID_DENY_DIRECTIO_35" FriendlyName="PassMark DirectIo.sys Hash Page Sha256" Hash="70344F2494D6B7EE4C5716E886D912447CFFE9695D2286814DC3CE0361727BBA" />
    <Deny ID="ID_DENY_DIRECTIO_36" FriendlyName="PassMark DirectIo.sys Hash Sha1" Hash="706686F2A1EF4738A1856D01AB10EB730FC7B327" />
    <Deny ID="ID_DENY_DIRECTIO_37" FriendlyName="PassMark DirectIo.sys Hash Sha1" Hash="B74246C8CB77B0364B7CECE38BFF5F462EEC983C" />
    <Deny ID="ID_DENY_DIRECTIO_38" FriendlyName="PassMark DirectIo.sys Hash Sha1" Hash="B423CA58603513B5D3A9669736D5E13C353FD6F9" />
    <Deny ID="ID_DENY_DIRECTIO_39" FriendlyName="PassMark DirectIo.sys Hash Sha256" Hash="2FB5D7E6DB01C9090BBA92ABF580D38993E02CE9357E08FE1F224A9B18056E5A" />
    <Deny ID="ID_DENY_DIRECTIO_3A" FriendlyName="PassMark DirectIo.sys Hash Sha1" Hash="AE806CA05E141B71664D9C6F20CC2369EF26F996" />
    <Deny ID="ID_DENY_DIRECTIO_3B" FriendlyName="PassMark DirectIo.sys Hash Sha1" Hash="D0559503988DAA407FCC11E59079560CB456BB84" />
    <Deny ID="ID_DENY_DIRECTIO_42" FriendlyName="DirectIO32\035b96ff8b85d312be0f9df6271714392a802ec8bab59ae8229812ddc67ced5a Hash Sha1" Hash="59C8F056DEA50A4B6F6F63E50037089965568910" />
    <Deny ID="ID_DENY_DIRECTIO_43" FriendlyName="DirectIO32\035b96ff8b85d312be0f9df6271714392a802ec8bab59ae8229812ddc67ced5a Hash Sha256" Hash="2FB5D7E6DB01C9090BBA92ABF580D38993E02CE9357E08FE1F224A9B18056E5A" />
    <Deny ID="ID_DENY_DIRECTIO_44" FriendlyName="DirectIO32\035b96ff8b85d312be0f9df6271714392a802ec8bab59ae8229812ddc67ced5a Hash Page Sha1" Hash="76F561B94050F02639B216A27D221DCE66135A43" />
    <Deny ID="ID_DENY_DIRECTIO_45" FriendlyName="DirectIO32\035b96ff8b85d312be0f9df6271714392a802ec8bab59ae8229812ddc67ced5a Hash Page Sha256" Hash="2C75CAEE18ECB8F6A3B41EF6CE13A65D847BC912423AB095CE760979D8D8E3B4" />
    <Deny ID="ID_DENY_DIRECTIO_46" FriendlyName="DirectIO32\0be4912bfd7a79f6ebfa1c06a59f0fb402bd4fe0158265780509edd0e562eac1 Hash Sha1" Hash="956C004DBED19D2682F159E03D4FAA3E2E8FC56C" />
    <Deny ID="ID_DENY_DIRECTIO_47" FriendlyName="DirectIO32\0be4912bfd7a79f6ebfa1c06a59f0fb402bd4fe0158265780509edd0e562eac1 Hash Sha256" Hash="A8492A553EE840235FD12FA47B6CAF1E5A8C82C3F4B681921246D7F192ED9126" />
    <Deny ID="ID_DENY_DIRECTIO_48" FriendlyName="DirectIO32\0be4912bfd7a79f6ebfa1c06a59f0fb402bd4fe0158265780509edd0e562eac1 Hash Page Sha1" Hash="08B00DD47D591EE66BC89CFFA424EDC7A9D2F880" />
    <Deny ID="ID_DENY_DIRECTIO_49" FriendlyName="DirectIO32\0be4912bfd7a79f6ebfa1c06a59f0fb402bd4fe0158265780509edd0e562eac1 Hash Page Sha256" Hash="533C0CFEA1AF366C116F563D24F1D0845F6619330E2655BDD12CEF97E99B7F52" />
    <Deny ID="ID_DENY_DIRECTIO_4A" FriendlyName="DirectIO32\12d5a3d3f3226839c446bb5f7f2aa8dd7593d2bac8dd0d101d1c95145d10b01e Hash Sha1" Hash="7AE9EB8FC6B922524C0A571AAA006731B5CD4F0B" />
    <Deny ID="ID_DENY_DIRECTIO_4B" FriendlyName="DirectIO32\12d5a3d3f3226839c446bb5f7f2aa8dd7593d2bac8dd0d101d1c95145d10b01e Hash Sha256" Hash="FCA8E921D56DF22EE5A9C9FCE349385F4C8C5D490A880CB65DD01F8F13D73510" />
    <Deny ID="ID_DENY_DIRECTIO_4C" FriendlyName="DirectIO32\12d5a3d3f3226839c446bb5f7f2aa8dd7593d2bac8dd0d101d1c95145d10b01e Hash Page Sha1" Hash="397D2707C1AE3FB2921278CF9ABA87160D4BBD6D" />
    <Deny ID="ID_DENY_DIRECTIO_4D" FriendlyName="DirectIO32\12d5a3d3f3226839c446bb5f7f2aa8dd7593d2bac8dd0d101d1c95145d10b01e Hash Page Sha256" Hash="EF081F46B22B000E24A64FB82439950F76350844B6276E3BD0409CD2114A6A58" />
    <Deny ID="ID_DENY_DIRECTIO_4E" FriendlyName="DirectIO32\16461fe1855e4cb4a5e3203f98a69376ad2dc8f69f1d43463206fdd6784b7fbf Hash Sha1" Hash="A48F4D7F1B02DACD4EB4FD51745765FCDB4BA0DE" />
    <Deny ID="ID_DENY_DIRECTIO_4F" FriendlyName="DirectIO32\16461fe1855e4cb4a5e3203f98a69376ad2dc8f69f1d43463206fdd6784b7fbf Hash Sha256" Hash="FF8FDB301AD9AA29DCA21E43BA7946AF92E980C6CA448A58DD3EFE4D9BD336AE" />
    <Deny ID="ID_DENY_DIRECTIO_50" FriendlyName="DirectIO32\2fc5f41dd013af78fc594e427f462161f61bf72403b9795133cc89d28d962722 Hash Sha1" Hash="01EB3760261439B8E230EBA09E9A63F5D3088C54" />
    <Deny ID="ID_DENY_DIRECTIO_51" FriendlyName="DirectIO32\2fc5f41dd013af78fc594e427f462161f61bf72403b9795133cc89d28d962722 Hash Sha256" Hash="BC0CBC6B88892F3EFF2B47F65CEA98D1E66E4FBC9D3423AEBA511854D5250A44" />
    <Deny ID="ID_DENY_DIRECTIO_52" FriendlyName="DirectIO32\2fc5f41dd013af78fc594e427f462161f61bf72403b9795133cc89d28d962722 Hash Page Sha1" Hash="E9141B742FA38ABDB1EA415D8431EE9A540CCCC8" />
    <Deny ID="ID_DENY_DIRECTIO_53" FriendlyName="DirectIO32\2fc5f41dd013af78fc594e427f462161f61bf72403b9795133cc89d28d962722 Hash Page Sha256" Hash="7FBBDD248A335EF984CD773BE07AD88894C8FA9FB252378EA830863BD8233AB5" />
    <Deny ID="ID_DENY_DIRECTIO_54" FriendlyName="DirectIO32\38b3eb8c86201d26353aab625cea672e60c2f66ce6f5e5eda673e8c3478bf305 Hash Sha1" Hash="1AD46A8E038A62E146DDB5A4FE8CA5A56C53F018" />
    <Deny ID="ID_DENY_DIRECTIO_55" FriendlyName="DirectIO32\38b3eb8c86201d26353aab625cea672e60c2f66ce6f5e5eda673e8c3478bf305 Hash Sha256" Hash="542CD21B0C835B818E6B2EEA2EFE5B340FF3D554B2B7E13AF084F0817CC920FD" />
    <Deny ID="ID_DENY_DIRECTIO_56" FriendlyName="DirectIO32\38b3eb8c86201d26353aab625cea672e60c2f66ce6f5e5eda673e8c3478bf305 Hash Page Sha1" Hash="7CB9C71D717C466A9AD64F61AFABAF30BFE7372D" />
    <Deny ID="ID_DENY_DIRECTIO_57" FriendlyName="DirectIO32\38b3eb8c86201d26353aab625cea672e60c2f66ce6f5e5eda673e8c3478bf305 Hash Page Sha256" Hash="9683B754C9C90E54D066D8B9FD958BA0449883E77AC6DD6078F1607ED0377378" />
    <Deny ID="ID_DENY_DIRECTIO_58" FriendlyName="DirectIO32\3f9530c94b689f39cc83377d76979d443275012e022782a600dcb5cad4cca6aa Hash Sha1" Hash="AE806CA05E141B71664D9C6F20CC2369EF26F996" />
    <Deny ID="ID_DENY_DIRECTIO_59" FriendlyName="DirectIO32\3f9530c94b689f39cc83377d76979d443275012e022782a600dcb5cad4cca6aa Hash Sha256" Hash="38FA9B5B66A11FD7387012C5C4BBD414ECA8361273D57DBA1E49AA6AF23337F3" />
    <Deny ID="ID_DENY_DIRECTIO_5A" FriendlyName="DirectIO32\3f9530c94b689f39cc83377d76979d443275012e022782a600dcb5cad4cca6aa Hash Page Sha1" Hash="C13AB8D1FEBD9E93E48E87CEA571C673DF3A10F3" />
    <Deny ID="ID_DENY_DIRECTIO_5B" FriendlyName="DirectIO32\3f9530c94b689f39cc83377d76979d443275012e022782a600dcb5cad4cca6aa Hash Page Sha256" Hash="32394AC2E1F86BC84C9DCFB55763F8AA48DC1B1890815F2AAF924220530A1E5B" />
    <Deny ID="ID_DENY_DIRECTIO_5C" FriendlyName="DirectIO32\65025741ecd0ef516da01319b42c2d96e13cb8d78de53fb7e39cd53ea6d58c75 Hash Sha1" Hash="6E2EA1D108B9F05F2D077ED6C254A70E2B11251D" />
    <Deny ID="ID_DENY_DIRECTIO_5D" FriendlyName="DirectIO32\65025741ecd0ef516da01319b42c2d96e13cb8d78de53fb7e39cd53ea6d58c75 Hash Sha256" Hash="FB7CB120D51E217EE4CC50BEE619603BE5EB6091634DF45ACC5249AED283C9BE" />
    <Deny ID="ID_DENY_DIRECTIO_5E" FriendlyName="DirectIO32\65025741ecd0ef516da01319b42c2d96e13cb8d78de53fb7e39cd53ea6d58c75 Hash Page Sha1" Hash="B267D4B987B094591C411F3992595751D75FC16E" />
    <Deny ID="ID_DENY_DIRECTIO_5F" FriendlyName="DirectIO32\65025741ecd0ef516da01319b42c2d96e13cb8d78de53fb7e39cd53ea6d58c75 Hash Page Sha256" Hash="DB2CE6D1D435DA700134970EFED70EE117E653E8044BA16D08A089FC2DC828DD" />
    <Deny ID="ID_DENY_DIRECTIO_60" FriendlyName="DirectIO32\72288d4978ee87ea6c8b1566dbd906107357087cef7364fb3dd1e1896d00baeb Hash Sha1" Hash="9703903219C7D7F88748FD68F277649B82F2DF83" />
    <Deny ID="ID_DENY_DIRECTIO_61" FriendlyName="DirectIO32\72288d4978ee87ea6c8b1566dbd906107357087cef7364fb3dd1e1896d00baeb Hash Sha256" Hash="C3A215473D836C1D7315F371BFF4DEA956D7D1B440E43B4671F6E3772BAE00DD" />
    <Deny ID="ID_DENY_DIRECTIO_62" FriendlyName="DirectIO32\72288d4978ee87ea6c8b1566dbd906107357087cef7364fb3dd1e1896d00baeb Hash Page Sha1" Hash="AB47DE03075B4AD717C0660CAA216067A78D6CEB" />
    <Deny ID="ID_DENY_DIRECTIO_63" FriendlyName="DirectIO32\72288d4978ee87ea6c8b1566dbd906107357087cef7364fb3dd1e1896d00baeb Hash Page Sha256" Hash="7B86328F3D0DAAF1E254D555F368CE95B687F30DE3D993E3D541AD20EA0DE20E" />
    <Deny ID="ID_DENY_DIRECTIO_64" FriendlyName="DirectIO32\7dfc2eb033d2e090540860b8853036f40736d02bd22099ff6cf665a90be659cd Hash Sha1" Hash="ABE422F9289FE922F671CC70C78046E2BDE5E309" />
    <Deny ID="ID_DENY_DIRECTIO_65" FriendlyName="DirectIO32\7dfc2eb033d2e090540860b8853036f40736d02bd22099ff6cf665a90be659cd Hash Sha256" Hash="C0752DC13548FE8D3B5A7A73C04EBCD7BCFA5E4ECEC9BA233D193BD36ED4B54E" />
    <Deny ID="ID_DENY_DIRECTIO_66" FriendlyName="DirectIO32\7dfc2eb033d2e090540860b8853036f40736d02bd22099ff6cf665a90be659cd Hash Page Sha1" Hash="D0353D279CAF5B6AEEE6640E52B10E2EFE45A807" />
    <Deny ID="ID_DENY_DIRECTIO_67" FriendlyName="DirectIO32\7dfc2eb033d2e090540860b8853036f40736d02bd22099ff6cf665a90be659cd Hash Page Sha256" Hash="615C190AACB1BB2625960748710E8C5F9AA0D228FDC411B283CE87D27E601C15" />
    <Deny ID="ID_DENY_DIRECTIO_68" FriendlyName="DirectIO32\e3b257357be41a18319332df7023c4407e2b93ac4c9e0c6754032e29f3763eac Hash Sha1" Hash="DE239BDA4C75F8B2CFBBF74823466491D2E1F76D" />
    <Deny ID="ID_DENY_DIRECTIO_69" FriendlyName="DirectIO32\e3b257357be41a18319332df7023c4407e2b93ac4c9e0c6754032e29f3763eac Hash Sha256" Hash="D6753D2E6CF2F11932B4FEDD4362AB57651F8F3BAA886EACE22FD98A14EBC2E8" />
    <Deny ID="ID_DENY_DIRECTIO_6A" FriendlyName="DirectIO32\e3b257357be41a18319332df7023c4407e2b93ac4c9e0c6754032e29f3763eac Hash Page Sha1" Hash="AADCEE4B8CF695774BD0B45C758AE442A67198A7" />
    <Deny ID="ID_DENY_DIRECTIO_6B" FriendlyName="DirectIO32\e3b257357be41a18319332df7023c4407e2b93ac4c9e0c6754032e29f3763eac Hash Page Sha256" Hash="4B451FD9DFCE1E5396171122D32F5282DA86F179187360D8C501C235636D48EF" />
    <Deny ID="ID_DENY_DIRECTIO_6C" FriendlyName="DirectIO32\e4c154a0073bbad3c9f8ab7218e9b3be252ae705c20c568861dae4088f17ffcc Hash Sha1" Hash="EF06513DC0F8456E09260857FD63EE1222C60C82" />
    <Deny ID="ID_DENY_DIRECTIO_6D" FriendlyName="DirectIO32\e4c154a0073bbad3c9f8ab7218e9b3be252ae705c20c568861dae4088f17ffcc Hash Sha256" Hash="507CEE84E2924E81916C8BF090EFB1BEAB3C258A79E1E1BF3637B8B7824D0A86" />
    <Deny ID="ID_DENY_DIRECTIO_6E" FriendlyName="DirectIO32\e4c154a0073bbad3c9f8ab7218e9b3be252ae705c20c568861dae4088f17ffcc Hash Page Sha1" Hash="5F0FA0C7FDB6B6EEC654050DC3263A80EFE09A9A" />
    <Deny ID="ID_DENY_DIRECTIO_6F" FriendlyName="DirectIO32\e4c154a0073bbad3c9f8ab7218e9b3be252ae705c20c568861dae4088f17ffcc Hash Page Sha256" Hash="B511E7F23B0AC8DB6BA83C3099EE19F9B8FF6222988A1AA8F68B6ABD683EB4B4" />
    <Deny ID="ID_DENY_DIRECTIO_70" FriendlyName="DirectIO32\fac102ef0a36d2d7b4390776a9c3edded72e01e7316949179e6fbe23495121fb Hash Sha1" Hash="6FED30DE2007FAD6EC008C640F74741DCCE3DF0D" />
    <Deny ID="ID_DENY_DIRECTIO_71" FriendlyName="DirectIO32\fac102ef0a36d2d7b4390776a9c3edded72e01e7316949179e6fbe23495121fb Hash Sha256" Hash="A9EB36FB737735DFF8245E1AA599054C0214FB9DE0CBA371357ED59FDE451308" />
    <Deny ID="ID_DENY_DIRECTIO_72" FriendlyName="DirectIO32\fac102ef0a36d2d7b4390776a9c3edded72e01e7316949179e6fbe23495121fb Hash Page Sha1" Hash="BCC1292F68AA179DA3EDFF5D5D6D1D991BEA7EB5" />
    <Deny ID="ID_DENY_DIRECTIO_73" FriendlyName="DirectIO32\fac102ef0a36d2d7b4390776a9c3edded72e01e7316949179e6fbe23495121fb Hash Page Sha256" Hash="AC8A4EE171C6E4905B370F7E01F6C11F7669BE4613E8DACACB5428B5E87DB390" />
    <Deny ID="ID_DENY_ECHO_1" FriendlyName="Inspect EchoDriver\a41e9bb037cf1dc2237659b1158f0ed4e49b752b2f9dae4cc310933a9d1f1e47 Hash Sha1" Hash="503901E0DA00E491F28389F17CAFD1F1D5243C60" />
    <Deny ID="ID_DENY_ECHO_2" FriendlyName="Inspect EchoDriver\a41e9bb037cf1dc2237659b1158f0ed4e49b752b2f9dae4cc310933a9d1f1e47 Hash Sha256" Hash="48DC7FD16AACDC8792F8BAD1B1F7CA9D675DDAC7767E957EA8C4227150D64E2D" />
    <Deny ID="ID_DENY_ECHO_3" FriendlyName="Inspect EchoDriver\a41e9bb037cf1dc2237659b1158f0ed4e49b752b2f9dae4cc310933a9d1f1e47 Hash Page Sha1" Hash="0CE7E3B661DB16FBCFE93376127DC37EA23313A5" />
    <Deny ID="ID_DENY_ECHO_4" FriendlyName="Inspect EchoDriver\a41e9bb037cf1dc2237659b1158f0ed4e49b752b2f9dae4cc310933a9d1f1e47 Hash Page Sha256" Hash="23C062104693B80CEC745DEC40B433D0D0B683C63496740B943CCB0D22F7361B" />
    <Deny ID="ID_DENY_ECHO_5" FriendlyName="Inspect EchoDriver\ada2b855757c9062231f5ed4e80365b8d8094e9adbce8f26d1ff5ea0b7a70c77 Hash Sha1" Hash="18CD81740893FA24F1AFBB9D187A60AF9C5B2902" />
    <Deny ID="ID_DENY_ECHO_6" FriendlyName="Inspect EchoDriver\ada2b855757c9062231f5ed4e80365b8d8094e9adbce8f26d1ff5ea0b7a70c77 Hash Sha256" Hash="4160DAE22484062CCC3750CC9CAC8F929D8701694160A3B508715610814AA28D" />
    <Deny ID="ID_DENY_ECHO_7" FriendlyName="Inspect EchoDriver\ada2b855757c9062231f5ed4e80365b8d8094e9adbce8f26d1ff5ea0b7a70c77 Hash Page Sha1" Hash="2EFC7864E1E8AA87EFFEB13A2A3402CDC64FB6D2" />
    <Deny ID="ID_DENY_ECHO_8" FriendlyName="Inspect EchoDriver\ada2b855757c9062231f5ed4e80365b8d8094e9adbce8f26d1ff5ea0b7a70c77 Hash Page Sha256" Hash="3709D170C4F5A7668C9180AFBDB8A4F6E9EE6E6A6C048B55D34FEA9DAA253127" />
    <Deny ID="ID_DENY_ECHO_9" FriendlyName="Inspect EchoDriver\ea3c5569405ed02ec24298534a983bcb5de113c18bc3fd01a4dd0b5839cd17b9 Hash Sha1" Hash="678620A9CC9E7FFE179BC5CDA0A2DD0597E231EE" />
    <Deny ID="ID_DENY_ECHO_A" FriendlyName="Inspect EchoDriver\ea3c5569405ed02ec24298534a983bcb5de113c18bc3fd01a4dd0b5839cd17b9 Hash Sha256" Hash="92F9D73CEC5AB3352C4B3CBF4574D13B2E506CBA24CC74580E19E941063EAF7D" />
    <Deny ID="ID_DENY_ECHO_B" FriendlyName="Inspect EchoDriver\ea3c5569405ed02ec24298534a983bcb5de113c18bc3fd01a4dd0b5839cd17b9 Hash Page Sha1" Hash="832832028D40A3CFD08D364554FCE0B4F37317FF" />
    <Deny ID="ID_DENY_ECHO_C" FriendlyName="Inspect EchoDriver\ea3c5569405ed02ec24298534a983bcb5de113c18bc3fd01a4dd0b5839cd17b9 Hash Page Sha256" Hash="49ED19D5E1E122936035A48EA99FFD68CA4915578107888D5C2B0BB9E30E67C0" />
    <Deny ID="ID_DENY_ECSIODRV_1" FriendlyName="EliteGroup ECSioDriver\14edfdc13aeb98db50d597367f132443b086df0728f4fdb8c3bb5d47a8a0cd4a Hash Sha1" Hash="CAAC3986D305A606B7B4764FD4537E2BF6650DF6"/>
    <Deny ID="ID_DENY_ECSIODRV_2" FriendlyName="EliteGroup ECSioDriver\14edfdc13aeb98db50d597367f132443b086df0728f4fdb8c3bb5d47a8a0cd4a Hash Sha256" Hash="FBDDB3EE9221EBAC892DC19BE3971AFF3707748130C3A30A000EC8D208CF5797"/>
    <Deny ID="ID_DENY_ECSIODRV_3" FriendlyName="EliteGroup ECSioDriver\14edfdc13aeb98db50d597367f132443b086df0728f4fdb8c3bb5d47a8a0cd4a Hash Page Sha1" Hash="42BBD404E2262306FAD4F0D8DCF9D485D8DECBB3"/>
    <Deny ID="ID_DENY_ECSIODRV_4" FriendlyName="EliteGroup ECSioDriver\14edfdc13aeb98db50d597367f132443b086df0728f4fdb8c3bb5d47a8a0cd4a Hash Page Sha256" Hash="96DE51B575F95A3E13C649502544C50D1309CB41C06DB8629D2627909331EAEE"/>
    <Deny ID="ID_DENY_EIO64_1" FriendlyName="Asus EIO64\b17507a3246020fa0052a172485d7b3567e0161747927f2edf27c40e310852e0 Hash Sha1" Hash="200BE5A696990EE97B4C3176234CDE46C3EBC2CE" />
    <Deny ID="ID_DENY_EIO64_2" FriendlyName="Asus EIO64\b17507a3246020fa0052a172485d7b3567e0161747927f2edf27c40e310852e0 Hash Sha256" Hash="72B36C64F0B349D7816C8E5E2D1A7F59807DE0C87D3F071A04DBC56BEC9C00DB" />
    <Deny ID="ID_DENY_EIO64_3" FriendlyName="Asus EIO64\b17507a3246020fa0052a172485d7b3567e0161747927f2edf27c40e310852e0 Hash Page Sha1" Hash="DB88BFE5F3DE4E3CC778FE456B542EC4135433A4" />
    <Deny ID="ID_DENY_EIO64_4" FriendlyName="Asus EIO64\b17507a3246020fa0052a172485d7b3567e0161747927f2edf27c40e310852e0 Hash Page Sha256" Hash="609E8789D16176622F6EC629A8BEA7513A37CB6BBA7775971FD24056F8F3BCE0" />
    <Deny ID="ID_DENY_EIO64_5" FriendlyName="Asus EIO64\cf69704755ec2643dfd245ae1d4e15d77f306aeb1a576ffa159453de1a7345cb Hash Sha1" Hash="ED54E23998978F8124BD1F97C265F708DDBA1DE0" />
    <Deny ID="ID_DENY_EIO64_6" FriendlyName="Asus EIO64\cf69704755ec2643dfd245ae1d4e15d77f306aeb1a576ffa159453de1a7345cb Hash Sha256" Hash="D4E7335A177E47688D68AD89940C272F82728C882623F1630E7FD2E03E16F003" />
    <Deny ID="ID_DENY_EIO64_7" FriendlyName="Asus EIO64\cf69704755ec2643dfd245ae1d4e15d77f306aeb1a576ffa159453de1a7345cb Hash Page Sha1" Hash="D1AAAAF1EEA34073BAF39C7494E646C5AD2475F5" />
    <Deny ID="ID_DENY_EIO64_8" FriendlyName="Asus EIO64\cf69704755ec2643dfd245ae1d4e15d77f306aeb1a576ffa159453de1a7345cb Hash Page Sha256" Hash="796BEC283155309F2DF0B1779CABC78A3B2161FFCED9F521DB231550DCB376A1" />
    <Deny ID="ID_DENY_FH_ETHER_1" FriendlyName="Omron FH-Ether\ae71f40f06edda422efcd16f3a48f5b795b34dd6d9bb19c9c8f2e083f0850eb7 Hash Sha1" Hash="364F53ED52E121182BE0E0A21C17C2254894713D"/>
    <Deny ID="ID_DENY_FH_ETHER_2" FriendlyName="Omron FH-Ether\ae71f40f06edda422efcd16f3a48f5b795b34dd6d9bb19c9c8f2e083f0850eb7 Hash Sha256" Hash="5E7B92E6A1F656A70ED56EF2A190FCE6BB3F12063B891FBFD722CA4E951DE15F"/>
    <Deny ID="ID_DENY_GEDEVDRV_1" FriendlyName="GEDevDrv.sys\51145a3fa8258aac106f65f34159d23c54b48b6d54ec0421748b3939ab6778eb Hash Sha1" Hash="ED3F9E742B37A81DB447D9D398F3EA26235E05AA"/>
    <Deny ID="ID_DENY_GEDEVDRV_2" FriendlyName="GEDevDrv.sys\51145a3fa8258aac106f65f34159d23c54b48b6d54ec0421748b3939ab6778eb Hash Sha256" Hash="33494ED37D4BE23B7DE493D5F2C9C31A83A7A834C79A5FD7C2A93C1054F583B1"/>
    <Deny ID="ID_DENY_GEDEVDRV_3" FriendlyName="GEDevDrv.sys\51145a3fa8258aac106f65f34159d23c54b48b6d54ec0421748b3939ab6778eb Hash Page Sha1" Hash="707E8CF8ADE1B63188DF4B8CDC9E784D8E003708"/>
    <Deny ID="ID_DENY_GEDEVDRV_4" FriendlyName="GEDevDrv.sys\51145a3fa8258aac106f65f34159d23c54b48b6d54ec0421748b3939ab6778eb Hash Page Sha256" Hash="ED4B6AED3BF9CF1F02086EB3C21B6779F9EA1921BFBCDEAA0BD308EC5420789D"/>
    <Deny ID="ID_DENY_GEDEVDRV_5" FriendlyName="GEDevDrv.sys\a369942ce8d4b70ebf664981e12c736ec980dbe5a74585dd826553c4723b1bce Hash Sha1" Hash="9F5EAAB353BF93697EEC55B9FAC8479968F17E7C"/>
    <Deny ID="ID_DENY_GEDEVDRV_6" FriendlyName="GEDevDrv.sys\a369942ce8d4b70ebf664981e12c736ec980dbe5a74585dd826553c4723b1bce Hash Sha256" Hash="8A228C751D1664B362F10DC7083C223995B976B264DA8B7380C51157BED66FBE"/>
    <Deny ID="ID_DENY_GEDEVDRV_7" FriendlyName="GEDevDrv.sys\a369942ce8d4b70ebf664981e12c736ec980dbe5a74585dd826553c4723b1bce Hash Page Sha1" Hash="3CA7CA0CD75C7EB9AE1D388513615009B5FA9311"/>
    <Deny ID="ID_DENY_GEDEVDRV_8" FriendlyName="GEDevDrv.sys\a369942ce8d4b70ebf664981e12c736ec980dbe5a74585dd826553c4723b1bce Hash Page Sha256" Hash="719AB50DF883025F8170886B5A3801C1A6919FF23C741E64AC4A0C3C3B6AE076"/>
    <Deny ID="ID_DENY_GEDEVDRV_9" FriendlyName="GEDevDrv.sys\ae73dd357e5950face9c956570088f334d18464cd49f00c56420e3d6ff47e8dc Hash Sha1" Hash="A236F58A6E3C596360078B96966416A1C66C87D7"/>
    <Deny ID="ID_DENY_GEDEVDRV_10" FriendlyName="GEDevDrv.sys\ae73dd357e5950face9c956570088f334d18464cd49f00c56420e3d6ff47e8dc Hash Sha256" Hash="D9CBDFC10BA743D5229F7DBB6507B9864012FB58CB253DA92962DC611603A73C"/>
    <Deny ID="ID_DENY_GEDEVDRV_11" FriendlyName="GEDevDrv.sys\ae73dd357e5950face9c956570088f334d18464cd49f00c56420e3d6ff47e8dc Hash Page Sha1" Hash="3485F18E38A52B5D2E26C40AB53F5CB09618A5C0"/>
    <Deny ID="ID_DENY_GEDEVDRV_12" FriendlyName="GEDevDrv.sys\ae73dd357e5950face9c956570088f334d18464cd49f00c56420e3d6ff47e8dc Hash Page Sha256" Hash="EF0FDBFEAC16565C63E3B959557F5B26CB76BA57957F67FD7DDA6CC7D51DFD49"/>
    <Deny ID="ID_DENY_GEDEVDRV_13" FriendlyName="GEDevDrv.sys\cac5dc7c3da69b682097144f12a816530091d4708ca432a7ce39f6abe6616461 Hash Sha1" Hash="30D5627753948F533EF45636A0A845D1ACCD82E3"/>
    <Deny ID="ID_DENY_GEDEVDRV_14" FriendlyName="GEDevDrv.sys\cac5dc7c3da69b682097144f12a816530091d4708ca432a7ce39f6abe6616461 Hash Sha256" Hash="1DCDD1EFAB9ABC25F4227B37F76DA295A6DC4CF810875BA34EE1D465EB709B70"/>
    <Deny ID="ID_DENY_GEDEVDRV_15" FriendlyName="GEDevDrv.sys\cac5dc7c3da69b682097144f12a816530091d4708ca432a7ce39f6abe6616461 Hash Page Sha1" Hash="C4B3B9D7BEBBA05B681E3B6D1C834BD2022640DE"/>
    <Deny ID="ID_DENY_GEDEVDRV_16" FriendlyName="GEDevDrv.sys\cac5dc7c3da69b682097144f12a816530091d4708ca432a7ce39f6abe6616461 Hash Page Sha256" Hash="E68E8803E296F48BE72170FD05DB99C881E8A8DA51D47D96062C159CE37CC47E"/>
    <Deny ID="ID_DENY_GVCIDRV_1" FriendlyName="Gigabyte gvcidrv\42f0b036687cbd7717c9efed6991c00d4e3e7b032dc965a2556c02177dfdad0f Hash Sha1" Hash="4EAE38E9DC262EB7B6EDE4B3D3F4AD068933845E" />
    <Deny ID="ID_DENY_GVCIDRV_2" FriendlyName="Gigabyte gvcidrv\42f0b036687cbd7717c9efed6991c00d4e3e7b032dc965a2556c02177dfdad0f Hash Sha256" Hash="2FF09BB919A9909068166C30322C4E904BEFEBA5429E9A11D011297FB8A73C07" />
    <Deny ID="ID_DENY_GVCIDRV_3" FriendlyName="Gigabyte gvcidrv\42f0b036687cbd7717c9efed6991c00d4e3e7b032dc965a2556c02177dfdad0f Hash Page Sha1" Hash="6980122AEF4E2D5D7A6DDDB6DA76A166C460E0A1" />
    <Deny ID="ID_DENY_GVCIDRV_4" FriendlyName="Gigabyte gvcidrv\42f0b036687cbd7717c9efed6991c00d4e3e7b032dc965a2556c02177dfdad0f Hash Page Sha256" Hash="A69247025DD32DC15E06FEE362B494BCC6105D34B8D7091F7EC3D9000BD71501" />
    <Deny ID="ID_DENY_HW_22" FriendlyName="hw_sys\b8fcc8ef2b27c0c0622d069981e39f112d3b3b0dbede053340bc157ba1316eab Hash Sha1" Hash="924A088149D6EE89551E15D45E7BC847B9561196" />
    <Deny ID="ID_DENY_HW_23" FriendlyName="hw_sys\b8fcc8ef2b27c0c0622d069981e39f112d3b3b0dbede053340bc157ba1316eab Hash Sha256" Hash="5E1E1489A1A01CFB466B527543D9D25112A83792BDE443DE9E34E4D3ADA697E3" />
    <Deny ID="ID_DENY_HW_24" FriendlyName="hw_sys\b8fcc8ef2b27c0c0622d069981e39f112d3b3b0dbede053340bc157ba1316eab Hash Page Sha1" Hash="ADB70331BE7B68359C3EC3065C045349EA5B2EE2" />
    <Deny ID="ID_DENY_HW_25" FriendlyName="hw_sys\b8fcc8ef2b27c0c0622d069981e39f112d3b3b0dbede053340bc157ba1316eab Hash Page Sha256" Hash="F26A70215E2D851378D05F76BF1460615CF0C93E41A01DCE4EBC6D99F6E4AEA0" />
    <Deny ID="ID_DENY_HWRWDRV_2" FriendlyName="HwRwDrv.sys\42de79eb237293befb1b954beaf92b832f947195e3c359048aaa464ead56b62d Hash Sha1" Hash="979029B931770F96FC0070868A1303C7D3EAACA5" />
    <Deny ID="ID_DENY_HWRWDRV_3" FriendlyName="HwRwDrv.sys\42de79eb237293befb1b954beaf92b832f947195e3c359048aaa464ead56b62d Hash Sha256" Hash="42DE79EB237293BEFB1B954BEAF92B832F947195E3C359048AAA464EAD56B62D" />
    <Deny ID="ID_DENY_HWRWDRV_4" FriendlyName="HwRwDrv.sys\d50ee14181cf60bbdffe1a891b9bb3a852c93019f1f05dde47b3178b821b8f54 Hash Sha1" Hash="A0CD1505C42A8792FF19C88B8FB782C32702A48B" />
    <Deny ID="ID_DENY_HWRWDRV_5" FriendlyName="HwRwDrv.sys\d50ee14181cf60bbdffe1a891b9bb3a852c93019f1f05dde47b3178b821b8f54 Hash Sha256" Hash="D50EE14181CF60BBDFFE1A891B9BB3A852C93019F1F05DDE47B3178B821B8F54" />
    <Deny ID="ID_DENY_HWRWDRV_6" FriendlyName="HwRwDrv.sys\f2b95fc91fe33c1995c49c35e32124ece7d958ed7d3b7a5f325f2a30454b9256 Hash Sha1" Hash="A24B85D04D88B54FF3DF4CC2B4518CEF2E6A2776" />
    <Deny ID="ID_DENY_HWRWDRV_7" FriendlyName="HwRwDrv.sys\f2b95fc91fe33c1995c49c35e32124ece7d958ed7d3b7a5f325f2a30454b9256 Hash Sha256" Hash="F2B95FC91FE33C1995C49C35E32124ECE7D958ED7D3B7A5F325F2A30454B9256" />
    <Deny ID="ID_DENY_INPOUTX_11" FriendlyName="inpoutx\7aed38beff4d59d57b43a32738a1a30a7e0eba6a Hash Sha1" Hash="7aed38beff4d59d57b43a32738a1a30a7e0eba6a" />
    <Deny ID="ID_DENY_INPOUTX_12" FriendlyName="inpoutx\2d83ccb1ad9839c9f5b3f10b1f856177df1594c66cbbc7661677d4b462ebf44d Hash Sha1" Hash="94B9B91A2ACC786B54E8DBC11B759B05BC15FC3F" />
    <Deny ID="ID_DENY_INPOUTX_13" FriendlyName="inpoutx\2d83ccb1ad9839c9f5b3f10b1f856177df1594c66cbbc7661677d4b462ebf44d Hash Sha256" Hash="9F70169F9541C8F5B13D3EC1F3514CC4F2607D572FFB4C7E5A98BE0856852DD8" />
    <Deny ID="ID_DENY_INPOUTX_14" FriendlyName="inpoutx\2d83ccb1ad9839c9f5b3f10b1f856177df1594c66cbbc7661677d4b462ebf44d Hash Page Sha1" Hash="6FF4D24DC317C93D1B54195E80F858B9D6CFF2C1" />
    <Deny ID="ID_DENY_INPOUTX_15" FriendlyName="inpoutx\2d83ccb1ad9839c9f5b3f10b1f856177df1594c66cbbc7661677d4b462ebf44d Hash Page Sha256" Hash="9EA5E3FE2D978CD684C1E67513F24913EB24EB325287011249B6A9FACF69A59B" />
    <Deny ID="ID_DENY_INPOUTX_16" FriendlyName="inpoutx\945ee05244316ff2f877718cf0625d4eb34e6ec472f403f958f2a700f9092507 Hash Sha1" Hash="E7B4946A35ADCD07E8E0BDC61058B1611063CA74" />
    <Deny ID="ID_DENY_INPOUTX_17" FriendlyName="inpoutx\945ee05244316ff2f877718cf0625d4eb34e6ec472f403f958f2a700f9092507 Hash Sha256" Hash="FB2E8E98A58329E86A1EE310FE9DFCE7056F4A0EDE380EEE8768C51B5870C433" />
    <Deny ID="ID_DENY_INPOUTX_18" FriendlyName="inpoutx\945ee05244316ff2f877718cf0625d4eb34e6ec472f403f958f2a700f9092507 Hash Page Sha1" Hash="1BF94F55A5CD6D0F3552E860ACCC10F89861CE69" />
    <Deny ID="ID_DENY_INPOUTX_19" FriendlyName="inpoutx\945ee05244316ff2f877718cf0625d4eb34e6ec472f403f958f2a700f9092507 Hash Page Sha256" Hash="33163E3DB7B93415D24779E290E0D26D39F4193498C96F65870F475B42FAC28A" />
    <Deny ID="ID_DENY_INPOUTX_1A" FriendlyName="inpoutx\a88733b88cdc3f3cc040912ce5a3c44fa26f2ea8454cf6fc855b104a4910fa31 Hash Sha1" Hash="A46B2491C41794D8F0E662B321F2CBED0CE1C255" />
    <Deny ID="ID_DENY_INPOUTX_1B" FriendlyName="inpoutx\a88733b88cdc3f3cc040912ce5a3c44fa26f2ea8454cf6fc855b104a4910fa31 Hash Sha256" Hash="A88733B88CDC3F3CC040912CE5A3C44FA26F2EA8454CF6FC855B104A4910FA31" />
    <Deny ID="ID_DENY_INPOUTX_1C" FriendlyName="inpoutx\b8ded5e10dfc997482ba4377c60e7902e6f755674be51b0e181ae465529fb2f2 Hash Sha1" Hash="A4DCE60EADCC112BDAA9562A92EDE168D981BDD7" />
    <Deny ID="ID_DENY_INPOUTX_1D" FriendlyName="inpoutx\b8ded5e10dfc997482ba4377c60e7902e6f755674be51b0e181ae465529fb2f2 Hash Sha256" Hash="E288439705D9BE2C1F74CF8A44C3853AC3708E52C592B23398877006FADF6CCC" />
    <Deny ID="ID_DENY_INPOUTX_1E" FriendlyName="inpoutx\cfab93885e5129a86d13fd380d010cc8c204429973b776ab1b472d84a767930f Hash Sha1" Hash="CF14350816192CA4824A32237DFCFFC641B4E979" />
    <Deny ID="ID_DENY_INPOUTX_1F" FriendlyName="inpoutx\cfab93885e5129a86d13fd380d010cc8c204429973b776ab1b472d84a767930f Hash Sha256" Hash="4530235508B99DFFE4E912CC9CAC7BDC237E79F5A331F601C43BA909D7A3AF4A" />
    <Deny ID="ID_DENY_INPOUTX_20" FriendlyName="inpoutx\d5cc046c2ae9ba6fe54def699f1c4fa92d3226304321bbf45cc33883ce131138 Hash Sha1" Hash="77FB38438B9E3F3CE5721EC9C0ABA775E59A951B" />
    <Deny ID="ID_DENY_INPOUTX_21" FriendlyName="inpoutx\d5cc046c2ae9ba6fe54def699f1c4fa92d3226304321bbf45cc33883ce131138 Hash Sha256" Hash="D5CC046C2AE9BA6FE54DEF699F1C4FA92D3226304321BBF45CC33883CE131138" />
    <Deny ID="ID_DENY_INPOUTX_22" FriendlyName="inpoutx\e2c531a771b0df1585518a22427798e86611e6be3d357024797871a1b3876e9c Hash Sha1" Hash="CCE8ED3969E52080B32BCC59E2EC174CA9C578EC" />
    <Deny ID="ID_DENY_INPOUTX_23" FriendlyName="inpoutx\e2c531a771b0df1585518a22427798e86611e6be3d357024797871a1b3876e9c Hash Sha256" Hash="E2C531A771B0DF1585518A22427798E86611E6BE3D357024797871A1B3876E9C" />
    <Deny ID="ID_DENY_IREC_1" FriendlyName="IREC.sys\irec32--1.sys Hash Sha1" Hash="B715B8030FC28346C97B5F5FB901C390ED5C97B6" />
    <Deny ID="ID_DENY_IREC_2" FriendlyName="IREC.sys\irec32--1.sys Hash Sha256" Hash="2E8E61DAA45061AE04AABEE086371A6D56F0D517AA584E1B70C8423C8E469310" />
    <Deny ID="ID_DENY_IREC_3" FriendlyName="IREC.sys\irec32--1.sys Hash Page Sha1" Hash="9DF591D3672885C5BAA454413C75D974386B9F14" />
    <Deny ID="ID_DENY_IREC_4" FriendlyName="IREC.sys\irec32--1.sys Hash Page Sha256" Hash="883602C2C622E270F91E6391FE5E4B156CB68ED6B41A2F5694EFB93774579FFF" />
    <Deny ID="ID_DENY_IREC_5" FriendlyName="IREC.sys\irec32--10.sys Hash Sha1" Hash="BCA37BCC2AEE3383F43D0126E30E07893E40F452" />
    <Deny ID="ID_DENY_IREC_6" FriendlyName="IREC.sys\irec32--10.sys Hash Sha256" Hash="B431CBD247F1D229CA2A90256063973A8B4129A154926026366766677AB740F6" />
    <Deny ID="ID_DENY_IREC_7" FriendlyName="IREC.sys\irec32--10.sys Hash Page Sha1" Hash="4B2582568EC84D1711D3EDCBE53730F32D9EA4F5" />
    <Deny ID="ID_DENY_IREC_8" FriendlyName="IREC.sys\irec32--10.sys Hash Page Sha256" Hash="6D94B06210D7946DD9F4EC83D2E804FC6EA0083E95CBACA0E62D84891C9DA51C" />
    <Deny ID="ID_DENY_IREC_9" FriendlyName="IREC.sys\irec32--11.sys Hash Sha1" Hash="EAA1C906B44925B71D4F67A29F125158CF58FBA1" />
    <Deny ID="ID_DENY_IREC_A" FriendlyName="IREC.sys\irec32--11.sys Hash Sha256" Hash="EBFF008864CE631BCD44328DF0E72901EA08B83EA25EB6949FC8D61335E6A149" />
    <Deny ID="ID_DENY_IREC_B" FriendlyName="IREC.sys\irec32--11.sys Hash Page Sha1" Hash="86777AF3C0E74138EF70C3DC02D98E3938F244BA" />
    <Deny ID="ID_DENY_IREC_C" FriendlyName="IREC.sys\irec32--11.sys Hash Page Sha256" Hash="968D1E5440BA5F42E5E50C33ECFEE253FC6217F58F0475EC881DF9A65F254584" />
    <Deny ID="ID_DENY_IREC_D" FriendlyName="IREC.sys\irec32--2.sys Hash Sha1" Hash="BC47F6F4A03B944A2C9BADA25275D5ED35A00946" />
    <Deny ID="ID_DENY_IREC_E" FriendlyName="IREC.sys\irec32--2.sys Hash Sha256" Hash="E04C028FA5D0343A10C1D526ADD23B5C98834B252A87732CF69F4D482A7DAB94" />
    <Deny ID="ID_DENY_IREC_F" FriendlyName="IREC.sys\irec32--2.sys Hash Page Sha1" Hash="F2F9BC79B1CF1FC2C4F9C3B59C53F5A8949CC987" />
    <Deny ID="ID_DENY_IREC_10" FriendlyName="IREC.sys\irec32--2.sys Hash Page Sha256" Hash="5ECD5D7679504C22300263889CC3B48F1724EC5276CA24C06BABED595C3501AF" />
    <Deny ID="ID_DENY_IREC_11" FriendlyName="IREC.sys\irec32--3.sys Hash Sha1" Hash="94881B8F8C0BD3EC9B4F8C44D74CD774AAEF77CA" />
    <Deny ID="ID_DENY_IREC_12" FriendlyName="IREC.sys\irec32--3.sys Hash Sha256" Hash="A026FADABEB628EAD4399CA3FB3369224983E311CF927EAC7826B230CB774B67" />
    <Deny ID="ID_DENY_IREC_13" FriendlyName="IREC.sys\irec32--3.sys Hash Page Sha1" Hash="3DEF49B1C6095AD5A5CACB5ED24958070C872925" />
    <Deny ID="ID_DENY_IREC_14" FriendlyName="IREC.sys\irec32--3.sys Hash Page Sha256" Hash="00A813073AED7A5C795C35BF239536962683A73BB315C774DBA9838144131DEF" />
    <Deny ID="ID_DENY_IREC_15" FriendlyName="IREC.sys\irec32--5.sys Hash Sha1" Hash="7C1B5F25BBA93877FA3D5626F3FF08FC865FC062" />
    <Deny ID="ID_DENY_IREC_16" FriendlyName="IREC.sys\irec32--5.sys Hash Sha256" Hash="BB02A566FFE392BA15F3DD0FA0F2B08AE684462D41FE2141D98E9E8F416BC339" />
    <Deny ID="ID_DENY_IREC_17" FriendlyName="IREC.sys\irec32--5.sys Hash Page Sha1" Hash="A987A4E8B23A90EC582C18CCB6A4FC075BBBE564" />
    <Deny ID="ID_DENY_IREC_18" FriendlyName="IREC.sys\irec32--5.sys Hash Page Sha256" Hash="2ABA330D66FA4FA0348B52C068B8C754C18565D55059FF02D114C52A00946996" />
    <Deny ID="ID_DENY_IREC_19" FriendlyName="IREC.sys\irec32--7.sys Hash Sha1" Hash="EF221C26D16FDFC16B6B416666AC27C67A123EDB" />
    <Deny ID="ID_DENY_IREC_1A" FriendlyName="IREC.sys\irec32--7.sys Hash Sha256" Hash="2E5C4332A9EC895818F3F5EB3C101D2E55F4C588A57E4DAAD0544F5F3E434DD6" />
    <Deny ID="ID_DENY_IREC_1B" FriendlyName="IREC.sys\irec32--7.sys Hash Page Sha1" Hash="98C5D52418EF0D4489EAD7341D4C80337E5438F4" />
    <Deny ID="ID_DENY_IREC_1C" FriendlyName="IREC.sys\irec32--7.sys Hash Page Sha256" Hash="48AB3B361354812A7353F902491B4814268325AC53D79B81B3938A66A294E219" />
    <Deny ID="ID_DENY_IREC_1D" FriendlyName="IREC.sys\irec32--8.sys Hash Sha1" Hash="4432DB3BCB9B8F14F1D8CBA0292985A206A624B5" />
    <Deny ID="ID_DENY_IREC_1E" FriendlyName="IREC.sys\irec32--8.sys Hash Sha256" Hash="5B942A0686EE8772E0CC5070F9A023067410A7FC2F17EE902A380592EFF9DF98" />
    <Deny ID="ID_DENY_IREC_1F" FriendlyName="IREC.sys\irec32--8.sys Hash Page Sha1" Hash="504DADC23313231D3670E0D60AB12CC9D3F8F366" />
    <Deny ID="ID_DENY_IREC_20" FriendlyName="IREC.sys\irec32--8.sys Hash Page Sha256" Hash="83A28797DF3C1134FD2CF3BB3E1967C8BE2CF9D1BA13DEDB1367CE9E1E8FE84A" />
    <Deny ID="ID_DENY_IREC_21" FriendlyName="IREC.sys\irec32--9.sys Hash Sha1" Hash="E388275F8874F95E4484F52742FCFB3751B33FF9" />
    <Deny ID="ID_DENY_IREC_22" FriendlyName="IREC.sys\irec32--9.sys Hash Sha256" Hash="C9488EDE76B64E13E625D7EAEAFE5CE0C1B180CA6FB429B8C4C8DF5089DEEAF5" />
    <Deny ID="ID_DENY_IREC_23" FriendlyName="IREC.sys\irec32--9.sys Hash Page Sha1" Hash="A4C243D53D69FBA0539949D7966E2DF67C4010CE" />
    <Deny ID="ID_DENY_IREC_24" FriendlyName="IREC.sys\irec32--9.sys Hash Page Sha256" Hash="D6818FA421D57D961BD54625C2BDD0FB0C1E16CF00E404DBF37F1BC86DB48C20" />
    <Deny ID="ID_DENY_IREC_25" FriendlyName="IREC.sys\irec64--16.sys Hash Sha1" Hash="169DD93FD4A637E452B148309C2E187880534E12" />
    <Deny ID="ID_DENY_IREC_26" FriendlyName="IREC.sys\irec64--16.sys Hash Sha256" Hash="43BF704522A5E01030A9B5CDFBDD7B226E93B40B5AF62581495E66407F365B10" />
    <Deny ID="ID_DENY_IREC_27" FriendlyName="IREC.sys\irec64--16.sys Hash Page Sha1" Hash="A9D9D7FF0D091A63491D43B4E9FB3852BC1BD5B1" />
    <Deny ID="ID_DENY_IREC_28" FriendlyName="IREC.sys\irec64--16.sys Hash Page Sha256" Hash="1356FD71998471A795A4CBFDACED2D86879F05CEE383918B516BCF14ACAF547D" />
    <Deny ID="ID_DENY_IREC_29" FriendlyName="IREC.sys\irec64--17.sys Hash Sha1" Hash="8E5B173D15C5E940D8D2D1985810D5EB2118AFAD" />
    <Deny ID="ID_DENY_IREC_2A" FriendlyName="IREC.sys\irec64--17.sys Hash Sha256" Hash="06A136B23ADE23C02509A896A05CF6D99DF93E774A10583B796B61E3F643A858" />
    <Deny ID="ID_DENY_IREC_2B" FriendlyName="IREC.sys\irec64--17.sys Hash Page Sha1" Hash="BC95CB78F67C3F98380CB53FE1EB3A495BF53B8B" />
    <Deny ID="ID_DENY_IREC_2C" FriendlyName="IREC.sys\irec64--17.sys Hash Page Sha256" Hash="F563312E01F7C88293CC4374C97737EDAED22A6FD26E0106CB6A30CE68C3BD45" />
    <Deny ID="ID_DENY_IREC_2D" FriendlyName="IREC.sys\irec64--18.sys Hash Sha1" Hash="90EBE947F9DAEF1ABEE0BCC2241069E061AE24ED" />
    <Deny ID="ID_DENY_IREC_2E" FriendlyName="IREC.sys\irec64--18.sys Hash Sha256" Hash="9A6E8BD410BA51574B773B98C6488FC332F445DA0E94E78F693B9A76E86DFBCC" />
    <Deny ID="ID_DENY_IREC_2F" FriendlyName="IREC.sys\irec64--18.sys Hash Page Sha1" Hash="B8FC6F0E07F898268E43652C0CCB650405CCD68C" />
    <Deny ID="ID_DENY_IREC_30" FriendlyName="IREC.sys\irec64--18.sys Hash Page Sha256" Hash="BA7317A12A431DA55E53778C9EC0D58DB701E88B89D03A9EDD7C5C1012E66A14" />
    <Deny ID="ID_DENY_IREC_31" FriendlyName="IREC.sys\irec64--19.sys Hash Sha1" Hash="719F659300BA463EFEEAB5916F0378C64FC1AD4A" />
    <Deny ID="ID_DENY_IREC_32" FriendlyName="IREC.sys\irec64--19.sys Hash Sha256" Hash="457E2EB5EE1DEF0E336463B7F62DCC02FDDE307B817CF750907A5F5465C4DCB7" />
    <Deny ID="ID_DENY_IREC_33" FriendlyName="IREC.sys\irec64--19.sys Hash Page Sha1" Hash="F7FEA2BE8FF65DBB89BAF39EF8E0D80DAB81CB8E" />
    <Deny ID="ID_DENY_IREC_34" FriendlyName="IREC.sys\irec64--19.sys Hash Page Sha256" Hash="5FEB045C2452FD280BA1CAD5FC9B4F0DE7FC95EABDCE19FA2CD1F632891F3B1A" />
    <Deny ID="ID_DENY_IREC_35" FriendlyName="IREC.sys\irec64--21.sys Hash Sha1" Hash="37486D0CA79CF2924D8540B00E84FF4F9C86F574" />
    <Deny ID="ID_DENY_IREC_36" FriendlyName="IREC.sys\irec64--21.sys Hash Sha256" Hash="87F01D8BF8424D801D4B47273918FB817DA2E59F517BA1FC1C038FB3C4E91A17" />
    <Deny ID="ID_DENY_IREC_37" FriendlyName="IREC.sys\irec64--21.sys Hash Page Sha1" Hash="54CBAEDB10F2AFAA73E4C209ECD6E76B3912AF6F" />
    <Deny ID="ID_DENY_IREC_38" FriendlyName="IREC.sys\irec64--21.sys Hash Page Sha256" Hash="09516642395221D25006D8E604D7FC519DE102453875D6DD325D02A80A4D30CE" />
    <Deny ID="ID_DENY_IREC_39" FriendlyName="IREC.sys\irec64--23.sys Hash Sha1" Hash="E4496961589BB0C03F05016AA3242B2D1ACD5E3F" />
    <Deny ID="ID_DENY_IREC_3A" FriendlyName="IREC.sys\irec64--23.sys Hash Sha256" Hash="D62B9E6BC56E042C1CE7CB6493AB7FD1B58F716D1C4DC9E56DDFDBDB79B4F3E4" />
    <Deny ID="ID_DENY_IREC_3B" FriendlyName="IREC.sys\irec64--23.sys Hash Page Sha1" Hash="0F11543D227EB822C9FBB3F4B9E497E1831BFAA9" />
    <Deny ID="ID_DENY_IREC_3C" FriendlyName="IREC.sys\irec64--23.sys Hash Page Sha256" Hash="A28B1BD5B1C5D3C91029CAEAE0FB71AFD3485A5D6701DF812D9181B429E605F1" />
    <Deny ID="ID_DENY_IREC_3D" FriendlyName="IREC.sys\irec64--24.sys Hash Sha1" Hash="288AA5926A9382D34AF147B142BCDD02C06B39BD" />
    <Deny ID="ID_DENY_IREC_3E" FriendlyName="IREC.sys\irec64--24.sys Hash Sha256" Hash="66A751B6168A4D9F2F5F5D8D18BEF25F1494E0E20A31360E0F72E498096DE23F" />
    <Deny ID="ID_DENY_IREC_3F" FriendlyName="IREC.sys\irec64--24.sys Hash Page Sha1" Hash="D71E1AA8124D6E634D2F8C9C08E6D1BFC29F0E3A" />
    <Deny ID="ID_DENY_IREC_40" FriendlyName="IREC.sys\irec64--24.sys Hash Page Sha256" Hash="66D06BE183B3AE3F51798A4FCFAB56CAD3B92135429620F5EC1589258F799326" />
    <Deny ID="ID_DENY_IREC_41" FriendlyName="IREC.sys\irec64--25.sys Hash Sha1" Hash="8BBB803E9F79196590FC33E4FB216D556E318F86" />
    <Deny ID="ID_DENY_IREC_42" FriendlyName="IREC.sys\irec64--25.sys Hash Sha256" Hash="9C709B73D67AC049C391EB398A08056422AA677801B2AF924CF3BBACD3D484D2" />
    <Deny ID="ID_DENY_IREC_43" FriendlyName="IREC.sys\irec64--25.sys Hash Page Sha1" Hash="0D28D548B2E5C5CBB279061A32CC46297A1F531C" />
    <Deny ID="ID_DENY_IREC_44" FriendlyName="IREC.sys\irec64--25.sys Hash Page Sha256" Hash="924DF2032B3B70CD9D9ACC3AC28D0924E8D9EAA24CD406688E2DC0E3BFC3F70A" />
    <Deny ID="ID_DENY_IREC_45" FriendlyName="IREC.sys\irec64--26.sys Hash Sha1" Hash="63DC0951A2D8FD32F62E7ECBB34B917EDB855E27" />
    <Deny ID="ID_DENY_IREC_46" FriendlyName="IREC.sys\irec64--26.sys Hash Sha256" Hash="D48B16426AD15C2FCD570F68893BDDFC16E61BF47E86575D17B7CBDED71F9937" />
    <Deny ID="ID_DENY_IREC_47" FriendlyName="IREC.sys\irec64--26.sys Hash Page Sha1" Hash="798CF0D31E7DE95236D32526D98B1B9F398EF451" />
    <Deny ID="ID_DENY_IREC_48" FriendlyName="IREC.sys\irec64--26.sys Hash Page Sha256" Hash="679ECD06D16A6E5D647E955DC8DB480F2799868C1C8F2334DAF11B095DCE9DCB" />
    <Deny ID="ID_DENY_IREC_49" FriendlyName="IREC.sys\irec64--27.sys Hash Sha1" Hash="EFE0B7278B60880F2A7EE6FE6F7EC274995C8D0E" />
    <Deny ID="ID_DENY_IREC_4A" FriendlyName="IREC.sys\irec64--27.sys Hash Sha256" Hash="F2F3907897D349B6263C1FBC16BF12534886DB847E98BFFE786025C16E2796C1" />
    <Deny ID="ID_DENY_IREC_4B" FriendlyName="IREC.sys\irec64--27.sys Hash Page Sha1" Hash="CA64B7A0BEA9C46986C9CCC869F66DB49FC82CDA" />
    <Deny ID="ID_DENY_IREC_4C" FriendlyName="IREC.sys\irec64--27.sys Hash Page Sha256" Hash="6789CA368EC8D5D01FD8D379A119CEAA677798BA0763BEBBE65C9FA5E581A160" />
    <Deny ID="ID_DENY_IREC_4D" FriendlyName="IREC.sys\irec64--28.sys Hash Sha1" Hash="8B8D832E9F39281A454CE6D6A876338B8931075F" />
    <Deny ID="ID_DENY_IREC_4E" FriendlyName="IREC.sys\irec64--28.sys Hash Sha256" Hash="7CCCD8D23FDABF6F6AC6725521EF99B6CB90BA5045FC13540EC6B9BB69F71AB0" />
    <Deny ID="ID_DENY_IREC_4F" FriendlyName="IREC.sys\irec64--28.sys Hash Page Sha1" Hash="CC1696378EC427350B8AF1327113DC18FFE8433C" />
    <Deny ID="ID_DENY_IREC_50" FriendlyName="IREC.sys\irec64--28.sys Hash Page Sha256" Hash="8248A91E24E4DE42B0690268C781938095D1C4F89750A66D8E05DBE5DD709864" />
    <Deny ID="ID_DENY_IREC_51" FriendlyName="IREC.sys\irecARM64--45.sys Hash Sha1" Hash="F89D40FA04E040EF2B6170CAA7E7BDF52A40B2E6" />
    <Deny ID="ID_DENY_IREC_52" FriendlyName="IREC.sys\irecARM64--45.sys Hash Sha256" Hash="7883DDEBE413E3D18E93FE73CA293322235A6EF6AEF5AD7030B743A4ECED83A3" />
    <Deny ID="ID_DENY_IREC_53" FriendlyName="IREC.sys\irecARM64--45.sys Hash Page Sha1" Hash="2C8F603F5420AC349DAD3051C6DD820DC1D34C8E" />
    <Deny ID="ID_DENY_IREC_54" FriendlyName="IREC.sys\irecARM64--45.sys Hash Page Sha256" Hash="8154EA793FC5DA34AAA7B14D24F462D1E6838AA7DE44CF3E5F332A8C66191DF2" />
    <Deny ID="ID_DENY_LGCORETEMP_1" FriendlyName="lgcoretemp\e0cb07a0624ddfacaa882af49e3783ae02c9fbd0ab232541a05a95b4a8abd8ef Hash Sha1" Hash="BF20C99129A768B3D2D5C621AB50375984AB9351" />
    <Deny ID="ID_DENY_LGCORETEMP_2" FriendlyName="lgcoretemp\e0cb07a0624ddfacaa882af49e3783ae02c9fbd0ab232541a05a95b4a8abd8ef Hash Sha256" Hash="9C4DB6EE983FD4FA74F8212031ADE343A1B9ABDB258D05BEF1AABD7AB49FBC16" />
    <Deny ID="ID_DENY_LGCORETEMP_3" FriendlyName="lgcoretemp\e0cb07a0624ddfacaa882af49e3783ae02c9fbd0ab232541a05a95b4a8abd8ef Hash Page Sha1" Hash="4DD5A5D9B4AF0708902DF52C6C42921DE296CC21" />
    <Deny ID="ID_DENY_LGCORETEMP_4" FriendlyName="lgcoretemp\e0cb07a0624ddfacaa882af49e3783ae02c9fbd0ab232541a05a95b4a8abd8ef Hash Page Sha256" Hash="211008964FAD760C1EDDB6221DF727D86695FCBFA83909225D6E5E9215D108E5" />
    <Deny ID="ID_DENY_MHYPROT2_1" FriendlyName="mhyprot2.sys\247AADAF17ED894FCACF3FC4E109B005540E3659FD0249190EB33725D3D3082F Hash Sha1" Hash="05234D1A267C9B6C1754272658FBEBB22633CAC0" />
    <Deny ID="ID_DENY_MHYPROT2_2" FriendlyName="mhyprot2.sys\247AADAF17ED894FCACF3FC4E109B005540E3659FD0249190EB33725D3D3082F Hash Sha256" Hash="FAA37602095F25135312F87ED7ADB607FFA5E9B2931B58D00F7376ED0C6EC69A" />
    <Deny ID="ID_DENY_MHYPROT2_3" FriendlyName="mhyprot2.sys\247AADAF17ED894FCACF3FC4E109B005540E3659FD0249190EB33725D3D3082F Hash Page Sha1" Hash="9381E89C7BFCAE44C16E2C41D146F0198F04A9A7" />
    <Deny ID="ID_DENY_MHYPROT2_4" FriendlyName="mhyprot2.sys\247AADAF17ED894FCACF3FC4E109B005540E3659FD0249190EB33725D3D3082F Hash Page Sha256" Hash="E977DCF2843EB5543AD85336C00CA5D855A0132737AE6853CA646901013EBBC2" />
    <Deny ID="ID_DENY_MHYPROT2_5" FriendlyName="mhyprot2.sys\26D69E677D30BB53C7AC7F3FCE76291FE2C44720EF17EE386F95F08EC5175288 Hash Sha1" Hash="DCF13F12B2429A0A50E0094776B59BEA641B142C" />
    <Deny ID="ID_DENY_MHYPROT2_6" FriendlyName="mhyprot2.sys\26D69E677D30BB53C7AC7F3FCE76291FE2C44720EF17EE386F95F08EC5175288 Hash Sha256" Hash="000E984D3EEBC54259A24A17745EED07D9C3658B86462CB5EBC26381302F7A38" />
    <Deny ID="ID_DENY_MHYPROT2_7" FriendlyName="mhyprot2.sys\26D69E677D30BB53C7AC7F3FCE76291FE2C44720EF17EE386F95F08EC5175288 Hash Page Sha1" Hash="FA569BD33B198E7D80C43CD5D8313346AAEA9901" />
    <Deny ID="ID_DENY_MHYPROT2_8" FriendlyName="mhyprot2.sys\26D69E677D30BB53C7AC7F3FCE76291FE2C44720EF17EE386F95F08EC5175288 Hash Page Sha256" Hash="BA2D76473E86CA72A30642C56207D59F9E826D07864FBE9AB8BCC76701F37D04" />
    <Deny ID="ID_DENY_MHYPROT2_9" FriendlyName="mhyprot2.sys\46CF46E1073B7C99142964B7C4BEF1E5285FABCF2C6DBE5BE99000A393D9F474 Hash Sha1" Hash="F408AD59F7590D26AFC84A7109DD56CFE98EBEA9" />
    <Deny ID="ID_DENY_MHYPROT2_A" FriendlyName="mhyprot2.sys\46CF46E1073B7C99142964B7C4BEF1E5285FABCF2C6DBE5BE99000A393D9F474 Hash Sha256" Hash="DBCAD271FEDA00F614EF9866886CDE83E9FFFAC6E76694FD052790541BB7E993" />
    <Deny ID="ID_DENY_MHYPROT2_B" FriendlyName="mhyprot2.sys\46CF46E1073B7C99142964B7C4BEF1E5285FABCF2C6DBE5BE99000A393D9F474 Hash Page Sha1" Hash="71BB02DADA5A107997CFB2AEE91EF7A387741A91" />
    <Deny ID="ID_DENY_MHYPROT2_C" FriendlyName="mhyprot2.sys\46CF46E1073B7C99142964B7C4BEF1E5285FABCF2C6DBE5BE99000A393D9F474 Hash Page Sha256" Hash="6CBB71ED0F775A9141A18CEEDED43A3ABB0303E862B923C91E1945924F96924B" />
    <Deny ID="ID_DENY_MHYPROT2_D" FriendlyName="mhyprot2.sys\509628B6D16D2428031311D7BD2ADD8D5F5160E9ECC0CD909F1E82BBBB3234D6 Hash Sha1" Hash="484C72DD4FD91083B249F3CCC733A3C8335E583F" />
    <Deny ID="ID_DENY_MHYPROT2_E" FriendlyName="mhyprot2.sys\509628B6D16D2428031311D7BD2ADD8D5F5160E9ECC0CD909F1E82BBBB3234D6 Hash Sha256" Hash="0C7809AC1FA074408518DDC0AC118912C9CD43ED9C89213BC4D59043016B040C" />
    <Deny ID="ID_DENY_MHYPROT2_F" FriendlyName="mhyprot2.sys\509628B6D16D2428031311D7BD2ADD8D5F5160E9ECC0CD909F1E82BBBB3234D6 Hash Page Sha1" Hash="D5720A52FCF9B78A9AB4F528E8DB97A0A309ADE9" />
    <Deny ID="ID_DENY_MHYPROT2_10" FriendlyName="mhyprot2.sys\509628B6D16D2428031311D7BD2ADD8D5F5160E9ECC0CD909F1E82BBBB3234D6 Hash Page Sha256" Hash="1B3EAC12BA5417CA18AFE88B4975994EDE99C32318FA44D306F2405447DD8C05" />
    <Deny ID="ID_DENY_MHYPROT2_11" FriendlyName="mhyprot2.sys\6E76764D750EBD835AA4BB055830D278DF530303585614C1DC743F8D5ADF97D7 Hash Sha1" Hash="8E6248135AD596861D8F6D42703DEB79382F285A" />
    <Deny ID="ID_DENY_MHYPROT2_12" FriendlyName="mhyprot2.sys\6E76764D750EBD835AA4BB055830D278DF530303585614C1DC743F8D5ADF97D7 Hash Sha256" Hash="F18605A691056B446C6411B7FA841B8178059BDE8094CFE9013E59F4663CDF7F" />
    <Deny ID="ID_DENY_MHYPROT2_13" FriendlyName="mhyprot2.sys\6E76764D750EBD835AA4BB055830D278DF530303585614C1DC743F8D5ADF97D7 Hash Page Sha1" Hash="6B8EC268FD00F5832BEA41A4C20AB4537C91279D" />
    <Deny ID="ID_DENY_MHYPROT2_14" FriendlyName="mhyprot2.sys\6E76764D750EBD835AA4BB055830D278DF530303585614C1DC743F8D5ADF97D7 Hash Page Sha256" Hash="7B82DD9B35D55D4718E0BC1F24827AEA6162DB5C1BBD691C4525931DD9EC906F" />
    <Deny ID="ID_DENY_MHYPROT2_15" FriendlyName="mhyprot2.sys\AD2477632B9B07588CFE0E692F244C05FA4202975C1FE91DD3B90FA911AC6058 Hash Sha1" Hash="BD2C5FDAE29B39DE9F862455FB2FB07FBF99ECE2" />
    <Deny ID="ID_DENY_MHYPROT2_16" FriendlyName="mhyprot2.sys\AD2477632B9B07588CFE0E692F244C05FA4202975C1FE91DD3B90FA911AC6058 Hash Sha256" Hash="DF3FD9FA267E12D7C6B65028373E21978041F0C94375B5C7316498FBAD6F4AE0" />
    <Deny ID="ID_DENY_MHYPROT2_17" FriendlyName="mhyprot2.sys\AD2477632B9B07588CFE0E692F244C05FA4202975C1FE91DD3B90FA911AC6058 Hash Page Sha1" Hash="830E26AB8ADD5C589A20C9CAADC31599E78A8D7C" />
    <Deny ID="ID_DENY_MHYPROT2_18" FriendlyName="mhyprot2.sys\AD2477632B9B07588CFE0E692F244C05FA4202975C1FE91DD3B90FA911AC6058 Hash Page Sha256" Hash="4F43AF4FA32E28A4232ACFA0EFAC492635FF5ECB2EAAF10A30637A98E77C289D" />
    <Deny ID="ID_DENY_MHYPROT2_19" FriendlyName="mhyprot2.sys\B8B94C2646B62F6AC08F16514B6EFAA9866AA3C581E4C0435A7AEAFE569B2418 Hash Sha1" Hash="A3FD0D15889398830A61EED9DFAC17DFBDE792EF" />
    <Deny ID="ID_DENY_MHYPROT2_1A" FriendlyName="mhyprot2.sys\B8B94C2646B62F6AC08F16514B6EFAA9866AA3C581E4C0435A7AEAFE569B2418 Hash Sha256" Hash="8CED17D1EE92AE72749AFDFE40F5029223D97F0F977E718BD5AB1242D1FF7CB5" />
    <Deny ID="ID_DENY_MHYPROT2_1B" FriendlyName="mhyprot2.sys\B8B94C2646B62F6AC08F16514B6EFAA9866AA3C581E4C0435A7AEAFE569B2418 Hash Page Sha1" Hash="1C843C256936E700CEDE3DD444E1B6714EFF4E8B" />
    <Deny ID="ID_DENY_MHYPROT2_1C" FriendlyName="mhyprot2.sys\B8B94C2646B62F6AC08F16514B6EFAA9866AA3C581E4C0435A7AEAFE569B2418 Hash Page Sha256" Hash="84516365771430545C4D7D950B0F0699EC1573F316EF787983081F027E8A1FC5" />
    <Deny ID="ID_DENY_MHYPROT3_11" FriendlyName="mhyprot3.sys\475E5016C9C0F5A127896F9179A1B1577A67B357F399AB5A1E68AAB07134729A Hash Sha1" Hash="82FE9B69F358EF5851EEAA26A9A03F2E1B231358" />
    <Deny ID="ID_DENY_MHYPROT3_12" FriendlyName="mhyprot3.sys\475E5016C9C0F5A127896F9179A1B1577A67B357F399AB5A1E68AAB07134729A Hash Sha256" Hash="AAC86A3143DE3E18DEA6EAB813B285DA0718E9FB6BC0BBB46C6E7638476061D8" />
    <Deny ID="ID_DENY_MHYPROT3_13" FriendlyName="mhyprot3.sys\475E5016C9C0F5A127896F9179A1B1577A67B357F399AB5A1E68AAB07134729A Hash Page Sha1" Hash="06D78F73E8C1C1417BE3F4E6EE0E6EBCE2E6D142" />
    <Deny ID="ID_DENY_MHYPROT3_14" FriendlyName="mhyprot3.sys\475E5016C9C0F5A127896F9179A1B1577A67B357F399AB5A1E68AAB07134729A Hash Page Sha256" Hash="7EB934683CDD6119123835D0A962D04EB73EC05646EB2F9F4761AC44F8FF8BC0" />
    <Deny ID="ID_DENY_MHYPROT3_15" FriendlyName="mhyprot3.sys\7FD90500B57F9AC959C87F713FE9CA59E669E6E1512F77FCCB6A75CDC0DFEE8E Hash Sha1" Hash="DBC894F12AD8135AE58149761CE10C41CB3C4757" />
    <Deny ID="ID_DENY_MHYPROT3_16" FriendlyName="mhyprot3.sys\7FD90500B57F9AC959C87F713FE9CA59E669E6E1512F77FCCB6A75CDC0DFEE8E Hash Sha256" Hash="BB29EB4651E3276B14217628E96A1E5D83C4E883CD29EBD75AA704DDA462E82D" />
    <Deny ID="ID_DENY_MHYPROT3_17" FriendlyName="mhyprot3.sys\7FD90500B57F9AC959C87F713FE9CA59E669E6E1512F77FCCB6A75CDC0DFEE8E Hash Page Sha1" Hash="43D632EC2B3C75020ACB40E939B99A227C8C83E2" />
    <Deny ID="ID_DENY_MHYPROT3_18" FriendlyName="mhyprot3.sys\7FD90500B57F9AC959C87F713FE9CA59E669E6E1512F77FCCB6A75CDC0DFEE8E Hash Page Sha256" Hash="D721E921789AC50621E428FDFAB7CFF2245B2E72F304AFBC370F054C81007CFF" />
    <Deny ID="ID_DENY_MHYPROT3_19" FriendlyName="mhyprot3.sys\B531F0A11CA481D5125C93C977325E135A04058019F939169CE3CDEDADDD422D Hash Sha1" Hash="E19E10D97D7ECD4A4376196F7E3DFA2365872867" />
    <Deny ID="ID_DENY_MHYPROT3_1A" FriendlyName="mhyprot3.sys\B531F0A11CA481D5125C93C977325E135A04058019F939169CE3CDEDADDD422D Hash Sha256" Hash="5A021532F0AC453256526428CCF3518CDBA4C6373CC72F340BA208B6C41B3A9E" />
    <Deny ID="ID_DENY_MHYPROT3_1B" FriendlyName="mhyprot3.sys\B531F0A11CA481D5125C93C977325E135A04058019F939169CE3CDEDADDD422D Hash Page Sha1" Hash="25C88C4312C3120547FE62EBF5E56FF1174AAFBC" />
    <Deny ID="ID_DENY_MHYPROT3_1C" FriendlyName="mhyprot3.sys\B531F0A11CA481D5125C93C977325E135A04058019F939169CE3CDEDADDD422D Hash Page Sha256" Hash="AADE26BCD9B435D7ED420134855428AFF84EDCF4E6E66A500A04135ADB4D97E0" />
    <Deny ID="ID_DENY_MHYPROT3_1D" FriendlyName="mhyprot3.sys\B617A072C578CEA38C460E2851F3D122BA1B7CFA1F5EE3E9F5927663AC37AF61 Hash Sha1" Hash="DBA3175FBE67B69A002161D718AFB1507D9EB774" />
    <Deny ID="ID_DENY_MHYPROT3_1E" FriendlyName="mhyprot3.sys\B617A072C578CEA38C460E2851F3D122BA1B7CFA1F5EE3E9F5927663AC37AF61 Hash Sha256" Hash="91793BAA79B630F452267C408CC7509F25AA7AC0E39E88576E3DAED3DCD5D8E5" />
    <Deny ID="ID_DENY_MHYPROT3_1F" FriendlyName="mhyprot3.sys\B617A072C578CEA38C460E2851F3D122BA1B7CFA1F5EE3E9F5927663AC37AF61 Hash Page Sha1" Hash="55A28F91D985A760CF87DB7FC760B8E70E636922" />
    <Deny ID="ID_DENY_MHYPROT3_20" FriendlyName="mhyprot3.sys\B617A072C578CEA38C460E2851F3D122BA1B7CFA1F5EE3E9F5927663AC37AF61 Hash Page Sha256" Hash="8E95755EEDA61980074AE01285A80DAD32F0AE2F02A46810E7DF9AEB1B483694" />
    <Deny ID="ID_DENY_MHYPROT3_21" FriendlyName="mhyprot3.sys\8F3323053381B922681D26D9BA53A01D63B07D53BFCD36AE87B295BBCEC27F65 Hash Sha1" Hash="053E36AF7ECDDB09ED3C1844F43B10DE2156EDD1" />
    <Deny ID="ID_DENY_MHYPROT3_22" FriendlyName="mhyprot3.sys\8F3323053381B922681D26D9BA53A01D63B07D53BFCD36AE87B295BBCEC27F65 Hash Sha256" Hash="FB9A3B53D03C4B8CED05823E64EA89EB9AF2CD9EF5AD0DFBBD5693EC9CECCE39" />
    <Deny ID="ID_DENY_MHYPROTECT_1" FriendlyName="mhyprotect.sys\8bdcf7457c2caf7fa0386571f972d7f5220d385ad686e2c3536f4c67ba4333e6 Hash Sha1" Hash="2A40C0A92107D9B3FAA9AECDEDF5016C1EA564F1" />
    <Deny ID="ID_DENY_MHYPROTECT_2" FriendlyName="mhyprotect.sys\8bdcf7457c2caf7fa0386571f972d7f5220d385ad686e2c3536f4c67ba4333e6 Hash Sha256" Hash="25454028A4F56D3C58747811A86BE43397A6290D1A053BC30D97B41BF3C58C6F" />
    <Deny ID="ID_DENY_MHYPROTECT_3" FriendlyName="mhyprotect.sys\8bdcf7457c2caf7fa0386571f972d7f5220d385ad686e2c3536f4c67ba4333e6 Hash Page Sha1" Hash="1ABAEEFE3108C48BDEF2155626021D1D57F11E3E" />
    <Deny ID="ID_DENY_MHYPROTECT_4" FriendlyName="mhyprotect.sys\8bdcf7457c2caf7fa0386571f972d7f5220d385ad686e2c3536f4c67ba4333e6 Hash Page Sha256" Hash="93C00162B401C2F27331CDCDF6C7CE4615FC45FBE9661650B0C2AA0714752726" />
    <Deny ID="ID_DENY_MHYPROTECT_5" FriendlyName="mhyprotect.sys\edeb35e4341034b2de389017c4884b081a821f34349a620897a2a845c84cb09e Hash Sha1" Hash="195171715AAD9D8F79C147CB045AC278115475E5" />
    <Deny ID="ID_DENY_MHYPROTECT_6" FriendlyName="mhyprotect.sys\edeb35e4341034b2de389017c4884b081a821f34349a620897a2a845c84cb09e Hash Sha256" Hash="14BD76F66FE5749D1812F7CF47CC5F9A8A830C53A7EDE5E42A14A4140A70F5D2" />
    <Deny ID="ID_DENY_MHYPROTECT_7" FriendlyName="mhyprotect.sys\edeb35e4341034b2de389017c4884b081a821f34349a620897a2a845c84cb09e Hash Page Sha1" Hash="F6B882E5D2965A8B98AB3AEC5D33AD839CFD49AA" />
    <Deny ID="ID_DENY_MHYPROTECT_8" FriendlyName="mhyprotect.sys\edeb35e4341034b2de389017c4884b081a821f34349a620897a2a845c84cb09e Hash Page Sha256" Hash="E6D48C1F7F92451556BA0A3F54B5F41027654FCDA6BC617B15B80F51B969B12F" />
    <Deny ID="ID_DENY_MHYPROTNAP_1" FriendlyName="mhyprotnap.sys\40263b08b3c3659529ab605d1daa3033db0fdc4b19c26aa375be0c19686807e6 Hash Sha1" Hash="05B36EFE08674891C40DB96CBB5E69ABEA6F4DAF" />
    <Deny ID="ID_DENY_MHYPROTNAP_2" FriendlyName="mhyprotnap.sys\40263b08b3c3659529ab605d1daa3033db0fdc4b19c26aa375be0c19686807e6 Hash Sha256" Hash="9E428C1D1CD7358E2C2F25EDE45E718B22CB5D04634A4D1EC08A87E71248685B" />
    <Deny ID="ID_DENY_MHYPROTNAP_3" FriendlyName="mhyprotnap.sys\40263b08b3c3659529ab605d1daa3033db0fdc4b19c26aa375be0c19686807e6 Hash Page Sha1" Hash="1DB8A9105F9079B3E5BE5AF50D012AA0C6D138AF" />
    <Deny ID="ID_DENY_MHYPROTNAP_4" FriendlyName="mhyprotnap.sys\40263b08b3c3659529ab605d1daa3033db0fdc4b19c26aa375be0c19686807e6 Hash Page Sha256" Hash="EE07EAF68F2A77CFEF8D0F5F56E9818ADE95884CF1470A161CFB9403C5B34377" />
    <Deny ID="ID_DENY_MHYPROTRG_1" FriendlyName="mhyprotrpg.sys\8bf84bed9b5fa4576182c84d2f31679dc472acd0f83c9813498e9f71ed9fef3e Hash Sha1" Hash="F631F67D11F2B06C0B3B0C7286997F2F7F538231" />
    <Deny ID="ID_DENY_MHYPROTRG_2" FriendlyName="mhyprotrpg.sys\8bf84bed9b5fa4576182c84d2f31679dc472acd0f83c9813498e9f71ed9fef3e Hash Sha256" Hash="8ECD15521B2C37D2FF02A138700007F2AFF28A0ACCFA6FB3480A4421194EF7D2" />
    <Deny ID="ID_DENY_MHYPROTRG_3" FriendlyName="mhyprotrpg.sys\8bf84bed9b5fa4576182c84d2f31679dc472acd0f83c9813498e9f71ed9fef3e Hash Page Sha1" Hash="754AA7D1F2B30E2023F30D98709EA369E185FA36" />
    <Deny ID="ID_DENY_MHYPROTRG_4" FriendlyName="mhyprotrpg.sys\8bf84bed9b5fa4576182c84d2f31679dc472acd0f83c9813498e9f71ed9fef3e Hash Page Sha256" Hash="9BC9A45B105D8F0C47EF3342150F4C7A61439D5D56EDF28EED098673BE857CEB" />
    <Deny ID="ID_DENY_MHYPROTRG_5" FriendlyName="mhyprotrpg.sys\f7d72d22cd4ad3e44fd617bdb4c90b9a884f4eb045688c0e3fb64dd33e033eaa Hash Sha1" Hash="75F87F73836ACFEBCFD7680FF2CA7DA356A9720B" />
    <Deny ID="ID_DENY_MHYPROTRG_6" FriendlyName="mhyprotrpg.sys\f7d72d22cd4ad3e44fd617bdb4c90b9a884f4eb045688c0e3fb64dd33e033eaa Hash Sha256" Hash="5195443274EE3A382E947F03FD409437730434C2AF0C1BB1C99F5BA1953F989E" />
    <Deny ID="ID_DENY_MHYPROTRG_7" FriendlyName="mhyprotrpg.sys\f7d72d22cd4ad3e44fd617bdb4c90b9a884f4eb045688c0e3fb64dd33e033eaa Hash Page Sha1" Hash="54FB65D429E10B277EB7B980768CA828A538EF08" />
    <Deny ID="ID_DENY_MHYPROTRG_8" FriendlyName="mhyprotrpg.sys\f7d72d22cd4ad3e44fd617bdb4c90b9a884f4eb045688c0e3fb64dd33e033eaa Hash Page Sha256" Hash="FFEA367EECDCE7C46CDB2FF029D98AB95B8FB9CCD32F602E365DCE53E61C70B6" />
    <Deny ID="ID_DENY_MSIO_1" FriendlyName="MsIo.sys Hash Sha1" Hash="0CB0FD5BEA730E4EAAEC1426B0C15376CCAC6D83" />
    <Deny ID="ID_DENY_MSIO_2" FriendlyName="MsIo.sys Hash Sha256" Hash="0D0962DB9DC6879067270134801AD425C1F3E85B0DC39877C02AAA9C54ACA14E" />
    <Deny ID="ID_DENY_MSIO_3" FriendlyName="MsIo.sys Hash Page Sha1" Hash="D4E21C205DE75CDE70CD73C52C646E1E5D333A35" />
    <Deny ID="ID_DENY_MSIO_4" FriendlyName="MsIo.sys Hash Page Sha256" Hash="C1D2036235A489FDD8B3970C9EF01567443A87D17B0AD5C2A033D4C471D0ECDE" />
    <Deny ID="ID_DENY_MSIO_5" FriendlyName="MSIo\525d9b51a80ca0cd4c5889a96f857e73f3a80da1ffbae59851e0f51bdfb0b6cd Hash Sha1" Hash="7E732ACB7CFAD9BA043A9350CDEFF25D742BECB8" />
    <Deny ID="ID_DENY_MSIO_6" FriendlyName="MSIo\525d9b51a80ca0cd4c5889a96f857e73f3a80da1ffbae59851e0f51bdfb0b6cd Hash Sha256" Hash="7018D515A6C781EA6097CA71D0F0603AD0D689F7EC99DB27FCACD492A9E86027" />
    <Deny ID="ID_DENY_MSIO_7" FriendlyName="MSIo\525d9b51a80ca0cd4c5889a96f857e73f3a80da1ffbae59851e0f51bdfb0b6cd Hash Page Sha1" Hash="CDE1A50E1DF7870F8E4AFD8631E45A847C714C0A" />
    <Deny ID="ID_DENY_MSIO_8" FriendlyName="MSIo\525d9b51a80ca0cd4c5889a96f857e73f3a80da1ffbae59851e0f51bdfb0b6cd Hash Page Sha256" Hash="05736AB8B48DF84D81CB2CC0FBDC9D3DA34C22DB67A3E71C6F4B6B3923740DD5" />
    <Deny ID="ID_DENY_MSIO_9" FriendlyName="MsIo.sys Hash Sha1" Hash="07660D1867E20BE0212A96CBA6B5FE6BE7776EAF" />
    <Deny ID="ID_DENY_MSIO_10" FriendlyName="MsIo.sys Hash Sha256" Hash="BE0AF245444321E51F4DD8A90A19A0ABE05A060CBAD93701E23A02DF307957AE" />
    <Deny ID="ID_DENY_MSIO_11" FriendlyName="MsIo.sys Hash Sha1" Hash="B2CD3A63D04EAE427BEDE6C6FE8FACBA91ECECBF" />
    <Deny ID="ID_DENY_MSIO_12" FriendlyName="MsIo.sys Hash Sha256" Hash="D86D6732AC4D1CB41A2DCE40436B839C0DFDCEF9BA306CE5D0F97C0522ABFAC8" />
    <Deny ID="ID_DENY_MSR_1" FriendlyName="Datapath msr.sys\6c6a4d07e95ab4212c2afefcb0ce37dc485fa56120b0419b636bd8bd326038c1.sys Hash Sha1" Hash="381CC2B974D440EDEA0BBC010C4BEF4CDC2169B7" />
    <Deny ID="ID_DENY_MSR_2" FriendlyName="Datapath msr.sys\6c6a4d07e95ab4212c2afefcb0ce37dc485fa56120b0419b636bd8bd326038c1.sys Hash Sha256" Hash="D23F28169D6E5C09A89E5136A4FF899A3B6F886535BB0254A27DD00A2753C412" />
    <Deny ID="ID_DENY_MSR_3" FriendlyName="Datapath msr.sys\6c6a4d07e95ab4212c2afefcb0ce37dc485fa56120b0419b636bd8bd326038c1.sys Hash Page Sha1" Hash="5CB0D5676E465F6F389BED975B426705AC30DBC6" />
    <Deny ID="ID_DENY_MSR_4" FriendlyName="Datapath msr.sys\6c6a4d07e95ab4212c2afefcb0ce37dc485fa56120b0419b636bd8bd326038c1.sys Hash Page Sha256" Hash="F05027D011C6123FA6EFB78AEA60528568FC80F6D9FD5CD1232F9B79B4216D3B" />
    <Deny ID="ID_DENY_MSR_5" FriendlyName="Datapath msr.sys\ede9a3858a12d5ddea21a310e5721bf86c2248539f42c9e0c3c29ae5b0148ba5 Hash Sha1" Hash="2146BF058139453C0447786D6F6D5FC454AB955F" />
    <Deny ID="ID_DENY_MSR_6" FriendlyName="Datapath msr.sys\ede9a3858a12d5ddea21a310e5721bf86c2248539f42c9e0c3c29ae5b0148ba5 Hash Sha256" Hash="1F8812611CF7120E89E769CC908FABC0C9E49B27FDED8DDE6A3DE51D9CE34F09" />
    <Deny ID="ID_DENY_MSR_7" FriendlyName="Datapath msr.sys\ede9a3858a12d5ddea21a310e5721bf86c2248539f42c9e0c3c29ae5b0148ba5 Hash Page Sha1" Hash="81DE92B2555D9A29C5E48CB4893ADF0131EAD233" />
    <Deny ID="ID_DENY_MSR_8" FriendlyName="Datapath msr.sys\ede9a3858a12d5ddea21a310e5721bf86c2248539f42c9e0c3c29ae5b0148ba5 Hash Page Sha256" Hash="CA90FFB147D600E7F42E8790CBD9FE7D69C7463DE88B08723E210750E1E272BD" />
    <Deny ID="ID_DENY_MSRHOOK_1" FriendlyName="IDTech MSRHook\10397e0ebd622b20412fcfcd28f832ee562181931192a58cc19dfd45a98e684f Hash Sha1" Hash="87512948E8B0F3F29F12E9841A48E1D01D67228A"/>
    <Deny ID="ID_DENY_MSRHOOK_2" FriendlyName="IDTech MSRHook\10397e0ebd622b20412fcfcd28f832ee562181931192a58cc19dfd45a98e684f Hash Sha256" Hash="74B3623FBC8416822A98ACE6A2C69EE45C2B6794A3EB4E1181C5BE7319CFB43A"/>
    <Deny ID="ID_DENY_MSRHOOK_3" FriendlyName="IDTech MSRHook\10397e0ebd622b20412fcfcd28f832ee562181931192a58cc19dfd45a98e684f Hash Page Sha1" Hash="6E9170D40B6811BCA4F931E79E0B2621AB0190CC"/>
    <Deny ID="ID_DENY_MSRHOOK_4" FriendlyName="IDTech MSRHook\10397e0ebd622b20412fcfcd28f832ee562181931192a58cc19dfd45a98e684f Hash Page Sha256" Hash="9670241406BB54134387EEC1DC6F3A65474359D444BAA1473310521598CC4F71"/>
    <Deny ID="ID_DENY_MSRHOOK_5" FriendlyName="IDTech MSRHook\4e4dcb68457b4615e38e8c3148d4303e98c166e56b4aa9fae2dee8d24d3e93e9 Hash Sha1" Hash="48F0AABB935C7F87DBD678950EA85A5A8D1D38E9"/>
    <Deny ID="ID_DENY_MSRHOOK_6" FriendlyName="IDTech MSRHook\4e4dcb68457b4615e38e8c3148d4303e98c166e56b4aa9fae2dee8d24d3e93e9 Hash Sha256" Hash="0510F28DF28ECBADB39E8D5086E8138780CB887BCEC9ADD2EED1CE48B119C4B5"/>
    <Deny ID="ID_DENY_MSRHOOK_7" FriendlyName="IDTech MSRHook\4e4dcb68457b4615e38e8c3148d4303e98c166e56b4aa9fae2dee8d24d3e93e9 Hash Page Sha1" Hash="BD571AB72760CF250B9180DE455C0D4D4F6480E3"/>
    <Deny ID="ID_DENY_MSRHOOK_8" FriendlyName="IDTech MSRHook\4e4dcb68457b4615e38e8c3148d4303e98c166e56b4aa9fae2dee8d24d3e93e9 Hash Page Sha256" Hash="B49CEDF7844A48997D9CD9F722780A7ACE0653CACB0988DC9BF78E4892C47372"/>
    <Deny ID="ID_DENY_MSRHOOK_9" FriendlyName="IDTech MSRHook\6a374d023813382fb79b447c05f3382f9d0bbb13f8ab0c1f8e8168f4a23d5ffe Hash Sha1" Hash="56B7D5E3D0EF800AF285E6766B2E89DD536966BD"/>
    <Deny ID="ID_DENY_MSRHOOK_10" FriendlyName="IDTech MSRHook\6a374d023813382fb79b447c05f3382f9d0bbb13f8ab0c1f8e8168f4a23d5ffe Hash Sha256" Hash="98198A7E6E6613C4D39C38205029E437469A70CE3D2B0B731A2A681202477F5D"/>
    <Deny ID="ID_DENY_MSRHOOK_11" FriendlyName="IDTech MSRHook\6a374d023813382fb79b447c05f3382f9d0bbb13f8ab0c1f8e8168f4a23d5ffe Hash Page Sha1" Hash="EB090562DB6F2AA96C22003F83683F0DE86C8A47"/>
    <Deny ID="ID_DENY_MSRHOOK_12" FriendlyName="IDTech MSRHook\6a374d023813382fb79b447c05f3382f9d0bbb13f8ab0c1f8e8168f4a23d5ffe Hash Page Sha256" Hash="9B2AF543F278A3648FC2F86AA2DCF06447411E696492AECD3732928991C3BB9F"/>
    <Deny ID="ID_DENY_MSRHOOK_13" FriendlyName="IDTech MSRHook\79c14ffa8e8d28b78a9a2f0618052a64e83c98acc4aeec27178c0002f9c91dae Hash Sha1" Hash="F33DDD5D0A22CBB269BF9BD2E0905ABDE25DDD50"/>
    <Deny ID="ID_DENY_MSRHOOK_14" FriendlyName="IDTech MSRHook\79c14ffa8e8d28b78a9a2f0618052a64e83c98acc4aeec27178c0002f9c91dae Hash Sha256" Hash="04B318E35B734F63D43754EE4ECFF808808CF2B6C68DDD5E1D9E39EFC41CFB8B"/>
    <Deny ID="ID_DENY_MSRHOOK_15" FriendlyName="IDTech MSRHook\79c14ffa8e8d28b78a9a2f0618052a64e83c98acc4aeec27178c0002f9c91dae Hash Page Sha1" Hash="B2DE7BC9D08E706970A47E34BA8056D97F425840"/>
    <Deny ID="ID_DENY_MSRHOOK_16" FriendlyName="IDTech MSRHook\79c14ffa8e8d28b78a9a2f0618052a64e83c98acc4aeec27178c0002f9c91dae Hash Page Sha256" Hash="E2F7CEFBAC7960977797AF12A84AB536D5815CF4410BF527E291DF8738DB4136"/>
    <Deny ID="ID_DENY_MSRHOOK_17" FriendlyName="IDTech MSRHook\a0ba1c981dcf3930680c97664efce6142679bd84604c38eb8b8368f6c1bde3c9 Hash Sha1" Hash="622A9B34788204D4F8EE2AD770AEC818FD7FBF10"/>
    <Deny ID="ID_DENY_MSRHOOK_18" FriendlyName="IDTech MSRHook\a0ba1c981dcf3930680c97664efce6142679bd84604c38eb8b8368f6c1bde3c9 Hash Sha256" Hash="BCBB079252FD5C4A6A5121C287C00FC6D8E0C7F57EF243D37DCD9B8F319AF99A"/>
    <Deny ID="ID_DENY_MSRHOOK_19" FriendlyName="IDTech MSRHook\a0ba1c981dcf3930680c97664efce6142679bd84604c38eb8b8368f6c1bde3c9 Hash Page Sha1" Hash="1E824C0B47BC1CD163FADFF54CBF6EDB11CEDFCE"/>
    <Deny ID="ID_DENY_MSRHOOK_20" FriendlyName="IDTech MSRHook\a0ba1c981dcf3930680c97664efce6142679bd84604c38eb8b8368f6c1bde3c9 Hash Page Sha256" Hash="62EA60E39D25E1A12BF5A123DAE9DD8C0199A93C4C1592F5D314DF85142B1971"/>
    <Deny ID="ID_DENY_MSRHOOK_21" FriendlyName="IDTech MSRHook\d0b65b4277ab975c7e0579839153dfb8febeaf8ca3aa621bc710cd7bcaaa8ad1 Hash Sha1" Hash="ED426D5987AE02488A35D7D149176F6C654B4CFA"/>
    <Deny ID="ID_DENY_MSRHOOK_22" FriendlyName="IDTech MSRHook\d0b65b4277ab975c7e0579839153dfb8febeaf8ca3aa621bc710cd7bcaaa8ad1 Hash Sha256" Hash="00573981F5478DBEC6704FB77131AD92E91F00178CCCCCAEB2F70763E927F2D7"/>
    <Deny ID="ID_DENY_MSRHOOK_23" FriendlyName="IDTech MSRHook\d0b65b4277ab975c7e0579839153dfb8febeaf8ca3aa621bc710cd7bcaaa8ad1 Hash Page Sha1" Hash="B018A92B0BF220B462993EE8602F5C978D799AA9"/>
    <Deny ID="ID_DENY_MSRHOOK_24" FriendlyName="IDTech MSRHook\d0b65b4277ab975c7e0579839153dfb8febeaf8ca3aa621bc710cd7bcaaa8ad1 Hash Page Sha256" Hash="819912254620E94E715C0AB9FAAD96869D72C3F3F23C7659639DDEF4D31ACB74"/>
    <Deny ID="ID_DENY_MSRHOOK_25" FriendlyName="IDTech MSRHook\f4b447891887806b4712986f00e10612f8d9dbda1cb1ec1de032fb4c34199428 Hash Sha1" Hash="D09D43621878AD4014835DF83599B574ACB2CC29"/>
    <Deny ID="ID_DENY_MSRHOOK_26" FriendlyName="IDTech MSRHook\f4b447891887806b4712986f00e10612f8d9dbda1cb1ec1de032fb4c34199428 Hash Sha256" Hash="4D7B24FB69EB1A0906E3B6D78082CB62D7F713ABA79A85DA0F5E512725A680FF"/>
    <Deny ID="ID_DENY_MSRHOOK_27" FriendlyName="IDTech MSRHook\f4b447891887806b4712986f00e10612f8d9dbda1cb1ec1de032fb4c34199428 Hash Page Sha1" Hash="C0C2626B922973EBA185D79D795730FB73D99871"/>
    <Deny ID="ID_DENY_MSRHOOK_28" FriendlyName="IDTech MSRHook\f4b447891887806b4712986f00e10612f8d9dbda1cb1ec1de032fb4c34199428 Hash Page Sha256" Hash="D6D5971984033399A065674BE53669B7B9D7BA445E105AE6A78AC5E68C7871B2"/>
    <Deny ID="ID_DENY_MSRHOOK_29" FriendlyName="IDTech MSRHook\fc6d327b8af44b6adeffc4c3c00ba9edda41d40dae3ff2e1449125e3eb08e15c Hash Sha1" Hash="72064C3BE3AD234A5B5E801BC36458F343078374"/>
    <Deny ID="ID_DENY_MSRHOOK_30" FriendlyName="IDTech MSRHook\fc6d327b8af44b6adeffc4c3c00ba9edda41d40dae3ff2e1449125e3eb08e15c Hash Sha256" Hash="84383018957DEC043ABA44D5A3243038EC2686BB05BAC5EB39FA854CA4AB2C8A"/>
    <Deny ID="ID_DENY_MSRHOOK_31" FriendlyName="IDTech MSRHook\fc6d327b8af44b6adeffc4c3c00ba9edda41d40dae3ff2e1449125e3eb08e15c Hash Page Sha1" Hash="969B242ED4F904609EEBF25D26DC6CBC295F6647"/>
    <Deny ID="ID_DENY_MSRHOOK_32" FriendlyName="IDTech MSRHook\fc6d327b8af44b6adeffc4c3c00ba9edda41d40dae3ff2e1449125e3eb08e15c Hash Page Sha256" Hash="9B6D8C42212266900865753362038FED8A7DE6369BF0E2B6B9B94A6E2B0DAD67"/>
    <Deny ID="ID_DENY_NVFLASH_1" FriendlyName="nvflash.sys\0a89a6ab2fca486480b6e3dacf392d6ce0c59a5bdb4bcd18d672feb4ebb0543c Hash Sha1" Hash="213C4EC78132D6C0FDFDD7B640107E0CE4990A0E" />
    <Deny ID="ID_DENY_NVFLASH_2" FriendlyName="nvflash.sys\0a89a6ab2fca486480b6e3dacf392d6ce0c59a5bdb4bcd18d672feb4ebb0543c Hash Sha256" Hash="91EE89520105CCBCECA6EE0E34070F28C8DC5A3D73EC65F384DA5DA4F2A36DC0" />
    <Deny ID="ID_DENY_NVFLASH_3" FriendlyName="nvflash.sys\0a89a6ab2fca486480b6e3dacf392d6ce0c59a5bdb4bcd18d672feb4ebb0543c Hash Page Sha1" Hash="C24D6F9132486AF1EB2937D9366275126A5A35E1" />
    <Deny ID="ID_DENY_NVFLASH_4" FriendlyName="nvflash.sys\0a89a6ab2fca486480b6e3dacf392d6ce0c59a5bdb4bcd18d672feb4ebb0543c Hash Page Sha256" Hash="EC1F0A277927B9C62B074FC4DC830A8C326BB7EDC667A09F2B3FC5684211A471" />
    <Deny ID="ID_DENY_NVFLASH_5" FriendlyName="nvflash.sys\0e9072759433abf3304667b332354e0c635964ff930de034294bf13d40da2a6f Hash Sha1" Hash="B76B53A72B66938BB3E9C787D0E075260F3E821C" />
    <Deny ID="ID_DENY_NVFLASH_6" FriendlyName="nvflash.sys\0e9072759433abf3304667b332354e0c635964ff930de034294bf13d40da2a6f Hash Sha256" Hash="3CEE638C546EFE5BD23880DA9FA2B90E8DD0FD4A228FB0AD96F6C11D47A52593" />
    <Deny ID="ID_DENY_NVFLASH_7" FriendlyName="nvflash.sys\0e9072759433abf3304667b332354e0c635964ff930de034294bf13d40da2a6f Hash Page Sha1" Hash="92A074CE4E5D2C89F709F63889BBE36EF92EA5AD" />
    <Deny ID="ID_DENY_NVFLASH_8" FriendlyName="nvflash.sys\0e9072759433abf3304667b332354e0c635964ff930de034294bf13d40da2a6f Hash Page Sha256" Hash="19885E3CDADC4F226A1E71F69D463B93B8612C1D50F17BE831EC123D9A6BF09C" />
    <Deny ID="ID_DENY_NVFLASH_9" FriendlyName="nvflash.sys\159dcf37dc723d6db2bad46ed6a1b0e31d72390ec298a5413c7be318aef4a241 Hash Sha1" Hash="892200C0BAE37AB60DECF28CE9E83D9CB56ACA24" />
    <Deny ID="ID_DENY_NVFLASH_A" FriendlyName="nvflash.sys\159dcf37dc723d6db2bad46ed6a1b0e31d72390ec298a5413c7be318aef4a241 Hash Sha256" Hash="DDE12D20A00F7987F6E53EEEEE3D5667482940F06D012A0003B80F217A105D74" />
    <Deny ID="ID_DENY_NVFLASH_B" FriendlyName="nvflash.sys\1ce9e4600859293c59d884ea721e9b20b2410f6ef80699f8a78a6b9fad505dfc Hash Sha1" Hash="2AE5A1F9C96F3935D58830D2FDF00B4517DACFD9" />
    <Deny ID="ID_DENY_NVFLASH_C" FriendlyName="nvflash.sys\1ce9e4600859293c59d884ea721e9b20b2410f6ef80699f8a78a6b9fad505dfc Hash Sha256" Hash="51DBF446DEB54BEB8AEF1DE11E0F868AC062A9DB0C31D0E16EFF99203AEC86A9" />
    <Deny ID="ID_DENY_NVFLASH_D" FriendlyName="nvflash.sys\1ce9e4600859293c59d884ea721e9b20b2410f6ef80699f8a78a6b9fad505dfc Hash Page Sha1" Hash="99039FEBE9EA08C480017C1278A864413449A0AD" />
    <Deny ID="ID_DENY_NVFLASH_E" FriendlyName="nvflash.sys\1ce9e4600859293c59d884ea721e9b20b2410f6ef80699f8a78a6b9fad505dfc Hash Page Sha256" Hash="E47F294B4CB2CFDC42BD801F196FD9A7AF10DA5D4376043C55865549A661F224" />
    <Deny ID="ID_DENY_NVFLASH_F" FriendlyName="nvflash.sys\1e9ec6b3e83055ae90f3664a083c46885c506d33de5e2a49f5f1189e89fa9f0a Hash Sha1" Hash="FD986601F23ED39308F35A13A54A080065E2B45D" />
    <Deny ID="ID_DENY_NVFLASH_10" FriendlyName="nvflash.sys\1e9ec6b3e83055ae90f3664a083c46885c506d33de5e2a49f5f1189e89fa9f0a Hash Sha256" Hash="4B38C075BA6523502DFD39ED10757DB58234A1C84D4952B65E30B4A8679BFCCA" />
    <Deny ID="ID_DENY_NVFLASH_11" FriendlyName="nvflash.sys\1e9ec6b3e83055ae90f3664a083c46885c506d33de5e2a49f5f1189e89fa9f0a Hash Page Sha1" Hash="85AF1545543975E4470A0A16C5825D863F7960C9" />
    <Deny ID="ID_DENY_NVFLASH_12" FriendlyName="nvflash.sys\1e9ec6b3e83055ae90f3664a083c46885c506d33de5e2a49f5f1189e89fa9f0a Hash Page Sha256" Hash="4B05EC4E5E0FB910E75ACDDFFC8E6D06F9024728AACCE13D659AE3C5B4E379CF" />
    <Deny ID="ID_DENY_NVFLASH_13" FriendlyName="nvflash.sys\20dd9542d30174585f2623642c7fbbda84e2347e4365e804e3f3d81f530c4ece Hash Sha1" Hash="5087F7ED135DB66D4B58BEAF09F1245E65171466" />
    <Deny ID="ID_DENY_NVFLASH_14" FriendlyName="nvflash.sys\20dd9542d30174585f2623642c7fbbda84e2347e4365e804e3f3d81f530c4ece Hash Sha256" Hash="CC041A5C21339D62C9EA05215C2C42697F73A3820C83133EB6C6FA574A095384" />
    <Deny ID="ID_DENY_NVFLASH_15" FriendlyName="nvflash.sys\20dd9542d30174585f2623642c7fbbda84e2347e4365e804e3f3d81f530c4ece Hash Page Sha1" Hash="883179DAAFC0E08990285DA24BE8E63AFF983091" />
    <Deny ID="ID_DENY_NVFLASH_16" FriendlyName="nvflash.sys\20dd9542d30174585f2623642c7fbbda84e2347e4365e804e3f3d81f530c4ece Hash Page Sha256" Hash="928DF51B50A780687CF741F06429107A952238E020FE26CBA66F8FE7A7FED7BB" />
    <Deny ID="ID_DENY_NVFLASH_17" FriendlyName="nvflash.sys\3b2ad08123e8ed2516548240cfcdf5eefd89293f31070a6cd3949ee1b66fed14 Hash Sha1" Hash="2C3D006C7C639BFFD8828AAE973238F570A3D74E" />
    <Deny ID="ID_DENY_NVFLASH_18" FriendlyName="nvflash.sys\3b2ad08123e8ed2516548240cfcdf5eefd89293f31070a6cd3949ee1b66fed14 Hash Sha256" Hash="D9434A50E1A6252F23AF362631A5576017CCE3EF109D7FC93748DE8BD46F9385" />
    <Deny ID="ID_DENY_NVFLASH_19" FriendlyName="nvflash.sys\3b2ad08123e8ed2516548240cfcdf5eefd89293f31070a6cd3949ee1b66fed14 Hash Page Sha1" Hash="1488153E8711789BFA0117E0573EB105F7BAA867" />
    <Deny ID="ID_DENY_NVFLASH_1A" FriendlyName="nvflash.sys\3b2ad08123e8ed2516548240cfcdf5eefd89293f31070a6cd3949ee1b66fed14 Hash Page Sha256" Hash="A384616C14E51F6F5E314174A1CBF9B47A7FE9395C2767DCF6013175E1B798C1" />
    <Deny ID="ID_DENY_NVFLASH_1B" FriendlyName="nvflash.sys\4115b7a30061d11a034188c0ec7a2223f3b032c8b3420cfffabf6c4df692920d Hash Sha1" Hash="D23911CE1E509163146B3661FA09031708BE327D" />
    <Deny ID="ID_DENY_NVFLASH_1C" FriendlyName="nvflash.sys\4115b7a30061d11a034188c0ec7a2223f3b032c8b3420cfffabf6c4df692920d Hash Sha256" Hash="C2F5DB10A59577AEFF8550A58F9D96CE8AA8C1A13F96814CD0F4BB03274968E9" />
    <Deny ID="ID_DENY_NVFLASH_1D" FriendlyName="nvflash.sys\423d58265b22504f512a84faf787c1af17c44445ae68f7adcaa68b6f970e7bd5 Hash Sha1" Hash="E32288042163C61A55FD5CD05F7E1E0EBE2D3064" />
    <Deny ID="ID_DENY_NVFLASH_1E" FriendlyName="nvflash.sys\423d58265b22504f512a84faf787c1af17c44445ae68f7adcaa68b6f970e7bd5 Hash Sha256" Hash="B62ECD7ECCDE402456EAB582B49705CC77065D7015E7D92BBC06E0FCFF097E58" />
    <Deny ID="ID_DENY_NVFLASH_1F" FriendlyName="nvflash.sys\423d58265b22504f512a84faf787c1af17c44445ae68f7adcaa68b6f970e7bd5 Hash Page Sha1" Hash="66862B3470901C611EF69079594B631F262B643A" />
    <Deny ID="ID_DENY_NVFLASH_20" FriendlyName="nvflash.sys\423d58265b22504f512a84faf787c1af17c44445ae68f7adcaa68b6f970e7bd5 Hash Page Sha256" Hash="EFFC8AB3AC97A9B0FEBA09792BF5CEC1AB1B8759A4E3A50834FDCDA5FFA90BCC" />
    <Deny ID="ID_DENY_NVFLASH_21" FriendlyName="nvflash.sys\4710acca9c4a61e2fc6daafb09d72e11b603ef8cd732e12a84274ea9ad6d43be Hash Sha1" Hash="D4492258676968C5F3EABD0189F149CA143F16D4" />
    <Deny ID="ID_DENY_NVFLASH_22" FriendlyName="nvflash.sys\4710acca9c4a61e2fc6daafb09d72e11b603ef8cd732e12a84274ea9ad6d43be Hash Sha256" Hash="1E1F20CEB2BFE9F38B50D6C997DBAD032B2A79937EF6B3CE41B34BB74FBD24DB" />
    <Deny ID="ID_DENY_NVFLASH_23" FriendlyName="nvflash.sys\4737750788c72d2fc9cf95681c622357263075d65b23e54c4dc3f31446cad37b Hash Sha1" Hash="26D406A4ED82F5F4550B4E3BEC84FB429A5B7952" />
    <Deny ID="ID_DENY_NVFLASH_24" FriendlyName="nvflash.sys\4737750788c72d2fc9cf95681c622357263075d65b23e54c4dc3f31446cad37b Hash Sha256" Hash="D4288C055C6D68B4A45DF501877443E544B31C193F8559C8C7EAC927AE738E8A" />
    <Deny ID="ID_DENY_NVFLASH_25" FriendlyName="nvflash.sys\4737750788c72d2fc9cf95681c622357263075d65b23e54c4dc3f31446cad37b Hash Page Sha1" Hash="1ADB9E0B8A2533D51026BA553BF49C7D46BCE794" />
    <Deny ID="ID_DENY_NVFLASH_26" FriendlyName="nvflash.sys\4737750788c72d2fc9cf95681c622357263075d65b23e54c4dc3f31446cad37b Hash Page Sha256" Hash="8C312288DAE8148CD93AC970F045E0E7981B4CD9DC21DE64E99633AAEABE9754" />
    <Deny ID="ID_DENY_NVFLASH_27" FriendlyName="nvflash.sys\50aa2b3a762abb1306fa003c60de3c78e89ea5d29aab8a9c6479792d2be3c2d7 Hash Sha1" Hash="C905EDB291ECA91790FEC309CBC00E8A6CE0534D" />
    <Deny ID="ID_DENY_NVFLASH_28" FriendlyName="nvflash.sys\50aa2b3a762abb1306fa003c60de3c78e89ea5d29aab8a9c6479792d2be3c2d7 Hash Sha256" Hash="057E6A58E3515E56EAB85CCB8EC5086552B7DE98C886C37F6A5284C002615565" />
    <Deny ID="ID_DENY_NVFLASH_29" FriendlyName="nvflash.sys\50aa2b3a762abb1306fa003c60de3c78e89ea5d29aab8a9c6479792d2be3c2d7 Hash Page Sha1" Hash="79B21CAC909E73ABEF928A9587703CA2F6501B6D" />
    <Deny ID="ID_DENY_NVFLASH_2A" FriendlyName="nvflash.sys\50aa2b3a762abb1306fa003c60de3c78e89ea5d29aab8a9c6479792d2be3c2d7 Hash Page Sha256" Hash="61ED70302D3A3F42B99C319D8142E00446F9090A45817C2413BBEF4DF7545C1D" />
    <Deny ID="ID_DENY_NVFLASH_2B" FriendlyName="nvflash.sys\5cc6b647174c8efa0a81ec1d3cb0464c8a567456571d0939fb2e76c6850bf7cb Hash Sha1" Hash="362773DD943A8FAF5C24FAF1F3DC59E6BC89C384" />
    <Deny ID="ID_DENY_NVFLASH_2C" FriendlyName="nvflash.sys\5cc6b647174c8efa0a81ec1d3cb0464c8a567456571d0939fb2e76c6850bf7cb Hash Sha256" Hash="E88617BF6581B7F48AB216F5A2CF40CFA728354F81A631568823426461902C87" />
    <Deny ID="ID_DENY_NVFLASH_2D" FriendlyName="nvflash.sys\5cc6b647174c8efa0a81ec1d3cb0464c8a567456571d0939fb2e76c6850bf7cb Hash Page Sha1" Hash="F2758B4DB78D45A969F6500A55F3303F8279A788" />
    <Deny ID="ID_DENY_NVFLASH_2E" FriendlyName="nvflash.sys\5cc6b647174c8efa0a81ec1d3cb0464c8a567456571d0939fb2e76c6850bf7cb Hash Page Sha256" Hash="B0E2CCA277AD545180769F454CF2EA25C1B9F7751F1B417E905D7DDA18C287A7" />
    <Deny ID="ID_DENY_NVFLASH_2F" FriendlyName="nvflash.sys\747a4dc50915053649c499a508853a42d9e325a5eec22e586571e338c6d32465 Hash Sha1" Hash="30DE853698F8DBF7063E647F6C6C50759CE233DE" />
    <Deny ID="ID_DENY_NVFLASH_30" FriendlyName="nvflash.sys\747a4dc50915053649c499a508853a42d9e325a5eec22e586571e338c6d32465 Hash Sha256" Hash="DCEF3C2FE44A68992D2344A8EC129E9D35E7790F4317E9BD7BCA6BF217252D91" />
    <Deny ID="ID_DENY_NVFLASH_31" FriendlyName="nvflash.sys\747a4dc50915053649c499a508853a42d9e325a5eec22e586571e338c6d32465 Hash Page Sha1" Hash="E9BB517823908DCFC0E47E7A6A81424BFCCBBB23" />
    <Deny ID="ID_DENY_NVFLASH_32" FriendlyName="nvflash.sys\747a4dc50915053649c499a508853a42d9e325a5eec22e586571e338c6d32465 Hash Page Sha256" Hash="04ACDCE5167AF1D3F4F2AAEEBA143D7B610B275E29850F52C6DBA62E6359272D" />
    <Deny ID="ID_DENY_NVFLASH_33" FriendlyName="nvflash.sys\79aa2cedd1b8415ba6d00f4b3601e2363c8bdd07f860a3b8de010f9e5187c0e9 Hash Sha1" Hash="C5AB13C024491029AA6F72020A4E44A8AF004EE9" />
    <Deny ID="ID_DENY_NVFLASH_34" FriendlyName="nvflash.sys\79aa2cedd1b8415ba6d00f4b3601e2363c8bdd07f860a3b8de010f9e5187c0e9 Hash Sha256" Hash="7680D9B4F66FE4FE9D4A45F2EBDB3F17E7D3E2519E0B61D691761A2222CF444B" />
    <Deny ID="ID_DENY_NVFLASH_35" FriendlyName="nvflash.sys\7c933f5d07ccb4bd715666cd6eb35a774b266ddd8d212849535a54192a44f667 Hash Sha1" Hash="2060F97A7138F29DFEEEF3258ECFE5256DA8AE87" />
    <Deny ID="ID_DENY_NVFLASH_36" FriendlyName="nvflash.sys\7c933f5d07ccb4bd715666cd6eb35a774b266ddd8d212849535a54192a44f667 Hash Sha256" Hash="6694435663BF283A3D5F20E9C90CF1BC4D3687E381B32E1A004A9D24471EB95B" />
    <Deny ID="ID_DENY_NVFLASH_37" FriendlyName="nvflash.sys\7c933f5d07ccb4bd715666cd6eb35a774b266ddd8d212849535a54192a44f667 Hash Page Sha1" Hash="399627D62A7B582DA2C0202AD46AE1FD50DF6DB8" />
    <Deny ID="ID_DENY_NVFLASH_38" FriendlyName="nvflash.sys\7c933f5d07ccb4bd715666cd6eb35a774b266ddd8d212849535a54192a44f667 Hash Page Sha256" Hash="4346FCFFA68B2B532F4A40D48D4D052CE0106ABBEDE45DE2CBF9E474C379E559" />
    <Deny ID="ID_DENY_NVFLASH_39" FriendlyName="nvflash.sys\7ef8949637cb947f1a4e1d4e68d31d1385a600d1b1054b53e7417767461fafa7 Hash Sha1" Hash="7BD52FAD60A897B26B0D447F7A84E5D00808B3B3" />
    <Deny ID="ID_DENY_NVFLASH_3A" FriendlyName="nvflash.sys\7ef8949637cb947f1a4e1d4e68d31d1385a600d1b1054b53e7417767461fafa7 Hash Sha256" Hash="48567FA742841208D4F93F54031218703241BAEC6F59B1E4AB8A71C26DE1CF85" />
    <Deny ID="ID_DENY_NVFLASH_3B" FriendlyName="nvflash.sys\7ef8949637cb947f1a4e1d4e68d31d1385a600d1b1054b53e7417767461fafa7 Hash Page Sha1" Hash="87581F7EB0804FA1114B8CA28EEDEFCB4E3BEFC2" />
    <Deny ID="ID_DENY_NVFLASH_3C" FriendlyName="nvflash.sys\7ef8949637cb947f1a4e1d4e68d31d1385a600d1b1054b53e7417767461fafa7 Hash Page Sha256" Hash="73EFDB51282A53B599A9DF6E94E0DB8BCEA3825613742FE2864915AFE7EE1869" />
    <Deny ID="ID_DENY_NVFLASH_3D" FriendlyName="nvflash.sys\8162811e8aae05884e8cb84b8dd87c310e5ed5ec588b9023a4d849d558d6ae34 Hash Sha1" Hash="F3AD16A4376921F4F70E30F03B55DD87087CF8B4" />
    <Deny ID="ID_DENY_NVFLASH_3E" FriendlyName="nvflash.sys\8162811e8aae05884e8cb84b8dd87c310e5ed5ec588b9023a4d849d558d6ae34 Hash Sha256" Hash="AE7D7D8A5BC48F2FB1DC81806A5EED52C3EFC487CFDC8737D3EA3970DCA7CE27" />
    <Deny ID="ID_DENY_NVFLASH_3F" FriendlyName="nvflash.sys\835733590a778f48dae1df4e33da8455b89449fed3e04fa19b64bbdcb6a530db Hash Sha1" Hash="239F1400AE2D6005DB03F92203723BC227CFEE7D" />
    <Deny ID="ID_DENY_NVFLASH_40" FriendlyName="nvflash.sys\835733590a778f48dae1df4e33da8455b89449fed3e04fa19b64bbdcb6a530db Hash Sha256" Hash="C349C8036B5EE61E7B0831943697BA98BFE70A52BAC0A06B497C229B0C0FFF27" />
    <Deny ID="ID_DENY_NVFLASH_41" FriendlyName="nvflash.sys\9155470dc24449977d1be15a116b08705dd4c113a2eb4ab19a6000749ff4b100 Hash Sha1" Hash="A3B195EA5F9E63790FA575DBEF85D01B4E4D051F" />
    <Deny ID="ID_DENY_NVFLASH_42" FriendlyName="nvflash.sys\9155470dc24449977d1be15a116b08705dd4c113a2eb4ab19a6000749ff4b100 Hash Sha256" Hash="989E3234C1B61EA2DB590CB170F79E25E9C9A6262B7B9A751ECFC6BF4468B8C4" />
    <Deny ID="ID_DENY_NVFLASH_43" FriendlyName="nvflash.sys\9368e51ec98e2ad20893a5fc21e6a8b20c5bee158d5c49ca58649cff84db9d68 Hash Sha1" Hash="0CB5FC2EE1BA75E5B8ED06F92D4EDAF08B136333" />
    <Deny ID="ID_DENY_NVFLASH_44" FriendlyName="nvflash.sys\9368e51ec98e2ad20893a5fc21e6a8b20c5bee158d5c49ca58649cff84db9d68 Hash Sha256" Hash="4AE065383A4EF5564A515D12ADF18427F8D74CC15140EDB95E5E2A51CA44FE42" />
    <Deny ID="ID_DENY_NVFLASH_45" FriendlyName="nvflash.sys\b715d5682ab59a0ce3f858e47bf79bdf876a899f618c12c22b27cb1dd4daa8f4 Hash Sha1" Hash="01371BEB459717F8030A4F1F1B3C6E041D8A540D" />
    <Deny ID="ID_DENY_NVFLASH_46" FriendlyName="nvflash.sys\b715d5682ab59a0ce3f858e47bf79bdf876a899f618c12c22b27cb1dd4daa8f4 Hash Sha256" Hash="11E3D9AA67EF620A452458F67E101AA513C7FBCCA8F35E2E5D0E3403D9DEE937" />
    <Deny ID="ID_DENY_NVFLASH_47" FriendlyName="nvflash.sys\c11305fc8da85568b2d41cdf030ce260815fea848af91dc0e01076d461bab919 Hash Sha1" Hash="B4F0F313882C61FCE95FAA982CA2E36C7129B5BD" />
    <Deny ID="ID_DENY_NVFLASH_48" FriendlyName="nvflash.sys\c11305fc8da85568b2d41cdf030ce260815fea848af91dc0e01076d461bab919 Hash Sha256" Hash="E52BB23D6E4572FDA5318ADDB4DAD602629C8F254B8E6C4BAF4033DDDF13D660" />
    <Deny ID="ID_DENY_NVFLASH_49" FriendlyName="nvflash.sys\c188b36f258f38193ace21a7d254f0aec36b59ad7e3f9bcb9c2958108effebad Hash Sha1" Hash="C75BBD7F612B0BA6DAEDF6D399FB4E3405D70FCE" />
    <Deny ID="ID_DENY_NVFLASH_4A" FriendlyName="nvflash.sys\c188b36f258f38193ace21a7d254f0aec36b59ad7e3f9bcb9c2958108effebad Hash Sha256" Hash="6A95F3C5CEC52DA45F9B74660B81226B4314EC18E761490140173998500AE015" />
    <Deny ID="ID_DENY_NVFLASH_4B" FriendlyName="nvflash.sys\c188b36f258f38193ace21a7d254f0aec36b59ad7e3f9bcb9c2958108effebad Hash Page Sha1" Hash="56F1F0F49CBAAC3950ED462B5058988629146152" />
    <Deny ID="ID_DENY_NVFLASH_4C" FriendlyName="nvflash.sys\c188b36f258f38193ace21a7d254f0aec36b59ad7e3f9bcb9c2958108effebad Hash Page Sha256" Hash="81226C59A8FE8DFA7D3AF42BE35CF363D9460280947C3C13227FEE5EC55A013F" />
    <Deny ID="ID_DENY_NVFLASH_4D" FriendlyName="nvflash.sys\df996d5a06a2e2ecc087569358b1957d500b176ec7ed37031bcee440963d9d80 Hash Sha1" Hash="507F08806CF4DB099860BFE6725E1705D2F04994" />
    <Deny ID="ID_DENY_NVFLASH_4E" FriendlyName="nvflash.sys\df996d5a06a2e2ecc087569358b1957d500b176ec7ed37031bcee440963d9d80 Hash Sha256" Hash="AB3FE6CBD9E3D70A64C5F3B186126CC38A04A624CEEFC46AFE4825F2001A3CAA" />
    <Deny ID="ID_DENY_NVFLASH_4F" FriendlyName="nvflash.sys\e2d6cdc3d8960a50d9f292bb337b3235956a61e4e8b16cf158cb979b777f42aa Hash Sha1" Hash="1989E7DB7CE6B29F674BFF8E7EFA7056DD2711AA" />
    <Deny ID="ID_DENY_NVFLASH_50" FriendlyName="nvflash.sys\e2d6cdc3d8960a50d9f292bb337b3235956a61e4e8b16cf158cb979b777f42aa Hash Sha256" Hash="E69BBA9F8AAE090226841A02E6207FB37F784B83C6641EA15BD20E7BD3418D87" />
    <Deny ID="ID_DENY_NVFLASH_51" FriendlyName="nvflash.sys\e2d6cdc3d8960a50d9f292bb337b3235956a61e4e8b16cf158cb979b777f42aa Hash Page Sha1" Hash="885D09104754C54B888E40BA3FC87D6F31CFBA4C" />
    <Deny ID="ID_DENY_NVFLASH_52" FriendlyName="nvflash.sys\e2d6cdc3d8960a50d9f292bb337b3235956a61e4e8b16cf158cb979b777f42aa Hash Page Sha256" Hash="788D70F1F98CB804453B052363C3639447CE1DDE7B4D3CAFD1D7810CCF59A4A0" />
    <Deny ID="ID_DENY_NVFLASH_53" FriendlyName="nvflash.sys\eef68fdc5df91660410fb9bed005ed08c258c44d66349192faf5bb5f09f5fa90 Hash Sha1" Hash="D299F3E02E924746763838B6FBE37EBAB64CE698" />
    <Deny ID="ID_DENY_NVFLASH_54" FriendlyName="nvflash.sys\eef68fdc5df91660410fb9bed005ed08c258c44d66349192faf5bb5f09f5fa90 Hash Sha256" Hash="B1B708DD7B10616693FD6B56E0B47D9FA6B90F9DB28CBF3893B815222E2FA2E5" />
    <Deny ID="ID_DENY_NVFLASH_55" FriendlyName="nvflash.sys\eef68fdc5df91660410fb9bed005ed08c258c44d66349192faf5bb5f09f5fa90 Hash Page Sha1" Hash="8D92D3C3186E525F6810B807FA3AF080776BB5C9" />
    <Deny ID="ID_DENY_NVFLASH_56" FriendlyName="nvflash.sys\eef68fdc5df91660410fb9bed005ed08c258c44d66349192faf5bb5f09f5fa90 Hash Page Sha256" Hash="6D4FD027E3B3D3B066092C58408392A8A9475CFEFDE0BDB03BD904228B180365" />
    <Deny ID="ID_DENY_NVFLASH_57" FriendlyName="nvflash.sys\f1fbec90c60ee4daba1b35932db9f3556633b2777b1039163841a91cf997938e Hash Sha1" Hash="403101941F404B42ACFB5003D23357EFFD89AB09" />
    <Deny ID="ID_DENY_NVFLASH_58" FriendlyName="nvflash.sys\f1fbec90c60ee4daba1b35932db9f3556633b2777b1039163841a91cf997938e Hash Sha256" Hash="D510B3424178F80CBE926217D74BBECBF682A88F1B6052EF27FD27D601FC14F7" />
    <Deny ID="ID_DENY_NVFLASH_59" FriendlyName="nvflash.sys\f1fbec90c60ee4daba1b35932db9f3556633b2777b1039163841a91cf997938e Hash Page Sha1" Hash="1985EFCE1EA72048C2F80A259CA9EE1B74964910" />
    <Deny ID="ID_DENY_NVFLASH_5A" FriendlyName="nvflash.sys\f1fbec90c60ee4daba1b35932db9f3556633b2777b1039163841a91cf997938e Hash Page Sha256" Hash="CB1CD8AD059F553B7D9D93A343557891B4A126FE97FEA51767C404E85514117F" />
    <Deny ID="ID_DENY_NVFLASH_5B" FriendlyName="nvflash.sys\f2a4ddc38e68efd2eac27b2562529926f5ade93575a82e8d3e0abb2b37347257 Hash Sha1" Hash="3B45A3E4C8BC157C97DE9D010FEEA486C8263CCA" />
    <Deny ID="ID_DENY_NVFLASH_5C" FriendlyName="nvflash.sys\f2a4ddc38e68efd2eac27b2562529926f5ade93575a82e8d3e0abb2b37347257 Hash Sha256" Hash="E5A6FE0D0A3894F55B7BA9B4D5A03022F6146544F1F874AE1EF32C29450535B7" />
    <Deny ID="ID_DENY_NVFLASH_5D" FriendlyName="nvflash.sys\f2a4ddc38e68efd2eac27b2562529926f5ade93575a82e8d3e0abb2b37347257 Hash Page Sha1" Hash="0FCFB7ED9D855A8D217C449FC01C7B6F1DDE6E09" />
    <Deny ID="ID_DENY_NVFLASH_5E" FriendlyName="nvflash.sys\f2a4ddc38e68efd2eac27b2562529926f5ade93575a82e8d3e0abb2b37347257 Hash Page Sha256" Hash="C5D82F33F4DEFA4430406C1A49320769E435184DC56A2DD167D4C82B0A5B0880" />
    <Deny ID="ID_DENY_NVFLASH_5F" FriendlyName="nvflash.sys\f583cfb8aab7d084dc052dbd0b9d56693308cbb26bd1b607c2aedf8ee2b25e44 Hash Sha1" Hash="E127C3A0F3CF3A30A1A82F558B2BDCD995657B0C" />
    <Deny ID="ID_DENY_NVFLASH_60" FriendlyName="nvflash.sys\f583cfb8aab7d084dc052dbd0b9d56693308cbb26bd1b607c2aedf8ee2b25e44 Hash Sha256" Hash="46CB4AABE49917BE885F2C42ADE92ACEDA6B9D0B7739CF0E7C3C6D93820B67C3" />
    <Deny ID="ID_DENY_NVFLASH_61" FriendlyName="nvflash.sys\f583cfb8aab7d084dc052dbd0b9d56693308cbb26bd1b607c2aedf8ee2b25e44 Hash Page Sha1" Hash="E75DD0730EE08F55F2BA9BE713BE7D8A0532C7ED" />
    <Deny ID="ID_DENY_NVFLASH_62" FriendlyName="nvflash.sys\f583cfb8aab7d084dc052dbd0b9d56693308cbb26bd1b607c2aedf8ee2b25e44 Hash Page Sha256" Hash="71CFC85D9AB2BBE93C4E301B84E590E1067A0306BE04DE8CA7751734AD43C73B" />
    <Deny ID="ID_DENY_NVFLASH_63" FriendlyName="nvflash.sys\fd94be9ac97f06abe64426933fbee02871d5d181b1d9025daf1aaa92d9342e90 Hash Sha1" Hash="E3908D3DF9154FD25DAE684C1E12750AB6C57FE1" />
    <Deny ID="ID_DENY_NVFLASH_64" FriendlyName="nvflash.sys\fd94be9ac97f06abe64426933fbee02871d5d181b1d9025daf1aaa92d9342e90 Hash Sha256" Hash="5C58C38E4737C750CCAFA621A18D875299BB5440BB1900EB8469DCF4130049C8" />
    <Deny ID="ID_DENY_NVFLASH_65" FriendlyName="nvflash.sys\fe2fb5d6cfcd64aeb62e6bf5b71fd2b2a87886eb97ab59e5353ba740da9f5db5 Hash Sha1" Hash="28DE9CAD03C6F3F335B3B600666B6056A15E44BD" />
    <Deny ID="ID_DENY_NVFLASH_66" FriendlyName="nvflash.sys\fe2fb5d6cfcd64aeb62e6bf5b71fd2b2a87886eb97ab59e5353ba740da9f5db5 Hash Sha256" Hash="A00B50CC1D95ABC3ADA635F331C5911D1AAF9AE8B86D359DB6FC7F6FC5EB0C94" />
    <Deny ID="ID_DENY_NVFLASH_67" FriendlyName="nvflash.sys\fe2fb5d6cfcd64aeb62e6bf5b71fd2b2a87886eb97ab59e5353ba740da9f5db5 Hash Page Sha1" Hash="5C491461CB823CD8429367939B5823AAAF096AF1" />
    <Deny ID="ID_DENY_NVFLASH_68" FriendlyName="nvflash.sys\fe2fb5d6cfcd64aeb62e6bf5b71fd2b2a87886eb97ab59e5353ba740da9f5db5 Hash Page Sha256" Hash="0B0B8410AF9BACB119832C4884159D866EEEDF35C86F08BFB625F8ED782CF871" />
    <Deny ID="ID_DENY_NVFLASH_69" FriendlyName="nvflash.sys\ffd1aef19646ffed09b56a2ace4fc8cdf5b2f714fcca1e7ffb82256264c94b18 Hash Sha1" Hash="7B16F47DAC151D8FF54B249F930A37B72CD7094C" />
    <Deny ID="ID_DENY_NVFLASH_6A" FriendlyName="nvflash.sys\ffd1aef19646ffed09b56a2ace4fc8cdf5b2f714fcca1e7ffb82256264c94b18 Hash Sha256" Hash="157CE9AE0D09766CFA3E5BE8F90E2AC510F0CE3A0BB7CD97E3A5F9AA20C76661" />
    <Deny ID="ID_DENY_NVFLASH_6B" FriendlyName="nvflash.sys\ffd1aef19646ffed09b56a2ace4fc8cdf5b2f714fcca1e7ffb82256264c94b18 Hash Page Sha1" Hash="C1DC399DF098A44F569BA80ECCFE0B5724362B16" />
    <Deny ID="ID_DENY_NVFLASH_6C" FriendlyName="nvflash.sys\ffd1aef19646ffed09b56a2ace4fc8cdf5b2f714fcca1e7ffb82256264c94b18 Hash Page Sha256" Hash="D6E111744E51D167F040AC43D426D852013241C717C557ECC8C8FCEAA0F01BBC" />
    <Deny ID="ID_DENY_NVOCLOCK_1" FriendlyName="nvoclock\2203bd4731a8fdc2a1c60e975fd79fd5985369e98a117df7ee43c528d3c85958 Hash Sha1" Hash="0380CE3467B97AA19CA6AB3177651B22A77D9C0E" />
    <Deny ID="ID_DENY_NVOCLOCK_2" FriendlyName="nvoclock\2203bd4731a8fdc2a1c60e975fd79fd5985369e98a117df7ee43c528d3c85958 Hash Sha256" Hash="717242AD6A3AFB6F236890CAA44501A4BE8D0AB019F028BA2C74D3455F065804" />
    <Deny ID="ID_DENY_NVOCLOCK_3" FriendlyName="nvoclock\2203bd4731a8fdc2a1c60e975fd79fd5985369e98a117df7ee43c528d3c85958 Hash Page Sha1" Hash="B80FECC3E055CE1952E0C9F491B9BBC4EDD3591A" />
    <Deny ID="ID_DENY_NVOCLOCK_4" FriendlyName="nvoclock\2203bd4731a8fdc2a1c60e975fd79fd5985369e98a117df7ee43c528d3c85958 Hash Page Sha256" Hash="D1CC7B5CED135FC9CF1170C78F6B3FD789962A73D84114C3ACC93FFBABA59C77" />
    <Deny ID="ID_DENY_NVOCLOCK_5" FriendlyName="nvoclock\29f449fca0a41deccef5b0dccd22af18259222f69ed6389beafe8d5168c59e36 Hash Sha1" Hash="E7F478393A69EC3FE0A026584DDC26FD336DC4F0" />
    <Deny ID="ID_DENY_NVOCLOCK_6" FriendlyName="nvoclock\29f449fca0a41deccef5b0dccd22af18259222f69ed6389beafe8d5168c59e36 Hash Sha256" Hash="73664268A737D071F2C3C67503002DB08432953F14771317835B6F080D3DAEFF" />
    <Deny ID="ID_DENY_NVOCLOCK_7" FriendlyName="nvoclock\3cb111fdedc32f2f253aacde4372b710035c8652eb3586553652477a521c9284 Hash Sha1" Hash="1E4FDFE6750A04756332CC5A5896CD5763C923C7" />
    <Deny ID="ID_DENY_NVOCLOCK_8" FriendlyName="nvoclock\3cb111fdedc32f2f253aacde4372b710035c8652eb3586553652477a521c9284 Hash Sha256" Hash="1848CB34D16559E3C8232C369D89FC12B5720B58300D8C4C21DADE6E3EA8D585" />
    <Deny ID="ID_DENY_NVOCLOCK_9" FriendlyName="nvoclock\4d777a9e2c61e8b55b3c34c5265b301454bb080abe7ffb373e7800bd6a498f8d Hash Sha1" Hash="FB6958D7D53E63EDEB4CCEEBAB4D12CA70202109" />
    <Deny ID="ID_DENY_NVOCLOCK_10" FriendlyName="nvoclock\4d777a9e2c61e8b55b3c34c5265b301454bb080abe7ffb373e7800bd6a498f8d Hash Sha256" Hash="F72DBB2A818BA47CA03FFBE50D211050210699C25CAEC3B97CA960D7286D4B6A" />
    <Deny ID="ID_DENY_NVOCLOCK_11" FriendlyName="nvoclock\64a8e00570c68574b091ebdd5734b87f544fa59b75a4377966c661d0475d69a5 Hash Sha1" Hash="2D63276EB232457770188F2DF6FC67EB41FAACD1" />
    <Deny ID="ID_DENY_NVOCLOCK_12" FriendlyName="nvoclock\64a8e00570c68574b091ebdd5734b87f544fa59b75a4377966c661d0475d69a5 Hash Sha256" Hash="ABBF92203A31C93B8E719CDABFF1C681921EDBAF43CD34DA79C86CB5A806757F" />
    <Deny ID="ID_DENY_NVOCLOCK_13" FriendlyName="nvoclock\64a8e00570c68574b091ebdd5734b87f544fa59b75a4377966c661d0475d69a5 Hash Page Sha1" Hash="6687A30E8887A18CBCC962E2BDE118BA66310F15" />
    <Deny ID="ID_DENY_NVOCLOCK_14" FriendlyName="nvoclock\64a8e00570c68574b091ebdd5734b87f544fa59b75a4377966c661d0475d69a5 Hash Page Sha256" Hash="1FE5977A8C891E29444E1364EB91C82A606E39E842D80FE0DBA126261376E751" />
    <Deny ID="ID_DENY_NVOCLOCK_15" FriendlyName="nvoclock\77da3e8c5d70978b287d433ae1e1236c895b530a8e1475a9a190cdcc06711d2f Hash Sha1" Hash="FDDCB8952F5F44DDAE6201B08DDAA94537470669" />
    <Deny ID="ID_DENY_NVOCLOCK_16" FriendlyName="nvoclock\77da3e8c5d70978b287d433ae1e1236c895b530a8e1475a9a190cdcc06711d2f Hash Sha256" Hash="CEC5964D7E32C52439D5EB660FA97827B619A7DA9F3264F0C9FA4B69E3CB7CC1" />
    <Deny ID="ID_DENY_NVOCLOCK_17" FriendlyName="nvoclock\87b4c5b7f653b47c9c3bed833f4d65648db22481e9fc54aa4a8c6549fa31712b Hash Sha1" Hash="8546586F7825C49876F2E0C52BA55F545B4E03BD" />
    <Deny ID="ID_DENY_NVOCLOCK_18" FriendlyName="nvoclock\87b4c5b7f653b47c9c3bed833f4d65648db22481e9fc54aa4a8c6549fa31712b Hash Sha256" Hash="7C8D7BB3A272AFE7FB737BD165FE9BD8F8187F1835289EB66D471CDCED74E950" />
    <Deny ID="ID_DENY_NVOCLOCK_19" FriendlyName="nvoclock\d7c90cf3fdbbd2f40fe6a39ad0bb2a9a97a0416354ea84db3aeff6d925d14df8 Hash Sha1" Hash="FE761BEE648D4A1C9FD8C1646323A692DF957C42" />
    <Deny ID="ID_DENY_NVOCLOCK_20" FriendlyName="nvoclock\d7c90cf3fdbbd2f40fe6a39ad0bb2a9a97a0416354ea84db3aeff6d925d14df8 Hash Sha256" Hash="B3183D87A902DB1BBDAECB37291B9D37C032CE9DFACBE4B36CC3032F5A643AB4" />
    <Deny ID="ID_DENY_OTIPCIBUS_1" FriendlyName="otipcibus.sys\4e3eb5b9bce2fd9f6878ae36288211f0997f6149aa8c290ed91228ba4cdfae80 Hash Sha1" Hash="FD172C7F8BDC81988FCF1642881078A8CA8415F6" />
    <Deny ID="ID_DENY_OTIPCIBUS_2" FriendlyName="otipcibus.sys\4e3eb5b9bce2fd9f6878ae36288211f0997f6149aa8c290ed91228ba4cdfae80 Hash Sha256" Hash="1CDA1A6E33D14D5DD06344425102BF840F8149E817ECFB01C59A2190D3367024" />
    <Deny ID="ID_DENY_OTIPCIBUS_3" FriendlyName="otipcibus.sys\4e3eb5b9bce2fd9f6878ae36288211f0997f6149aa8c290ed91228ba4cdfae80 Hash Page Sha1" Hash="8DFBFD888C9A420AC7F3371E5443C26A2852E539" />
    <Deny ID="ID_DENY_OTIPCIBUS_4" FriendlyName="otipcibus.sys\4e3eb5b9bce2fd9f6878ae36288211f0997f6149aa8c290ed91228ba4cdfae80 Hash Page Sha256" Hash="FC6D1B67464228C2FA102AD121DCD40292054DC0FC8C4D86BEFACA7456535C57" />
    <Deny ID="ID_DENY_PCHUNTER_3" FriendlyName="PCHunter.sys\3f20ac5dac9171857fc5791865458fdb6eac4fab837d7eabc42cb0a83cb522fc Hash Sha1" Hash="16269BB8D638D7753F49F739881FA5F89A535EB1" />
    <Deny ID="ID_DENY_PCHUNTER_4" FriendlyName="PCHunter.sys\3f20ac5dac9171857fc5791865458fdb6eac4fab837d7eabc42cb0a83cb522fc Hash Sha256" Hash="81B772E718E40E8D1D815CB3B16690C1EBD4E0BC555933DB306037CC3341537F" />
    <Deny ID="ID_DENY_PCHUNTER_5" FriendlyName="PCHunter.sys\3f20ac5dac9171857fc5791865458fdb6eac4fab837d7eabc42cb0a83cb522fc Hash Page Sha1" Hash="522BAC5667E523039DED356D81655594824F7516" />
    <Deny ID="ID_DENY_PCHUNTER_6" FriendlyName="PCHunter.sys\3f20ac5dac9171857fc5791865458fdb6eac4fab837d7eabc42cb0a83cb522fc Hash Page Sha256" Hash="845685B9E1AAA3BEF9512BC8E13842D0F05D3958B43EC74C84DE412FC1CB6A80" />
    <Deny ID="ID_DENY_PIDDRV_SHA1" FriendlyName="piddrv.sys Hash Sha1" Hash="877C6C36A155109888FE1F9797B93CB30B4957EF" />
    <Deny ID="ID_DENY_PIDDRV_SHA256" FriendlyName="piddrv.sys Hash Sha256" Hash="4E19D4CE649C28DD947424483796BEACE3656284FB0379D97DDDD320AA602BBC" />
    <Deny ID="ID_DENY_PIDDRV_SHA1_PAGE" FriendlyName="piddrv.sys Hash Page Sha1" Hash="A7D827A41B2C4B7638495CD1D77926F1BA902978" />
    <Deny ID="ID_DENY_PIDDRV_SHA256_PAGE" FriendlyName="piddrv.sys Hash Page Sha256" Hash="EAC7316089DBAF7DF79A531355547BBDA22FA0921E31BBA0D27BCC88234E9ED3" />
    <Deny ID="ID_DENY_PIDDRV64_SHA1" FriendlyName="piddrv64.sys Hash Sha1" Hash="0C2599D738D01A82EC91725F499ACEBBCFB47CC9" />
    <Deny ID="ID_DENY_PIDDRV64_SHA256" FriendlyName="piddrv64.sys Hash Sha256" Hash="B97F870C501714FA453CF18AE8A30C87D08FF1E6D784AFDBB0121AEA3DA2DC28" />
    <Deny ID="ID_DENY_PIDDRV64_SHA1_PAGE" FriendlyName="piddrv64.sys Hash Page Sha1" Hash="C978063E678233C5EFB8F002FEF000FD479CC632" />
    <Deny ID="ID_DENY_PIDDRV64_SHA256_PAGE" FriendlyName="piddrv64.sys Hash Page Sha256" Hash="1081CCD57FD35998634103AE1E736638D82351092ACD30FE75084EA6A08CA0F7" />
    <Deny ID="ID_DENY_PHYDMACC_1" FriendlyName="phydmaccx64\f7b3112b9745b766c8359d25e315975d3159935a8ddb3e3035d21ed124a9013f Hash Sha1" Hash="200ABD07303234FC114360D9DABC38DA1F1F2A22"/>
    <Deny ID="ID_DENY_PHYDMACC_2" FriendlyName="phydmaccx64\f7b3112b9745b766c8359d25e315975d3159935a8ddb3e3035d21ed124a9013f Hash Sha256" Hash="743302AF4224D5F44489290C01391C03B928126D726B72E7602FE5760E6D9519"/>
    <Deny ID="ID_DENY_PHYDMACC_3" FriendlyName="phydmaccx64\f7b3112b9745b766c8359d25e315975d3159935a8ddb3e3035d21ed124a9013f Hash Page Sha1" Hash="84B91B1AED8F83DE14323089148BE2577FDC826C"/>
    <Deny ID="ID_DENY_PHYDMACC_4" FriendlyName="phydmaccx64\f7b3112b9745b766c8359d25e315975d3159935a8ddb3e3035d21ed124a9013f Hash Page Sha256" Hash="B8502DB6B8947E5D852102166D0BEF8252EA3431D582E968EF44C35E56609C91"/>
    <Deny ID="ID_DENY_PHYDMACC_5" FriendlyName="PhyDMACCx86.sys\23787eb342fd38da73ce785023176f98304267c6f6fa8a50e718da096c7a7951 Hash Sha1" Hash="B4AF2981B9D94DF71083A1F0C2D68E0883AA1CD1" />
    <Deny ID="ID_DENY_PHYDMACC_6" FriendlyName="PhyDMACCx86.sys\23787eb342fd38da73ce785023176f98304267c6f6fa8a50e718da096c7a7951 Hash Sha256" Hash="5D10285D802FA793C217933C907D82DB58977B865B3DAD3848C6ED2550022413" />
    <Deny ID="ID_DENY_PHYMEMX64_SHA1" FriendlyName="phymemx64 Hash Sha1" Hash="3C9F40AC72B0202CB40627FDEB7298079187193A" />
    <Deny ID="ID_DENY_PHYMEMX64_SHA256" FriendlyName="phymemx64 Hash Sha256" Hash="A6AE7364FD188C10D6B5A729A7FF58A3EB11E7FEB0D107D18F9133655C11FB66" />
    <Deny ID="ID_DENY_PHYMEMX64_SHA1_PAGE" FriendlyName="phymemx64 Hash Page Sha1" Hash="6E7D8ABF7F81A2433F27B052B3952EFC4B9CC0B1" />
    <Deny ID="ID_DENY_PHYMEMX64_SHA256_PAGE" FriendlyName="phymemx64 Hash Page Sha256" Hash="B7113B9A68E17428E2107B19BA099571AAFFC854B8FB9CBCEB79EF9E3FD1CC62" />
    <Deny ID="ID_DENY_QMBSEC_0" FriendlyName="qmbsec.sys\0c801d381292e0476fb435fcc450b7a8970054cc47230c3123f3b6930d8ad799 Hash Sha1" Hash="129ABA97A7EB768AE0ED28D0C9A496F3C60DB314" />
    <Deny ID="ID_DENY_QMBSEC_1" FriendlyName="qmbsec.sys\0c801d381292e0476fb435fcc450b7a8970054cc47230c3123f3b6930d8ad799 Hash Sha256" Hash="AF55DE92D14CF69D19B2FCB6DB4FBE272C2E04E5F62F7519BD368C173A05CE1F" />
    <Deny ID="ID_DENY_QMBSEC_2" FriendlyName="qmbsec.sys\0c801d381292e0476fb435fcc450b7a8970054cc47230c3123f3b6930d8ad799 Hash Page Sha1" Hash="416895E001A9C3721999048941CD9B79BB9BF9BB" />
    <Deny ID="ID_DENY_QMBSEC_3" FriendlyName="qmbsec.sys\0c801d381292e0476fb435fcc450b7a8970054cc47230c3123f3b6930d8ad799 Hash Page Sha256" Hash="50A1719C23DD141ACC867D0935A0EB1A8349F3D7CF1186FA037E829D1788FB34" />
    <Deny ID="ID_DENY_QMBSEC_4" FriendlyName="qmbsec.sys\494cf30f87274942694e1d6a5700466382cf1398ff62a64a654b2e396fff43f4 Hash Sha1" Hash="7DC5480689591EE8FE778641807CB7B54263E04F" />
    <Deny ID="ID_DENY_QMBSEC_5" FriendlyName="qmbsec.sys\494cf30f87274942694e1d6a5700466382cf1398ff62a64a654b2e396fff43f4 Hash Sha256" Hash="C8AF285696916F5E503E1F6445BE1CAA23B10178F261E4893DFB0F93A2AA9211" />
    <Deny ID="ID_DENY_QMBSEC_6" FriendlyName="qmbsec.sys\494cf30f87274942694e1d6a5700466382cf1398ff62a64a654b2e396fff43f4 Hash Page Sha1" Hash="AF20947C135C4497FB6D1B51180DC07AAABEEA00" />
    <Deny ID="ID_DENY_QMBSEC_7" FriendlyName="qmbsec.sys\494cf30f87274942694e1d6a5700466382cf1398ff62a64a654b2e396fff43f4 Hash Page Sha256" Hash="FB361D34A0D7C633817DDABEFD0CE66F9F5BC1E8F2B301DCCE657BADD2F06FB3" />
    <Deny ID="ID_DENY_QMBSEC_8" FriendlyName="qmbsec.sys\51745c658c506484ed79e2d71862b36351bac95a897ddc41aaeb9ba5bdfb2a37 Hash Sha1" Hash="6C3434976D859889FA4E91FCF370764A48056B73" />
    <Deny ID="ID_DENY_QMBSEC_9" FriendlyName="qmbsec.sys\51745c658c506484ed79e2d71862b36351bac95a897ddc41aaeb9ba5bdfb2a37 Hash Sha256" Hash="46141E13ADBADCDB42E0E96AC9F71D3E88E5FA6EFB42F658E216078424FE57A0" />
    <Deny ID="ID_DENY_QMBSEC_A" FriendlyName="qmbsec.sys\51745c658c506484ed79e2d71862b36351bac95a897ddc41aaeb9ba5bdfb2a37 Hash Page Sha1" Hash="BAB8C0DAC93E72E13F7F2014F44C5EDF1EFCAE17" />
    <Deny ID="ID_DENY_QMBSEC_B" FriendlyName="qmbsec.sys\51745c658c506484ed79e2d71862b36351bac95a897ddc41aaeb9ba5bdfb2a37 Hash Page Sha256" Hash="6980D97D602100054B8F9F2206E29705E79EC86464915B2212ECEC08C548A291" />
    <Deny ID="ID_DENY_QMBSEC_C" FriendlyName="qmbsec.sys\be6c3af76d43d6200a387eab9b57791c87dc3a3e21636b3df68bb34e24eebf89 Hash Sha1" Hash="82879A316D5A212C95E8F6DC2734BFDA3DD84DE4" />
    <Deny ID="ID_DENY_QMBSEC_D" FriendlyName="qmbsec.sys\be6c3af76d43d6200a387eab9b57791c87dc3a3e21636b3df68bb34e24eebf89 Hash Sha256" Hash="B083BB2B298FA14F2E7CC65341337209DF5DE7C53B8CE5DAB5FA830DD29FE2A5" />
    <Deny ID="ID_DENY_QMBSEC_E" FriendlyName="qmbsec.sys\be6c3af76d43d6200a387eab9b57791c87dc3a3e21636b3df68bb34e24eebf89 Hash Page Sha1" Hash="96516702799451093DB85802491D70F20382DFDE" />
    <Deny ID="ID_DENY_QMBSEC_F" FriendlyName="qmbsec.sys\be6c3af76d43d6200a387eab9b57791c87dc3a3e21636b3df68bb34e24eebf89 Hash Page Sha256" Hash="0915820FC684225C54BBE9C0727E5E592EE7F10272C3BD8FCE055742C188305C" />
    <Deny ID="ID_DENY_RENTDRV_1" FriendlyName="Hangzhou RentDrv.sys\1aed62a63b4802e599bbd33162319129501d603cceeb5e1eb22fd4733b3018a3 Hash Sha1" Hash="3653D167FFA47DA551267C179A4B4F23430271B7"/>
    <Deny ID="ID_DENY_RENTDRV_2" FriendlyName="Hangzhou RentDrv.sys\1aed62a63b4802e599bbd33162319129501d603cceeb5e1eb22fd4733b3018a3 Hash Sha256" Hash="2E100AA891445F18F4805DCED7C4055AA5BEE6C65995DAA42A438349CCAD6C3C"/>
    <Deny ID="ID_DENY_RENTDRV_3" FriendlyName="Hangzhou RentDrv.sys\1aed62a63b4802e599bbd33162319129501d603cceeb5e1eb22fd4733b3018a3 Hash Page Sha1" Hash="264A830F335ABFC477538DC749F0DDCD3F9ED165"/>
    <Deny ID="ID_DENY_RENTDRV_4" FriendlyName="Hangzhou RentDrv.sys\1aed62a63b4802e599bbd33162319129501d603cceeb5e1eb22fd4733b3018a3 Hash Page Sha256" Hash="C19365E56D640188311894175ABBA8A2CC82C969D3B19E6885C78014C11BA51D"/>
    <Deny ID="ID_DENY_RENTDRV_5" FriendlyName="Hangzhou RentDrv.sys\39c128ceabfb170ef5fdbe7f7740de48a9d9119df2e01763c25995cea1097785 Hash Sha1" Hash="BEC0A0E7BCE966828B95329E2883ECCFFE9491F0"/>
    <Deny ID="ID_DENY_RENTDRV_6" FriendlyName="Hangzhou RentDrv.sys\39c128ceabfb170ef5fdbe7f7740de48a9d9119df2e01763c25995cea1097785 Hash Sha256" Hash="7200C1614E328E730DFC51CFCB915AB6CD3084328BD3792A77BCE91D04E11688"/>
    <Deny ID="ID_DENY_RENTDRV_7" FriendlyName="Hangzhou RentDrv.sys\39c128ceabfb170ef5fdbe7f7740de48a9d9119df2e01763c25995cea1097785 Hash Page Sha1" Hash="05B25426B0EAB1EA4D4AE40F81EEF45B48BAB190"/>
    <Deny ID="ID_DENY_RENTDRV_8" FriendlyName="Hangzhou RentDrv.sys\39c128ceabfb170ef5fdbe7f7740de48a9d9119df2e01763c25995cea1097785 Hash Page Sha256" Hash="FEB676B961305CBAB0011A6E48DFD1E0105C534CEBEC69CFCC7D2715C3802594"/>
    <Deny ID="ID_DENY_RENTDRV_9" FriendlyName="Hangzhou RentDrv.sys\9165d4f3036919a96b86d24b64d75d692802c7513f2b3054b20be40c212240a5 Hash Sha1" Hash="CEBE563DE888EE2055BA03051010A40705E778C8"/>
    <Deny ID="ID_DENY_RENTDRV_10" FriendlyName="Hangzhou RentDrv.sys\9165d4f3036919a96b86d24b64d75d692802c7513f2b3054b20be40c212240a5 Hash Sha256" Hash="B3C9AF8C4BE8F62D25B955F92D2A4E9EBD34F7FA787580454EF54241102E7B30"/>
    <Deny ID="ID_DENY_RENTDRV_11" FriendlyName="Hangzhou RentDrv.sys\9165d4f3036919a96b86d24b64d75d692802c7513f2b3054b20be40c212240a5 Hash Page Sha1" Hash="193888C0CD24636D69F65558DD2CBFE38E9E257F"/>
    <Deny ID="ID_DENY_RENTDRV_12" FriendlyName="Hangzhou RentDrv.sys\9165d4f3036919a96b86d24b64d75d692802c7513f2b3054b20be40c212240a5 Hash Page Sha256" Hash="AFE7279865E62826437419D9348AF60810E00A9FC36823B87267B22C0A9B6DB6"/>
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_1" FriendlyName="80.sys Hash Sha1" Hash="BC2F3850C7B858340D7ED27B90E63B036881FD6C" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_2" FriendlyName="netfilterdrv.sys Hash Sha1" Hash="E74B6DDA8BC53BC687FC21218BD34062A78D8467" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_3" FriendlyName="netfilterdrv.sys Hash Sha1" Hash="2C27ABBBBCF10DFB75AD79557E30ACE5ED314DF8" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_4" FriendlyName="81.sys Hash Sha1" Hash="FAA870B0CB15C9AC2B9BBA5D0470BD501CCD4326" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_5" FriendlyName="netfilterdrv.sys Hash Sha1" Hash="8241C9A5755A740811C8E8D2739B33146ACD3E6D" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_6" FriendlyName="full.sys Hash Sha1" Hash="4B8C0445075F09AEEF542AB1C86E5DE6B06E91A3" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_7" FriendlyName="netfilterdrv.sys Hash Sha1" Hash="E014C6BEBFDA944CE3A58AB9FE055D4F9367D49C" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_8" FriendlyName="netfilterdrv.sys Hash Sha1" Hash="E5A152BB57060C2B27E825258698BD7FF67907FF" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_9" FriendlyName="81.sys Hash Sha1" Hash="ACA8E53483B40A06DFDEE81BB364B1622F9156FE" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_10" FriendlyName="nstrwsk.sys Hash Sha1" Hash="83767982B3A5F70615A386F4D6638F20509F3560" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_11" FriendlyName="nt2.sys Hash Sha1" Hash="8F0B99B53EB921547AFECF1F12B3299818C4E5D1" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_12" FriendlyName="nt3.sys Hash Sha1" Hash="295E590D49DF717C489C5C824E9C6896A14248BB" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_13" FriendlyName="nt5.sys Hash Sha1" Hash="7A43BE821832E9BF55B1B781AE468179D0E4F56E" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_14" FriendlyName="81.sys Hash Sha1" Hash="05AC1C64CA16AB0517FE85D4499D08199E63DF26" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_15" FriendlyName="b4.sys Hash Sha1" Hash="4BBB9709D5F916FE78EAA15431F622761EFC496F" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_16" FriendlyName="bw.sys Hash Sha1" Hash="150F5DAE8716B09A64CAC96862F5E2506A71E771" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_17" FriendlyName="bwrs.sys Hash Sha1" Hash="3DEBE170B5A113407F9E86EE6ED9AE00C3D82C9F" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_18" FriendlyName="bwrsh.sys Hash Sha1" Hash="73857ACDD7D7C9235F3E18C503A27E7C88C5FCB0" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_19" FriendlyName="netfilterdrv.sys Hash Sha1" Hash="8BC75E18953B7B23991B2FBC79713E1E175F75E4" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_20" FriendlyName="netfilterdrv.sys Hash Sha1" Hash="A2DA5C397F737FA55D8F93D3CED5EB70AE09801F" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_21" FriendlyName="netfilterdrv.sys Hash Sha1" Hash="C58B6EF848CA87AD9EC4368C45C8F1EB7FA6BD16" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_22" FriendlyName="netfilterdrv.sys Hash Sha1" Hash="74CBC407ACD9D2A4BC609B2F8C9A09B90912D10C" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_23" FriendlyName="netfilterdrv.sys Hash Sha1" Hash="1923D1F21FAFFCD7D511E2B313FE9415E6AD90AE" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_24" FriendlyName="TGSafe.sys Hash Sha1" Hash="F3E60B7B9C53315D6158F82596919209A00E1CDA" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_25" FriendlyName="BlackBoneDrv10.sys Hash Sha1" Hash="AA97BF43E6BAD521F3A3D8081FB350C89382F06F" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_26" FriendlyName="LgDCatcher.sys Hash Sha1" Hash="4604A20CAE2DFE42320FE8F6AED000EC204EFA7E" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_27" FriendlyName="gameink.sys Hash Sha1" Hash="60A632E4B838731AAD553650D6BC8AF3D3D80B26" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_28" FriendlyName="windows-xp-64.sys Hash Sha1" Hash="03F0DD3124EC3A4BB6D30865A488F54E74DED699" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_29" FriendlyName="windows8-10-32.sys Hash Sha1" Hash="8A50E81D6E6C45410BF13F95B1A67CADA8C82221" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_30" FriendlyName="kbdcap64.sys Hash Sha1" Hash="83660D245FE618ECAFE4900AC1E2AD0292C2DA2A" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_31" FriendlyName="netfilterdrv.sys Hash Sha1" Hash="202D5A05E546740037F9A4DC2B21F71680C39D3B" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_32" FriendlyName="d3.sys Hash Sha1" Hash="560D8869D48A71E59601B76240E9A6CFFB068C9C" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_33" FriendlyName="d.sys Hash Sha1" Hash="7C1BA790CA2AA03F30413D02F3A812FCCA1AB29F" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_34" FriendlyName="b3.sys Hash Sha1" Hash="969A945C93F54FCBF17548903131D4B86042DF7B" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_35" FriendlyName="2.sys Hash Sha1" Hash="64309DB7AF8665368636186805745126B8BD5BFE" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_36" FriendlyName="b1.sys Hash Sha1" Hash="1F7804D9185B1910C43BD4104D58B96994FF8E49" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_37" FriendlyName="My.sys Hash Sha1" Hash="2A506E2512C9083419B7741B4499E012CDC60204" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_38" FriendlyName="Black.sys Hash Sha1" Hash="1236573A309C4EDB52E050E53E73188183C23E7E" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_39" FriendlyName="WYProxy32.sys Hash Sha1" Hash="22C5E127E7E7C567D8624607A6F8F5809DEACB55" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_40" FriendlyName="WYProxy64.sys Hash Sha1" Hash="DC38CC55B84A1A7C0846FB5509B43B4FF97A9BE6" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_41" FriendlyName="Proxy64.sys Hash Sha1" Hash="AA937F73A8AFCDA98E868F4AEEB0EB81A4150075" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_42" FriendlyName="LgDCatcher.sys Hash Sha1" Hash="481488488CF7BB5CD470B62600A3570A1711ABAA" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_43" FriendlyName="LgDCatcher.sys Hash Sha1" Hash="C58BEBEF6A92F5A5B37BE0394695E8E18A42867F" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_44" FriendlyName="LgDCatcher.sys Hash Sha1" Hash="7AA2C4C51AFC1C82BEAE55AB9CA7BA0BB588B5C0" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_45" FriendlyName="ni.sys Hash Sha1" Hash="FD081F7A372B939DB8523E222D118B87450D3D19" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_46" FriendlyName="d4.sys Hash Sha1" Hash="E343AA3981393778F32DF94EFAC90FE35D6933A9" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_47" FriendlyName="d2.sys Hash Sha1" Hash="002223FDDC5658EA22B7A8979984A9B54F63B316" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_48" FriendlyName="t.sys Hash Sha1" Hash="1CF3B0A2A0B47477A840ADC2B520401E18AF16D6" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_49" FriendlyName="1.sys Hash Sha1" Hash="F50B475D5FD1ED4F866BF43342676E449F779C67" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_50" FriendlyName="cpupress.sys Hash Sha1" Hash="C4FE0CBB8DA5BF1E02EC6D7A0F97D740955DDD97" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_51" FriendlyName="gameink.sys Hash Sha1" Hash="3AE56AB63230D6D9552360845B4A37B5801CC5EA" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_52" FriendlyName="NetFlt.sys Hash Sha1" Hash="B04ECC8DD0D52FE4552D2C4D693D67FAE20C460F" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_53" FriendlyName="ProtectS.sys Hash Sha1" Hash="710BBA7C3D6CAC7B62AB05E6B12274D1548985E6" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_54" FriendlyName="ProtectS.sys Hash Sha1" Hash="67650BC9CDF0716BC7B5664723C38FC5327EC662" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_55" FriendlyName="GameTerSafe.sys Hash Sha1" Hash="39F934078A060BAD2D58B5DBA8F8884903D697A7" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_56" FriendlyName="Lurker.sys Hash Sha1" Hash="CEC5447D0529F97C4BF4A012EA58AAB07139FFE0" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_57" FriendlyName="TestBone.sys Hash Sha1" Hash="0D523E8B0B96675AC2E5AC0D56C367564B260545" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_58" FriendlyName="Proxy32.sys Hash Sha1" Hash="69D6B4032F1456506382885EBA5B396F1C36841B" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_59" FriendlyName="t7.sys Hash Sha1" Hash="738CF0AFB7ECDF35A92667C8802D512A0CAF353C" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_60" FriendlyName="nt4.sys Hash Sha1" Hash="EC7947AD1919C8F60BC973B96DA4132A1EA396E0" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_61" FriendlyName="t8.sys Hash Sha1" Hash="D85C6097A2279301222B6A06B93296ACE669A76D" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_62" FriendlyName="nstr.sys Hash Sha1" Hash="61258963D900C2A39408EF4B51F69F405F55E407" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_63" FriendlyName="nt6.sys Hash Sha1" Hash="8403A17AE001FEF3488C2E641E2BE553CD5B478D" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_64" FriendlyName="t3.sys Hash Sha1" Hash="0CE54B617DE11C24670064960B736EF9C47A5F15" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_65" FriendlyName="windows7-32.sys Hash Sha1" Hash="82F8D4BA137FA4B0DA20E8CD1968A7AAEA803DBC" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_66" FriendlyName="NetProxyDriver.sys Hash Sha1" Hash="00B4FDC0F7F28DDECD5B4E5880A71E7F08B5F825" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_67" FriendlyName="c.sys Hash Sha1" Hash="3C20BB896FD16B5C698185FB176E820A448997B3" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_68" FriendlyName="gameink.sys Hash Sha1" Hash="6A784D45517142C11D5CCA3FF9956B2ED6EAF4C9" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_69" FriendlyName="gameink.sys Hash Sha1" Hash="4E5E719362CD48BB323803C1D00AFDE11D4B9D4C" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_70" FriendlyName="b.sys Hash Sha1" Hash="FD8A340CD071BC98E6EEAC9BBD4AC8A78688BC17" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_71" FriendlyName="nt4.sys Hash Sha1" Hash="EC7947AD1919C8F60BC973B96DA4132A1EA396E0" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_72" FriendlyName="d3.sys Hash Sha1" Hash="560D8869D48A71E59601B76240E9A6CFFB068C9C" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_1" FriendlyName="80.sys Hash Sha256" Hash="F08EBDDC11AEFCB46082C239F8D97CEEA247D846E22C4BCDD72AF75C1CBC6B0B" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_2" FriendlyName="netfilterdrv.sys Hash Sha256" Hash="12A636449A491EF3DC8688C5D25BE9EBF785874F9C4573667EEFD42139201AA4" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_3" FriendlyName="netfilterdrv.sys Hash Sha256" Hash="7F1772BDF7DD81CB00D30159D19D4EB9160B54D7609B36F781D08CA3AFBD29A7" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_4" FriendlyName="81.sys Hash Sha256" Hash="5C206B569B7059B7C32EB5FC36922CB435C2B16C8D96DE1038C8BD298ED498FE" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_5" FriendlyName="netfilterdrv.sys Hash Sha256" Hash="C56536F99207915E5A1F7D4F014AB942BD820E64FF7F371AD0462EF26ED27242" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_6" FriendlyName="full.sys Hash Sha256" Hash="0988D366572A57B3015D875B60704517D05115580678E8F2E126F771EDA28F7B" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_7" FriendlyName="netfilterdrv.sys Hash Sha256" Hash="651FFA0C7AFF7B4A7695DDDD209DC3E7F68156E29A14D3FCC17AEF4F2A205DCC" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_8" FriendlyName="netfilterdrv.sys Hash Sha256" Hash="7113DEE11925B346192F6EE5441974DB7D1FE9B5BE1497A6B295C06930FDD264" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_9" FriendlyName="81.sys Hash Sha256" Hash="3D31118A2E92377ECB632BD722132C04AF4E65E24FF87743796C75EB07CFCD71" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_10" FriendlyName="nstrwsk.sys Hash Sha256" Hash="3390919BB28D5C36CC348F9EF23BE5FA49BFD81263EB7740826E4437CBE904CD" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_11" FriendlyName="nt2.sys Hash Sha256" Hash="CB9890D4E303A4C03095D7BC176C42DEE1B47D8AA58E2F442EC1514C8F9E3CEC" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_12" FriendlyName="nt3.sys Hash Sha256" Hash="7D8937C18D6E11A0952E53970A0934CF0E65515637AC24D6CA52CCF4B93D385F" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_13" FriendlyName="nt5.sys Hash Sha256" Hash="FD33FB2735CC5EF466A54807D3436622407287E325276FCD3ED1290C98BD0533" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_14" FriendlyName="81.sys Hash Sha256" Hash="B430D3A0BDB837A5D6625D3B1CEF07ABD1953F969869FF6CF7BA398AE605431A" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_15" FriendlyName="b4.sys Hash Sha256" Hash="DEC8A933DBA04463ED9BB7D53338FF87F2C23CFB79E0E988449FC631252C9DCC" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_16" FriendlyName="bw.sys Hash Sha256" Hash="0EBAEF662B14410C198395B13347E1D175334EC67919709AD37D65EBA013ADFF" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_17" FriendlyName="bwrs.sys Hash Sha256" Hash="221DFBC74BBB255B0879360CCC71A74B756B2E0F16E9386B38A9CE9D4E2E34F9" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_18" FriendlyName="bwrsh.sys Hash Sha256" Hash="37DDE6BD8A7A36111C3AC57E0AC20BBB93CE3374D0852BCACC9A2C8C8C30079E" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_19" FriendlyName="netfilterdrv.sys Hash Sha256" Hash="82774D5230C5B6604D6F67A32883F720B4695387F3F383AABC713FC2904FF45D" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_20" FriendlyName="netfilterdrv.sys Hash Sha256" Hash="DDD83AF2E99C2E51F2BBBB5A1FAADF9F2DDBC3E39B086935621D6846A8530D76" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_21" FriendlyName="netfilterdrv.sys Hash Sha256" Hash="E6D0C06DEB74F0448391F2C14A08D5C1B7D263DC444ACC5C1CF57ACFE82DA6BB" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_22" FriendlyName="netfilterdrv.sys Hash Sha256" Hash="F05A1DF10900B05FB7211F3DADD15003FC91CFA28A08BCC6D7AFA02CD8AB3D5C" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_23" FriendlyName="netfilterdrv.sys Hash Sha256" Hash="C174566743B47AE3C3BBB9F32D2856DE5959E06EC100B648853058EEFCDA43FA" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_24" FriendlyName="TGSafe.sys Hash Sha256" Hash="3A95CC82173032B82A0FFC7D2E438DF64C13BC16B4574214C9FE3BE37250925E" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_25" FriendlyName="BlackBoneDrv10.sys Hash Sha256" Hash="0BB5F2EAACD64398A66D73D4617AA0C1209D483FAFCBE99E4E12CA6C024DB2EC" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_26" FriendlyName="LgDCatcher.sys Hash Sha256" Hash="13B82D81D6EAC1A8B2E4655504DABECBD70673CDF45C244702A02F3397FDFF9A" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_27" FriendlyName="gameink.sys Hash Sha256" Hash="8168304169A2453C0C3E0A285C2A07D3B3B83433E0342F6B33400C371AF86221" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_28" FriendlyName="windows-xp-64.sys Hash Sha256" Hash="DFAEFD06B680F9EA837E7815FC1CC7D1F4CC375641AC850667AB20739F46AD22" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_29" FriendlyName="windows8-10-32.sys Hash Sha256" Hash="5B9623DA9BA8E5C80C49473F40FFE7AD315DCADFFC3230AFDC9D9226D60A715A" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_30" FriendlyName="kbdcap64.sys Hash Sha256" Hash="72B99147839BCFB062D29014EC09FE20A8F261748B5925B00171EF3CB849A4C1" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_31" FriendlyName="netfilterdrv.sys Hash Sha256" Hash="0391107305D76EB9DDF1A5B3B3C50DA361E8AB35B573DBD19BF9383436B9303E" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_32" FriendlyName="d3.sys Hash Sha256" Hash="36875562E747136313EC5DB58174E5FAB870997A054CA8D3987D181599C7DB6A" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_33" FriendlyName="d.sys Hash Sha256" Hash="0289FE12E675101CEE03934C1AF5CB73069A12170A88BD051E31A292B97F701B" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_34" FriendlyName="b3.sys Hash Sha256" Hash="708016FBE22C813A251098F8F992B177B476BD1BBC48C2ED4A122FF74910A965" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_35" FriendlyName="2.sys Hash Sha256" Hash="9385E4CDABD0AEE2670FB756598EA977161F45B71687ECB9E43533081629F661" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_36" FriendlyName="b1.sys Hash Sha256" Hash="A3E507E713F11901017FC328186AE98E23DE7CEA5594687480229F77D45848D8" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_37" FriendlyName="My.sys Hash Sha256" Hash="D25904FBF907E19F366D54962FF543D9F53B8FDFD2416C8B9796B6A8DD430E26" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_38" FriendlyName="Black.sys Hash Sha256" Hash="D5562FB90B0B3DEB633AB335BCBD82CE10953466A428B3F27CB5B226B453EAF3" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_39" FriendlyName="WYProxy32.sys Hash Sha256" Hash="DE6BF572D39E2611773E7A01F0388F84FB25DA6CBA2F1F8B9B36FFBA467DE6FA" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_40" FriendlyName="WYProxy64.sys Hash Sha256" Hash="FAFA1BB36F0AC34B762A10E9F327DCAB2152A6D0B16A19697362D49A31E7F566" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_41" FriendlyName="Proxy64.sys Hash Sha256" Hash="C60FCFF9C8E5243BBB22EC94618B9DCB02C59BB49B90C04D7D6AB3EBBD58DC3A" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_42" FriendlyName="LgDCatcher.sys Hash Sha256" Hash="BFCFFC82A564A2ADCD3522CD78CDF83795B6212F787230A5EA6B7EFB9F232784" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_43" FriendlyName="LgDCatcher.sys Hash Sha256" Hash="350E15BF24DCFDC052DB117718329A03E930C17AC8C835E51D001E74BAD784E4" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_44" FriendlyName="LgDCatcher.sys Hash Sha256" Hash="DF4E25990742FC8D3AED70F6CB4D402E111E7ED08FA5F76ACA685B8C03B98B93" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_45" FriendlyName="ni.sys Hash Sha256" Hash="AE79E760C739D6214C1E314728A78A6CB6060CCE206FDE2440A69735D639A0A2" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_46" FriendlyName="d4.sys Hash Sha256" Hash="823DA894B2C73FFCD39E77366B6F1ABF0AE9604D9B20140A54E6D55053AADEBA" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_47" FriendlyName="d2.sys Hash Sha256" Hash="CB57F3A7FE9E1F8E63332C563B0A319B26C944BE839EABC03E9A3277756BA612" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_48" FriendlyName="t.sys Hash Sha256" Hash="146D77E80CA70EA5CB17BFC9A5CEA92334F809CBDC87A51C2D10B8579A4B9C88" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_49" FriendlyName="1.sys Hash Sha256" Hash="64F9E664BC6D4B8F5F68616DD50AE819C3E60452EFD5E589D6604B9356841B57" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_50" FriendlyName="cpupress.sys Hash Sha256" Hash="FCDFE570E6DC6E768EF75138033D9961F78045ADCA53BEB6FDB520F6417E0DF1" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_51" FriendlyName="gameink.sys Hash Sha256" Hash="E9B433A33DC72EB2622947B41F01D04A48CD71BEAC775A88F3F1E4C838090EE8" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_52" FriendlyName="NetFlt.sys Hash Sha256" Hash="F8886A9C759E0426E08D55E410B02C5B05AF3C287B15970175E4874316FFAF13" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_53" FriendlyName="ProtectS.sys Hash Sha256" Hash="9D58F640C7295952B71BDCB456CAE37213BACCDCD3032C1E3AEB54E79081F395" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_54" FriendlyName="ProtectS.sys Hash Sha256" Hash="4A9093E8DBCB867E1B97A0A67CE99A8511900658F5201C34FFB8035881F2DBBE" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_55" FriendlyName="GameTerSafe.sys Hash Sha256" Hash="3E9B62D2EA2BE50A2DA670746C4DBE807DB9601980AF3A1014BCD72D0248D84C" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_56" FriendlyName="Lurker.sys Hash Sha256" Hash="0FD2DF82341BF5EBB8A53682E60D08978100C01ACB0BED7B6CE2876ADA80F670" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_57" FriendlyName="TestBone.sys Hash Sha256" Hash="0DE4247E72D378713BCF22D5C5D3874D079203BB4364E25F67A90D5570BDCCE8" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_58" FriendlyName="Proxy32.sys Hash Sha256" Hash="49ED27460730B62403C1D2E4930573121AB0C86C442854BC0A62415CA445A810" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_59" FriendlyName="t7.sys Hash Sha256" Hash="BE03E9541F56AC6ED1E81407DCD7CC85C0FFC538C3C2C2C8A9C747EDBCF13100" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_60" FriendlyName="nt4.sys Hash Sha256" Hash="D7BC7306CB489FE4C285BBEDDC6D1A09E814EF55CF30BD5B8DAF87A52396F102" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_61" FriendlyName="t8.sys Hash Sha256" Hash="258359A7FA3D975620C9810DAB3A6493972876A024135FEAF3AC8482179B2E79" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_62" FriendlyName="nstr.sys Hash Sha256" Hash="455BC98BA32ADAB8B47D2D89BDBADCA4910F91C182AB2FC3211BA07D3784537B" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_63" FriendlyName="nt6.sys Hash Sha256" Hash="15C53EB3A0EA44BBD2901A45A6EBEAE29BB123F9C1115C38DFB2CDBEC0642229" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_64" FriendlyName="t3.sys Hash Sha256" Hash="4CFF6E53430B81ECC4FAE453E59A0353BCFE73DD5780ABFC35F299C16A97998E" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_65" FriendlyName="windows7-32.sys Hash Sha256" Hash="4941C4298F4560FC1E59D0F16F84BAB5C060793700B82BE2FD7C63735F1657A8" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_66" FriendlyName="NetProxyDriver.sys Hash Sha256" Hash="8111085022BDA87E5F6AA4C195E743CC6DD6A3A6D41ADD475D267DC6B105A69F" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_67" FriendlyName="c.sys Hash Sha256" Hash="CC383AD11E9D06047A1558ED343F389492DA3AC2B84B71462AEE502A2FA616C8" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_68" FriendlyName="gameink.sys Hash Sha256" Hash="E94E8A87459DB56837D1C58F9854794AA99F36566A9DED9B398BE9D4D3A2C2AF" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_69" FriendlyName="gameink.sys Hash Sha256" Hash="44A0599DEFEA351314663582DBC61069B3A095A4DDAD571BB17DD0D8B21E7FF2" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_70" FriendlyName="b.sys Hash Sha256" Hash="84DF20B1D9D87E305C92E5FFAE21B10B325609D59D835A954DBD8750EF5DABF4" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_71" FriendlyName="nt4.sys Hash Sha256" Hash="D7BC7306CB489FE4C285BBEDDC6D1A09E814EF55CF30BD5B8DAF87A52396F102" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_72" FriendlyName="d3.sys Hash Sha256" Hash="36875562E747136313EC5DB58174E5FAB870997A054CA8D3987D181599C7DB6A" />
    <Deny ID="ID_DENY_RTCORE_1" FriendlyName="RTCore\01aa278b07b58dc46c84bd0b1b5c8e9ee4e62ea0bf7a695862444af32e87f1fd Hash Sha1" Hash="4A68C2D7A4C471E062A32C83A36EEDB45A619683" />
    <Deny ID="ID_DENY_RTCORE_2" FriendlyName="RTCore\01aa278b07b58dc46c84bd0b1b5c8e9ee4e62ea0bf7a695862444af32e87f1fd Hash Sha256" Hash="478C36F8AF7844A80E24C1822507BEEF6314519185717EC7AE224A0E04B2F330" />
    <Deny ID="ID_DENY_RTCORE_3" FriendlyName="RTCore\01aa278b07b58dc46c84bd0b1b5c8e9ee4e62ea0bf7a695862444af32e87f1fd Hash Page Sha1" Hash="84152FA241C3808F8C7752964589C957E440403F" />
    <Deny ID="ID_DENY_RTCORE_4" FriendlyName="RTCore\01aa278b07b58dc46c84bd0b1b5c8e9ee4e62ea0bf7a695862444af32e87f1fd Hash Page Sha256" Hash="A807532037A3549AE3E046F183D782BCB78B6193163EA448098140563CF857CB" />
    <Deny ID="ID_DENY_RTCORE_5" FriendlyName="RTCore\077aa8ff5e01747723b6d24cc8af460a7a00f30cd3bc80e41cc245ceb8305356 Hash Sha1" Hash="DA1BD3AD4A8FE1E28C1DE28A7BF66AD82DA0DD29" />
    <Deny ID="ID_DENY_RTCORE_6" FriendlyName="RTCore\077aa8ff5e01747723b6d24cc8af460a7a00f30cd3bc80e41cc245ceb8305356 Hash Sha256" Hash="61A1F530A5D47339275657D7883911D64F64909569CF13D2E6868DF01A2A72CB" />
    <Deny ID="ID_DENY_RTCORE_7" FriendlyName="RTCore\077aa8ff5e01747723b6d24cc8af460a7a00f30cd3bc80e41cc245ceb8305356 Hash Page Sha1" Hash="BD2340853235FE2757829E7F899CE25BD65C5434" />
    <Deny ID="ID_DENY_RTCORE_8" FriendlyName="RTCore\077aa8ff5e01747723b6d24cc8af460a7a00f30cd3bc80e41cc245ceb8305356 Hash Page Sha256" Hash="74860E5563D3993635DC41E47BB34837C8B53ECBFF539244E1EC608E7B53D42D" />
    <Deny ID="ID_DENY_RTCORE_9" FriendlyName="RTCore\08828990218ebb4415c1bb33fa2b0a009efd0784b18b3f7ecd3bc078343f7208 Hash Sha1" Hash="38B353D8480885DE5DCF299DECA99CE4F26A1D20" />
    <Deny ID="ID_DENY_RTCORE_10" FriendlyName="RTCore\08828990218ebb4415c1bb33fa2b0a009efd0784b18b3f7ecd3bc078343f7208 Hash Sha256" Hash="5182CAF10DE9CEC0740ECDE5A081C21CDC100D7EB328FFE6F3F63183889FEC6B" />
    <Deny ID="ID_DENY_RTCORE_11" FriendlyName="RTCore\08828990218ebb4415c1bb33fa2b0a009efd0784b18b3f7ecd3bc078343f7208 Hash Page Sha1" Hash="1A4F647C27D093675A674E5A8D83063A83231D28" />
    <Deny ID="ID_DENY_RTCORE_12" FriendlyName="RTCore\08828990218ebb4415c1bb33fa2b0a009efd0784b18b3f7ecd3bc078343f7208 Hash Page Sha256" Hash="46D4A0CE75FA97837C7B6869D29AF9D6068F9023346E9D34C0E26E41198CDB80" />
    <Deny ID="ID_DENY_RTCORE_13" FriendlyName="RTCore\0aca4447ee54d635f76b941f6100b829dc8b2e0df27bdf584acb90f15f12fbda Hash Sha1" Hash="5717BF3E520ACCFFF5AD9943E53A3B118FB67F2E" />
    <Deny ID="ID_DENY_RTCORE_14" FriendlyName="RTCore\0aca4447ee54d635f76b941f6100b829dc8b2e0df27bdf584acb90f15f12fbda Hash Sha256" Hash="918D2E68A724B58D37443AEA159E70BF8B1B5EBB089C395CAD1D62745ECDAA19" />
    <Deny ID="ID_DENY_RTCORE_15" FriendlyName="RTCore\0aca4447ee54d635f76b941f6100b829dc8b2e0df27bdf584acb90f15f12fbda Hash Page Sha1" Hash="03E1FB2499B9361141E2AC4FCCB9CCE2A48A0342" />
    <Deny ID="ID_DENY_RTCORE_16" FriendlyName="RTCore\0aca4447ee54d635f76b941f6100b829dc8b2e0df27bdf584acb90f15f12fbda Hash Page Sha256" Hash="556B8ACD6EFF7D5A2A0320CD22CAD122254ABDEDCBBD749DB14CD8D314D609BE" />
    <Deny ID="ID_DENY_RTCORE_17" FriendlyName="RTCore\1c425793a8ce87be916969d6d7e9dd0687b181565c3b483ce53ad1ec6fb72a17 Hash Sha1" Hash="43D3A3C1F7B14CFCC051CAE2534DBBBB4C7FC120" />
    <Deny ID="ID_DENY_RTCORE_18" FriendlyName="RTCore\1c425793a8ce87be916969d6d7e9dd0687b181565c3b483ce53ad1ec6fb72a17 Hash Sha256" Hash="B8EB26B6F79020AE988E4FB752DC06E1B6779749BF4F8DF2872FC2B92BAB8020" />
    <Deny ID="ID_DENY_RTCORE_19" FriendlyName="RTCore\1c425793a8ce87be916969d6d7e9dd0687b181565c3b483ce53ad1ec6fb72a17 Hash Page Sha1" Hash="6AE84C64765F9271C4758D387AD1E07B64F7966D" />
    <Deny ID="ID_DENY_RTCORE_20" FriendlyName="RTCore\1c425793a8ce87be916969d6d7e9dd0687b181565c3b483ce53ad1ec6fb72a17 Hash Page Sha256" Hash="AA60FC20276D6779BBEA2A629C2FBAA3CE60ED2C2AD26230101FFF01A6E79A24" />
    <Deny ID="ID_DENY_RTCORE_21" FriendlyName="RTCore\3ff50c67d51553c08dcb7c98342f68a0f54ad6658c5346c428bdcd1f185569f6 Hash Sha1" Hash="B3249BACDA6E43AA2C46C2AF802C9EE0B7E2FD7B" />
    <Deny ID="ID_DENY_RTCORE_22" FriendlyName="RTCore\3ff50c67d51553c08dcb7c98342f68a0f54ad6658c5346c428bdcd1f185569f6 Hash Sha256" Hash="3C9829A16EB85272B0E1A2917FEFFAAB8DDB23E633B168B389669339A0CEE0B5" />
    <Deny ID="ID_DENY_RTCORE_23" FriendlyName="RTCore\3ff50c67d51553c08dcb7c98342f68a0f54ad6658c5346c428bdcd1f185569f6 Hash Page Sha1" Hash="060C4D64F67F9300F2DBD09F68B4B591AAAFA698" />
    <Deny ID="ID_DENY_RTCORE_24" FriendlyName="RTCore\3ff50c67d51553c08dcb7c98342f68a0f54ad6658c5346c428bdcd1f185569f6 Hash Page Sha256" Hash="BF0439DB3DCC00355291FEFF1D31F5B48CD1334DBBA3DAEB761E7084335D40E7" />
    <Deny ID="ID_DENY_RTCORE_25" FriendlyName="RTCore\40061b30b1243be76d5283cbc8abfe007e148097d4de7337670ff1536c4c7ba1 Hash Sha1" Hash="8498265D4CA81B83EC1454D9EC013D7A9C0C87BF" />
    <Deny ID="ID_DENY_RTCORE_26" FriendlyName="RTCore\40061b30b1243be76d5283cbc8abfe007e148097d4de7337670ff1536c4c7ba1 Hash Sha256" Hash="606BECED7746CDB684D3A44F41E48713C6BBE5BFB1486C52B5CCA815E99D31B4" />
    <Deny ID="ID_DENY_RTCORE_27" FriendlyName="RTCore\40061b30b1243be76d5283cbc8abfe007e148097d4de7337670ff1536c4c7ba1 Hash Page Sha1" Hash="3B05785D8AD770E4356BC8041606B08BDAB56C99" />
    <Deny ID="ID_DENY_RTCORE_28" FriendlyName="RTCore\40061b30b1243be76d5283cbc8abfe007e148097d4de7337670ff1536c4c7ba1 Hash Page Sha256" Hash="2DC771BED765E9FE8E79171A851BA158B8E84034FE0518A619F47F3450FFA2BC" />
    <Deny ID="ID_DENY_RTCORE_29" FriendlyName="RTCore\bea8c6728d57d4b075f372ac82b8134ac8044fe13f533696a58e8864fa3efee3 Hash Sha1" Hash="A7CE1394D10DCFDE7B8A1C90667826DA68933673" />
    <Deny ID="ID_DENY_RTCORE_30" FriendlyName="RTCore\bea8c6728d57d4b075f372ac82b8134ac8044fe13f533696a58e8864fa3efee3 Hash Sha256" Hash="6279821BF9ECCED596F474C8FC547DAB0BDDBB3AB972390596BD4C5C7B85C685" />
    <Deny ID="ID_DENY_RTCORE_31" FriendlyName="RTCore\bea8c6728d57d4b075f372ac82b8134ac8044fe13f533696a58e8864fa3efee3 Hash Page Sha1" Hash="9E504DB591D321F1F8CEA62A5A111DA0EFB26447" />
    <Deny ID="ID_DENY_RTCORE_32" FriendlyName="RTCore\bea8c6728d57d4b075f372ac82b8134ac8044fe13f533696a58e8864fa3efee3 Hash Page Sha256" Hash="BEDC7276543DAAFC11D44F5F603F8AA48C61837F7C4C9446F10FA522F3275D17" />
    <Deny ID="ID_DENY_RTPORT_1" FriendlyName="Realtek rtport\6f806a9de79ac2886613c20758546f7e9597db5a20744f7dd82d310b7d6457d0 Hash Sha1" Hash="803ACF5CCBE22E7483AA0AB66BDEB191D94CED71"/>
    <Deny ID="ID_DENY_RTPORT_2" FriendlyName="Realtek rtport\6f806a9de79ac2886613c20758546f7e9597db5a20744f7dd82d310b7d6457d0 Hash Sha256" Hash="9A873E9D66FC509F51317A6D73A75D97A05B56DA38F0DBA90F74ACFDE262BA3D"/>
    <Deny ID="ID_DENY_RTPORT_3" FriendlyName="Realtek rtport\74e05c6674f48089c617d66d8231cc5271c94430e80bc346cea0dfee44741476 Hash Sha1" Hash="991953AE95747735ACC492C40373944BB843D8AF"/>
    <Deny ID="ID_DENY_RTPORT_4" FriendlyName="Realtek rtport\74e05c6674f48089c617d66d8231cc5271c94430e80bc346cea0dfee44741476 Hash Sha256" Hash="74E05C6674F48089C617D66D8231CC5271C94430E80BC346CEA0DFEE44741476"/>
    <Deny ID="ID_DENY_RTPORT_5" FriendlyName="Realtek rtport\8fe429c46fedbab8f06e5396056adabbb84a31efef7f9523eb745fc60144db65 Hash Sha1" Hash="C613B7797A6C1F31271F8F5DCED8515D8E4F5732"/>
    <Deny ID="ID_DENY_RTPORT_6" FriendlyName="Realtek rtport\8fe429c46fedbab8f06e5396056adabbb84a31efef7f9523eb745fc60144db65 Hash Sha256" Hash="489C02D8102FC401010793D7388B59DC944A2E77CF4179424015CD863701B19B"/>
    <Deny ID="ID_DENY_RTPORT_7" FriendlyName="Realtek rtport\8fe429c46fedbab8f06e5396056adabbb84a31efef7f9523eb745fc60144db65 Hash Page Sha1" Hash="51D1765FA0740BB71DD588FBABAC5C077FBBE569"/>
    <Deny ID="ID_DENY_RTPORT_8" FriendlyName="Realtek rtport\8fe429c46fedbab8f06e5396056adabbb84a31efef7f9523eb745fc60144db65 Hash Page Sha256" Hash="68000CAA66F5CE231142C6BC93CEA1768D97394F53E048AB74F6B038F12649C8"/>
    <Deny ID="ID_DENY_RTPORT_9" FriendlyName="Realtek rtport\a29093d4d708185ba8be35709113fb42e402bbfbf2960d3e00fd7c759ef0b94e Hash Sha1" Hash="37960129FD53D546A6C419DDDE1204DD4B517F6D"/>
    <Deny ID="ID_DENY_RTPORT_10" FriendlyName="Realtek rtport\a29093d4d708185ba8be35709113fb42e402bbfbf2960d3e00fd7c759ef0b94e Hash Sha256" Hash="7A04DB5C3E8691943EC36AC7CBE4C5FF1CE6781936D084363AC3CBC46727D115"/>
    <Deny ID="ID_DENY_RTPORT_11" FriendlyName="Realtek rtport\c490d6c0844f59fdb4aa850a06e283fbf5e5b6ac20ff42ead03d549d8ae1c01b Hash Sha1" Hash="C2308FF02A8A05D7B20E59D7734B90FE950D15BC"/>
    <Deny ID="ID_DENY_RTPORT_12" FriendlyName="Realtek rtport\c490d6c0844f59fdb4aa850a06e283fbf5e5b6ac20ff42ead03d549d8ae1c01b Hash Sha256" Hash="74264CE2E0ED67730B0F3C719AEE37664D4688F872875322A64022CD68E060BB"/>
    <Deny ID="ID_DENY_RTPORT_13" FriendlyName="Realtek rtport\e3dbafce5ad2bf17446d0f853aeedf58cc25aa1080ab97e22375a1022d6acb16 Hash Sha1" Hash="5599900B51571F6557C862F5D82B8F6706A21A9D"/>
    <Deny ID="ID_DENY_RTPORT_14" FriendlyName="Realtek rtport\e3dbafce5ad2bf17446d0f853aeedf58cc25aa1080ab97e22375a1022d6acb16 Hash Sha256" Hash="353A36D445E4FF60396702AD7B22B5F30BDCE52AA05126E2701714A3F11A11C7"/>
    <Deny ID="ID_DENY_RTPORT_15" FriendlyName="Realtek rtport\ff322cd0cc30976f9dbdb7a3681529aeab0de7b7f5c5763362b02c15da9657a1 Hash Sha1" Hash="B2D78E9010D84F2FDB68B15667AF177809F015EA"/>
    <Deny ID="ID_DENY_RTPORT_16" FriendlyName="Realtek rtport\ff322cd0cc30976f9dbdb7a3681529aeab0de7b7f5c5763362b02c15da9657a1 Hash Sha256" Hash="0CB26201B95CA0015A8B0370D5BC12D38AB8C74D8A24864A8B5D9E8BE1DD1EDF"/>
    <Deny ID="ID_DENY_SEMAV6MSR64_SHA1" FriendlyName="semav6msr64.sys Hash Sha1" Hash="E3DBE2AA03847DF621591A4CAD69A5609DE5C237" />
    <Deny ID="ID_DENY_SEMAV6MSR64_SHA256" FriendlyName="semav6msr64.sys Hash Sha256" Hash="EB71A8ECEF692E74AE356E8CB734029B233185EE5C2CCB6CC87CC6B36BEA65CF" />
    <Deny ID="ID_DENY_SEMAV6MSR64_SHA1_PAGE" FriendlyName="semav6msr64.sys Hash Page Sha1" Hash="F3821EC0AEF270F749DF9F44FBA91AFA5C8C38E8" />
    <Deny ID="ID_DENY_SEMAV6MSR64_SHA256_PAGE" FriendlyName="semav6msr64.sys Hash Page Sha256" Hash="4F12EE563E7496E7105D67BF64AF6B436902BE4332033AF0B5A242B206372CB7" />
    <Deny ID="ID_DENY_SEPDRV3_1" FriendlyName="sepdrv3.sys\11cf5a8c3a2cdd8df81e8c3e477bb84b25fb92becb41f35a5d675acaa1466890 Hash Sha1" Hash="E5EBDE06493D4556083C6F1B5699E3DE7E19F00A"/>
    <Deny ID="ID_DENY_SEPDRV3_2" FriendlyName="sepdrv3.sys\11cf5a8c3a2cdd8df81e8c3e477bb84b25fb92becb41f35a5d675acaa1466890 Hash Sha256" Hash="999B7B31DE4B29CC9645083247EDF150DDA59DD1B67D8A309D6086DAE56C5C8B"/>
    <Deny ID="ID_DENY_SEPDRV3_3" FriendlyName="sepdrv3.sys\11cf5a8c3a2cdd8df81e8c3e477bb84b25fb92becb41f35a5d675acaa1466890 Hash Page Sha1" Hash="96A8FC40C0C4CEC694D6EAC90D00ABFAE9C574F4"/>
    <Deny ID="ID_DENY_SEPDRV3_4" FriendlyName="sepdrv3.sys\11cf5a8c3a2cdd8df81e8c3e477bb84b25fb92becb41f35a5d675acaa1466890 Hash Page Sha256" Hash="F80CBBDE4E2363504CB01FA79EA65DAC6867BB381360C8757DC253D4328C16CD"/>
    <Deny ID="ID_DENY_SEPDRV3_5" FriendlyName="sepdrv3.sys\17f19350ea6715ce94ca2014bce92a5c07fd752fd06647a8200db6b052468810 Hash Sha1" Hash="A7B5CABA6CD70B7AFE67E56A3E440EE6FEE75146"/>
    <Deny ID="ID_DENY_SEPDRV3_6" FriendlyName="sepdrv3.sys\17f19350ea6715ce94ca2014bce92a5c07fd752fd06647a8200db6b052468810 Hash Sha256" Hash="D6EEE72899BC9115301FCE63D8B6550F5401C2BC9C249F1CC14652B0902C743F"/>
    <Deny ID="ID_DENY_SEPDRV3_7" FriendlyName="sepdrv3.sys\17f19350ea6715ce94ca2014bce92a5c07fd752fd06647a8200db6b052468810 Hash Page Sha1" Hash="033ECCCAD06DBCD70E929386EA225E46010E2D1C"/>
    <Deny ID="ID_DENY_SEPDRV3_8" FriendlyName="sepdrv3.sys\17f19350ea6715ce94ca2014bce92a5c07fd752fd06647a8200db6b052468810 Hash Page Sha256" Hash="91AD7CB148D7F16167E0BC3ECA78DAA714664E7BC1825A7CB62762307709CCAE"/>
    <Deny ID="ID_DENY_SEPDRV3_9" FriendlyName="sepdrv3.sys\1b83be686572c6f0f7d214af7a135978bf5a342e4aafbb01c1a0cf5f6e054863 Hash Sha1" Hash="2D9B4019214135DAD5AA5ABD6D54C73E0F38FB2E"/>
    <Deny ID="ID_DENY_SEPDRV3_10" FriendlyName="sepdrv3.sys\1b83be686572c6f0f7d214af7a135978bf5a342e4aafbb01c1a0cf5f6e054863 Hash Sha256" Hash="6860735F703F2287B7C1906FA14F819E1CFBC0E4D332FA811673921CAC9CA451"/>
    <Deny ID="ID_DENY_SEPDRV3_11" FriendlyName="sepdrv3.sys\1b83be686572c6f0f7d214af7a135978bf5a342e4aafbb01c1a0cf5f6e054863 Hash Page Sha1" Hash="569A3823C3E6A38C9D91E3691E38EE226B46E8C6"/>
    <Deny ID="ID_DENY_SEPDRV3_12" FriendlyName="sepdrv3.sys\1b83be686572c6f0f7d214af7a135978bf5a342e4aafbb01c1a0cf5f6e054863 Hash Page Sha256" Hash="167C1661E6AA46E4A06C02B35786A3B0B35B76E7CE32BC013893A480D174C242"/>
    <Deny ID="ID_DENY_SEPDRV3_13" FriendlyName="sepdrv3.sys\321104460942bf98c5c248f660e068e5170c16ae8eedfa7acc5bf98471042a4e Hash Sha1" Hash="5FD9BDE1FF9C91BADE322EAA2C83ACC6E2751351"/>
    <Deny ID="ID_DENY_SEPDRV3_14" FriendlyName="sepdrv3.sys\321104460942bf98c5c248f660e068e5170c16ae8eedfa7acc5bf98471042a4e Hash Sha256" Hash="8971D8B30721EDFAB149FA3D2C201C0BB134F33F03D22AA6C90164A4AAF630CD"/>
    <Deny ID="ID_DENY_SEPDRV3_15" FriendlyName="sepdrv3.sys\321104460942bf98c5c248f660e068e5170c16ae8eedfa7acc5bf98471042a4e Hash Page Sha1" Hash="07CD7EE875F911B657A395038DA04ED2BCA98E98"/>
    <Deny ID="ID_DENY_SEPDRV3_16" FriendlyName="sepdrv3.sys\321104460942bf98c5c248f660e068e5170c16ae8eedfa7acc5bf98471042a4e Hash Page Sha256" Hash="7A7EEE720CC27C30B1A52D9459F75635C68DE46F583A5A71792F8B6EE0E8E39E"/>
    <Deny ID="ID_DENY_SEPDRV3_17" FriendlyName="sepdrv3.sys\398853920c10c4d3c685d4222b067e2d7f6b2430adb70577d4e448078de5c64c Hash Sha1" Hash="854708A1E286D377C85C7AE6386509F6AD6E250D"/>
    <Deny ID="ID_DENY_SEPDRV3_18" FriendlyName="sepdrv3.sys\398853920c10c4d3c685d4222b067e2d7f6b2430adb70577d4e448078de5c64c Hash Sha256" Hash="C2742A2FAD0061A9D7664A8EFBD99C9C8E8E1FB489DE5FA29DFBFB591DB240A4"/>
    <Deny ID="ID_DENY_SEPDRV3_19" FriendlyName="sepdrv3.sys\398853920c10c4d3c685d4222b067e2d7f6b2430adb70577d4e448078de5c64c Hash Page Sha1" Hash="E1A1423FB686F65ED1D0AC5B8BD12C64A7AB895F"/>
    <Deny ID="ID_DENY_SEPDRV3_20" FriendlyName="sepdrv3.sys\398853920c10c4d3c685d4222b067e2d7f6b2430adb70577d4e448078de5c64c Hash Page Sha256" Hash="5A17C00F920FE49725BAE0594D1326A3E15A0A069DD1E2DBB07C4C32C0F43151"/>
    <Deny ID="ID_DENY_SEPDRV3_21" FriendlyName="sepdrv3.sys\3fd6a8623394db4eaeabfb7a6e75d8af6f998409de4537045db06391d82b37c8 Hash Sha1" Hash="970D8ADF83D9DCD3DB8F69C2B3EE77B01F480FE5"/>
    <Deny ID="ID_DENY_SEPDRV3_22" FriendlyName="sepdrv3.sys\3fd6a8623394db4eaeabfb7a6e75d8af6f998409de4537045db06391d82b37c8 Hash Sha256" Hash="34FDC85DF0AC6B7BE6C8B36163BE1E4FFB68C89B6A640B9A74C8A9E6DDE6E7A7"/>
    <Deny ID="ID_DENY_SEPDRV3_23" FriendlyName="sepdrv3.sys\3fd6a8623394db4eaeabfb7a6e75d8af6f998409de4537045db06391d82b37c8 Hash Page Sha1" Hash="898E91D2DF5D93CD43A18399B25CCC620A4246E5"/>
    <Deny ID="ID_DENY_SEPDRV3_24" FriendlyName="sepdrv3.sys\3fd6a8623394db4eaeabfb7a6e75d8af6f998409de4537045db06391d82b37c8 Hash Page Sha256" Hash="EA0E3A51B7C901108FC95366C25E9093DF6709A7E0BDE3D031BEDBFC73B488CA"/>
    <Deny ID="ID_DENY_SEPDRV3_25" FriendlyName="sepdrv3.sys\54fc3cad3fc4d45eaf43b96b175a65879761c996c4e26880064170811b0a11ff Hash Sha1" Hash="16F2B2F44FC257ABB1E69DD7FB0BA1E98FB89702"/>
    <Deny ID="ID_DENY_SEPDRV3_26" FriendlyName="sepdrv3.sys\54fc3cad3fc4d45eaf43b96b175a65879761c996c4e26880064170811b0a11ff Hash Sha256" Hash="2C12AF21CEB317375E644E0388385DD11C5B005472C09A8710EC7E905AAB7E77"/>
    <Deny ID="ID_DENY_SEPDRV3_27" FriendlyName="sepdrv3.sys\54fc3cad3fc4d45eaf43b96b175a65879761c996c4e26880064170811b0a11ff Hash Page Sha1" Hash="F6FBF8FB8ECE412AFEDFE5B93C0DEC6DC5672C96"/>
    <Deny ID="ID_DENY_SEPDRV3_28" FriendlyName="sepdrv3.sys\54fc3cad3fc4d45eaf43b96b175a65879761c996c4e26880064170811b0a11ff Hash Page Sha256" Hash="0BFA3751E7449E4C0F945E881AF6E6577B4FCA51681F097F0B45E7A31240B8F0"/>
    <Deny ID="ID_DENY_SEPDRV3_29" FriendlyName="sepdrv3.sys\94ef5e5188b675da304ac1724655072ec4abc2d48ca545daa7ccfc52ded2d7ae Hash Sha1" Hash="C77D060AD181E3B61E2A41CDEDD09DC2ABD64492"/>
    <Deny ID="ID_DENY_SEPDRV3_30" FriendlyName="sepdrv3.sys\94ef5e5188b675da304ac1724655072ec4abc2d48ca545daa7ccfc52ded2d7ae Hash Sha256" Hash="51044D01CE2BE5EC9D8E339E39FC5CA4636E4F3203B2810AB0A4030E948AFF0D"/>
    <Deny ID="ID_DENY_SEPDRV3_31" FriendlyName="sepdrv3.sys\94ef5e5188b675da304ac1724655072ec4abc2d48ca545daa7ccfc52ded2d7ae Hash Page Sha1" Hash="9CE4E2C3217F2BF1D2F4F4CFC7108F336D92E56E"/>
    <Deny ID="ID_DENY_SEPDRV3_32" FriendlyName="sepdrv3.sys\94ef5e5188b675da304ac1724655072ec4abc2d48ca545daa7ccfc52ded2d7ae Hash Page Sha256" Hash="F8640E7A6DFFB61C4BBCB5416EB97D21EBC5153B16ADB8E9B17BFA44377C8602"/>
    <Deny ID="ID_DENY_SEPDRV3_33" FriendlyName="sepdrv3.sys\b96ba5c469591f9e545bef4af1719a831c73b71207fad79efd84335c1519f71a Hash Sha1" Hash="8B6315FF84C9724EE0FE120DC04B058273310C15"/>
    <Deny ID="ID_DENY_SEPDRV3_34" FriendlyName="sepdrv3.sys\b96ba5c469591f9e545bef4af1719a831c73b71207fad79efd84335c1519f71a Hash Sha256" Hash="FCAE0263D0172388BA503EADF89DCBE2788E3C9A93A2AC5D1492194671DEC9AC"/>
    <Deny ID="ID_DENY_SEPDRV3_35" FriendlyName="sepdrv3.sys\b96ba5c469591f9e545bef4af1719a831c73b71207fad79efd84335c1519f71a Hash Page Sha1" Hash="186B696A6D491CC1EDAA4EB470D77FE63740643E"/>
    <Deny ID="ID_DENY_SEPDRV3_36" FriendlyName="sepdrv3.sys\b96ba5c469591f9e545bef4af1719a831c73b71207fad79efd84335c1519f71a Hash Page Sha256" Hash="06E02324268E647EC77C63B81D06DAF2AE58BBD5BFA6F3DC78EFC2FAF632062D"/>
    <Deny ID="ID_DENY_SEPDRV3_37" FriendlyName="sepdrv3.sys\f7cb042aaddd24d867c2ac3a5386d736be91f65c47752fef7e93ce4c0e2b8e1e Hash Sha1" Hash="4367680C86115B001DD5D9F63DA7B3755596D500"/>
    <Deny ID="ID_DENY_SEPDRV3_38" FriendlyName="sepdrv3.sys\f7cb042aaddd24d867c2ac3a5386d736be91f65c47752fef7e93ce4c0e2b8e1e Hash Sha256" Hash="5C421BB2DC2B155FB8DEFF8A5E7E09D903341C729A27B509A8CDBBB54D8352C9"/>
    <Deny ID="ID_DENY_SEPDRV3_39" FriendlyName="sepdrv3.sys\f7cb042aaddd24d867c2ac3a5386d736be91f65c47752fef7e93ce4c0e2b8e1e Hash Page Sha1" Hash="A79BB06F44FA71D9D08E9A94C9B2E1ED522A5F78"/>
    <Deny ID="ID_DENY_SEPDRV3_40" FriendlyName="sepdrv3.sys\f7cb042aaddd24d867c2ac3a5386d736be91f65c47752fef7e93ce4c0e2b8e1e Hash Page Sha256" Hash="F1C7B0C250297DD5BC5D5B75E3DB77FCE5E2F2AF93B7C3CC78BAE4608BD505CE"/>
    <Deny ID="ID_DENY_SUPERBMC_2" FriendlyName="superbmc.sys\1d804efc9a1a012e1f68288c0a2833b13d00eecd4a6e93258ba100aa07e3406f Hash Sha1" Hash="989BDDC6B7076947277AB6EB7F002AB6731AAEAE" />
    <Deny ID="ID_DENY_SUPERBMC_3" FriendlyName="superbmc.sys\1d804efc9a1a012e1f68288c0a2833b13d00eecd4a6e93258ba100aa07e3406f Hash Sha256" Hash="5147B0F2CA9D0BDE1F9FCEB382C05F7FA9C333709D7BF081D6C00A4132D914AF" />
    <Deny ID="ID_DENY_SUPERBMC_4" FriendlyName="superbmc.sys\1d804efc9a1a012e1f68288c0a2833b13d00eecd4a6e93258ba100aa07e3406f Hash Page Sha1" Hash="4378B656A1C94CD885323B6D6E36038E8522E6CC" />
    <Deny ID="ID_DENY_SUPERBMC_5" FriendlyName="superbmc.sys\1d804efc9a1a012e1f68288c0a2833b13d00eecd4a6e93258ba100aa07e3406f Hash Page Sha256" Hash="034DB61D844ADA030BB9173F4B7448DD6CC355B4429266F5ABBA6AFDB481128B" />
    <Deny ID="ID_DENY_SUPERBMC_6" FriendlyName="superbmc.sys\1deae340bf619319adce00701de887f7434deab4d5547a1742aeedb5634d23c6 Hash Sha1" Hash="AF3908C5DCB18E82A749AD06B82D2AEC3C2542AF" />
    <Deny ID="ID_DENY_SUPERBMC_7" FriendlyName="superbmc.sys\1deae340bf619319adce00701de887f7434deab4d5547a1742aeedb5634d23c6 Hash Sha256" Hash="85C5E66F38152D17D5B580126B3348579263BBC8FD22E5417C0090FD75A330AC" />
    <Deny ID="ID_DENY_SUPERBMC_8" FriendlyName="superbmc.sys\1deae340bf619319adce00701de887f7434deab4d5547a1742aeedb5634d23c6 Hash Page Sha1" Hash="ECDEED85F0046EC45B50E253B010DDDFDF7B4210" />
    <Deny ID="ID_DENY_SUPERBMC_9" FriendlyName="superbmc.sys\1deae340bf619319adce00701de887f7434deab4d5547a1742aeedb5634d23c6 Hash Page Sha256" Hash="53784E616D77F2CD75EDF0DBEA9E20795E5E9BC8499D5F71C3792AA937857D7A" />
    <Deny ID="ID_DENY_SUPERBMC_A" FriendlyName="superbmc.sys\326b53365f8486c78608139cac84619eff90be361f7ade9db70f9867dd94dcc9 Hash Sha1" Hash="B73248A34FBAB95C9D4A1CF944CDC69B3F5E4995" />
    <Deny ID="ID_DENY_SUPERBMC_B" FriendlyName="superbmc.sys\326b53365f8486c78608139cac84619eff90be361f7ade9db70f9867dd94dcc9 Hash Sha256" Hash="22AFEE6F0EC783D59EF4F5D6C189B78FA26302F0ED09670B7BBC9BAE26BDB0E5" />
    <Deny ID="ID_DENY_SUPERBMC_C" FriendlyName="superbmc.sys\326b53365f8486c78608139cac84619eff90be361f7ade9db70f9867dd94dcc9 Hash Page Sha1" Hash="D3149002B0072DFB0ACDC28E34B8DE5EEC6F0C68" />
    <Deny ID="ID_DENY_SUPERBMC_D" FriendlyName="superbmc.sys\326b53365f8486c78608139cac84619eff90be361f7ade9db70f9867dd94dcc9 Hash Page Sha256" Hash="24D3142C62692D04B485778810369EDB17804E38DF9791D44345A80DA6D83611" />
    <Deny ID="ID_DENY_SUPERBMC_E" FriendlyName="superbmc.sys\a6f8aa3de5b4aea58eddd45807d722c864d4bc4a38ad573174af864e21f0d526 Hash Sha1" Hash="93018A3B82781979DD4759DADF5A4EC91DA86722" />
    <Deny ID="ID_DENY_SUPERBMC_F" FriendlyName="superbmc.sys\a6f8aa3de5b4aea58eddd45807d722c864d4bc4a38ad573174af864e21f0d526 Hash Sha256" Hash="8CEF918675DFAEB50CACD36B9C06871FD05E9FFEA7ADDF98A396FAE131ABE30A" />
    <Deny ID="ID_DENY_SUPERBMC_10" FriendlyName="superbmc.sys\c9c60f560440ff16ad3c767ff5b7658d5bda61ea1166efe9b7f450447557136e Hash Sha1" Hash="CDC476003A1310AA02271260CC9EB7BA07FF60CB" />
    <Deny ID="ID_DENY_SUPERBMC_11" FriendlyName="superbmc.sys\c9c60f560440ff16ad3c767ff5b7658d5bda61ea1166efe9b7f450447557136e Hash Sha256" Hash="2645298D84585FA987450AA11687B73739CBBC26ABAA8125099CAE5889BEB211" />
    <Deny ID="ID_DENY_SUPERBMC_12" FriendlyName="superbmc.sys\c9c60f560440ff16ad3c767ff5b7658d5bda61ea1166efe9b7f450447557136e Hash Page Sha1" Hash="53D29F61F890CE4576950E8B600420302BBB1A6A" />
    <Deny ID="ID_DENY_SUPERBMC_13" FriendlyName="superbmc.sys\c9c60f560440ff16ad3c767ff5b7658d5bda61ea1166efe9b7f450447557136e Hash Page Sha256" Hash="898EF622B286EE6E3A30644C073D5E09E33F1762C9B7AC458D2A5A5CC7CFEBE1" />
    <Deny ID="ID_DENY_SUPERBMC_14" FriendlyName="superbmc.sys\ee6bfdf5748fbbf579d6176026626ef39a0673e307c2029f5633e80f0babef54 Hash Sha1" Hash="9A9A788B3E94272C74D1D6C2451491BB40277D04" />
    <Deny ID="ID_DENY_SUPERBMC_15" FriendlyName="superbmc.sys\ee6bfdf5748fbbf579d6176026626ef39a0673e307c2029f5633e80f0babef54 Hash Sha256" Hash="976C015B28197CCD15F807B776F705BDF612FC622FB0A4B9901B90F180BF2F8A" />
    <Deny ID="ID_DENY_SUPERBMC_16" FriendlyName="superbmc.sys\ee6bfdf5748fbbf579d6176026626ef39a0673e307c2029f5633e80f0babef54 Hash Page Sha1" Hash="2303BEAB201455CC543E0CCE9D4D8698338787EB" />
    <Deny ID="ID_DENY_SUPERBMC_17" FriendlyName="superbmc.sys\ee6bfdf5748fbbf579d6176026626ef39a0673e307c2029f5633e80f0babef54 Hash Page Sha256" Hash="161DC4F7ED741397F6BD6C2B012DBDF6E397CF02212C7DAAF303338206B1E3A7" />
    <Deny ID="ID_DENY_SYSCONP_1" FriendlyName="IBM sysconp.sys\dba8db472e51edd59f0bbaf4e09df71613d4dd26fd05f14a9bc7e3fc217a78aa Hash Sha1" Hash="7D7BBE8F7C7445B98B02D0AC4DA109B6275331BF"/>
    <Deny ID="ID_DENY_SYSCONP_2" FriendlyName="IBM sysconp.sys\dba8db472e51edd59f0bbaf4e09df71613d4dd26fd05f14a9bc7e3fc217a78aa Hash Sha256" Hash="42446592B42E34BF569A631265BCAF2A2192D424531A343A7680F52199B88462"/>
    <Deny ID="ID_DENY_SYSCONP_3" FriendlyName="IBM sysconp.sys\dba8db472e51edd59f0bbaf4e09df71613d4dd26fd05f14a9bc7e3fc217a78aa Hash Page Sha1" Hash="FC9033ACD7454A12EA9AEB7F27A04A2A6D26EEA0"/>
    <Deny ID="ID_DENY_SYSCONP_4" FriendlyName="IBM sysconp.sys\dba8db472e51edd59f0bbaf4e09df71613d4dd26fd05f14a9bc7e3fc217a78aa Hash Page Sha256" Hash="460D48855B3390A01AD549BA866FD7567CDFAFBAF6CC3BD199CD3DE36BCCC4C7"/>
    <Deny ID="ID_DENY_SYSCONP_5" FriendlyName="IBM sysconp.sys\df4c02beb039d15ff0c691bbc3595c9edfc1d24e783c8538a859bc5ea537188d Hash Sha1" Hash="F02835C1C4E0D69F9ED80E97345EE6F2258C601C"/>
    <Deny ID="ID_DENY_SYSCONP_6" FriendlyName="IBM sysconp.sys\df4c02beb039d15ff0c691bbc3595c9edfc1d24e783c8538a859bc5ea537188d Hash Sha256" Hash="9303894EE50D95911CCD4583B2AA5484DB63DE0D8F799B14854577E15914DF2D"/>
    <Deny ID="ID_DENY_SYSCONP_7" FriendlyName="IBM sysconp.sys\df4c02beb039d15ff0c691bbc3595c9edfc1d24e783c8538a859bc5ea537188d Hash Page Sha1" Hash="7464301A7E4A828105E4EF4CB16209575B93FF29"/>
    <Deny ID="ID_DENY_SYSCONP_8" FriendlyName="IBM sysconp.sys\df4c02beb039d15ff0c691bbc3595c9edfc1d24e783c8538a859bc5ea537188d Hash Page Sha256" Hash="DEB2CC7E586188EC475BD024F0DEAD6E321B6196D5B3179FD0521682160C4F81"/>
    <Deny ID="ID_DENY_SYSDRV3S_1" FriendlyName="CodeSys SysDrv3S\0dd9daf0852a5b1b436199e9f2bf318f641f43173ab0dc22ad8c7e9cbaee9ad3 Hash Sha1" Hash="3AA0ABAF4EA1F90D1B5D2F26ABE7FE9F0BB14A76" />
    <Deny ID="ID_DENY_SYSDRV3S_2" FriendlyName="CodeSys SysDrv3S\0dd9daf0852a5b1b436199e9f2bf318f641f43173ab0dc22ad8c7e9cbaee9ad3 Hash Sha256" Hash="8A4E6D1A5E0309EAD41B11CEB479C6A874CF6E57F2B416C12025E1B485009F37" />
    <Deny ID="ID_DENY_SYSDRV3S_3" FriendlyName="CodeSys SysDrv3S\0dd9daf0852a5b1b436199e9f2bf318f641f43173ab0dc22ad8c7e9cbaee9ad3 Hash Page Sha1" Hash="F4C12BA9B5B73C159EB920060B8E4CEE9D729187" />
    <Deny ID="ID_DENY_SYSDRV3S_4" FriendlyName="CodeSys SysDrv3S\0dd9daf0852a5b1b436199e9f2bf318f641f43173ab0dc22ad8c7e9cbaee9ad3 Hash Page Sha256" Hash="841C8C6B5D9779B98FB3DB2B90695469FED42885E8F5A81983F35C6B470CCC8F" />
    <Deny ID="ID_DENY_SYSDRV3S_5" FriendlyName="CodeSys SysDrv3S\161a50482380727ffa0dd94e193a023f4445dddd3a05340fe2db07fc3ec5b5f3 Hash Sha1" Hash="80D203BB42A5D58D87C82481238BFF1A01ECAC6D" />
    <Deny ID="ID_DENY_SYSDRV3S_6" FriendlyName="CodeSys SysDrv3S\161a50482380727ffa0dd94e193a023f4445dddd3a05340fe2db07fc3ec5b5f3 Hash Sha256" Hash="7A15788A9942659E061E0A51F806E564B2A49ADB7BCB8F6A3548EDD4528426A0" />
    <Deny ID="ID_DENY_SYSDRV3S_7" FriendlyName="CodeSys SysDrv3S\161a50482380727ffa0dd94e193a023f4445dddd3a05340fe2db07fc3ec5b5f3 Hash Page Sha1" Hash="B1723ED6AD1808E932C3040B5F4744BB9C85DD9F" />
    <Deny ID="ID_DENY_SYSDRV3S_8" FriendlyName="CodeSys SysDrv3S\161a50482380727ffa0dd94e193a023f4445dddd3a05340fe2db07fc3ec5b5f3 Hash Page Sha256" Hash="20D30D12CAF158058ECDED6BE4282838CA1E328F777DE67D62681891B58E0A13" />
    <Deny ID="ID_DENY_SYSDRV3S_9" FriendlyName="CodeSys SysDrv3S\cf4efec43474c5aacf4b0971d44eaf8dd6357e594cdb1390085a5070a0df51d4 Hash Sha1" Hash="43D91E7B7B2E65263E40FC2E29F517552A1D2C41" />
    <Deny ID="ID_DENY_SYSDRV3S_A" FriendlyName="CodeSys SysDrv3S\cf4efec43474c5aacf4b0971d44eaf8dd6357e594cdb1390085a5070a0df51d4 Hash Sha256" Hash="327DD7D2115ED486AD66181E3A0C86AD64F41A6D28943D3E76B1BDE937EAB628" />
    <Deny ID="ID_DENY_SYSDRV3S_B" FriendlyName="CodeSys SysDrv3S\cf4efec43474c5aacf4b0971d44eaf8dd6357e594cdb1390085a5070a0df51d4 Hash Page Sha1" Hash="1A38DD65ED3E011409F6146ECD6C513E4312D409" />
    <Deny ID="ID_DENY_SYSDRV3S_C" FriendlyName="CodeSys SysDrv3S\cf4efec43474c5aacf4b0971d44eaf8dd6357e594cdb1390085a5070a0df51d4 Hash Page Sha256" Hash="65D44B0B174524208204C1BCD08A9628B851FB49E22719FF0BA9C05473CCC273" />
    <Deny ID="ID_DENY_SYSINFO_1" FriendlyName="Noriyuki Miyazaki SysInfo\4fea15aabc4fc63a3e991412caf17283bbd257172ef7e255f40f5e22e0286902 Hash Sha1" Hash="E833F4E364DC5EFBABF1570DA86D1FA3E55804A7" />
    <Deny ID="ID_DENY_SYSINFO_2" FriendlyName="Noriyuki Miyazaki SysInfo\4fea15aabc4fc63a3e991412caf17283bbd257172ef7e255f40f5e22e0286902 Hash Sha256" Hash="0122CDCF450F03B95B04560F77C2BB4643F379FBD903B07EA1300F9B974D32A3" />
    <Deny ID="ID_DENY_SYSINFO_3" FriendlyName="Noriyuki Miyazaki SysInfo\7049f3c939efe76a5556c2a2c04386db51daf61d56b679f4868bb0983c996ebb Hash Sha1" Hash="CA88F321631C1552E3E0BCD1F26AD3435CC9F1AE" />
    <Deny ID="ID_DENY_SYSINFO_4" FriendlyName="Noriyuki Miyazaki SysInfo\7049f3c939efe76a5556c2a2c04386db51daf61d56b679f4868bb0983c996ebb Hash Sha256" Hash="A82D08EF67BDFCCF0A2CF6D507C9FBB6AC42BD74BF2ADE46EC07FE253DEB6573" />
    <Deny ID="ID_DENY_SYSINFO_5" FriendlyName="Noriyuki Miyazaki SysInfo\7049f3c939efe76a5556c2a2c04386db51daf61d56b679f4868bb0983c996ebb Hash Page Sha1" Hash="3131729221F49ADBC0ED9FC3529F0AC915CBEFA9" />
    <Deny ID="ID_DENY_SYSINFO_6" FriendlyName="Noriyuki Miyazaki SysInfo\7049f3c939efe76a5556c2a2c04386db51daf61d56b679f4868bb0983c996ebb Hash Page Sha256" Hash="954CCDEAB26CE6555FCD780AD646620DE11F32F2E8347E12C6C95CF6C14DF6CC" />
    <Deny ID="ID_DENY_SYSINFO_7" FriendlyName="Noriyuki Miyazaki SysInfo\b85e9b69ad23bfb37452fe0b67dfa71e5980a8e4310b021bc6f8c36f893bc625 Hash Sha1" Hash="D6E675670E57B3758C1D9F04F51F0C0C46956805" />
    <Deny ID="ID_DENY_SYSINFO_8" FriendlyName="Noriyuki Miyazaki SysInfo\b85e9b69ad23bfb37452fe0b67dfa71e5980a8e4310b021bc6f8c36f893bc625 Hash Sha256" Hash="6EE124F31A765CDBBB27831B8F3297F844A5F375E408A5953693B2E65F20165B" />
    <Deny ID="ID_DENY_TDEIO_1" FriendlyName="Tdeio.sys\1076504a145810dfe331324007569b95d0310ac1e08951077ac3baf668b2a486 Hash Sha1" Hash="4CAC09246C22324368F367E03550734A281471C5"/>
    <Deny ID="ID_DENY_TDEIO_2" FriendlyName="Tdeio.sys\1076504a145810dfe331324007569b95d0310ac1e08951077ac3baf668b2a486 Hash Sha256" Hash="C8A34012C22A650972B9ECAD988D346C8670BCD51EA2DD3AB7FE4562E117F1B9"/>
    <Deny ID="ID_DENY_TDEIO_3" FriendlyName="Tdeio.sys\1076504a145810dfe331324007569b95d0310ac1e08951077ac3baf668b2a486 Hash Page Sha1" Hash="89ECEE8145F24A563B9A839EEF3408D18A1A8822"/>
    <Deny ID="ID_DENY_TDEIO_4" FriendlyName="Tdeio.sys\1076504a145810dfe331324007569b95d0310ac1e08951077ac3baf668b2a486 Hash Page Sha256" Hash="E7CAB1DFD41C8690382715257ADF36DA6F7B3603420135E24DB161319ABC2FAC"/>
    <Deny ID="ID_DENY_TDEIO_5" FriendlyName="Tdeio.sys\aa282c3b989a0eca78023347b7b1e1feef7e42edf9fd2bef5d55c66000c99911 Hash Sha1" Hash="56A8604B2A5752E6D06F312A0B858BF3B949121B"/>
    <Deny ID="ID_DENY_TDEIO_6" FriendlyName="Tdeio.sys\aa282c3b989a0eca78023347b7b1e1feef7e42edf9fd2bef5d55c66000c99911 Hash Sha256" Hash="EE06212E22AE7E892F09AE75CB39587237F5A115BF3CE4AE7493A8E82C180CAE"/>
    <Deny ID="ID_DENY_TDEIO_7" FriendlyName="Tdeio.sys\aa282c3b989a0eca78023347b7b1e1feef7e42edf9fd2bef5d55c66000c99911 Hash Page Sha1" Hash="6F4018933D98EFEF97CC2EA9EA55018B9497592D"/>
    <Deny ID="ID_DENY_TDEIO_8" FriendlyName="Tdeio.sys\aa282c3b989a0eca78023347b7b1e1feef7e42edf9fd2bef5d55c66000c99911 Hash Page Sha256" Hash="5379AD6B8A4B6669DEFD907B9D1D2030F31D9F00559F32935629765A75F6B601"/>
    <Deny ID="ID_DENY_WFSHBR_1" FriendlyName="HyperTech wfshbr64\89698cad598a56f9e45efffd15d1841e494a2409cc12279150a03842cd6bb7f3 Hash Sha1" Hash="0122F7A57784F2AC460D175687450D8940CACE6E"/>
    <Deny ID="ID_DENY_WFSHBR_2" FriendlyName="HyperTech wfshbr64\89698cad598a56f9e45efffd15d1841e494a2409cc12279150a03842cd6bb7f3 Hash Sha256" Hash="D16A59CD7C52D1D32BB43670CDCA739AADB19BA15996BAC62071845E1BFBDB95"/>
    <Deny ID="ID_DENY_WFSHBR_3" FriendlyName="HyperTech wfshbr64\89698cad598a56f9e45efffd15d1841e494a2409cc12279150a03842cd6bb7f3 Hash Page Sha1" Hash="59621ADDE6C6353397F1D7E5C1F8A887AC9931E6"/>
    <Deny ID="ID_DENY_WFSHBR_4" FriendlyName="HyperTech wfshbr64\89698cad598a56f9e45efffd15d1841e494a2409cc12279150a03842cd6bb7f3 Hash Page Sha256" Hash="C374004CD00D779F028638E03F611C270FCA020AA413BE9BB6852E875B848E42"/>
    <Deny ID="ID_DENY_WINIO_1" FriendlyName="PartnerTech WinIo64A.sys\0c74d09da7baf7c05360346e4c3512d0cd433d59 Hash Sha1" Hash="0C74D09DA7BAF7C05360346E4C3512D0CD433D59" />
    <Deny ID="ID_DENY_WINIO_2" FriendlyName="PartnerTech WinIo64B.sys\f18e669127c041431cde8f2d03b15cfc20696056 Hash Sha1" Hash="F18E669127C041431CDE8F2D03B15CFC20696056" />
    <Deny ID="ID_DENY_WINIO_3" FriendlyName="PartnerTech WinIO32B.sys\f1c8c3926d0370459a1b7f0cf3d17b22ff9d0c7f Hash Sha1" Hash="F1C8C3926D0370459A1B7F0CF3D17B22FF9D0C7F" />
    <Deny ID="ID_DENY_WINIO_4" FriendlyName="PartnerTech WinIO32A.sys\01779ee53f999464465ed690d823d160f73f10e7 Hash Sha1" Hash="01779EE53F999464465ED690D823D160F73F10E7" />
    <Deny ID="ID_DENY_WINIO_5" FriendlyName="PartnerTech WinIo64C.sys\b242b0332b9c9e8e17ec27ef10d75503d20d97b6 Hash Sha1" Hash="B242B0332B9C9E8E17EC27EF10D75503D20D97B6" />
    <Deny ID="ID_DENY_WINIO_6" FriendlyName="PartnerTech WinIO64C.sys\a65fabaf64aa1934314aae23f25cdf215cbaa4b6 Hash Sha1" Hash="A65FABAF64AA1934314AAE23F25CDF215CBAA4B6" />
    <Deny ID="ID_DENY_WINIO_7" FriendlyName="PartnerTech WinIO\3243aab18e273a9b9c4280a57aecef278e10bfff19abb260d7a7820e41739099 Hash Sha1" Hash="40CC2318FFFFD458023C8CD1E285A5AD51ADF538" />
    <Deny ID="ID_DENY_WINIO_8" FriendlyName="PartnerTech WinIO\3243aab18e273a9b9c4280a57aecef278e10bfff19abb260d7a7820e41739099 Hash Sha256" Hash="B3CBB2B364A494F096E68DC48CCA89799ED27E6B97B17633036E363A98FD4421" />
    <Deny ID="ID_DENY_WINIO_9" FriendlyName="PartnerTech WinIO\3243aab18e273a9b9c4280a57aecef278e10bfff19abb260d7a7820e41739099 Hash Page Sha1" Hash="2C68648ABBCCA6420CA2FFB2AAAD16F7EF68BD9D" />
    <Deny ID="ID_DENY_WINIO_10" FriendlyName="PartnerTech WinIO\3243aab18e273a9b9c4280a57aecef278e10bfff19abb260d7a7820e41739099 Hash Page Sha256" Hash="6100C1247235D8DBC92ACA2E70F714E57B7793FD8B674394FA35580403E92ED5" />
    <Deny ID="ID_DENY_WINIO_11" FriendlyName="PartnerTech WinIO\3c9b6da610e409f92f4f95f6f3f92a6e60e24903298a0e9af508f28e8c8962b6 Hash Sha1" Hash="8FB149FC476CF5BF18DC575334EDAD7CAF210996" />
    <Deny ID="ID_DENY_WINIO_12" FriendlyName="PartnerTech WinIO\3c9b6da610e409f92f4f95f6f3f92a6e60e24903298a0e9af508f28e8c8962b6 Hash Sha256" Hash="40A8FD2D1DE93611AC88F29352476FBE0C2607B1D973DAB8923FF0811F92F659" />
    <Deny ID="ID_DENY_WINIO_13" FriendlyName="PartnerTech WinIO\3c9b6da610e409f92f4f95f6f3f92a6e60e24903298a0e9af508f28e8c8962b6 Hash Page Sha1" Hash="499B2E14CF3EBDC070364DDA7E911E697F331617" />
    <Deny ID="ID_DENY_WINIO_14" FriendlyName="PartnerTech WinIO\3c9b6da610e409f92f4f95f6f3f92a6e60e24903298a0e9af508f28e8c8962b6 Hash Page Sha256" Hash="570ED09D3E177FC64B3DBCC1F30880390CBE9D81EBC001AF80289DFA0F310CCF" />
    <Deny ID="ID_DENY_WINIO_15" FriendlyName="PartnerTech WinIO\51e280cd9d1d84d43fab4a7be894804f24a1ca4d39f1df16fd8c60ea0a43b786 Hash Sha1" Hash="CC993C45125ED6917226511978DC6675B9E8BBD6" />
    <Deny ID="ID_DENY_WINIO_16" FriendlyName="PartnerTech WinIO\51e280cd9d1d84d43fab4a7be894804f24a1ca4d39f1df16fd8c60ea0a43b786 Hash Sha256" Hash="2BABEC61087FA6A5A56D2D32C4C5B5BCE57B2337989E7B29E6E68651375D54A0" />
    <Deny ID="ID_DENY_WINIO_17" FriendlyName="PartnerTech WinIO\51e280cd9d1d84d43fab4a7be894804f24a1ca4d39f1df16fd8c60ea0a43b786 Hash Page Sha1" Hash="46DB3BB27A5FF81ADABCD894CA1D18749854C7E7" />
    <Deny ID="ID_DENY_WINIO_18" FriendlyName="PartnerTech WinIO\51e280cd9d1d84d43fab4a7be894804f24a1ca4d39f1df16fd8c60ea0a43b786 Hash Page Sha256" Hash="E25A654EDB45939F8E5DA3478A28207CDB05B2680519384A3386353A9553AE28" />
    <Deny ID="ID_DENY_WINIO_19" FriendlyName="PartnerTech WinIO\752565bab29cd2c63b4ff59a8c637bed02c2689781067ddf7cfc5c5221eb1d68 Hash Sha1" Hash="B02CE0386B5753C74DD3519967C5B67F07C024FF" />
    <Deny ID="ID_DENY_WINIO_20" FriendlyName="PartnerTech WinIO\752565bab29cd2c63b4ff59a8c637bed02c2689781067ddf7cfc5c5221eb1d68 Hash Sha256" Hash="67B31C23313DB5920EEC365049927ABE826C3C529B29114BF8D05F71F4CBCC7E" />
    <Deny ID="ID_DENY_WINIO_21" FriendlyName="PartnerTech WinIO\752565bab29cd2c63b4ff59a8c637bed02c2689781067ddf7cfc5c5221eb1d68 Hash Page Sha1" Hash="7097A32B166DF975810F5115D940BCDB20CF4F08" />
    <Deny ID="ID_DENY_WINIO_22" FriendlyName="PartnerTech WinIO\752565bab29cd2c63b4ff59a8c637bed02c2689781067ddf7cfc5c5221eb1d68 Hash Page Sha256" Hash="2B2C30493A4ADBF07FF05DC32BA7503AD718836B4D08B93DF85416C8F8064159" />
    <Deny ID="ID_DENY_WINIO_23" FriendlyName="PartnerTech WinIO\7cfa5e10dff8a99a5d544b011f676bc383991274c693e21e3af40cf6982adb8c Hash Sha1" Hash="80CA9C9CCE4B5E6AFB92A56B5BFD954ECA0FF690" />
    <Deny ID="ID_DENY_WINIO_24" FriendlyName="PartnerTech WinIO\7cfa5e10dff8a99a5d544b011f676bc383991274c693e21e3af40cf6982adb8c Hash Sha256" Hash="9199979B9F3EA2108299D028373A6EFFCC41C81A46EECB430CC6653211D2913D" />
    <Deny ID="ID_DENY_WINIO_25" FriendlyName="PartnerTech WinIO\7cfa5e10dff8a99a5d544b011f676bc383991274c693e21e3af40cf6982adb8c Hash Page Sha1" Hash="2F0B56687B6ABB6A88928D0E1D4515B29C4B0D26" />
    <Deny ID="ID_DENY_WINIO_26" FriendlyName="PartnerTech WinIO\7cfa5e10dff8a99a5d544b011f676bc383991274c693e21e3af40cf6982adb8c Hash Page Sha256" Hash="D1E90D9FEC3A58C6BAA9841721372377BF36994D77A9796BD29B32E97D560F98" />
    <Deny ID="ID_DENY_WINIO_27" FriendlyName="PartnerTech WinIO\c9b49b52b493b53cd49c12c3fa9553e57c5394555b64e32d1208f5b96a5b8c6e Hash Sha1" Hash="C21043466942961203E751C9CEBCD159E661FA1A" />
    <Deny ID="ID_DENY_WINIO_28" FriendlyName="PartnerTech WinIO\c9b49b52b493b53cd49c12c3fa9553e57c5394555b64e32d1208f5b96a5b8c6e Hash Sha256" Hash="961012D06EEAABD9EFF9B36173E566BF148A5C8F743F3329C70D8918EBA26093" />
    <Deny ID="ID_DENY_WINIO_29" FriendlyName="PartnerTech WinIO\c9b49b52b493b53cd49c12c3fa9553e57c5394555b64e32d1208f5b96a5b8c6e Hash Page Sha1" Hash="3F0F7100E95E977E4AE56C36169980D7AB3399B9" />
    <Deny ID="ID_DENY_WINIO_30" FriendlyName="PartnerTech WinIO\c9b49b52b493b53cd49c12c3fa9553e57c5394555b64e32d1208f5b96a5b8c6e Hash Page Sha256" Hash="76EA02A9E0406A3786E39BC11715A7026AB0F18D1C92152780040E94E0F1FED6" />
    <Deny ID="ID_DENY_WINIO_31" FriendlyName="PartnerTech WinIO\dc2b92f59fd8d059a58cc0761212f788d7041f708f4bd717d1738de909b4f781 Hash Sha1" Hash="8E93E37A72A13DAC1C4C0BC1DA6BDFB8BA8D9CB3" />
    <Deny ID="ID_DENY_WINIO_32" FriendlyName="PartnerTech WinIO\dc2b92f59fd8d059a58cc0761212f788d7041f708f4bd717d1738de909b4f781 Hash Sha256" Hash="5B6C10E103D42B17E5DDD6BEEC295BBF51CE56547134CE8D675A008A8243F615" />
    <Deny ID="ID_DENY_WINIO_33" FriendlyName="PartnerTech WinIO\dc2b92f59fd8d059a58cc0761212f788d7041f708f4bd717d1738de909b4f781 Hash Page Sha1" Hash="746414A878978FA039A6521F392167913CEA7C8D" />
    <Deny ID="ID_DENY_WINIO_34" FriendlyName="PartnerTech WinIO\dc2b92f59fd8d059a58cc0761212f788d7041f708f4bd717d1738de909b4f781 Hash Page Sha256" Hash="45DFA3B42C2789A741C5F29862A8CFC5998D889F96C5783C1A27AC03DE1A407A" />
    <Deny ID="ID_DENY_WINIO_35" FriendlyName="WinIO\0bfcf39a3e63bb6ef8afec67965103df1b9803bca31d221a7fd4233972be9e05 Hash Sha1" Hash="664F7E5EF393507A259362E6D7337407E44A3EDB" />
    <Deny ID="ID_DENY_WINIO_36" FriendlyName="WinIO\0bfcf39a3e63bb6ef8afec67965103df1b9803bca31d221a7fd4233972be9e05 Hash Sha256" Hash="2DCED5FB3F68F8E33D2454798FCDC5AFCB00EBD1BBB8968CAF274B8D9A3A1DFE" />
    <Deny ID="ID_DENY_WINIO_37" FriendlyName="WinIO\0bfcf39a3e63bb6ef8afec67965103df1b9803bca31d221a7fd4233972be9e05 Hash Page Sha1" Hash="CF3DF8311C7F241C56F4640D2C6A4A9BB20CD674" />
    <Deny ID="ID_DENY_WINIO_38" FriendlyName="WinIO\0bfcf39a3e63bb6ef8afec67965103df1b9803bca31d221a7fd4233972be9e05 Hash Page Sha256" Hash="CA87FD00ACDAA7FE36496C1EBD81F6F608ADBB60F41F9B02C6815580F4CE42AC" />
    <Deny ID="ID_DENY_WINIO_39" FriendlyName="WinIO\13a38c92606de7bc61960606deb59e1db125fb4efbb8b29ba732e5d3c2dc169c Hash Sha1" Hash="1769C1E75D4131047771350AAF84AEA0A631A53C" />
    <Deny ID="ID_DENY_WINIO_40" FriendlyName="WinIO\13a38c92606de7bc61960606deb59e1db125fb4efbb8b29ba732e5d3c2dc169c Hash Sha256" Hash="E9E8061F8E2C68C6F3E4A4D284CE9E8195140E531981C54F68ED7445D259B4DA" />
    <Deny ID="ID_DENY_WINIO_41" FriendlyName="WinIO\13a38c92606de7bc61960606deb59e1db125fb4efbb8b29ba732e5d3c2dc169c Hash Page Sha1" Hash="50B55723B63BFECD05DBEB4C19C36AC8F9BEBD25" />
    <Deny ID="ID_DENY_WINIO_42" FriendlyName="WinIO\13a38c92606de7bc61960606deb59e1db125fb4efbb8b29ba732e5d3c2dc169c Hash Page Sha256" Hash="14F25296EA3C6AE183BDAE04A0029BE2BB4D679089680FB2695904708A778CB2" />
    <Deny ID="ID_DENY_WINIO_43" FriendlyName="WinIO\1f868677f2e6afd63b974908f793307a91329a6a413cfd726e85185507401afb Hash Sha1" Hash="67A8DF0F5962D4C93D4463BF79185F23502B8CEA" />
    <Deny ID="ID_DENY_WINIO_44" FriendlyName="WinIO\1f868677f2e6afd63b974908f793307a91329a6a413cfd726e85185507401afb Hash Sha256" Hash="1E93ACD7C0ACCE3C39AC6303A8D914B5F8556C7C1E10EFDBBA18CCF75A41F36E" />
    <Deny ID="ID_DENY_WINIO_45" FriendlyName="WinIO\2e8c28298890f1684be3827bcdb0746a124a0ffe58d1c9a4c361c2e8b13cf735 Hash Sha1" Hash="7BCF1C28DEED9ECAD5DFBEC3A111297673C33AA7" />
    <Deny ID="ID_DENY_WINIO_46" FriendlyName="WinIO\2e8c28298890f1684be3827bcdb0746a124a0ffe58d1c9a4c361c2e8b13cf735 Hash Sha256" Hash="6A4E037EE84F83D3A4E84C35F09AE26D42F347FEC8ECF525553962EC24CEB2BE" />
    <Deny ID="ID_DENY_WINIO_47" FriendlyName="WinIO\2e8c28298890f1684be3827bcdb0746a124a0ffe58d1c9a4c361c2e8b13cf735 Hash Page Sha1" Hash="B23D319DBE769BF8DB0D5217A3523553072830E3" />
    <Deny ID="ID_DENY_WINIO_48" FriendlyName="WinIO\2e8c28298890f1684be3827bcdb0746a124a0ffe58d1c9a4c361c2e8b13cf735 Hash Page Sha256" Hash="F0158C28986F4A806F127DB70720462D8EF07F8EB7A7B8DE698896993365B517" />
    <Deny ID="ID_DENY_WINIO_49" FriendlyName="WinIO\385660a65e69b3bf9ac5c2ae4cadbb1e07f366e1807979bf7a915e40e9480f8b Hash Sha1" Hash="FDF79660BAE9C9DD54509FEC6C9F0E0A9BB2C1D5" />
    <Deny ID="ID_DENY_WINIO_50" FriendlyName="WinIO\385660a65e69b3bf9ac5c2ae4cadbb1e07f366e1807979bf7a915e40e9480f8b Hash Sha256" Hash="FF40D6714AC9C59A6D0E3A155586D6C51A3457F77BA1E2858D9804A0318178E7" />
    <Deny ID="ID_DENY_WINIO_51" FriendlyName="WinIO\385660a65e69b3bf9ac5c2ae4cadbb1e07f366e1807979bf7a915e40e9480f8b Hash Page Sha1" Hash="65EC6A3DB695FCD94DF5C8B41EEF67DE02031C96" />
    <Deny ID="ID_DENY_WINIO_52" FriendlyName="WinIO\385660a65e69b3bf9ac5c2ae4cadbb1e07f366e1807979bf7a915e40e9480f8b Hash Page Sha256" Hash="F74C91893BE76BE735CDBCA522405D0AE055326AE7D7082907FE1447FA196F2C" />
    <Deny ID="ID_DENY_WINIO_53" FriendlyName="WinIO\42322b59f75f3ee3f66d080433c01fe024ca9ce5cbd3acac8a98394ac2a0d659 Hash Sha1" Hash="8E93E37A72A13DAC1C4C0BC1DA6BDFB8BA8D9CB3" />
    <Deny ID="ID_DENY_WINIO_54" FriendlyName="WinIO\42322b59f75f3ee3f66d080433c01fe024ca9ce5cbd3acac8a98394ac2a0d659 Hash Sha256" Hash="5B6C10E103D42B17E5DDD6BEEC295BBF51CE56547134CE8D675A008A8243F615" />
    <Deny ID="ID_DENY_WINIO_55" FriendlyName="WinIO\42322b59f75f3ee3f66d080433c01fe024ca9ce5cbd3acac8a98394ac2a0d659 Hash Page Sha1" Hash="746414A878978FA039A6521F392167913CEA7C8D" />
    <Deny ID="ID_DENY_WINIO_56" FriendlyName="WinIO\42322b59f75f3ee3f66d080433c01fe024ca9ce5cbd3acac8a98394ac2a0d659 Hash Page Sha256" Hash="45DFA3B42C2789A741C5F29862A8CFC5998D889F96C5783C1A27AC03DE1A407A" />
    <Deny ID="ID_DENY_WINIO_57" FriendlyName="WinIO\8d5466ccce64de5beccc373e0c878ca3e624ed78d359f76aae32de4df5afce18 Hash Sha1" Hash="DB70C4C4BE791955F33977D85B30D9624E9270E3" />
    <Deny ID="ID_DENY_WINIO_58" FriendlyName="WinIO\8d5466ccce64de5beccc373e0c878ca3e624ed78d359f76aae32de4df5afce18 Hash Sha256" Hash="9F44E5C897EE06D92E7BEDC713DD369D85E084959C69CEEC25663A599FF5D5F8" />
    <Deny ID="ID_DENY_WINIO_59" FriendlyName="WinIO\8d5466ccce64de5beccc373e0c878ca3e624ed78d359f76aae32de4df5afce18 Hash Page Sha1" Hash="AAB02F7A7931442D2F46330E069ABF9B59DB3F3D" />
    <Deny ID="ID_DENY_WINIO_60" FriendlyName="WinIO\8d5466ccce64de5beccc373e0c878ca3e624ed78d359f76aae32de4df5afce18 Hash Page Sha256" Hash="9185576B594D33290237E72841F56D36A4F0D6668EC9094FB45C1F3957DF6A0C" />
    <Deny ID="ID_DENY_WINIO_61" FriendlyName="WinIO\9ef6eb93e504351d710b88fd5ec68ef2e0b757ea364341e715b0076dc559b54a Hash Sha1" Hash="789C851AF232506F62BE108799065219427861C2" />
    <Deny ID="ID_DENY_WINIO_62" FriendlyName="WinIO\9ef6eb93e504351d710b88fd5ec68ef2e0b757ea364341e715b0076dc559b54a Hash Sha256" Hash="D6399E43E24E4D2348008645F6E2176AEB2F0244A5E17028C152D87617E7BD0D" />
    <Deny ID="ID_DENY_WINIO_63" FriendlyName="WinIO\9ef6eb93e504351d710b88fd5ec68ef2e0b757ea364341e715b0076dc559b54a Hash Page Sha1" Hash="5E699DF6F458A11CD8C2D59D083D2CA38A25F876" />
    <Deny ID="ID_DENY_WINIO_64" FriendlyName="WinIO\9ef6eb93e504351d710b88fd5ec68ef2e0b757ea364341e715b0076dc559b54a Hash Page Sha256" Hash="E6E5B6C064338FBB222221EF3A8DEBE60E4ED0AAECCB5B03FECD0DC595AB3FC9" />
    <Deny ID="ID_DENY_WINIO_65" FriendlyName="WinIO\9fc29480407e5179aa8ea41682409b4ea33f1a42026277613d6484e5419de374 Hash Sha1" Hash="651B953CB03928E41424AD59F21D4978D6F4952E" />
    <Deny ID="ID_DENY_WINIO_66" FriendlyName="WinIO\9fc29480407e5179aa8ea41682409b4ea33f1a42026277613d6484e5419de374 Hash Sha256" Hash="EBBAA44277A3EC6E20AD3F6AEF5399FDC398306EB4C13AA96E45C9A281820A12" />
    <Deny ID="ID_DENY_WINIO_67" FriendlyName="WinIO\9fc29480407e5179aa8ea41682409b4ea33f1a42026277613d6484e5419de374 Hash Page Sha1" Hash="3727D824713E733558A20DE9876AABF1059D3158" />
    <Deny ID="ID_DENY_WINIO_68" FriendlyName="WinIO\9fc29480407e5179aa8ea41682409b4ea33f1a42026277613d6484e5419de374 Hash Page Sha256" Hash="88C83F618C8F4069DED87C409A8446C5A30E22A303E64AAFF1C5BE6302ADEDB4" />
    <Deny ID="ID_DENY_WINIO_69" FriendlyName="WinIO\be929ae99015fafa0ab55cb475035e8c1359db1b61e00507defc1919a3538385 Hash Sha1" Hash="8522BD30B4028C43B747C96665F60AB920F341EA" />
    <Deny ID="ID_DENY_WINIO_70" FriendlyName="WinIO\be929ae99015fafa0ab55cb475035e8c1359db1b61e00507defc1919a3538385 Hash Sha256" Hash="48EC0783D0A2AAF4956102479BA4DDFE9F760066D00E1C5B7F022A084951DC73" />
    <Deny ID="ID_DENY_WINIO_71" FriendlyName="WinIO\be929ae99015fafa0ab55cb475035e8c1359db1b61e00507defc1919a3538385 Hash Page Sha1" Hash="9808DE8670677522E87FFEF1593D220E3619C7B9" />
    <Deny ID="ID_DENY_WINIO_72" FriendlyName="WinIO\be929ae99015fafa0ab55cb475035e8c1359db1b61e00507defc1919a3538385 Hash Page Sha256" Hash="BC54AF722F57C3BD11EDAEDBF5979AA8D8A388A2D94E80E9E26311B61A11529A" />
    <Deny ID="ID_DENY_WINIO_73" FriendlyName="WinIO\d6518cb6dc0cfdfefb9e2210e3de18867748a77153fa11bc7263cdbc58919815 Hash Sha1" Hash="660DC4007F3C667BA97736C3C9A5E038CB473EE0" />
    <Deny ID="ID_DENY_WINIO_74" FriendlyName="WinIO\d6518cb6dc0cfdfefb9e2210e3de18867748a77153fa11bc7263cdbc58919815 Hash Sha256" Hash="669FF9649C66B4C61BD97EC4A83D6EBC8DA7736C039B2741D4E2D8310039977A" />
    <Deny ID="ID_DENY_WINIO_75" FriendlyName="WinIO\d6518cb6dc0cfdfefb9e2210e3de18867748a77153fa11bc7263cdbc58919815 Hash Page Sha1" Hash="118777DD5E34BDCE01B2A0C6720A4EB9DC4FEFFF" />
    <Deny ID="ID_DENY_WINIO_76" FriendlyName="WinIO\d6518cb6dc0cfdfefb9e2210e3de18867748a77153fa11bc7263cdbc58919815 Hash Page Sha256" Hash="E686804D2FF9ACEAD443A0B66DACD1780E4041A0ACAEDB3A78B91F52DCFF4824" />
    <Deny ID="ID_DENY_WINIO_77" FriendlyName="WinIO\db4a5b87db97167c70e98014a12ac324866cf643cee65d3b3cda0b33add34d2f Hash Sha1" Hash="4AF05BCCDD9A1FFCF3DAF4DFE4A00FE6F1F257BE" />
    <Deny ID="ID_DENY_WINIO_78" FriendlyName="WinIO\db4a5b87db97167c70e98014a12ac324866cf643cee65d3b3cda0b33add34d2f Hash Sha256" Hash="059EFDB03556258C34B6CB26FF4679DC7CD4CB797190FDDDF373B3F701EE55B7" />
    <Deny ID="ID_DENY_WINIO_79" FriendlyName="WinIO\db4a5b87db97167c70e98014a12ac324866cf643cee65d3b3cda0b33add34d2f Hash Page Sha1" Hash="468B16FD87C346A1F5B11BDE450673F1D8866619" />
    <Deny ID="ID_DENY_WINIO_80" FriendlyName="WinIO\db4a5b87db97167c70e98014a12ac324866cf643cee65d3b3cda0b33add34d2f Hash Page Sha256" Hash="186D287B669D813A727CBAAACDAA291FA1F16B1599122BA869622AE0C920F6B9" />
    <Deny ID="ID_DENY_WINIO_81" FriendlyName="WinIO\f4acfebd83a351029dd812a0e40b44f5362f31ae80b6ae0b2fa2241687d34912 Hash Sha1" Hash="7B3DB7D11456209A266F077F8E2D2B90E4F9118D" />
    <Deny ID="ID_DENY_WINIO_82" FriendlyName="WinIO\f4acfebd83a351029dd812a0e40b44f5362f31ae80b6ae0b2fa2241687d34912 Hash Sha256" Hash="2EBB1FE5DCEF9EC8629D56D30DDBA27D112C2CBFCED936D235FCDF078846DDC6" />
    <Deny ID="ID_DENY_WINIO_83" FriendlyName="WinIO\f4acfebd83a351029dd812a0e40b44f5362f31ae80b6ae0b2fa2241687d34912 Hash Page Sha1" Hash="929749666A53B35CC75A21B19C65E54671CC751E" />
    <Deny ID="ID_DENY_WINIO_84" FriendlyName="WinIO\f4acfebd83a351029dd812a0e40b44f5362f31ae80b6ae0b2fa2241687d34912 Hash Page Sha256" Hash="C39AB8DC5E4DA02FA2309B83FF4FDF63AEF20F33018DFDEFB7B0B12B92CFE86E" />
    <Deny ID="ID_DENY_WINRING0_SHA1" FriendlyName="WinRing0.sys Hash Sha1" Hash="12EB825418A932B1E4C6697DC7647E89AE52CF3F" />
    <Deny ID="ID_DENY_WINRING0_SHA256" FriendlyName="WinRing0.sys Hash Sha256" Hash="4582ADB2E67EEBAFF755AE740C1F24BC3AF78E0F28E8E8DECB99F86BF155AB23" />
    <Deny ID="ID_DENY_WINRING0_SHA1_PAGE" FriendlyName="WinRing0.sys Hash Page Sha1" Hash="497AFEB0D5B97D4B863704A2F77FFEF31220402D" />
    <Deny ID="ID_DENY_WINRING0_SHA256_PAGE" FriendlyName="WinRing0.sys Hash Page Sha256" Hash="8D8A5696BDF11D2427016F91F9726AFF4F0C80FADBC3E6033662FA11C8B282BD" />
    <!-- Deny and FileAttrib rules specifying FileName should always specify MinimumFileVersion and MaximumFileVersion. SiPolicy checks matches minVer <= ver && maxVer >= ver-->
    <Deny ID="ID_DENY_PROCESSHACKER" FriendlyName="kprocesshacker.sys FileRule" FileName="kprocesshacker.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="3.1.65535.65535" />
    <Deny ID="ID_DENY_AMP" FriendlyName="System Mechanic CVE-2018-5701" FileName="amp.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="5.4.11.1" />
    <Deny ID="ID_DENY_ASMMAP" FriendlyName="Asus Memory Mapping Driver" FileName="asmmap.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <Deny ID="ID_DENY_ASMMAP_64" FriendlyName="Asus Memory Mapping Driver" FileName="asmmap64.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <Deny ID="ID_DENY_DBK_32" FriendlyName="Cheat Engine Driver" FileName="dbk32.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <Deny ID="ID_DENY_DBK_64" FriendlyName="Cheat Engine Driver" FileName="dbk64.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <Deny ID="ID_DENY_GDRV" FriendlyName="gdrv.sys" FileName="gdrv.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535"/>
    <Deny ID="ID_DENY_KLMD" FriendlyName="Kaspersky klmd.sys FileRule" FileName="klmd.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="2.13.0.10"/>
    <Deny ID="ID_DENY_PCHUNTER_1" FriendlyName="PCHunter Driver" FileName="PCHunter.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <Deny ID="ID_DENY_PCHUNTER_2" FriendlyName="PCHunter Driver" FileName="安全专用" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <Deny ID="ID_DENY_PHYMEMX_64" FriendlyName="Phymemx64 Memory Mapping Driver" FileName="phymemx64.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_ALSYSIO" FriendlyName="ALSysIO\01af9b2e49907308312be623a125a4cd71da9e626a54dfa746336e5d69c0a70a FileAttribute" FileName="ALSysIO.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="2.0.10.65535" />
    <FileAttrib ID="ID_FILEATTRIB_AMD_RYZEN" FriendlyName="amdryzenmaster.sys" FileName="AMDRyzenMasterDriver.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="1.5.0.0" />
    <FileAttrib ID="ID_FILEATTRIB_AMDPP" FriendlyName="AMDPowerProfiler.sys FileAttribute" FileName="AMDPowerProfiler.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="6.1.0.0" />
    <FileAttrib ID="ID_FILEATTRIB_ASHITIO" FriendlyName="Asus AsHitIo_Drv FileAttribute" FileName="AsHitIo_Drv.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="27.0.0.0"/>
    <FileAttrib ID="ID_FILEATTRIB_ASR_AUTOCHECK_1" FriendlyName="ASRAutoCheck\2aa1b08f47fbb1e2bd2e4a492f5d616968e703e1359a921f62b38b8e4662f0c4 FileAttribute" FileName="AsrAutoChkUpdDrv.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_ASR_AUTOCHECK_2" FriendlyName="ASRAutoCheck\4ae42c1f11a98dee07a0d7199f611699511f1fb95120fabc4c3c349c485467fe FileAttribute" FileName="AsrAutoChkUpdDrv_1_0_32.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_ASWARPOT" FriendlyName="Avast aswArpot FileAttribute" FileName="aswArPot.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="21.4.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_ASWSP" FriendlyName="Avast aswSP.sys\1dccd1e13da17bd541a66b48d62e914df390818c15f5f599c636d42c05996ace FileAttribute" FileName="aswSP.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="20.8.0.0"/>
    <FileAttrib ID="ID_FILEATTRIB_ASWSNX" FriendlyName="Aswsnx FileAttribute" FileName="aswSnx.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="17.1.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_ATILLK" FriendlyName="atillk64 FileAttribute" FileName="atillk64.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_ATLACCESS" FriendlyName="atlAccess\0b57569aaa0f4789d9642dd2189b0a82466b80ad32ff35f88127210ed105fe57 FileAttribute" FileName="atlAccess.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535"/>
    <FileAttrib ID="ID_FILEATTRIB_ATSZIO" FriendlyName="ATSZIO.sys FileAttribute" FileName="ATSZIO.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_AVALUEIO" FriendlyName="Avalue Avalueio.sys\a5a4a3c3d3d5a79f3ed703fc56d45011c21f9913001fcbcc43a3f7572cff44ec FileAttribute" FileName="AVALUEIO.SYS" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535"/>
    <FileAttrib ID="ID_FILEATTRIB_AVGELAM" FriendlyName="Avast aswElam/avgElam Overpermissive ELAM FileAttribute" FileName="aswElam.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="21.6.400.65535" />
    <FileAttrib ID="ID_FILEATTRIB_BS_DEF" FriendlyName="Bs_Def64 FileAttribute" FileName="Bs_Def64.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_BS_DEF_64" FriendlyName="Bs_Def FileAttribute" FileName="Bs_Def.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_BS_HWMIO64" FriendlyName="" FileName="BS_HWMIO64_W10.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="10.0.1806.2200" />
    <FileAttrib ID="ID_FILEATTRIB_BS_I2CIO" FriendlyName="" FileName="BS_I2cIo.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="1.1.0.0" />
    <FileAttrib ID="ID_FILEATTRIB_BS_MEM" FriendlyName="BSMEM64_W10 FileAttribute" FileName="BSMEM64_W10.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="10.0.1806.2201" />
    <FileAttrib ID="ID_FILEATTRIB_BS_RCIO" FriendlyName="BS_RCIO\d205286bffdf09bc033c09e95c519c1c267b40c2ee8bab703c6a2d86741ccd3e FileAttribute" FileName="BS_RCIO64.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_BS_RCIO_W10" FriendlyName="BS_RCIO\7c6f16af074c3f1c74fc69734f1c8b8a03b0594ac2085d5a0c582fc8cc378858 FileAttribute" FileName="BS_RCIO64_W10.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_BSMI" FriendlyName="" FileName="BSMI.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="1.0.0.3" />
    <FileAttrib ID="ID_FILEATTRIB_CGWIN" FriendlyName="Sangoma cg6kwin2k.sys\223f61c3f443c5047d1aeb905b0551005a426f084b7a50384905e7e4ecb761a1 FileAttribute" FileName="cg6kwin2k.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535"/>
    <FileAttrib ID="ID_FILEATTRIB_COMPUTERZ" FriendlyName="Chengdu Qiying ComputerZ.sys\07d0090c76155318e78a676e2f8af1500c20aaa1e84f047c674d5f990f5a09c8 FileAttribute" FileName="ComputerZ.Sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535"/>
    <FileAttrib ID="ID_FILEATTRIB_CORSAIRLLACCESS" FriendlyName="CorsairLLAccess\000547560fea0dd4b477eb28bf781ea67bf83c748945ce8923f90fdd14eb7a4b FileAttribute" FileName="Corsair LL Access" MinimumFileVersion="0.0.0.0" MaximumFileVersion="1.0.23.65535" />
    <FileAttrib ID="ID_FILEATTRIB_CTIIO" FriendlyName="MicSys CtiIo\2121a2bb8ebbf2e6e82c782b6f3c6b7904f686aa495def25cf1cf52a42e16109 FileAttribute" FileName="CtiIo64.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="1.1.23.0405" />
    <FileAttrib ID="ID_FILEATTRIB_CP2X72C_1" FriendlyName="Interace CP2X72C.sys\05c15a75d183301382a082f6d76bf3ab4c520bf158abca4433d9881134461686 FileAttribute" FileName="CP2X72C.SYS" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535"/>
    <FileAttrib ID="ID_FILEATTRIB_CP2X72C_2" FriendlyName="Interace CP2X72C.sys\11832c345e9898c4f74d3bf8f126cf84b4b1a66ad36135e15d103dbf2ac17359 FileAttribute" FileName="CP2X72C" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535"/>
    <FileAttrib ID="ID_FILEATTRIB_CPUZ_DRIVER" FriendlyName="" FileName="cpuz.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="1.0.4.3" />
    <FileAttrib ID="ID_FILEATTRIB_DRIVER7" FriendlyName="Asus driver7.sys\1beb15c90dcf7a5234ed077833a0a3e900969b60be1d04fcebce0a9f8994bdbb FileAttribute" FileName="Driver7" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535"/>
    <FileAttrib ID="ID_FILEATTRIB_ECSIODRV" FriendlyName="EliteGroup ECSioDriver\270547552060c6f4f5b2ebd57a636d5e71d5f8a9d4305c2b0fe5db0aa2f389cc FileAttribute" FileName="ECSIoDriver.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535"/>
    <FileAttrib ID="ID_FILEATTRIB_EIO64" FriendlyName="ASUS EIO64.sys\1fac3fab8ea2137a7e81a26de121187bf72e7d16ffa3e9aec3886e2376d3c718 FileAttribute" FileName="EIO.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535"/>
    <FileAttrib ID="ID_FILEATTRIB_EELAM" FriendlyName="ESET eelam Overpermissive ELAM FileAttribute" FileName="eelam.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="10.0.16.0" />
    <FileAttrib ID="ID_FILEATTRIB_ELBY_DRIVER" FriendlyName="" FileName="ElbyCDIO.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="6.0.3.2" />
    <FileAttrib ID="ID_FILEATTRIB_ETDSUPPORT" FriendlyName="HP EtdSupport\0d383e469d0e27ebb713770f01f7f1a57068a7d30478221e6f2276125048d1c9 FileAttribute" FileName="etdsupp.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="20.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_FAIRPLAY" FriendlyName="Deny FairplayKD.sys MTA San Andreas Versions 367.*" ProductName="MTA San Andreas" MinimumFileVersion="367.0.0.0" MaximumFileVersion="367.65535.65535.65535"/>
    <FileAttrib ID="ID_FILEATTRIB_FPCIE" FriendlyName="Feature Integration FPCIE2COM.sys\17942865680bd3d6e6633c90cc4bd692ae0951a8589dbe103c1e293b3067344d FileAttribute" FileName="FPCIE2COM.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535"/>
    <FileAttrib ID="ID_FILEATTRIB_GMER" FriendlyName="GMEREK gmer64 FileAttribute" FileName="gmer64.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_HAXM" FriendlyName="haXM.sys FileAttribute" FileName="HaXM.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="1.0.0.0" />
    <FileAttrib ID="ID_FILEATTRIB_HPPORTIOX64" FriendlyName="HpPortIox64.sys" FileName="HpPortIox64.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="1.2.0.9" />
    <FileAttrib ID="ID_FILEATTRIB_HW" FriendlyName="hw_sys\4880f40f2e557cff38100620b9aa1a3a753cb693af16cd3d95841583edcb57a8 FileAttribute" FileName="HW.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="4.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_HWDETECTNG" FriendlyName="Hwdetectng\2f8b68de1e541093f2d4525a0d02f36d361cd69ee8b1db18e6dd064af3856f4f FileAttribute" FileName="hwdetectng.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535"/>
    <FileAttrib ID="ID_FILEATTRIB_HWINFO_1" FriendlyName="REALiX_HWiNFO32 FileAttribute" FileName="HWiNFO32.SYS" MinimumFileVersion="0.0.0.0" MaximumFileVersion="8.98.0.0" />
    <FileAttrib ID="ID_FILEATTRIB_HWINFO_2" FriendlyName="REALiX_HWiNFO64A FileAttribute" FileName="HWiNFO64A.SYS" MinimumFileVersion="0.0.0.0" MaximumFileVersion="8.98.0.0" />
    <FileAttrib ID="ID_FILEATTRIB_HWINFO_3" FriendlyName="REALiX_HWiNFO64I FileAttribute" FileName="HWiNFO64I.SYS" MinimumFileVersion="0.0.0.0" MaximumFileVersion="8.98.0.0" />
    <FileAttrib ID="ID_FILEATTRIB_HWRWDRV" FriendlyName="HwRwDrv FileAttribute" FileName="HwRwDrv.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_IOBITUNLOCKER" FriendlyName="IObitUnlocker FileAttribute" FileName="IObitUnlocker.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="1.3.0.0" />
    <FileAttrib ID="ID_FILEATTRIB_IOMEM" FriendlyName="DT Research iomem\2b507e0ad4515d9d47fb7f0bfa1f1eb11de25db4fca49fc1417ea991dc33b6bf FileAttribute" FileName="iomem.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535"/>
    <FileAttrib ID="ID_FILEATTRIB_IQVW64" FriendlyName="IQVW64.sys FileAttribute" FileName="iQVW64.SYS" MinimumFileVersion="0.0.0.0" MaximumFileVersion="1.4.0.21" />
    <FileAttrib ID="ID_FILEATTRIB_KEVP64" FriendlyName="kevp64.sys FileAttribute" FileName="kEvP64.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_LGCORETEMP" FriendlyName="LogiTech LgCoreTemp\93b266f38c3c3eaab475d81597abbd7cc07943035068bb6fd670dbbe15de0131 FileAttribute" FileName="LgCoreTemp.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_LHA" FriendlyName="LHA.sys FileAttribute" FileName="LHA.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_LIBNICM_DRIVER" FriendlyName="" FileName="libnicm.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="3.1.11.0" />
    <FileAttrib ID="ID_FILEATTRIB_LV_DIAG" FriendlyName="LenovoDiagnosticsDriver FileAttribute" FileName="LenovoDiagnosticsDriver.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="2.0.0.0" />
    <FileAttrib ID="ID_FILEATTRIB_LV561V64" FriendlyName="LV561V64 LogiTech FileAttribute" FileName="Lv561av.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_MONITOR" FriendlyName="IOBit Monitor.sys FileAttribute" FileName="Monitor.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="15.0.0.2" />
    <FileAttrib ID="ID_FILEATTRIB_MSIO" FriendlyName="MicSys MSIO\0f035948848432bc243704041739e49b528f35c82a5be922d9e3b8a4c44398ff FileAttribute" FileName="MsIo64.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_MSRHOOK" FriendlyName="IDTech MSRHook\87ece1b3b8446517dd9696a1b2c62f82a80220956618485efbdf5671f2676616 FileAttribute" FileName="Keyboard Filter Driver" MinimumFileVersion="0.0.0.0" MaximumFileVersion="2.1.0.0"/>
    <FileAttrib ID="ID_FILEATTRIB_MTCBSV64" FriendlyName="mtcBSv64.sys FileAttribute" FileName="mtcBSv64.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="21.2.0.0" />
    <FileAttrib ID="ID_FILEATTRIB_MYDRIVERS" FriendlyName="mydrivers.sys FileAttribute" FileName="mydrivers.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_NCHGBIOS2X64" FriendlyName="" FileName="NCHGBIOS2x64.SYS" MinimumFileVersion="0.0.0.0" MaximumFileVersion="4.2.4.0" />
    <FileAttrib ID="ID_FILEATTRIB_NCPL_DRIVER" FriendlyName="" FileName="NCPL.SYS" MinimumFileVersion="0.0.0.0" MaximumFileVersion="3.1.11.0" />
    <FileAttrib ID="ID_FILEATTRIB_NGIODRIVER" FriendlyName="Avast ngiodriver\1072beb3ff6b191b3df1a339e3a8c87a8dc5eae727f2b993ea51b448e837636a FileAttribute" FileName="ngiodriver.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535"/>
    <FileAttrib ID="ID_FILEATTRIB_NICM_DRIVER" FriendlyName="" FileName="NICM.SYS" MinimumFileVersion="0.0.0.0" MaximumFileVersion="3.1.11.0" />
    <FileAttrib ID="ID_FILEATTRIB_NSCM_DRIVER" FriendlyName="" FileName="nscm.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="3.1.11.0" />
    <FileAttrib ID="ID_FILEATTRIB_NTIOLIB" FriendlyName="" FileName="NTIOLib.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="1.0.0.0" />
    <FileAttrib ID="ID_FILEATTRIB_NVOCLOCK" FriendlyName="Nvidia nvoclock\29f449fca0a41deccef5b0dccd22af18259222f69ed6389beafe8d5168c59e36 FileAttribute" FileName="nvoclock.sys" MinimumFileVersion="7.0.0.32" />
    <FileAttrib ID="ID_FILEATTRIB_NVFLASH" FriendlyName="Nvidia NVFlash FileAttribute" FileName="nvflash.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="1.9.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_OPENLIBSYS" FriendlyName="OpenLibSys\91314768da140999e682d2a290d48b78bb25a35525ea12c1b1f9634d14602b2c FileAttribute" FileName="OpenLibSys.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_PANIO_1" FriendlyName="PanIOx64\6b830ea0db6546a044c9900d3f335e7820c2a80e147b0751641899d1a5aa8f74 FileAttribute" FileName="PanIOx64.sys" MinimumFileVersion="1.0.0.1" />
    <FileAttrib ID="ID_FILEATTRIB_PANIO_2" FriendlyName="PanIO\f596e64f4c5d7c37a00493728d8756b243cfdc11e3372d6d6dfeffc13c9ab960 FileAttribute" FileName="PanIO.sys" MinimumFileVersion="1.0.0.1" />
    <FileAttrib ID="ID_FILEATTRIB_PANIOMON_1" FriendlyName="PanMonFltx64\06508aacb4ed0a1398a2b0da5fa2dbf7da435b56da76fd83c759a50a51c75caf FileAttribute" FileName="PanMonFltX64.sys" MinimumFileVersion="1.0.0.1" />
    <FileAttrib ID="ID_FILEATTRIB_PANIOMON_2" FriendlyName="PanMonFlt\7e0124fcc7c95fdc34408cf154cb41e654dade8b898c71ad587b2090b1da30d7 FileAttribute" FileName="PanMonFlt.sys" MinimumFileVersion="1.0.0.1" />
    <FileAttrib ID="ID_FILEATTRIB_PCDOC" FriendlyName="PC-Doctor pcdsrvc\06a5d8632ecdd64da4e44ddf3495a62657b513b1139cb8a3a78f641d4e31bf95 FileAttribute" FileName="pcdsrvc" MinimumFileVersion="0.0.0.0" MaximumFileVersion="6.2.65535.65535"/>
    <FileAttrib ID="ID_FILEATTRIB_PHYMEM" FriendlyName="Phymem FileAttribute" FileName="phymem.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_PHYSMEM" FriendlyName="Physmem.sys FileAttribute" FileName="physmem.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_PROCEXP" FriendlyName="Sysinternals Process Explorer FileAttribute" FileName="procexp.Sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="16.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_RADHWMGR" FriendlyName="NCR RadHwMgr\00c3e86952eebb113d91d118629077b3370ebc41eeacb419762d2de30a43c09c FileAttribute" FileName="RadHwMgr.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535"/>
    <FileAttrib ID="ID_FILEATTRIB_RTIF" FriendlyName="TenAsys rtif.sys\0d133ced666c798ea63b6d8026ec507d429e834daa7c74e4e091e462e5815180 FileAttribute" FileName="rtif.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="6.65535.65535.65535"/>
    <FileAttrib ID="ID_FILEATTRIB_RTKIO_DRIVER" FriendlyName="" FileName="rtkio.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_RTKIO64_DRIVER" FriendlyName="" FileName="rtkio64.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_RTKIOW8X64_DRIVER" FriendlyName="" FileName="rtkiow8x64.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_RTKIOW10X64_DRIVER" FriendlyName="" FileName="rtkiow10x64.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_RTPORT" FriendlyName="Realtek rtport\3c0a36990f7eef89b2d5f454b6452b6df1304609903f31f475502e4050241dd8 FileAttribute" FileName="rtport.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535"/>
    <FileAttrib ID="ID_FILEATTRIB_RWDRV_DRIVER" FriendlyName="" FileName="RwDrv.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_RZPNK" FriendlyName="Razer rzpnk.sys FileAttribute" FileName="Rzpnk.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_SANDBOX_1" FriendlyName="Agnitum sandbox FileAttribute" FileName="sandbox.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_SANDBOX_2" FriendlyName="Agnitum SandBox FileAttribute" FileName="SandBox.sys"  MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_SANDRA" FriendlyName="" FileName="SANDRA" MinimumFileVersion="0.0.0.0" MaximumFileVersion="10.12.0.0" />
    <FileAttrib ID="ID_FILEATTRIB_SANDRA_DRIVER" FriendlyName="" FileName="sandra.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="10.12.0.0" />
    <FileAttrib ID="ID_FILEATTRIB_SBIOS" FriendlyName="Samsung sbios\1e24c45ce2672ee403db34077c88e8b7d7797d113c6fd161906dce3784da627d FileAttribute" FileName="SBIOSIO64.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535"/>
    <FileAttrib ID="ID_FILEATTRIB_SEGWINDRVX64" FriendlyName="segwindrvx64.sys FileAttribute" FileName="segwindrvx64.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="100.0.7.2" />
    <FileAttrib ID="ID_FILEATTRIB_SFDRVX32" FriendlyName="sfdrvx32\0bd1523a68900b80ed1bccb967643525cca55d4ff4622d0128913690e6bb619e FileAttribute" FileName="sfdrvx32.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="4.43.4.0"/>
    <FileAttrib ID="ID_FILEATTRIB_SMARTEIO" FriendlyName="EVGA smarteio.sys\3c95ebf3f1a87f67d2861dbd1c85dc26c118610af0c9fbf4180428e653ac3e50 FileAttribute" FileName="SMARTEIO64.SYS" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535"/>
    <FileAttrib ID="ID_FILEATTRIB_STDCDRV" FriendlyName="Intel Stdcdrv.sys\37022838c4327e2a5805e8479330d8ff6f8cd3495079905e867811906c98ea20 FileAttribute" FileName="stdcdrv64.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="2.65535.65535.65535"/>
    <FileAttrib ID="ID_FILEATTRIB_SUPERBMC" FriendlyName="Superbmc FileAttribute" FileName="superbmc.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="2.2.1.0" />
    <FileAttrib ID="ID_FILEATTRIB_SYMELAM" FriendlyName="SymELAM\021badff5a3c84ee422d9fa40a842f89b1c60e0164eabd58da7374327ea99d3c FileAttribute" FileName="SymELAM.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="2.4.0.83" />
    <FileAttrib ID="ID_FILEATTRIB_SYSDETECTOR" FriendlyName="SysInfoDetector.sys\083ff41609e2c0402f20cc00da1110a0cb80c515ca1c2f551606ecc94986cff9 FileAttribute" FileName="SysInfoDetector.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535"/>
    <FileAttrib ID="ID_FILEATTRIB_SYSDRV3S" FriendlyName="SysDrv3s\0dd9daf0852a5b1b436199e9f2bf318f641f43173ab0dc22ad8c7e9cbaee9ad3 FileAttribute" FileName="SysDrv3S.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="3.6.0.0" />
    <FileAttrib ID="ID_FILEATTRIB_TMEL" FriendlyName="TrendMicro TMEL Overpermissive ELAM FileAttribute" FileName="Tmel.sys" MinimumFileVersion="1.6.0.1002" MaximumFileVersion="1.6.0.1004" />
    <FileAttrib ID="ID_FILEATTRIB_TREND_MICRO" FriendlyName="TmComm.sys" FileName="TmComm.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="8.0.0.0" />
    <FileAttrib ID="ID_FILEATTRIB_VBOX" FriendlyName="VBoxDrv.sys FileAttribute" FileName="VBoxDrv.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="3.0.0.0" />
    <FileAttrib ID="ID_FILEATTRIB_TRUESIGHT" FriendlyName="Adlice Truesight.sys\3807e9a1bc159b9e8fc0c7caad10d7213ff8ed8ad1cea9ea552b093c81bf624b FileAttribute" FileName="Truesight" MinimumFileVersion="0.0.0.0" MaximumFileVersion="3.3.0.0"/>
    <FileAttrib ID="ID_FILEATTRIB_VDBSV" FriendlyName="VdBSv64.sys\8dba0ab11ce9f9df5c8fb9fff18bbe9c8c654864053c8b0c4f175ec7203a2e51 FileAttribute" FileName="VdBSv64.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535"/>
    <FileAttrib ID="ID_FILEATTRIB_VIRAGT" FriendlyName="viragt.sys 32-bit" FileName="viragt.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="1.80.0.0" />
    <FileAttrib ID="ID_FILEATTRIB_VIRAGT64" FriendlyName="viragt64.sys" FileName="viragt64.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="1.0.0.11" />
    <FileAttrib ID="ID_FILEATTRIB_VMDRV" FriendlyName="vmdrv.sys FileAttribute" FileName="vmdrv.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="10.0.10011.16384" />
    <FileAttrib ID="ID_FILEATTRIB_WCPU" FriendlyName="WCPU\159e7c5a12157af92e0d14a0d3ea116f91c09e21a9831486e6dc592c93c10980 FileAttribute" FileName="CPU Driver" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535"/>
    <FileAttrib ID="ID_FILEATTRIB_WINRING0" FriendlyName="WinRing0.sys" FileName="WinRing0.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="2.0.0.0" />
    <FileAttrib ID="ID_FILEATTRIB_WIRWADRV" FriendlyName="Winstron wirwadrv\d8fc8e3a1348393c5d7c3a84bcbae383d85a4721a751ad7afac5428e5e579b4e FileAttribute" FileName="WiRwaDrv.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535"/>
    <FileAttrib ID="ID_FILEATTRIB_WISEUNLO" FriendlyName="WiseUnlo FileAttribute" FileName="WiseUnlo.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_ZEMANA_1" FriendlyName="Zemana Antilog\05ece4f6bda72e7fd61fa950e80b811d3dbe0b4b1d53b0532d8df051d1ff074c FileAttribute" FileName="AntiLog32.sys" MinimumFileVersion="1.9.5.600" />
    <FileAttrib ID="ID_FILEATTRIB_ZEMANA_2" FriendlyName="Zemana Zam\40b62ba97ba2edd3e01ed62d26ae8c09f36144ab33db18b42e5f1ccf82db1754 FileAttribute" FileName="ZAM.exe" MinimumFileVersion="2.74.0.259" />
    <FileAttrib ID="ID_FILEATTRIB_ZEMANA_3" FriendlyName="Zemana PerfectGuard\fe48f38bc05a6f3d6590e0be572f1b5dd67fe0b7c97b891a586e3e67f5a5513e FileAttribute" FileName="PerfectGuard.sys" MinimumFileVersion="1.9.5.104" />

  </FileRules>
  <!--Signers-->
  <Signers>
    <Signer ID="ID_SIGNER_VERISIGN_2010" Name="VeriSign Class 3 Code Signing 2010 CA">
      <CertRoot Type="TBS" Value="4843A82ED3B1F2BFBEE9671960E1940C942F688D" />
      <FileAttribRef RuleID="ID_FILEATTRIB_AMDPP" />
      <FileAttribRef RuleID="ID_FILEATTRIB_ASWSP" />
      <FileAttribRef RuleID="ID_FILEATTRIB_ASR_AUTOCHECK_1" />
      <FileAttribRef RuleID="ID_FILEATTRIB_ASR_AUTOCHECK_2" />
      <FileAttribRef RuleID="ID_FILEATTRIB_ASWSNX" />
      <FileAttribRef RuleID="ID_FILEATTRIB_ATSZIO" />
      <FileAttribRef RuleID="ID_FILEATTRIB_AVALUEIO" />
      <FileAttribRef RuleID="ID_FILEATTRIB_CP2X72C_1" />
      <FileAttribRef RuleID="ID_FILEATTRIB_CP2X72C_2" />
      <FileAttribRef RuleID="ID_FILEATTRIB_CPUZ_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_DRIVER7" />
      <FileAttribRef RuleID="ID_FILEATTRIB_ETDSUPPORT" />
      <FileAttribRef RuleID="ID_FILEATTRIB_IOMEM" />
      <FileAttribRef RuleID="ID_FILEATTRIB_IQVW64" />
      <FileAttribRef RuleID="ID_FILEATTRIB_KEVP64" />
      <FileAttribRef RuleID="ID_FILEATTRIB_LHA" />
      <FileAttribRef RuleID="ID_FILEATTRIB_MONITOR" />
      <FileAttribRef RuleID="ID_FILEATTRIB_MTCBSV64" />
      <FileAttribRef RuleID="ID_FILEATTRIB_TREND_MICRO" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RADHWMGR" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTIF" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTKIO_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTKIO64_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RWDRV_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RZPNK" />
      <FileAttribRef RuleID="ID_FILEATTRIB_SBIOS" />
      <FileAttribRef RuleID="ID_FILEATTRIB_SFDRVX32" />
      <FileAttribRef RuleID="ID_FILEATTRIB_SYSDETECTOR" />
      <FileAttribRef RuleID="ID_FILEATTRIB_VDBSV" />
      <FileAttribRef RuleID="ID_FILEATTRIB_ZEMANA_1" />
      <FileAttribRef RuleID="ID_FILEATTRIB_ZEMANA_2" />
      <FileAttribRef RuleID="ID_FILEATTRIB_ZEMANA_3" />
    </Signer>
    <Signer ID="ID_SIGNER_VERISIGN_2010_2" Name="VeriSign Class 3 Code Signing 2010 CA">
      <CertRoot Type="TBS" Value="4678C6E4A8787A8E6ED2BCE8792B122F6C08AFD8" />
      <FileAttribRef RuleID="ID_FILEATTRIB_TREND_MICRO" />
    </Signer>
    <Signer ID="ID_SIGNER_CAPCOM" Name="Symantec Class 3 SHA256 Code Signing CA">
      <CertRoot Type="TBS" Value="A08E79C386083D875014C409C13D144E0A24386132980DF11FF59737C8489EB1" />
      <CertPublisher Value="CAPCOM Co.,Ltd." />
    </Signer>
    <Signer ID="ID_SIGNER_CHEAT_ENGINE" Name="Microsoft Windows Third Party Component CA 2014 Cheat Engine OPUS">
      <CertRoot Type="TBS" Value="D8BE9E4D9074088EF818BC6F6FB64955E90378B2754155126FEEBBBD969CF0AE" />
      <CertOemID Value="Cheat Engine"/>
    </Signer>
    <Signer ID="ID_SIGNER_ENE" Name="Microsoft Windows Third Party Component CA 2014 ENE Tech OPUS">
      <CertRoot Type="TBS" Value="D8BE9E4D9074088EF818BC6F6FB64955E90378B2754155126FEEBBBD969CF0AE" />
      <CertOemID Value="ENE Technology Inc." />
    </Signer>
    <Signer ID="ID_SIGNER_MB_RB_HACKS" Name="Microsoft Windows Third Party Component CA 2014 MB Rb online OPUS">
      <CertRoot Type="TBS" Value="D8BE9E4D9074088EF818BC6F6FB64955E90378B2754155126FEEBBBD969CF0AE" />
      <CertOemID Value="MB Rb online" />
    </Signer>
    <Signer ID="ID_SIGNER_MAN_MUS" Name="Microsoft Windows Third Party Component CA 2014 MANUEL OPUS">
      <CertRoot Type="TBS" Value="D8BE9E4D9074088EF818BC6F6FB64955E90378B2754155126FEEBBBD969CF0AE" />
      <CertOemID Value="DIGITAL SERVICES OF MANUEL MUSARELLA" />
    </Signer>
    <Signer ID="ID_SIGNER_DIGICERT_EV" Name="DigiCert EV Code Signing CA (SHA2)">
      <CertRoot Type="TBS" Value="EEC58131DC11CD7F512501B15FDBC6074C603B68CA91F7162D5A042054EDB0CF" />
      <FileAttribRef RuleID="ID_FILEATTRIB_ASHITIO" />
      <FileAttribRef RuleID="ID_FILEATTRIB_CPUZ_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_EIO64" />
      <FileAttribRef RuleID="ID_FILEATTRIB_PCDOC" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTKIO_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTKIO64_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTKIOW10X64_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTKIOW8X64_DRIVER" />
    </Signer>
    <Signer ID="ID_SIGNER_ELBY" Name="GlobalSign Primary Object Publishing CA">
      <CertRoot Type="TBS" Value="041750993D7C9E063F02DFE74699598640911AAB" />
      <CertPublisher Value="Elaborate Bytes AG" />
      <FileAttribRef RuleID="ID_FILEATTRIB_ELBY_DRIVER" />
    </Signer>
    <Signer ID="ID_SIGNER_VERISIGN_2009" Name="VeriSign Class 3 Code Signing 2009-2 CA">
      <CertRoot Type="TBS" Value="4CDC38C800761463749C3CBD94A12F32E49877BF" />
      <FileAttribRef RuleID="ID_FILEATTRIB_ATSZIO" />
      <FileAttribRef RuleID="ID_FILEATTRIB_DRIVER7" />
      <FileAttribRef RuleID="ID_FILEATTRIB_IQVW64" />
      <FileAttribRef RuleID="ID_FILEATTRIB_LIBNICM_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_NCHGBIOS2X64" />
      <FileAttribRef RuleID="ID_FILEATTRIB_NCPL_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_NICM_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_NSCM_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_NVOCLOCK" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTIF" />
      <FileAttribRef RuleID="ID_FILEATTRIB_SFDRVX32" />
      <FileAttribRef RuleID="ID_FILEATTRIB_TREND_MICRO" />
      <FileAttribRef RuleID="ID_FILEATTRIB_ZEMANA_1" />
      <FileAttribRef RuleID="ID_FILEATTRIB_ZEMANA_2" />
      <FileAttribRef RuleID="ID_FILEATTRIB_ZEMANA_3" />
    </Signer>
    <Signer ID="ID_SIGNER_SANDRA" Name="GeoTrust TrustCenter CodeSigning CA I">
      <CertRoot Type="TBS" Value="172F39BCA3DDA7C6D5169C96B34A5FE7E96FF0BD" />
      <CertPublisher Value="SiSoftware Ltd" />
      <FileAttribRef RuleID="ID_FILEATTRIB_SANDRA" />
      <FileAttribRef RuleID="ID_FILEATTRIB_SANDRA_DRIVER" />
    </Signer>
    <Signer ID="ID_SIGNER_SANDRA_THAWTE" Name="Thawte Code Signing CA">
      <CertRoot Type="TBS" Value="F6297A00D3B2B4CE4750402B66E7EA018D54F683" />
      <CertPublisher Value="SiSoftware Ltd" />
      <FileAttribRef RuleID="ID_FILEATTRIB_SANDRA" />
      <FileAttribRef RuleID="ID_FILEATTRIB_SANDRA_DRIVER" />
    </Signer>
    <Signer ID="ID_SIGNER_MIMIKATZ_KERNEL" Name="GlobalSign CodeSigning CA - G2">
      <CertRoot Type="TBS" Value="589A7D4DF869395601BA7538A65AFAE8C4616385" />
      <CertPublisher Value="Benjamin Delpy" />
    </Signer>
    <Signer ID="ID_SIGNER_MIMIKATZ_KERNEL_SHA2" Name="GlobalSign CodeSigning CA - G2">
      <CertRoot Type="TBS" Value="F6CAE0B028995EB13B1C2CCE5B5107384AB7C77279AE5560933E345061D99CC0" />
      <CertPublisher Value="Benjamin Delpy" />
    </Signer>
    <Signer ID="ID_SIGNER_MIMIKATZ_USER" Name="Certum Code Signing CA SHA2">
      <CertRoot Type="TBS" Value="F7B6EEB3A567223000A61F68C53B458193557C17E5D512D2825BCB13E5FC9BE5" />
      <CertPublisher Value="Open Source Developer, Benjamin Delpy" />
    </Signer>
    <Signer ID="ID_SIGNER_SPEEDFAN" Name="VeriSign Class 3 Code Signing 2004 CA">
      <CertRoot Type="TBS" Value="C7FC1727F5B75A6421A1F95C73BBDB23580C48E5" />
      <CertPublisher Value="Sokno S.R.L." />
    </Signer>
    <Signer ID="ID_SIGNER_RWEVERY" Name="GlobalSign CodeSigning CA - G2">
      <CertRoot Type="TBS" Value="589A7D4DF869395601BA7538A65AFAE8C4616385" />
      <CertPublisher Value="ChongKim Chan" />
    </Signer>
    <Signer ID="ID_SIGNER_VBOX" Name="GlobalSign Primary Object Publishing CA">
      <CertRoot Type="TBS" Value="041750993D7C9E063F02DFE74699598640911AAB" />
      <CertPublisher Value="innotek GmbH" />
    </Signer>
    <Signer ID="ID_SIGNER_REALTEK" Name="DigiCert EV Code Signing CA">
      <CertRoot Type="TBS" Value="2D54C16A8F8B69CCDEA48D0603C132F547A5CF75" />
      <CertPublisher Value="Realtek Semiconductor Corp." />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTKIO_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTKIO64_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTKIOW10X64_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTKIOW8X64_DRIVER" />
    </Signer>
    <Signer ID="ID_SIGNER_VERISIGN_2009_REALTEK" Name="VeriSign Class 3 Code Signing 2009-2 CA">
      <CertRoot Type="TBS" Value="4CDC38C800761463749C3CBD94A12F32E49877BF" />
      <CertPublisher Value="Realtek Semiconductor Corp." />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTKIO_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTKIO64_DRIVER" />
    </Signer>
    <Signer ID="ID_SIGNER_WINDOWS_3RD_PARTY_2012" Name="Microsoft Windows Third Party Component CA 2012">
      <CertRoot Type="TBS" Value="CEC1AFD0E310C55C1DCC601AB8E172917706AA32FB5EAF826813547FDF02DD46" />
      <CertPublisher Value="Microsoft Windows Hardware Compatibility Publisher" />
      <FileAttribRef RuleID="ID_FILEATTRIB_AMD_RYZEN" />
      <FileAttribRef RuleID="ID_FILEATTRIB_AMDPP" />
      <FileAttribRef RuleID="ID_FILEATTRIB_ASWSNX" />
      <FileAttribRef RuleID="ID_FILEATTRIB_ASWSP" />
      <FileAttribRef RuleID="ID_FILEATTRIB_ETDSUPPORT" />
      <FileAttribRef RuleID="ID_FILEATTRIB_FPCIE" />
      <FileAttribRef RuleID="ID_FILEATTRIB_HPPORTIOX64" />
      <FileAttribRef RuleID="ID_FILEATTRIB_HWRWDRV" />
      <FileAttribRef RuleID="ID_FILEATTRIB_IQVW64" />
      <FileAttribRef RuleID="ID_FILEATTRIB_LV_DIAG" />
      <FileAttribRef RuleID="ID_FILEATTRIB_MTCBSV64" />
      <FileAttribRef RuleID="ID_FILEATTRIB_PCDOC" />
      <FileAttribRef RuleID="ID_FILEATTRIB_PROCEXP" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTKIO_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTKIO64_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_STDCDRV" />
      <FileAttribRef RuleID="ID_FILEATTRIB_TREND_MICRO" />
      <FileAttribRef RuleID="ID_FILEATTRIB_TRUESIGHT"/>
      <FileAttribRef RuleID="ID_FILEATTRIB_WINRING0" />
    </Signer>
    <Signer ID="ID_SIGNER_WINDOWS_3RD_PARTY_2014" Name="Microsoft Windows Third Party Component CA 2014">
      <CertRoot Type="TBS" Value="D8BE9E4D9074088EF818BC6F6FB64955E90378B2754155126FEEBBBD969CF0AE" />
      <CertPublisher Value="Microsoft Windows Hardware Compatibility Publisher" />
      <FileAttribRef RuleID="ID_FILEATTRIB_ALSYSIO" />
      <FileAttribRef RuleID="ID_FILEATTRIB_ASWSNX" />
      <FileAttribRef RuleID="ID_FILEATTRIB_ASHITIO" />
      <FileAttribRef RuleID="ID_FILEATTRIB_BS_HWMIO64" />
      <FileAttribRef RuleID="ID_FILEATTRIB_BS_MEM" />
      <FileAttribRef RuleID="ID_FILEATTRIB_BS_RCIO" />
      <FileAttribRef RuleID="ID_FILEATTRIB_BS_RCIO_W10" />
      <FileAttribRef RuleID="ID_FILEATTRIB_CGWIN" />
      <FileAttribRef RuleID="ID_FILEATTRIB_CORSAIRLLACCESS" />
      <FileAttribRef RuleID="ID_FILEATTRIB_CPUZ_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_CTIIO" />
      <FileAttribRef RuleID="ID_FILEATTRIB_HAXM" />
      <FileAttribRef RuleID="ID_FILEATTRIB_HW" />
      <FileAttribRef RuleID="ID_FILEATTRIB_HWINFO_1" />
      <FileAttribRef RuleID="ID_FILEATTRIB_HWINFO_2" />
      <FileAttribRef RuleID="ID_FILEATTRIB_IOBITUNLOCKER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_LHA" />
      <FileAttribRef RuleID="ID_FILEATTRIB_LIBNICM_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_MSIO" />
      <FileAttribRef RuleID="ID_FILEATTRIB_MYDRIVERS" />
      <FileAttribRef RuleID="ID_FILEATTRIB_NICM_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_NSCM_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_NVFLASH" />
      <FileAttribRef RuleID="ID_FILEATTRIB_PCDOC" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RADHWMGR" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTKIO_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTKIOW10X64_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RZPNK" />
      <FileAttribRef RuleID="ID_FILEATTRIB_STDCDRV" />
      <FileAttribRef RuleID="ID_FILEATTRIB_SYSDRV3S" />
      <FileAttribRef RuleID="ID_FILEATTRIB_VIRAGT" />
      <FileAttribRef RuleID="ID_FILEATTRIB_VIRAGT64" />
      <FileAttribRef RuleID="ID_FILEATTRIB_VMDRV" />
      <FileAttribRef RuleID="ID_FILEATTRIB_WISEUNLO" />
    </Signer>
   <Signer ID="ID_SIGNER_WINDOWS_3RD_PARTY_2010" Name="Microsoft Third Party Component Windows PCA 2010">
      <CertRoot Type="TBS" Value="90C9669670E75989159E6EEF69625EB6AD17CBA6209ED56F5665D55450A05212" />
      <CertPublisher Value="Microsoft Windows Hardware Compatibility Publisher" />
      <FileAttribRef RuleID="ID_FILEATTRIB_HPPORTIOX64" />
      <FileAttribRef RuleID="ID_FILEATTRIB_WINRING0" />
    </Signer>
    <Signer ID="ID_SIGNER_VERISIGN_2004" Name="VeriSign Class 3 Code Signing 2004 CA">
      <CertRoot Type="TBS" Value="C7FC1727F5B75A6421A1F95C73BBDB23580C48E5" />
      <FileAttribRef RuleID="ID_FILEATTRIB_ALSYSIO" />
      <FileAttribRef RuleID="ID_FILEATTRIB_CP2X72C_1" />
      <FileAttribRef RuleID="ID_FILEATTRIB_CP2X72C_2" />
      <FileAttribRef RuleID="ID_FILEATTRIB_CPUZ_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_IQVW64" />
      <FileAttribRef RuleID="ID_FILEATTRIB_MTCBSV64" />
      <FileAttribRef RuleID="ID_FILEATTRIB_NVOCLOCK" />
      <FileAttribRef RuleID="ID_FILEATTRIB_PCDOC" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTPORT" />
      <FileAttribRef RuleID="ID_FILEATTRIB_SMARTEIO" />
      <FileAttribRef RuleID="ID_FILEATTRIB_VDBSV" />
      <FileAttribRef RuleID="ID_FILEATTRIB_ZEMANA_1" />
      <FileAttribRef RuleID="ID_FILEATTRIB_ZEMANA_2" />
      <FileAttribRef RuleID="ID_FILEATTRIB_ZEMANA_3" />
    </Signer>
    <Signer ID="ID_SIGNER_VERISIGN_2004_BIOSTAR" Name="VeriSign Class 3 Code Signing 2004 CA">
      <CertRoot Type="TBS" Value="C7FC1727F5B75A6421A1F95C73BBDB23580C48E5" />
      <CertPublisher Value="BIOSTAR MICROTECH INT'L CORP" />
      <FileAttribRef RuleID="ID_FILEATTRIB_BS_I2CIO" />
      <FileAttribRef RuleID="ID_FILEATTRIB_BS_MEM" />
      <FileAttribRef RuleID="ID_FILEATTRIB_BSMI" />
    </Signer>
      <Signer ID="ID_SIGNER_VERISIGN_2004_ASUS_BS_DEF" Name="VeriSign Class 3 Code Signing 2004 CA">
      <CertRoot Type="TBS" Value="C7FC1727F5B75A6421A1F95C73BBDB23580C48E5" />
      <CertPublisher Value="ASUSTeK Computer Inc." />
      <FileAttribRef RuleID="ID_FILEATTRIB_BS_DEF" />
      <FileAttribRef RuleID="ID_FILEATTRIB_BS_DEF_64" />
      <FileAttribRef RuleID="ID_FILEATTRIB_WCPU" />
    </Signer>
    <Signer ID="ID_SIGNER_VERISIGN_2009_BIOSTAR" Name="VeriSign Class 3 Code Signing 2009-2 CA">
      <CertRoot Type="TBS" Value="4CDC38C800761463749C3CBD94A12F32E49877BF" />
      <CertPublisher Value="BIOSTAR MICROTECH INT'L CORP" />
      <FileAttribRef RuleID="ID_FILEATTRIB_BS_MEM" />
      <FileAttribRef RuleID="ID_FILEATTRIB_BSMI" />
      <FileAttribRef RuleID="ID_FILEATTRIB_BS_I2CIO" />
    </Signer>
    <Signer ID="ID_SIGNER_VERISIGN_2010_BIOSTAR" Name="VeriSign Class 3 Code Signing 2010 CA">
      <CertRoot Type="TBS" Value="4843A82ED3B1F2BFBEE9671960E1940C942F688D" />
      <CertPublisher Value="BIOSTAR MICROTECH INT'L CORP" />
      <FileAttribRef RuleID="ID_FILEATTRIB_BS_I2CIO" />
      <FileAttribRef RuleID="ID_FILEATTRIB_BS_MEM" />
      <FileAttribRef RuleID="ID_FILEATTRIB_BSMI" />
    </Signer>
    <Signer ID="ID_SIGNER_GLOBALSIGN_G2_MICROSTAR" Name="GlobalSign CodeSigning CA - G2">
      <CertRoot Type="TBS" Value="589A7D4DF869395601BA7538A65AFAE8C4616385" />
      <CertPublisher Value="MICRO-STAR INTERNATIONAL CO., LTD." />
      <FileAttribRef RuleID="ID_FILEATTRIB_NTIOLIB" />
    </Signer>
    <Signer ID="ID_SIGNER_VERISIGN_TOSHIBA" Name="VeriSign Class 3 Code Signing 2010 CA">
      <CertRoot Type="TBS" Value="4843A82ED3B1F2BFBEE9671960E1940C942F688D" />
      <CertPublisher Value="TOSHIBA CORPORATION" />
      <FileAttribRef RuleID="ID_FILEATTRIB_NCHGBIOS2X64" />
    </Signer>
    <Signer ID="ID_SIGNER_VERISIGN_NOVELL" Name="VeriSign Class 3 Code Signing 2010 CA">
      <CertRoot Type="TBS" Value="4843A82ED3B1F2BFBEE9671960E1940C942F688D" />
      <CertPublisher Value="Novell, Inc." />
      <FileAttribRef RuleID="ID_FILEATTRIB_LIBNICM_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_NICM_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_NSCM_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_NCPL_DRIVER" />
    </Signer>
    <Signer ID="ID_SIGNER_GLOBALSIGN_MICROSTAR" Name="GlobalSign Primary Object Publishing CA">
      <CertRoot Type="TBS" Value="041750993D7C9E063F02DFE74699598640911AAB" />
      <CertPublisher Value="Micro-Star Int'l Co. Ltd." />
      <FileAttribRef RuleID="ID_FILEATTRIB_NTIOLIB" />
    </Signer>
    <Signer ID="ID_SIGNER_VERISIGN_INSYDE" Name="VeriSign Class 3 Code Signing 2010 CA">
      <CertRoot Type="TBS" Value="4843A82ED3B1F2BFBEE9671960E1940C942F688D" />
      <CertPublisher Value="Insyde Software Corp." />
      <FileAttribRef RuleID="ID_FILEATTRIB_SEGWINDRVX64" />
    </Signer>
    <Signer ID="ID_SIGNER_SYMANTEC_CLASS_3" Name="Symantec Class 3 SHA256 Code Signing CA">
      <CertRoot Type="TBS" Value="A08E79C386083D875014C409C13D144E0A24386132980DF11FF59737C8489EB1" />
      <FileAttribRef RuleID="ID_FILEATTRIB_AMD_RYZEN" />
      <FileAttribRef RuleID="ID_FILEATTRIB_AMDPP" />
      <FileAttribRef RuleID="ID_FILEATTRIB_ASWSP" />
      <FileAttribRef RuleID="ID_FILEATTRIB_ATLACCESS" />
      <FileAttribRef RuleID="ID_FILEATTRIB_LGCORETEMP" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTIF" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RZPNK" />
      <FileAttribRef RuleID="ID_FILEATTRIB_TREND_MICRO" />
    </Signer>
    <Signer ID="ID_SIGNER_SYMANTEC_CLASS_3_EV" Name="Symantec Class 3 Extended Validation Code Signing CA - G2">
      <CertRoot Type="TBS" Value="B3C925B4048C3F7C444D248A2B101186B57CBA39596EB5DCE0E17A4EE4B32F19"/>
      <FileAttribRef RuleID="ID_FILEATTRIB_CP2X72C_1"/>
      <FileAttribRef RuleID="ID_FILEATTRIB_CP2X72C_2"/>
      <FileAttribRef RuleID="ID_FILEATTRIB_FPCIE"/>
      <FileAttribRef RuleID="ID_FILEATTRIB_WIRWADRV"/>
    </Signer>
    <Signer ID="ID_SIGNER_VERISIGN_AMD" Name="VeriSign Class 3 Code Signing 2010 CA">
      <CertRoot Type="TBS" Value="4843A82ED3B1F2BFBEE9671960E1940C942F688D" />
      <CertPublisher Value="Advanced Micro Devices, Inc." />
      <FileAttribRef RuleID="ID_FILEATTRIB_AMD_RYZEN" />
    </Signer>
    <Signer ID="ID_SIGNER_VERISIGN_TG_SOFT" Name="VeriSign Class 3 Code Signing 2010 CA">
      <CertRoot Type="TBS" Value="4843A82ED3B1F2BFBEE9671960E1940C942F688D" />
      <CertPublisher Value="TG Soft S.a.s. Di Tonello Gianfranco e C." />
      <FileAttribRef RuleID="ID_FILEATTRIB_VIRAGT" />
      <FileAttribRef RuleID="ID_FILEATTRIB_VIRAGT64" />
    </Signer>
    <Signer ID="ID_SIGNER_GLOBALSIGN_TG_SOFT" Name="GlobalSign CodeSigning CA - G3">
      <CertRoot Type="TBS" Value="F478F0E790D5C8EC6056A3AB2567404A991D2837" />
      <CertPublisher Value="TG Soft di Tonello Gianfranco ed Enrico S.r.l." />
      <FileAttribRef RuleID="ID_FILEATTRIB_VIRAGT" />
      <FileAttribRef RuleID="ID_FILEATTRIB_VIRAGT64" />
    </Signer>
    <Signer ID="ID_SIGNER_HP" Name="DigiCert SHA2 Assured ID Code Signing CA">
      <CertRoot Type="TBS" Value="E767799478F64A34B3F53FF3BB9057FE1768F4AB178041B0DCC0FF1E210CBA65" />
      <CertPublisher Value="HP Inc." />
      <FileAttribRef RuleID="ID_FILEATTRIB_HPPORTIOX64" />
      <FileAttribRef RuleID="ID_FILEATTRIB_WINRING0" />
    </Signer>
    <Signer ID="ID_SIGNER_GETAC" Name="Symantec Class 3 Extended Validation Code Signing CA - G2">
      <CertRoot Type="TBS" Value="B3C925B4048C3F7C444D248A2B101186B57CBA39596EB5DCE0E17A4EE4B32F19" />
      <CertPublisher Value="Getac Technology Corp." />
      <FileAttribRef RuleID="ID_FILEATTRIB_MTCBSV64" />
    </Signer>
    <Signer ID="ID_SIGNER_GLOBALSIGN_CHEAT_ENGINE" Name="GlobalSign CA Cheat Engine Publisher">
      <CertRoot Type="TBS" Value="BD1765C56594221373893EF26D97F88C144FB0E5A0111215B45D7239C3444DF7" />
      <CertPublisher Value="Cheat Engine" />
    </Signer>
    <Signer ID="ID_SIGNER_GLOBALSIGN_G2_CHEAT_ENGINE" Name="GlobalSign CodeSigning CA - G2">
      <CertRoot Type="TBS" Value="589A7D4DF869395601BA7538A65AFAE8C4616385" />
      <CertPublisher Value="Cheat Engine" />
    </Signer>
    <Signer ID="ID_SIGNER_PHYSMEM" Name="GlobalSign CodeSigning CA - G2">
      <CertRoot Type="TBS" Value="589A7D4DF869395601BA7538A65AFAE8C4616385" />
      <CertPublisher Value="Hilscher Gesellschaft fuer Systemautomation mbH" />
      <FileAttribRef RuleID="ID_FILEATTRIB_PHYSMEM" />
    </Signer>
    <Signer ID="ID_SIGNER_VMDRV" Name="DigiCert EV Code Signing CA (SHA2)">
      <CertRoot Type="TBS" Value="EEC58131DC11CD7F512501B15FDBC6074C603B68CA91F7162D5A042054EDB0CF" />
      <CertPublisher Value="Voicemod Sociedad Limitada" />
      <FileAttribRef RuleID="ID_FILEATTRIB_VMDRV" />
    </Signer>
    <Signer ID="ID_SIGNER_INTEL_IQVW" Name="Intel External Basic Policy CA">
      <CertRoot Type="TBS" Value="53B052BA209C525233293274854B264BC0F68B73" />
      <FileAttribRef RuleID="ID_FILEATTRIB_IQVW64" />
    </Signer>
    <Signer ID="ID_SIGNER_COMODO_IQVW" Name="COMODO RSA Certification Authority">
      <CertRoot Type="TBS" Value="7CE102D63C57CB48F80A65D1A5E9B350A7A618482AA5A36775323CA933DDFCB00DEF83796A6340DEC5EBF7596CFD8E5D" />
      <FileAttribRef RuleID="ID_FILEATTRIB_IQVW64" />
      <FileAttribRef RuleID="ID_FILEATTRIB_STDCDRV" />
    </Signer>
    <Signer ID="ID_SIGNER_AMDPP" Name="USERTrust RSA Certification Authority">
      <CertRoot Type="TBS" Value="13BAA039635F1C5292A8C2F36AAE7E1D25C025202E9092F5B0F53F5F752DFA9C71B3D1B8D9A6358FCEE6EC75622FABF9" />
      <CertPublisher Value="Advanced Micro Devices Inc." />
      <FileAttribRef RuleID="ID_FILEATTRIB_AMDPP" />
    </Signer>
    <Signer ID="ID_SIGNER_AGNITUM_2004" Name="VeriSign Class 3 Code Signing 2004 CA">
      <CertRoot Type="TBS" Value="C7FC1727F5B75A6421A1F95C73BBDB23580C48E5" />
      <CertPublisher Value="Agnitum Ltd." />
      <FileAttribRef RuleID="ID_FILEATTRIB_SANDBOX_1" />
      <FileAttribRef RuleID="ID_FILEATTRIB_SANDBOX_2" />
    </Signer>
    <Signer ID="ID_SIGNER_AGNITUM_2009" Name="VeriSign Class 3 Code Signing 2009-2 CA">
      <CertRoot Type="TBS" Value="4CDC38C800761463749C3CBD94A12F32E49877BF" />
      <CertPublisher Value="Agnitum Ltd." />
      <FileAttribRef RuleID="ID_FILEATTRIB_SANDBOX_1" />
      <FileAttribRef RuleID="ID_FILEATTRIB_SANDBOX_2" />
    </Signer>
    <Signer ID="ID_SIGNER_AGNITUM_2010" Name="VeriSign Class 3 Code Signing 2010 CA">
      <CertRoot Type="TBS" Value="4843A82ED3B1F2BFBEE9671960E1940C942F688D" />
      <CertPublisher Value="Agnitum Ltd." />
      <FileAttribRef RuleID="ID_FILEATTRIB_SANDBOX_1" />
      <FileAttribRef RuleID="ID_FILEATTRIB_SANDBOX_2" />
    </Signer>
    <Signer ID="ID_SIGNER_AGNITUM_2010_1" Name="VeriSign Class 3 Code Signing 2010 CA">
      <CertRoot Type="TBS" Value="4678C6E4A8787A8E6ED2BCE8792B122F6C08AFD8" />
      <CertPublisher Value="Agnitum Ltd." />
      <FileAttribRef RuleID="ID_FILEATTRIB_SANDBOX_1" />
      <FileAttribRef RuleID="ID_FILEATTRIB_SANDBOX_2" />
    </Signer>
    <Signer ID="ID_SIGNER_PHYMEM" Name="VeriSign Class 3 Code Signing 2010 CA">
      <CertRoot Type="TBS" Value="4843A82ED3B1F2BFBEE9671960E1940C942F688D" />
      <CertPublisher Value="Super Micro Computer, Inc." />
      <FileAttribRef RuleID="ID_FILEATTRIB_PHYMEM" />
      <FileAttribRef RuleID="ID_FILEATTRIB_SUPERBMC" />
    </Signer>
    <Signer ID="ID_SIGNER_PHYMEM_1" Name="Symantec Class 3 SHA256 Code Signing CA">
      <CertRoot Type="TBS" Value="A08E79C386083D875014C409C13D144E0A24386132980DF11FF59737C8489EB1" />
      <CertPublisher Value="Super Micro Computer, Inc. Taiwan" />
      <FileAttribRef RuleID="ID_FILEATTRIB_PHYMEM" />
    </Signer>
    <Signer ID="ID_SIGNER_PHYMEM_2" Name="Symantec Class 3 SHA256 Code Signing CA">
      <CertRoot Type="TBS" Value="A08E79C386083D875014C409C13D144E0A24386132980DF11FF59737C8489EB1" />
      <CertPublisher Value="Super Micro Computer, Inc." />
      <FileAttribRef RuleID="ID_FILEATTRIB_PHYMEM" />
      <FileAttribRef RuleID="ID_FILEATTRIB_SUPERBMC" />
    </Signer>
    <Signer ID="ID_SIGNER_NVFLASH" Name="VeriSign Class 3 Code Signing 2010 CA">
      <CertRoot Type="TBS" Value="4843A82ED3B1F2BFBEE9671960E1940C942F688D" />
      <CertPublisher Value="NVIDIA Corporation" />
      <FileAttribRef RuleID="ID_FILEATTRIB_NVFLASH" />
    </Signer>
    <Signer ID="ID_SIGNER_NVFLASH_2" Name="Symantec Class 3 SHA256 Code Signing CA - G2">
      <CertRoot Type="TBS" Value="7F25CBD37DCDC0E0D93E0D477C4BC0C54231379E6CAF1023841E1F0D96467A6C" />
      <CertPublisher Value="NVIDIA Corporation" />
      <FileAttribRef RuleID="ID_FILEATTRIB_NVFLASH" />
    </Signer>
    <Signer ID="ID_SIGNER_NVFLASH_3" Name="Symantec Class 3 SHA256 Code Signing CA">
      <CertRoot Type="TBS" Value="A08E79C386083D875014C409C13D144E0A24386132980DF11FF59737C8489EB1" />
      <CertPublisher Value="NVIDIA Corporation" />
      <FileAttribRef RuleID="ID_FILEATTRIB_NVFLASH" />
    </Signer>
    <Signer ID="ID_SIGNER_LV_LOGITECH" Name="VeriSign Class 3 Code Signing 2004 CA">
      <CertRoot Type="TBS" Value="C7FC1727F5B75A6421A1F95C73BBDB23580C48E5" />
      <CertPublisher Value="Logitech Inc" />
      <FileAttribRef RuleID="ID_FILEATTRIB_LV561V64" />
    </Signer>
     <Signer ID="ID_SIGNER_WISEUNLO" Name="DigiCert EV Code Signing CA">
      <CertRoot Type="TBS" Value="2D54C16A8F8B69CCDEA48D0603C132F547A5CF75" />
      <CertPublisher Value="Beijing Lang Xingda Network Technology Co., Ltd" />
      <FileAttribRef RuleID="ID_FILEATTRIB_WISEUNLO" />
    </Signer>
    <Signer ID="ID_SIGNER_WISEUNLO_1" Name="DigiCert EV Code Signing CA (SHA2)">
      <CertRoot Type="TBS" Value="EEC58131DC11CD7F512501B15FDBC6074C603B68CA91F7162D5A042054EDB0CF" />
      <CertPublisher Value="Beijing Lang Xingda Network Technology Co., Ltd" />
      <FileAttribRef RuleID="ID_FILEATTRIB_WISEUNLO" />
    </Signer>
    <Signer ID="ID_SIGNER_WISEUNLO_2" Name="VeriSign Class 3 Code Signing 2010 CA">
      <CertRoot Type="TBS" Value="4843A82ED3B1F2BFBEE9671960E1940C942F688D" />
      <CertPublisher Value="Lespeed Technology Ltd." />
      <FileAttribRef RuleID="ID_FILEATTRIB_WISEUNLO" />
    </Signer>
    <Signer ID="ID_SIGNER_LV_DIAG" Name="DigiCert SHA2 Assured ID Code Signing CA">
      <CertRoot Type="TBS" Value="E767799478F64A34B3F53FF3BB9057FE1768F4AB178041B0DCC0FF1E210CBA65" />
      <CertPublisher Value="Lenovo" />
      <FileAttribRef RuleID="ID_FILEATTRIB_LV_DIAG" />
    </Signer>
    <Signer ID="ID_SIGNER_LV_DIAG_2" Name="DigiCert Trusted G4 Code Signing RSA4096 SHA384 2021 CA1">
      <CertRoot Type="TBS" Value="65B1D4076A89AE273F57E6EEEDECB3EAE129B4168F76FA7671914CDF461D542255C59D9B85B916AE0CA6FC0FCF7A8E64" />
      <CertPublisher Value="Lenovo" />
      <FileAttribRef RuleID="ID_FILEATTRIB_LV_DIAG" />
    </Signer>
    <Signer ID="ID_SIGNER_IOBITUNLOCKER_1" Name="DigiCert EV Code Signing CA">
      <CertRoot Type="TBS" Value="2D54C16A8F8B69CCDEA48D0603C132F547A5CF75" />
      <CertPublisher Value="IObit CO., LTD" />
      <FileAttribRef RuleID="ID_FILEATTRIB_IOBITUNLOCKER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_MONITOR" />
    </Signer>
    <Signer ID="ID_SIGNER_IOBITUNLOCKER_2" Name="VeriSign Class 3 Code Signing 2010 CA">
      <CertRoot Type="TBS" Value="4843A82ED3B1F2BFBEE9671960E1940C942F688D" />
      <CertPublisher Value="IObit Information Technology" />
      <FileAttribRef RuleID="ID_FILEATTRIB_IOBITUNLOCKER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_MONITOR" />
    </Signer>
    <Signer ID="ID_SIGNER_IOBITUNLOCKER_3" Name="DigiCert EV Code Signing CA (SHA2)">
      <CertRoot Type="TBS" Value="EEC58131DC11CD7F512501B15FDBC6074C603B68CA91F7162D5A042054EDB0CF" />
      <CertPublisher Value="IObit CO., LTD" />
      <FileAttribRef RuleID="ID_FILEATTRIB_IOBITUNLOCKER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_MONITOR" />
    </Signer>
    <Signer ID="ID_SIGNER_IOBITUNLOCKER_4" Name="Symantec Class 3 SHA256 Code Signing CA">
      <CertRoot Type="TBS" Value="A08E79C386083D875014C409C13D144E0A24386132980DF11FF59737C8489EB1" />
      <CertPublisher Value="IObit Information Technology" />
      <FileAttribRef RuleID="ID_FILEATTRIB_IOBITUNLOCKER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_MONITOR" />
    </Signer>
    <Signer ID="ID_SIGNER_ATILLK" Name="VeriSign Class 3 Code Signing 2004 CA">
      <CertRoot Type="TBS" Value="C7FC1727F5B75A6421A1F95C73BBDB23580C48E5" />
      <CertPublisher Value="ATI Technologies, Inc" />
      <FileAttribRef RuleID="ID_FILEATTRIB_ATILLK" />
    </Signer>
    <Signer ID="ID_SIGNER_HW_A" Name="GlobalSign">
      <CertRoot Type="TBS" Value="DE1DA11668F0A8D5E13346ED3AB2755F5D25BEBFFCFD1D0BDE5B9F87BC292C91" />
      <CertPublisher Value="Marvin Test Solutions, Inc." />
      <FileAttribRef RuleID="ID_FILEATTRIB_HW" />
    </Signer>
    <Signer ID="ID_SIGNER_HW_B" Name="GlobalSign CodeSigning CA - G2">
      <CertRoot Type="TBS" Value="589A7D4DF869395601BA7538A65AFAE8C4616385" />
      <CertPublisher Value="Marvin Test Solutions, Inc." />
      <FileAttribRef RuleID="ID_FILEATTRIB_HW" />
    </Signer>
    <Signer ID="ID_SIGNER_HW_C" Name="GlobalSign">
      <CertRoot Type="TBS" Value="BD1765C56594221373893EF26D97F88C144FB0E5A0111215B45D7239C3444DF7" />
      <CertPublisher Value="Marvin Test Solutions, Inc." />
      <FileAttribRef RuleID="ID_FILEATTRIB_HW" />
    </Signer>
    <Signer ID="ID_SIGNER_HW_D" Name="GlobalSign Primary Object Publishing CA">
      <CertRoot Type="TBS" Value="879269F3F467A6D59641960A62FE9CB419355FF6" />
      <CertPublisher Value="Geotest - Marvin Test Systems, Inc." />
      <FileAttribRef RuleID="ID_FILEATTRIB_HW" />
    </Signer>
    <Signer ID="ID_SIGNER_HWRWDRV_1" Name="VeriSign Class 3 Code Signing 2010 CA">
      <CertRoot Type="TBS" Value="4843A82ED3B1F2BFBEE9671960E1940C942F688D" />
      <CertPublisher Value="Shuttle Inc." />
      <FileAttribRef RuleID="ID_FILEATTRIB_HWRWDRV" />
    </Signer>
    <Signer ID="ID_SIGNER_HWRWDRV_2" Name="Symantec Class 3 Extended Validation Code Signing CA - G2">
      <CertRoot Type="TBS" Value="B3C925B4048C3F7C444D248A2B101186B57CBA39596EB5DCE0E17A4EE4B32F19" />
      <CertPublisher Value="SHUTTLE INC." />
      <FileAttribRef RuleID="ID_FILEATTRIB_HWRWDRV" />
    </Signer>
    <Signer ID="ID_SIGNER_MYDRIVERS_1" Name="VeriSign Class 3 Code Signing 2010 CA">
      <CertRoot Type="TBS" Value="4843A82ED3B1F2BFBEE9671960E1940C942F688D" />
      <CertPublisher Value="Beijing Kingsoft Security software Co.,Ltd" />
      <FileAttribRef RuleID="ID_FILEATTRIB_MYDRIVERS" />
    </Signer>
    <Signer ID="ID_SIGNER_MYDRIVERS_2" Name="GlobalSign">
      <CertRoot Type="TBS" Value="BD1765C56594221373893EF26D97F88C144FB0E5A0111215B45D7239C3444DF7" />
      <CertPublisher Value="北京金山安全软件有限公司" />
      <FileAttribRef RuleID="ID_FILEATTRIB_MYDRIVERS" />
    </Signer>
    <Signer ID="ID_SIGNER_MYDRIVERS_3" Name="Symantec Class 3 SHA256 Code Signing CA">
      <CertRoot Type="TBS" Value="A08E79C386083D875014C409C13D144E0A24386132980DF11FF59737C8489EB1" />
      <CertPublisher Value="Beijing Kingsoft Security software Co.,Ltd" />
      <FileAttribRef RuleID="ID_FILEATTRIB_MYDRIVERS" />
    </Signer>
    <Signer ID="ID_SIGNER_PAN" Name="GlobalSign CodeSigning CA - G2">
      <CertRoot Type="TBS" Value="589A7D4DF869395601BA7538A65AFAE8C4616385" />
      <CertPublisher Value="PAN YAZILIM BILISIM TEKNOLOJILERI TICARET LTD. STI." />
      <FileAttribRef RuleID="ID_FILEATTRIB_PANIOMON_1" />
      <FileAttribRef RuleID="ID_FILEATTRIB_PANIO_1" />
      <FileAttribRef RuleID="ID_FILEATTRIB_PANIOMON_2" />
      <FileAttribRef RuleID="ID_FILEATTRIB_PANIO_2" />
    </Signer>
    <Signer ID="ID_SIGNER_ASWARPOT_1" Name="DigiCert High Assurance Code Signing CA-1">
      <CertRoot Type="TBS" Value="1D7E838ACCD498C2E5BA9373AF819EC097BB955C" />
      <CertPublisher Value="Avast Software s.r.o." />
      <FileAttribRef RuleID="ID_FILEATTRIB_ASWARPOT" />
    </Signer>
    <Signer ID="ID_SIGNER_ASWARPOT_2" Name="Microsoft Windows Third Party Component CA 2012">
      <CertRoot Type="TBS" Value="CEC1AFD0E310C55C1DCC601AB8E172917706AA32FB5EAF826813547FDF02DD46" />
      <CertPublisher Value="Microsoft Windows Hardware Compatibility Publisher" />
      <FileAttribRef RuleID="ID_FILEATTRIB_ASWARPOT" />
    </Signer>
    <Signer ID="ID_SIGNER_ASWARPOT_3" Name="DigiCert EV Code Signing CA (SHA2)">
      <CertRoot Type="TBS" Value="EEC58131DC11CD7F512501B15FDBC6074C603B68CA91F7162D5A042054EDB0CF" />
      <CertPublisher Value="Avast plc" />
      <FileAttribRef RuleID="ID_FILEATTRIB_ASWARPOT" />
    </Signer>
    <Signer ID="ID_SIGNER_ASWARPOT_4" Name="DigiCert SHA2 Assured ID Code Signing CA">
      <CertRoot Type="TBS" Value="E767799478F64A34B3F53FF3BB9057FE1768F4AB178041B0DCC0FF1E210CBA65" />
      <CertPublisher Value="Avast Software s.r.o." />
      <FileAttribRef RuleID="ID_FILEATTRIB_ASWARPOT" />
      <FileAttribRef RuleID="ID_FILEATTRIB_ASWSP" />
    </Signer>
    <Signer ID="ID_SIGNER_ASWARPOT_5" Name="DigiCert High Assurance Code Signing CA-1">
      <CertRoot Type="TBS" Value="1D7E838ACCD498C2E5BA9373AF819EC097BB955C" />
      <CertPublisher Value="AVAST Software s.r.o." />
      <FileAttribRef RuleID="ID_FILEATTRIB_ASWARPOT" />
      <FileAttribRef RuleID="ID_FILEATTRIB_ASWSP" />
    </Signer>
    <Signer ID="ID_SIGNER_ASWARPOT_6" Name="DigiCert SHA2 Assured ID Code Signing CA">
      <CertRoot Type="TBS" Value="E767799478F64A34B3F53FF3BB9057FE1768F4AB178041B0DCC0FF1E210CBA65" />
      <CertPublisher Value="AVAST Software s.r.o." />
      <FileAttribRef RuleID="ID_FILEATTRIB_ASWARPOT" />
    </Signer>
    <Signer ID="ID_SIGNER_ASWSNX_1" Name="DigiCert Trusted G4 Code Signing RSA4096 SHA384 2021 CA1">
      <CertRoot Type="TBS" Value="65B1D4076A89AE273F57E6EEEDECB3EAE129B4168F76FA7671914CDF461D542255C59D9B85B916AE0CA6FC0FCF7A8E64" />
      <FileAttribRef RuleID="ID_FILEATTRIB_ASWSNX" />
    </Signer>
    <Signer ID="ID_SIGNER_ASWSNX_2" Name="DigiCert Trusted Root G4">
      <CertRoot Type="TBS" Value="11533EFD6B326A4E065A936DE300FE0586A479F93D569D2403BD62C7AD35F1B2199DAEE3ADB510F429C4FC97B4B024E3" />
      <FileAttribRef RuleID="ID_FILEATTRIB_ASWSNX" />
    </Signer>
    <Signer ID="ID_SIGNER_ASWSNX_3" Name="DigiCert High Assurance Code Signing CA-1">
      <CertRoot Type="TBS" Value="1D7E838ACCD498C2E5BA9373AF819EC097BB955C" />
      <CertPublisher Value="AVAST Software a.s." />
      <FileAttribRef RuleID="ID_FILEATTRIB_ASWSNX" />
    </Signer>
    <Signer ID="ID_SIGNER_ASWSNX_4" Name="DigiCert Assured ID Code Signing CA-1">
      <CertRoot Type="TBS" Value="47F4B9898631773231B32844EC0D49990AC4EB1E" />
      <CertPublisher Value="AVG Technologies USA, Inc." />
      <FileAttribRef RuleID="ID_FILEATTRIB_ASWSNX" />
    </Signer>
    <Signer ID="ID_SIGNER_MS_ELAM" Name="Microsoft Windows Third Party Component CA 2014">
      <CertRoot Type="TBS" Value="D8BE9E4D9074088EF818BC6F6FB64955E90378B2754155126FEEBBBD969CF0AE" />
      <FileAttribRef RuleID="ID_FILEATTRIB_AVGELAM" />
      <FileAttribRef RuleID="ID_FILEATTRIB_EELAM" />
      <FileAttribRef RuleID="ID_FILEATTRIB_TMEL" />
      <FileAttribRef RuleID="ID_FILEATTRIB_SYMELAM" />
    </Signer>
    <Signer ID="ID_SIGNER_MS_ELAM_1" Name="Microsoft Code Signing PCA 2010">
      <CertRoot Type="TBS" Value="121AF4B922A74247EA49DF50DE37609CC1451A1FE06B2CB7E1E079B492BD8195" />
      <FileAttribRef RuleID="ID_FILEATTRIB_AVGELAM" />
      <FileAttribRef RuleID="ID_FILEATTRIB_EELAM" />
      <FileAttribRef RuleID="ID_FILEATTRIB_SYMELAM" />
      <FileAttribRef RuleID="ID_FILEATTRIB_TMEL" />

    </Signer>
    <Signer ID="ID_SIGNER_AVGELAM_1" Name="DigiCert High Assurance Code Signing CA-1">
      <CertRoot Type="TBS" Value="1D7E838ACCD498C2E5BA9373AF819EC097BB955C" />
      <CertPublisher Value="AVAST Software s.r.o." />
      <FileAttribRef RuleID="ID_FILEATTRIB_AVGELAM" />
    </Signer>
    <Signer ID="ID_SIGNER_AVGELAM_2" Name="DigiCert SHA2 Assured ID Code Signing CA">
      <CertRoot Type="TBS" Value="E767799478F64A34B3F53FF3BB9057FE1768F4AB178041B0DCC0FF1E210CBA65" />
      <CertPublisher Value="AVAST Software s.r.o." />
      <FileAttribRef RuleID="ID_FILEATTRIB_AVGELAM" />
      <FileAttribRef RuleID="ID_FILEATTRIB_ASWSNX" />
    </Signer>
    <Signer ID="ID_SIGNER_NGIODRIVER" Name="DigiCert High Assurance Code Signing CA-1">
      <CertRoot Type="TBS" Value="1D7E838ACCD498C2E5BA9373AF819EC097BB955C"/>
      <CertPublisher Value="AVAST Software a.s."/>
      <FileAttribRef RuleID="ID_FILEATTRIB_NGIODRIVER"/>
    </Signer>
    <Signer ID="ID_SIGNER_GMEREK" Name="GlobalSign CodeSigning CA - G2">
      <CertRoot Type="TBS" Value="589A7D4DF869395601BA7538A65AFAE8C4616385" />
      <CertPublisher Value="GMEREK Systemy Komputerowe Przemyslaw Gmerek" />
    </Signer>
    <Signer ID="ID_SIGNER_GMER" Name="GlobalSign CodeSigning CA - G2">
      <CertRoot Type="TBS" Value="589A7D4DF869395601BA7538A65AFAE8C4616385" />
      <CertPublisher Value="GMEREK Systemy Komputerowe Przemyslaw Gmerek" />
      <FileAttribRef RuleID="ID_FILEATTRIB_GMER" />
    </Signer>
    <Signer ID="ID_SIGNER_HWINFO_1" Name="GlobalSign CodeSigning CA - G3">
      <CertRoot Type="TBS" Value="F478F0E790D5C8EC6056A3AB2567404A991D2837" />
      <CertPublisher Value="Zhengzhou Heng Kuai Information Technology Co., Ltd" />
      <FileAttribRef RuleID="ID_FILEATTRIB_HWINFO_1" />
      <FileAttribRef RuleID="ID_FILEATTRIB_HWINFO_2" />
    </Signer>
    <Signer ID="ID_SIGNER_HWINFO_2" Name="Certum Extended Validation Code Signing 2021 CA">
      <CertRoot Type="TBS" Value="56F431D13FD6F7974905196A6367D252A955C5FE34DB1E48CFA3EB569707809D63DE4A0FF8FEF57BE69C23284D9144EA" />
      <CertPublisher Value="Martin Malik - REALiX" />
      <FileAttribRef RuleID="ID_FILEATTRIB_HWINFO_3" />
    </Signer>
    <Signer ID="ID_SIGNER_HWINFO_3" Name="GlobalSign Primary Object Publishing CA">
      <CertRoot Type="TBS" Value="879269F3F467A6D59641960A62FE9CB419355FF6" />
      <CertPublisher Value="REALiX" />
      <FileAttribRef RuleID="ID_FILEATTRIB_HWINFO_1" />
      <FileAttribRef RuleID="ID_FILEATTRIB_HWINFO_3" />
    </Signer>
    <Signer ID="ID_SIGNER_HWINFO_4" Name="DigiCert EV Code Signing CA (SHA2)">
      <CertRoot Type="TBS" Value="EEC58131DC11CD7F512501B15FDBC6074C603B68CA91F7162D5A042054EDB0CF" />
      <CertPublisher Value="Martin Malik - REALiX" />
      <FileAttribRef RuleID="ID_FILEATTRIB_HWINFO_1" />
      <FileAttribRef RuleID="ID_FILEATTRIB_HWINFO_2" />
      <FileAttribRef RuleID="ID_FILEATTRIB_HWINFO_3" />
    </Signer>
    <Signer ID="ID_SIGNER_HWINFO_5" Name="GlobalSign CodeSigning CA - SHA256 - G3">
      <CertRoot Type="TBS" Value="06936BAC8D2F85D9CE6F7348EA421A1A949219182845192667B0E671FE0E4285" />
      <CertPublisher Value="Zhengzhou Heng Kuai Information Technology Co., Ltd" />
      <FileAttribRef RuleID="ID_FILEATTRIB_HWINFO_1" />
      <FileAttribRef RuleID="ID_FILEATTRIB_HWINFO_2" />
    </Signer>
    <Signer ID="ID_SIGNER_HWINFO_6" Name="GlobalSign CodeSigning CA - G2">
      <CertRoot Type="TBS" Value="589A7D4DF869395601BA7538A65AFAE8C4616385" />
      <CertPublisher Value="Martin Malik - REALiX" />
      <FileAttribRef RuleID="ID_FILEATTRIB_HWINFO_1" />
      <FileAttribRef RuleID="ID_FILEATTRIB_HWINFO_2" />
    </Signer>
    <Signer ID="ID_SIGNER_ASROCK_RWDRV" Name="VeriSign Class 3 Code Signing 2004 CA">
      <CertRoot Type="TBS" Value="C7FC1727F5B75A6421A1F95C73BBDB23580C48E5" />
      <CertPublisher Value="ASROCK Incorporation" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RWDRV_DRIVER" />
    </Signer>
    <Signer ID="ID_SIGNER_FAIRPLAY_1" Name="Thawte Code Signing CA - G2">
      <CertRoot Type="TBS" Value="95795D2AA2A554A423BC8C6E5B0A016D14887D35" />
      <CertPublisher Value="Hans Roes" />
      <FileAttribRef RuleID="ID_FILEATTRIB_FAIRPLAY" />
    </Signer>
    <Signer ID="ID_SIGNER_FAIRPLAY_2" Name="thawte SHA256 Code Signing CA">
      <CertRoot Type="TBS" Value="C734685D985B8EA13DB4FC1A6DCD26AA0DDE78B4C3B651EA5D58E32E081B2A41" />
      <CertPublisher Value="Hans Roes" />
      <FileAttribRef RuleID="ID_FILEATTRIB_FAIRPLAY" />
    </Signer>
    <Signer ID="ID_SIGNER_FAIRPLAY_3" Name="Thawte Code Signing CA - G2">
      <CertRoot Type="TBS" Value="95795D2AA2A554A423BC8C6E5B0A016D14887D35" />
      <CertPublisher Value="Hans Roes" />
      <FileAttribRef RuleID="ID_FILEATTRIB_FAIRPLAY" />
    </Signer>
    <Signer ID="ID_SIGNER_FAIRPLAY_4" Name="thawte SHA256 Code Signing CA">
      <CertRoot Type="TBS" Value="C734685D985B8EA13DB4FC1A6DCD26AA0DDE78B4C3B651EA5D58E32E081B2A41" />
      <CertPublisher Value="Hans Roes" />
      <FileAttribRef RuleID="ID_FILEATTRIB_FAIRPLAY" />
    </Signer>
    <Signer ID="ID_SIGNER_HAXM_1" Name="Symantec Class 3 Extended Validation Code Signing CA - G2">
      <CertRoot Type="TBS" Value="B3C925B4048C3F7C444D248A2B101186B57CBA39596EB5DCE0E17A4EE4B32F19" />
      <CertPublisher Value="XM Cyber LTD" />
      <FileAttribRef RuleID="ID_FILEATTRIB_HAXM" />
    </Signer>
    <Signer ID="ID_SIGNER_HAXM_2" Name="COMODO Code Signing CA 2">
      <CertRoot Type="TBS" Value="EE6C8048E2AA17A6506ECC99D41B1BA6794C3252" />
      <CertPublisher Value="XM LTD" />
      <FileAttribRef RuleID="ID_FILEATTRIB_HAXM" />
    </Signer>
    <Signer ID="ID_SIGNER_HAXM_3" Name="Symantec Class 3 Extended Validation Code Signing CA - G2">
      <CertRoot Type="TBS" Value="B3C925B4048C3F7C444D248A2B101186B57CBA39596EB5DCE0E17A4EE4B32F19" />
      <CertPublisher Value="XM LTD" />
      <FileAttribRef RuleID="ID_FILEATTRIB_HAXM" />
    </Signer>
    <Signer ID="ID_SIGNER_PROCEXP_1" Name="VeriSign Class 3 Code Signing 2009-2 CA">
      <CertRoot Type="TBS" Value="4CDC38C800761463749C3CBD94A12F32E49877BF" />
      <CertPublisher Value="Sysinternals" />
      <FileAttribRef RuleID="ID_FILEATTRIB_PROCEXP" />
    </Signer>
    <Signer ID="ID_SIGNER_PROCEXP_2" Name="VeriSign Class 3 Code Signing 2004 CA">
      <CertRoot Type="TBS" Value="C7FC1727F5B75A6421A1F95C73BBDB23580C48E5" />
      <CertPublisher Value="Sysinternals" />
      <FileAttribRef RuleID="ID_FILEATTRIB_PROCEXP" />
    </Signer>
    <Signer ID="ID_SIGNER_PROCEXP_3" Name="Microsoft Windows Hardware Compatibility PCA">
      <CertRoot Type="TBS" Value="C5506BEE3C29254DC5B5A0E6E7A14046522708EF" />
      <CertPublisher Value="Microsoft Windows Hardware Compatibility Publisher" />
      <FileAttribRef RuleID="ID_FILEATTRIB_PROCEXP" />
    </Signer>
    <Signer ID="ID_SIGNER_PROCEXP_4" Name="VeriSign Class 3 Code Signing 2010 CA">
      <CertRoot Type="TBS" Value="4843A82ED3B1F2BFBEE9671960E1940C942F688D" />
      <CertPublisher Value="Sysinternals" />
      <FileAttribRef RuleID="ID_FILEATTRIB_PROCEXP" />
    </Signer>
    <Signer ID="ID_SIGNER_PROCEXP_5" Name="Microsoft Windows Hardware Compatibility PCA">
      <CertRoot Type="TBS" Value="6B3242A9A639B0DA4D5882C7EEB402BE6615AD0C" />
      <CertPublisher Value="Microsoft Windows Hardware Compatibility Publisher" />
      <FileAttribRef RuleID="ID_FILEATTRIB_PROCEXP" />
    </Signer>
    <Signer ID="ID_SIGNER_OPENLIBSYS" Name="GlobalSign Primary Object Publishing CA">
      <CertRoot Type="TBS" Value="041750993D7C9E063F02DFE74699598640911AAB" />
      <CertPublisher Value="Noriyuki MIYAZAKI" />
      <FileAttribRef RuleID="ID_FILEATTRIB_OPENLIBSYS" />
    </Signer>
    <Signer ID="ID_SIGNER_PCDOC" Name="DigiCert EV Code Signing CA">
      <CertRoot Type="TBS" Value="2D54C16A8F8B69CCDEA48D0603C132F547A5CF75" />
      <CertPublisher Value="PC-Doctor, Inc." />
      <FileAttribRef RuleID="ID_FILEATTRIB_PCDOC" />
    </Signer>
    <Signer ID="ID_SIGNER_SYSDRV3S" Name="GlobalSign 3S-Smart">
      <CertRoot Type="TBS" Value="BD1765C56594221373893EF26D97F88C144FB0E5A0111215B45D7239C3444DF7" />
      <CertPublisher Value="3S-Smart Software Solutions GmbH" />
      <FileAttribRef RuleID="ID_FILEATTRIB_SYSDRV3S" />
    </Signer>
    <Signer ID="ID_SIGNER_PAVEL_Y_1" Name="DigiCert SHA2 Assured ID Code Signing CA">
      <CertRoot Type="TBS" Value="E767799478F64A34B3F53FF3BB9057FE1768F4AB178041B0DCC0FF1E210CBA65" />
      <CertPublisher Value="Pavel Yosifovich" />
    </Signer>
    <Signer ID="ID_SIGNER_PAVEL_Y_2" Name="DigiCert SHA2 High Assurance Code Signing CA">
      <CertRoot Type="TBS" Value="0BF095B845B69928B5D7DFD1C42AE4F90FEB8DC97F7830598C93E848877021FB" />
      <CertPublisher Value="Pavel Yosifovich" />
    </Signer>
    <Signer ID="ID_SIGNER_ALSYSIO_1" Name="COMODO RSA Code Signing CA">
      <CertRoot Type="TBS" Value="4805A7E23D6C8FF5E149F197B744BCB2346E73F19A48835A2F64129183981109256B75EA371A331746D01FD4E135AB6E" />
      <CertPublisher Value="ALCPU" />
      <FileAttribRef RuleID="ID_FILEATTRIB_ALSYSIO" />
    </Signer>
    <Signer ID="ID_SIGNER_ALSYSIO_2" Name="UTN-USERFirst-Object">
      <CertRoot Type="TBS" Value="C45627B5584BF62327DF60D6185744A2D2F2BCBF" />
      <CertPublisher Value="ALCPU" />
      <FileAttribRef RuleID="ID_FILEATTRIB_ALSYSIO" />
    </Signer>
    <Signer ID="ID_SIGNER_MICKS" Name="Microsoft Windows Third Party Component CA 2014">
      <CertRoot Type="TBS" Value="D8BE9E4D9074088EF818BC6F6FB64955E90378B2754155126FEEBBBD969CF0AE" />
      <CertOemID Value="Micks Auto Transport" />
    </Signer>
    <Signer ID="ID_SIGNER_ETDSUPPORT" Name="DigiCert Trusted G4 Code Signing RSA4096 SHA384 2021 CA1">
      <CertRoot Type="TBS" Value="65B1D4076A89AE273F57E6EEEDECB3EAE129B4168F76FA7671914CDF461D542255C59D9B85B916AE0CA6FC0FCF7A8E64" />
      <CertPublisher Value="HP Inc." />
      <FileAttribRef RuleID="ID_FILEATTRIB_ETDSUPPORT" />
    </Signer>
    <Signer ID="ID_SIGNER_NVOCLOCK" Name="GeoTrust TrustCenter CodeSigning CA I">
      <CertRoot Type="TBS" Value="172F39BCA3DDA7C6D5169C96B34A5FE7E96FF0BD" />
      <CertPublisher Value="Micro-Star Int'l Co., Ltd." />
      <FileAttribRef RuleID="ID_FILEATTRIB_NVOCLOCK" />
    </Signer>
    <Signer ID="ID_SIGNER_CPUZ_1" Name="DigiCert EV Code Signing CA">
      <CertRoot Type="TBS" Value="2D54C16A8F8B69CCDEA48D0603C132F547A5CF75" />
      <CertPublisher Value="CPUID S.A.R.L.U." />
      <FileAttribRef RuleID="ID_FILEATTRIB_CPUZ_DRIVER" />
    </Signer>
    <Signer ID="ID_SIGNER_CPUZ_2" Name="Certum Extended Validation Code Signing 2021 CA">
      <CertRoot Type="TBS" Value="56F431D13FD6F7974905196A6367D252A955C5FE34DB1E48CFA3EB569707809D63DE4A0FF8FEF57BE69C23284D9144EA" />
      <CertPublisher Value="CPUID" />
      <FileAttribRef RuleID="ID_FILEATTRIB_CPUZ_DRIVER" />
    </Signer>
    <Signer ID="ID_SIGNER_MSIO32" Name="DigiCert Trusted G4 Code Signing RSA4096 SHA384 2021 CA1">
      <CertRoot Type="TBS" Value="65B1D4076A89AE273F57E6EEEDECB3EAE129B4168F76FA7671914CDF461D542255C59D9B85B916AE0CA6FC0FCF7A8E64"/>
      <CertPublisher Value="Creative Technology Innovation Co., Ltd."/>
      <FileAttribRef RuleID="ID_FILEATTRIB_MSIO"/>
    </Signer>
    <Signer ID="ID_SIGNER_TRUESIGHT_1" Name="Sectigo Public Code Signing Root R46">
      <CertRoot Type="TBS" Value="A229D2722BC6091D73B1D979B81088C977CB028A6F7CBF264BB81D5CC8F099F87D7C296E48BF09D7EBE275F5498661A4"/>
      <FileAttribRef RuleID="ID_FILEATTRIB_TRUESIGHT"/>
    </Signer>
    <Signer ID="ID_SIGNER_TRUESIGHT_2" Name="DigiCert SHA2 High Assurance Code Signing CA">
      <CertRoot Type="TBS" Value="0BF095B845B69928B5D7DFD1C42AE4F90FEB8DC97F7830598C93E848877021FB"/>
      <CertPublisher Value="Adlice"/>
      <FileAttribRef RuleID="ID_FILEATTRIB_TRUESIGHT"/>
    </Signer>
    <Signer ID="ID_SIGNER_HWDETECTNG" Name="GlobalSign Primary Object Publishing CA">
      <CertRoot Type="TBS" Value="041750993D7C9E063F02DFE74699598640911AAB"/>
      <CertPublisher Value="iNFERRE"/>
      <FileAttribRef RuleID="ID_FILEATTRIB_HWDETECTNG"/>
    </Signer>
    <Signer ID="ID_SIGNER_RENTDRV" Name="Microsoft Windows Third Party Component CA 2014">
      <CertRoot Type="TBS" Value="D8BE9E4D9074088EF818BC6F6FB64955E90378B2754155126FEEBBBD969CF0AE"/>
      <CertOemID Value="Hangzhou Shunwang Technology Co.,Ltd"/>
    </Signer>
    <Signer ID="ID_SIGNER_MSRHOOK" Name="Microsoft Windows Third Party Component CA 2012">
      <CertRoot Type="TBS" Value="CEC1AFD0E310C55C1DCC601AB8E172917706AA32FB5EAF826813547FDF02DD46"/>
      <CertOemID Value="ID TECH"/>
      <FileAttribRef RuleID="ID_FILEATTRIB_MSRHOOK"/>
    </Signer>
    <Signer ID="ID_SIGNER_SFDRVX32" Name="GlobalSign CodeSigning CA - G2">
      <CertRoot Type="TBS" Value="589A7D4DF869395601BA7538A65AFAE8C4616385"/>
      <CertPublisher Value="SOKNO S.R.L."/>
      <FileAttribRef RuleID="ID_FILEATTRIB_SFDRVX32"/>
    </Signer>
    <Signer ID="ID_SIGNER_COMPUTERZ_1" Name="VeriSign Class 3 Code Signing 2009-2 CA">
      <CertRoot Type="TBS" Value="4CDC38C800761463749C3CBD94A12F32E49877BF"/>
      <CertPublisher Value="Chengdu Qiying Technology Co.,Ltd."/>
      <FileAttribRef RuleID="ID_FILEATTRIB_COMPUTERZ"/>
    </Signer>
    <Signer ID="ID_SIGNER_COMPUTERZ_2" Name="VeriSign Class 3 Code Signing 2010 CA">
      <CertRoot Type="TBS" Value="4843A82ED3B1F2BFBEE9671960E1940C942F688D"/>
      <CertPublisher Value="Chengdu Qiying Technology Co.,Ltd."/>
      <FileAttribRef RuleID="ID_FILEATTRIB_COMPUTERZ"/>
    </Signer>
    <Signer ID="ID_SIGNER_ECSIODRV" Name="GlobalSign Primary Object Publishing CA">
      <CertRoot Type="TBS" Value="879269F3F467A6D59641960A62FE9CB419355FF6"/>
      <CertPublisher Value="ELITEGROUP COMPUTER SYSTEMS CO"/>
      <FileAttribRef RuleID="ID_FILEATTRIB_ECSIODRV"/>
    </Signer>
    <Signer ID="ID_SIGNER_BAOJI" Name="VeriSign Class 3 Code Signing 2010 CA - Baoji zhihengtaiye co.,ltd">
      <CertRoot Type="TBS" Value="ED37AD43BC52426943019F77F35ED1A6B063B5B7" />
    </Signer>
    <Signer ID="ID_SIGNER_BEIJING_CHUNBAI" Name="VeriSign Class 3 Code Signing 2010 CA - Beijing Chunbai Technology Development Co., Ltd">
      <CertRoot Type="TBS" Value="C4CD7D2A3E12022BCFE2852A14438C7F2BD3A959" />
    </Signer>
    <Signer ID="ID_SIGNER_BEIJING_VSK" Name="Symantec Class 3 Code - Beijing VSK Soft Development Co.,Ltd; Thumbprint: 49B76C0AD6085E2F7385644F36CECC09F320BCF4">
      <CertRoot Type="TBS" Value="399B4EC286EC1963F1BB36206F3200C23DBF1717E24CF0868335FF3E13A45EA0" />
    </Signer>
    <Signer ID="ID_SIGNER_GEOTRUST_SRL_2009" Name="HT Srl Digital ID Class 3 - Microsoft Software Validation v2">
      <CertRoot Type="TBS" Value="D70EDFA009A76BD8250D74E9EE92EB9EAD7D4CB3" />
    </Signer>
    <Signer ID="ID_SIGNER_GEOTRUST_SRL_2010" Name="HT Srl Digital ID Class 3 - Microsoft Software Validation v2">
      <CertRoot Type="TBS" Value="E5BA2ABBD1DC89F143A66A3CDCDA26D968758E2D" />
    </Signer>
    <Signer ID="ID_SIGNER_GLOBAL_SOFT" Name="Symantec Class 3 SHA256 Code Signing CA - Global Software, LLC">
      <CertRoot Type="TBS" Value="A79C023D3452B2F27E7BC36D2588C28564B2ABABBF78AFAC844152B8DD3A89D4" />
    </Signer>
    <Signer ID="ID_SIGNER_GOOD_WEI" Name="thawte SHA256 Code Signing CA - 善君 韦">
      <CertRoot Type="TBS" Value="8438D529DC1D87E288CE3C8830A782BB167E20A6E1FD37624D5DF21340FF6B25" />
    </Signer>
    <Signer ID="ID_SIGNER_HANDAN" Name="Handan City Congtai District LiKang  Daily Goods Department">
      <CertRoot Type="TBS" Value="CCCAE21FBC083F5D1AF6997BB3F29ED9915E7324" />
    </Signer>
    <Signer ID="ID_SIGNER_HYPERTECH" Name="VeriSign Class 3 Code Signing 2010 CA - HYPER TECH CO., LTD.">
      <CertRoot Type="TBS" Value="5CBF0640A92AB3779F2AF481DAF0ADFEF9BD99F5" />
    </Signer>
    <Signer ID="ID_SIGNER_NANJING" Name="Nanjing Zhixiao Information Technology Co.,Ltd">
      <CertRoot Type="TBS" Value="F5E1C4D98F9CE552EAD3776C16F3AD91FE5F3984" />
    </Signer>
    <Signer ID="ID_SIGNER_TRUST_ASIA" Name="上海域联软件技术有限公司">
      <CertRoot Type="TBS" Value="232A71B4D1734EAC2CFC6EA554C86DE34F9F8B72" />
    </Signer>
    <Signer ID="ID_SIGNER_JEROMIN_CODY_ERIC" Name="Jeromin Cody Eric">
      <CertRoot Type="TBS" Value="DFA6171201B51A2EC174310E8FB9F4C0FDE2D365235E589DED0213C5279BEA6E" />
    </Signer>
    <Signer ID="ID_SIGNER_SAASAME" Name="SaaSaMe Ltd.">
      <CertRoot Type="TBS" Value="A86DE66D8198E4272859881476A6F9936034A482" />
    </Signer>
    <Signer ID="ID_SIGNER_JCOS_1" Name="JCOS Media srvnetbus">
      <CertRoot Type="TBS" Value="06530FA1FA2D0954A87C4AA1891699E7C81AB2CA" />
    </Signer>
    <Signer ID="ID_SIGNER_JCOS_2" Name="JCOS Media pshedmp">
      <CertRoot Type="TBS" Value="8A3994CC7AA70F5480166A96A32EB10BAB0A7A36" />
    </Signer>
    <Signer ID="ID_SIGNER_HERMETICWIPER_1" Name="DigiCert Assured ID Code Signing CA-1">
      <CertRoot Type="TBS" Value="47F4B9898631773231B32844EC0D49990AC4EB1E" />
      <CertPublisher Value="CHENGDU YIWO Tech Development Co., Ltd." />
    </Signer>
    <Signer ID="ID_SIGNER_HERMETICWIPER_2" Name="Symantec Class 3 Extended Validation Code Signing CA - G2">
      <CertRoot Type="TBS" Value="B3C925B4048C3F7C444D248A2B101186B57CBA39596EB5DCE0E17A4EE4B32F19" />
      <CertPublisher Value="Chengdu Yiwo Tech Development Co., Ltd." />
    </Signer>
    <Signer ID="ID_SIGNER_HERMETICWIPER_3" Name="VeriSign Class 3 Code Signing 2004 CA">
      <CertRoot Type="TBS" Value="C7FC1727F5B75A6421A1F95C73BBDB23580C48E5" />
      <CertPublisher Value="CHENGDU YIWO Tech Development Co., Ltd." />
    </Signer>
    <Signer ID="ID_SIGNER_HERMETICWIPER_4" Name="VeriSign Class 3 Code Signing 2010 CA">
      <CertRoot Type="TBS" Value="4843A82ED3B1F2BFBEE9671960E1940C942F688D" />
      <CertPublisher Value="CHENGDU YIWO Tech Development Co., Ltd." />
    </Signer>
    <Signer ID="ID_SIGNER_NVIDIA_2007" Name="Leaked 2007 NVIDIA Corporation Verisign Class 3 Code Signing 2004 CA">
      <CertRoot Type="TBS" Value="80854F578E2A3B5552EA839BA4F98DDFE94B2381" />
    </Signer>
    <Signer ID="ID_SIGNER_NVIDIA_2011" Name="Leaked 2011 NVIDIA Corporation Verisign Class 3 Code Signing 2010 CA">
      <CertRoot Type="TBS" Value="15C37DBEBE6FCC77108E3D7AD982676D3D5E77F7" />
    </Signer>
    <Signer ID="ID_SIGNER_NVIDIA_2015" Name="Leaked 2015 NVIDIA Corporation Verisign Class 3 Code Signing 2010 CA">
      <CertRoot Type="TBS" Value="F049A238763D4A90B148AB10A500F96EBF1DC436" />
    </Signer>
    <Signer ID="ID_SIGNER_VBOX_ORCALE" Name="VeriSign Class 3 Code Signing 2010 CA">
      <CertRoot Type="TBS" Value="4843A82ED3B1F2BFBEE9671960E1940C942F688D" />
      <CertPublisher Value="Oracle Corporation" />
      <FileAttribRef RuleID="ID_FILEATTRIB_VBOX" />
    </Signer>
    <Signer ID="ID_SIGNER_VBOX_SUN" Name="VeriSign Class 3 Code Signing 2004 CA">
      <CertRoot Type="TBS" Value="C7FC1727F5B75A6421A1F95C73BBDB23580C48E5" />
      <CertPublisher Value="Sun Microsystems, Inc." />
      <FileAttribRef RuleID="ID_FILEATTRIB_VBOX" />
    </Signer>
    <Signer ID="ID_SIGNER_ZEMANA_1" Name="DigiCert High Assurance Code Signing CA-1">
      <CertRoot Type="TBS" Value="1D7E838ACCD498C2E5BA9373AF819EC097BB955C" />
      <CertPublisher Value="Zemana Ltd." />
    </Signer>
    <Signer ID="ID_SIGNER_ZEMANA_2" Name="VeriSign Class 3 Code Signing 2010 CA">
      <CertRoot Type="TBS" Value="4843A82ED3B1F2BFBEE9671960E1940C942F688D" />
      <CertPublisher Value="Zemana Ltd." />
    </Signer>
    <Signer ID="ID_SIGNER_ZEMANA_3" Name="Microsoft Windows Third Party Component CA 2014">
      <CertRoot Type="TBS" Value="D8BE9E4D9074088EF818BC6F6FB64955E90378B2754155126FEEBBBD969CF0AE" />
      <CertOemID Value="ZEMANA A.Ş." />
    </Signer>
  </Signers>
  <!--Driver Signing Scenarios-->
  <SigningScenarios>
    <SigningScenario Value="131" ID="ID_SIGNINGSCENARIO_DENIED_VULN_MAL_SIGNERS" FriendlyName="Signers of known vulnerable or malicious drivers">
      <ProductSigners>
        <DeniedSigners>
          <DeniedSigner SignerId="ID_SIGNER_AGNITUM_2004" />
          <DeniedSigner SignerId="ID_SIGNER_AGNITUM_2009" />
          <DeniedSigner SignerId="ID_SIGNER_AGNITUM_2010" />
          <DeniedSigner SignerId="ID_SIGNER_AGNITUM_2010_1" />
          <DeniedSigner SignerId="ID_SIGNER_ALSYSIO_1" />
          <DeniedSigner SignerId="ID_SIGNER_ALSYSIO_2" />
          <DeniedSigner SignerId="ID_SIGNER_AMDPP" />
          <DeniedSigner SignerId="ID_SIGNER_ATILLK" />
          <DeniedSigner SignerId="ID_SIGNER_ASROCK_RWDRV" />
          <DeniedSigner SignerId="ID_SIGNER_ASWARPOT_1" />
          <DeniedSigner SignerId="ID_SIGNER_ASWARPOT_2" />
          <DeniedSigner SignerId="ID_SIGNER_ASWARPOT_3" />
          <DeniedSigner SignerId="ID_SIGNER_ASWARPOT_4" />
          <DeniedSigner SignerId="ID_SIGNER_ASWARPOT_5" />
          <DeniedSigner SignerId="ID_SIGNER_ASWARPOT_6" />
          <DeniedSigner SignerId="ID_SIGNER_ASWSNX_1" />
          <DeniedSigner SignerId="ID_SIGNER_ASWSNX_2" />
          <DeniedSigner SignerId="ID_SIGNER_ASWSNX_3" />
          <DeniedSigner SignerId="ID_SIGNER_ASWSNX_4" />
          <DeniedSigner SignerId="ID_SIGNER_AVGELAM_1" />
          <DeniedSigner SignerId="ID_SIGNER_AVGELAM_2" />
          <DeniedSigner SignerId="ID_SIGNER_BAOJI" />
          <DeniedSigner SignerId="ID_SIGNER_BEIJING_CHUNBAI" />
          <DeniedSigner SignerId="ID_SIGNER_BEIJING_VSK" />
          <DeniedSigner SignerId="ID_SIGNER_CAPCOM" />
          <DeniedSigner SignerId="ID_SIGNER_CHEAT_ENGINE" />
          <DeniedSigner SignerId="ID_SIGNER_COMPUTERZ_1" />
          <DeniedSigner SignerId="ID_SIGNER_COMPUTERZ_2" />
          <DeniedSigner SignerId="ID_SIGNER_COMODO_IQVW" />
          <DeniedSigner SignerId="ID_SIGNER_CPUZ_1" />
          <DeniedSigner SignerId="ID_SIGNER_CPUZ_2" />
          <DeniedSigner SignerId="ID_SIGNER_DIGICERT_EV" />
          <DeniedSigner SignerId="ID_SIGNER_ECSIODRV" />
          <DeniedSigner SignerId="ID_SIGNER_ELBY" />
          <DeniedSigner SignerId="ID_SIGNER_ENE" />
          <DeniedSigner SignerId="ID_SIGNER_ETDSUPPORT" />
          <DeniedSigner SignerId="ID_SIGNER_FAIRPLAY_1" />
          <DeniedSigner SignerId="ID_SIGNER_FAIRPLAY_2" />
          <DeniedSigner SignerId="ID_SIGNER_FAIRPLAY_3" />
          <DeniedSigner SignerId="ID_SIGNER_FAIRPLAY_4" />
          <DeniedSigner SignerId="ID_SIGNER_GEOTRUST_SRL_2009" />
          <DeniedSigner SignerId="ID_SIGNER_GEOTRUST_SRL_2010" />
          <DeniedSigner SignerId="ID_SIGNER_GETAC" />
          <DeniedSigner SignerId="ID_SIGNER_GLOBAL_SOFT" />
          <DeniedSigner SignerId="ID_SIGNER_GLOBALSIGN_CHEAT_ENGINE" />
          <DeniedSigner SignerId="ID_SIGNER_GLOBALSIGN_G2_CHEAT_ENGINE" />
          <DeniedSigner SignerId="ID_SIGNER_GLOBALSIGN_G2_MICROSTAR" />
          <DeniedSigner SignerId="ID_SIGNER_GLOBALSIGN_MICROSTAR" />
          <DeniedSigner SignerId="ID_SIGNER_GLOBALSIGN_TG_SOFT" />
          <DeniedSigner SignerId="ID_SIGNER_GMER" />
          <DeniedSigner SignerId="ID_SIGNER_GMEREK" />
          <DeniedSigner SignerId="ID_SIGNER_GOOD_WEI" />
          <DeniedSigner SignerId="ID_SIGNER_HANDAN" />
          <DeniedSigner SignerId="ID_SIGNER_HAXM_1" />
          <DeniedSigner SignerId="ID_SIGNER_HAXM_2" />
          <DeniedSigner SignerId="ID_SIGNER_HAXM_3" />
          <DeniedSigner SignerId="ID_SIGNER_HYPERTECH" />
          <DeniedSigner SignerId="ID_SIGNER_HP" />
          <DeniedSigner SignerId="ID_SIGNER_HW_A" />
          <DeniedSigner SignerId="ID_SIGNER_HW_B" />
          <DeniedSigner SignerId="ID_SIGNER_HW_C" />
          <DeniedSigner SignerId="ID_SIGNER_HW_D" />
          <DeniedSigner SignerId="ID_SIGNER_HWDETECTNG" />
          <DeniedSigner SignerId="ID_SIGNER_HWINFO_1" />
          <DeniedSigner SignerId="ID_SIGNER_HWINFO_2" />
          <DeniedSigner SignerId="ID_SIGNER_HWINFO_3" />
          <DeniedSigner SignerId="ID_SIGNER_HWINFO_4" />
          <DeniedSigner SignerId="ID_SIGNER_HWINFO_5" />
          <DeniedSigner SignerId="ID_SIGNER_HWINFO_6" />
          <DeniedSigner SignerId="ID_SIGNER_HWRWDRV_1" />
          <DeniedSigner SignerId="ID_SIGNER_HWRWDRV_2" />
          <DeniedSigner SignerId="ID_SIGNER_INTEL_IQVW" />
          <DeniedSigner SignerId="ID_SIGNER_IOBITUNLOCKER_1" />
          <DeniedSigner SignerId="ID_SIGNER_IOBITUNLOCKER_2" />
          <DeniedSigner SignerId="ID_SIGNER_IOBITUNLOCKER_3" />
          <DeniedSigner SignerId="ID_SIGNER_IOBITUNLOCKER_4" />
          <DeniedSigner SignerId="ID_SIGNER_JCOS_1" />
          <DeniedSigner SignerId="ID_SIGNER_JCOS_2" />
          <DeniedSigner SignerId="ID_SIGNER_JEROMIN_CODY_ERIC" />
          <DeniedSigner SignerId="ID_SIGNER_LV_DIAG" />
          <DeniedSigner SignerId="ID_SIGNER_LV_DIAG_2" />
          <DeniedSigner SignerId="ID_SIGNER_LV_LOGITECH" />
          <DeniedSigner SignerId="ID_SIGNER_MAN_MUS" />
          <DeniedSigner SignerId="ID_SIGNER_MB_RB_HACKS" />
          <DeniedSigner SignerId="ID_SIGNER_MICKS" />
          <DeniedSigner SignerId="ID_SIGNER_MIMIKATZ_KERNEL" />
          <DeniedSigner SignerId="ID_SIGNER_MIMIKATZ_KERNEL_SHA2" />
          <DeniedSigner SignerId="ID_SIGNER_MIMIKATZ_USER" />
          <DeniedSigner SignerId="ID_SIGNER_MS_ELAM" />
          <DeniedSigner SignerId="ID_SIGNER_MS_ELAM_1" />
          <DeniedSigner SignerId="ID_SIGNER_MSIO32" />
          <DeniedSigner SignerId="ID_SIGNER_MSRHOOK" />
          <DeniedSigner SignerId="ID_SIGNER_MYDRIVERS_1" />
          <DeniedSigner SignerId="ID_SIGNER_MYDRIVERS_2" />
          <DeniedSigner SignerId="ID_SIGNER_MYDRIVERS_3" />
          <DeniedSigner SignerId="ID_SIGNER_NANJING" />
          <DeniedSigner SignerId="ID_SIGNER_NGIODRIVER" />
          <DeniedSigner SignerId="ID_SIGNER_NVFLASH" />
          <DeniedSigner SignerId="ID_SIGNER_NVFLASH_2" />
          <DeniedSigner SignerId="ID_SIGNER_NVFLASH_3" />
          <DeniedSigner SignerId="ID_SIGNER_NVOCLOCK" />
          <DeniedSigner SignerId="ID_SIGNER_OPENLIBSYS"/>
          <DeniedSigner SignerId="ID_SIGNER_PAN" />
          <DeniedSigner SignerId="ID_SIGNER_PAVEL_Y_1" />
          <DeniedSigner SignerId="ID_SIGNER_PAVEL_Y_2" />
          <DeniedSigner SignerId="ID_SIGNER_PHYSMEM" />
          <DeniedSigner SignerId="ID_SIGNER_PCDOC"/>
          <DeniedSigner SignerId="ID_SIGNER_PROCEXP_1" />
          <DeniedSigner SignerId="ID_SIGNER_PROCEXP_2" />
          <DeniedSigner SignerId="ID_SIGNER_PROCEXP_3" />
          <DeniedSigner SignerId="ID_SIGNER_PROCEXP_4" />
          <DeniedSigner SignerId="ID_SIGNER_PROCEXP_5" />
          <DeniedSigner SignerId="ID_SIGNER_REALTEK" />
          <DeniedSigner SignerId="ID_SIGNER_RENTDRV" />
          <DeniedSigner SignerId="ID_SIGNER_RWEVERY" />
          <DeniedSigner SignerId="ID_SIGNER_SAASAME" />
          <DeniedSigner SignerId="ID_SIGNER_SANDRA" />
          <DeniedSigner SignerId="ID_SIGNER_SANDRA_THAWTE" />
          <DeniedSigner SignerId="ID_SIGNER_SPEEDFAN" />
          <DeniedSigner SignerId="ID_SIGNER_SFDRVX32" />
          <DeniedSigner SignerId="ID_SIGNER_SYSDRV3S" />
          <DeniedSigner SignerId="ID_SIGNER_PHYMEM" />
          <DeniedSigner SignerId="ID_SIGNER_PHYMEM_1" />
          <DeniedSigner SignerId="ID_SIGNER_PHYMEM_2" />
          <DeniedSigner SignerId="ID_SIGNER_SYMANTEC_CLASS_3" />
          <DeniedSigner SignerId="ID_SIGNER_SYMANTEC_CLASS_3_EV" />
          <DeniedSigner SignerId="ID_SIGNER_TRUST_ASIA" />
          <DeniedSigner SignerId="ID_SIGNER_TRUESIGHT_1" />
          <DeniedSigner SignerId="ID_SIGNER_TRUESIGHT_2" />
          <DeniedSigner SignerId="ID_SIGNER_VBOX" />
          <DeniedSigner SignerId="ID_SIGNER_VERISIGN_2004" />
          <DeniedSigner SignerId="ID_SIGNER_VERISIGN_2004_BIOSTAR" />
          <DeniedSigner SignerId="ID_SIGNER_VERISIGN_2004_ASUS_BS_DEF" />
          <DeniedSigner SignerId="ID_SIGNER_VERISIGN_2009" />
          <DeniedSigner SignerId="ID_SIGNER_VERISIGN_2009_BIOSTAR" />
          <DeniedSigner SignerId="ID_SIGNER_VERISIGN_2009_REALTEK" />
          <DeniedSigner SignerId="ID_SIGNER_VERISIGN_2010" />
          <DeniedSigner SignerId="ID_SIGNER_VERISIGN_2010_2" />
          <DeniedSigner SignerId="ID_SIGNER_VERISIGN_2010_BIOSTAR" />
          <DeniedSigner SignerId="ID_SIGNER_VERISIGN_AMD" />
          <DeniedSigner SignerId="ID_SIGNER_VERISIGN_INSYDE" />
          <DeniedSigner SignerId="ID_SIGNER_VERISIGN_NOVELL" />
          <DeniedSigner SignerId="ID_SIGNER_VERISIGN_TG_SOFT" />
          <DeniedSigner SignerId="ID_SIGNER_VERISIGN_TOSHIBA" />
          <DeniedSigner SignerId="ID_SIGNER_VMDRV" />
          <DeniedSigner SignerId="ID_SIGNER_WINDOWS_3RD_PARTY_2010" />
          <DeniedSigner SignerId="ID_SIGNER_WINDOWS_3RD_PARTY_2012" />
          <DeniedSigner SignerId="ID_SIGNER_WINDOWS_3RD_PARTY_2014" />
          <DeniedSigner SignerId="ID_SIGNER_WISEUNLO" />
          <DeniedSigner SignerId="ID_SIGNER_WISEUNLO_1" />
          <DeniedSigner SignerId="ID_SIGNER_WISEUNLO_2" />
          <DeniedSigner SignerId="ID_SIGNER_HERMETICWIPER_1" />
          <DeniedSigner SignerId="ID_SIGNER_HERMETICWIPER_2" />
          <DeniedSigner SignerId="ID_SIGNER_HERMETICWIPER_3" />
          <DeniedSigner SignerId="ID_SIGNER_HERMETICWIPER_4" />
          <DeniedSigner SignerId="ID_SIGNER_NVIDIA_2007" />
          <DeniedSigner SignerId="ID_SIGNER_NVIDIA_2011" />
          <DeniedSigner SignerId="ID_SIGNER_NVIDIA_2015" />
          <DeniedSigner SignerId="ID_SIGNER_VBOX_ORCALE" />
          <DeniedSigner SignerId="ID_SIGNER_VBOX_SUN" />
          <DeniedSigner SignerId="ID_SIGNER_ZEMANA_1" />
          <DeniedSigner SignerId="ID_SIGNER_ZEMANA_2" />
          <DeniedSigner SignerId="ID_SIGNER_ZEMANA_3" />
        </DeniedSigners>
        <FileRulesRef>
          <FileRuleRef RuleID="ID_ALLOW_ALL_1" />
          <FileRuleRef RuleID="ID_DENY_AGENT64_SHA1" />
          <FileRuleRef RuleID="ID_DENY_AGENT64_SHA256" />
          <FileRuleRef RuleID="ID_DENY_AGENT64_SHA1_PAGE" />
          <FileRuleRef RuleID="ID_DENY_AGENT64_SHA256_PAGE" />
          <FileRuleRef RuleID="ID_DENY_ASIO_32_SHA1" />
          <FileRuleRef RuleID="ID_DENY_ASIO_32_SHA256" />
          <FileRuleRef RuleID="ID_DENY_ASIO_32_SHA1_PAGE" />
          <FileRuleRef RuleID="ID_DENY_ASIO_32_SHA256_PAGE" />
          <FileRuleRef RuleID="ID_DENY_ASIO_32_SHA1_1" />
          <FileRuleRef RuleID="ID_DENY_ASIO_32_SHA256_1" />
          <FileRuleRef RuleID="ID_DENY_ASIO_32_SHA1_PAGE_1" />
          <FileRuleRef RuleID="ID_DENY_ASIO_32_SHA256_PAGE_1" />
          <FileRuleRef RuleID="ID_DENY_ASIO_32_SHA1_2" />
          <FileRuleRef RuleID="ID_DENY_ASIO_32_SHA256_2" />
          <FileRuleRef RuleID="ID_DENY_ASIO_32_SHA1_PAGE_2" />
          <FileRuleRef RuleID="ID_DENY_ASIO_32_SHA256_PAGE_2" />
          <FileRuleRef RuleID="ID_DENY_ASIO_64_SHA1" />
          <FileRuleRef RuleID="ID_DENY_ASIO_64_SHA256" />
          <FileRuleRef RuleID="ID_DENY_ASIO_64_SHA1_PAGE" />
          <FileRuleRef RuleID="ID_DENY_ASIO_64_SHA256_PAGE" />
          <FileRuleRef RuleID="ID_DENY_ASIO_64_SHA1_1" />
          <FileRuleRef RuleID="ID_DENY_ASIO_64_SHA256_1" />
          <FileRuleRef RuleID="ID_DENY_ASIO_64_SHA1_PAGE_1" />
          <FileRuleRef RuleID="ID_DENY_ASIO_64_SHA256_PAGE_1" />
          <FileRuleRef RuleID="ID_DENY_ASIO_64_SHA1_2" />
          <FileRuleRef RuleID="ID_DENY_ASIO_64_SHA256_2" />
          <FileRuleRef RuleID="ID_DENY_ASIO_64_SHA1_PAGE_2" />
          <FileRuleRef RuleID="ID_DENY_ASIO_64_SHA256_PAGE_2" />
          <FileRuleRef RuleID="ID_DENY_ASRDRV10_SHA1" />
          <FileRuleRef RuleID="ID_DENY_ASRDRV10_SHA256" />
          <FileRuleRef RuleID="ID_DENY_ASRDRV10_SHA1_PAGE" />
          <FileRuleRef RuleID="ID_DENY_ASRDRV10_SHA256_PAGE" />
          <FileRuleRef RuleID="ID_DENY_ASRDRV101_SHA1" />
          <FileRuleRef RuleID="ID_DENY_ASRDRV101_SHA256" />
          <FileRuleRef RuleID="ID_DENY_ASRDRV101_SHA1_PAGE" />
          <FileRuleRef RuleID="ID_DENY_ASRDRV101_SHA256_PAGE" />
          <FileRuleRef RuleID="ID_DENY_ASRDRV102_SHA1" />
          <FileRuleRef RuleID="ID_DENY_ASRDRV102_SHA256" />
          <FileRuleRef RuleID="ID_DENY_ASRDRV102_SHA1_PAGE" />
          <FileRuleRef RuleID="ID_DENY_ASRDRV102_SHA256_PAGE" />
          <FileRuleRef RuleID="ID_DENY_ASRDRV103_SHA1" />
          <FileRuleRef RuleID="ID_DENY_ASRDRV103_SHA256" />
          <FileRuleRef RuleID="ID_DENY_ASRDRV103_SHA1_PAGE" />
          <FileRuleRef RuleID="ID_DENY_ASRDRV103_SHA256_PAGE" />
          <FileRuleRef RuleID="ID_DENY_ASRDRV104_5A" />
          <FileRuleRef RuleID="ID_DENY_ASRDRV104_5B" />
          <FileRuleRef RuleID="ID_DENY_ASRDRV104_5C" />
          <FileRuleRef RuleID="ID_DENY_ASRDRV104_5D" />
          <FileRuleRef RuleID="ID_DENY_ASRDRV104_5E" />
          <FileRuleRef RuleID="ID_DENY_ASRDRV104_5F" />
          <FileRuleRef RuleID="ID_DENY_ASRDRV104_60" />
          <FileRuleRef RuleID="ID_DENY_ASRDRV104_61" />
          <FileRuleRef RuleID="ID_DENY_ASRDRV104_62" />
          <FileRuleRef RuleID="ID_DENY_ASRDRV104_63" />
          <FileRuleRef RuleID="ID_DENY_ASRDRV104_64" />
          <FileRuleRef RuleID="ID_DENY_ASRDRV104_65" />
          <FileRuleRef RuleID="ID_DENY_ASRDRV104_66" />
          <FileRuleRef RuleID="ID_DENY_ASRDRV104_67" />
          <FileRuleRef RuleID="ID_DENY_ASRSETUPDRV103_39" />
          <FileRuleRef RuleID="ID_DENY_ASRSETUPDRV103_3A" />
          <FileRuleRef RuleID="ID_DENY_ASRSETUPDRV103_3B" />
          <FileRuleRef RuleID="ID_DENY_ASRSETUPDRV103_3C" />
          <FileRuleRef RuleID="ID_DENY_ASRSETUPDRV103_3D" />
          <FileRuleRef RuleID="ID_DENY_ASRSETUPDRV103_3E" />
          <FileRuleRef RuleID="ID_DENY_ASRSETUPDRV103_3F" />
          <FileRuleRef RuleID="ID_DENY_ASRSETUPDRV103_40" />
          <FileRuleRef RuleID="ID_DENY_ATILLK_2" />
          <FileRuleRef RuleID="ID_DENY_ATILLK_3" />
          <FileRuleRef RuleID="ID_DENY_ATILLK_4" />
          <FileRuleRef RuleID="ID_DENY_ATILLK_5" />
          <FileRuleRef RuleID="ID_DENY_ATILLK_6" />
          <FileRuleRef RuleID="ID_DENY_ATILLK_7" />
          <FileRuleRef RuleID="ID_DENY_ATILLK_8" />
          <FileRuleRef RuleID="ID_DENY_ATILLK_9" />
          <FileRuleRef RuleID="ID_DENY_ATILLK_A" />
          <FileRuleRef RuleID="ID_DENY_ATILLK_B" />
          <FileRuleRef RuleID="ID_DENY_ATILLK_C" />
          <FileRuleRef RuleID="ID_DENY_ATILLK_D" />
          <FileRuleRef RuleID="ID_DENY_ATILLK_E" />
          <FileRuleRef RuleID="ID_DENY_ATILLK_F" />
          <FileRuleRef RuleID="ID_DENY_ATILLK_10" />
          <FileRuleRef RuleID="ID_DENY_ATILLK_11" />
          <FileRuleRef RuleID="ID_DENY_ATILLK_12" />
          <FileRuleRef RuleID="ID_DENY_ATILLK_13" />
          <FileRuleRef RuleID="ID_DENY_ATILLK_14" />
          <FileRuleRef RuleID="ID_DENY_ATILLK_15" />
          <FileRuleRef RuleID="ID_DENY_ATILLK_16" />
          <FileRuleRef RuleID="ID_DENY_ATILLK_17" />
          <FileRuleRef RuleID="ID_DENY_ATILLK_18" />
          <FileRuleRef RuleID="ID_DENY_ATILLK_19" />
          <FileRuleRef RuleID="ID_DENY_ATILLK_1A" />
          <FileRuleRef RuleID="ID_DENY_ATILLK_1B" />
          <FileRuleRef RuleID="ID_DENY_ATILLK_1C" />
          <FileRuleRef RuleID="ID_DENY_ATILLK_1D" />
          <FileRuleRef RuleID="ID_DENY_ATILLK_1E" />
          <FileRuleRef RuleID="ID_DENY_ATILLK_1F" />
          <FileRuleRef RuleID="ID_DENY_BANDAI_SHA1" />
          <FileRuleRef RuleID="ID_DENY_BANDAI_SHA256" />
          <FileRuleRef RuleID="ID_DENY_BANDAI_SHA1_PAGE" />
          <FileRuleRef RuleID="ID_DENY_BANDAI_SHA256_PAGE" />
          <FileRuleRef RuleID="ID_DENY_BS_RCIO64_SHA1" />
          <FileRuleRef RuleID="ID_DENY_BS_RCIO64_SHA256" />
          <FileRuleRef RuleID="ID_DENY_BS_RCIO64_SHA1_PAGE" />
          <FileRuleRef RuleID="ID_DENY_BS_RCIO64_SHA256_PAGE" />
          <FileRuleRef RuleID="ID_DENY_IOBITUNLOCKER_2" />
          <FileRuleRef RuleID="ID_DENY_IOBITUNLOCKER_3" />
          <FileRuleRef RuleID="ID_DENY_IOBITUNLOCKER_4" />
          <FileRuleRef RuleID="ID_DENY_IOBITUNLOCKER_5" />
          <FileRuleRef RuleID="ID_DENY_IOBITUNLOCKER_6" />
          <FileRuleRef RuleID="ID_DENY_IOBITUNLOCKER_7" />
          <FileRuleRef RuleID="ID_DENY_IOBITUNLOCKER_8" />
          <FileRuleRef RuleID="ID_DENY_IOBITUNLOCKER_9" />
          <FileRuleRef RuleID="ID_DENY_IOBITUNLOCKER_A" />
          <FileRuleRef RuleID="ID_DENY_IOBITUNLOCKER_B" />
          <FileRuleRef RuleID="ID_DENY_IOBITUNLOCKER_C" />
          <FileRuleRef RuleID="ID_DENY_IOBITUNLOCKER_D" />
          <FileRuleRef RuleID="ID_DENY_IOBITUNLOCKER_E" />
          <FileRuleRef RuleID="ID_DENY_IOBITUNLOCKER_F" />
          <FileRuleRef RuleID="ID_DENY_IOBITUNLOCKER_10" />
          <FileRuleRef RuleID="ID_DENY_IOBITUNLOCKER_11" />
          <FileRuleRef RuleID="ID_DENY_IOBITUNLOCKER_12" />
          <FileRuleRef RuleID="ID_DENY_IOBITUNLOCKER_13" />
          <FileRuleRef RuleID="ID_DENY_IOBITUNLOCKER_14" />
          <FileRuleRef RuleID="ID_DENY_IOBITUNLOCKER_15" />
          <FileRuleRef RuleID="ID_DENY_IOBITUNLOCKER_16" />
          <FileRuleRef RuleID="ID_DENY_IOBITUNLOCKER_17" />
          <FileRuleRef RuleID="ID_DENY_IOBITUNLOCKER_18" />
          <FileRuleRef RuleID="ID_DENY_IOBITUNLOCKER_19" />
          <FileRuleRef RuleID="ID_DENY_IOBITUNLOCKER_1A" />
          <FileRuleRef RuleID="ID_DENY_IOBITUNLOCKER_1B" />
          <FileRuleRef RuleID="ID_DENY_IOBITUNLOCKER_1C" />
          <FileRuleRef RuleID="ID_DENY_IOBITUNLOCKER_1D" />
          <FileRuleRef RuleID="ID_DENY_IOBITUNLOCKER_1E" />
          <FileRuleRef RuleID="ID_DENY_IOBITUNLOCKER_1F" />
          <FileRuleRef RuleID="ID_DENY_IOBITUNLOCKER_20" />
          <FileRuleRef RuleID="ID_DENY_IOBITUNLOCKER_21" />
          <FileRuleRef RuleID="ID_DENY_IOBITUNLOCKER_22" />
          <FileRuleRef RuleID="ID_DENY_IOBITUNLOCKER_23" />
          <FileRuleRef RuleID="ID_DENY_IOBITUNLOCKER_24" />
          <FileRuleRef RuleID="ID_DENY_IOBITUNLOCKER_25" />
          <FileRuleRef RuleID="ID_DENY_IOBITUNLOCKER_26" />
          <FileRuleRef RuleID="ID_DENY_IOBITUNLOCKER_27" />
          <FileRuleRef RuleID="ID_DENY_IOBITUNLOCKER_28" />
          <FileRuleRef RuleID="ID_DENY_IOBITUNLOCKER_29" />
          <FileRuleRef RuleID="ID_DENY_IOBITUNLOCKER_2A" />
          <FileRuleRef RuleID="ID_DENY_IOBITUNLOCKER_2B" />
          <FileRuleRef RuleID="ID_DENY_IOBITUNLOCKER_2C" />
          <FileRuleRef RuleID="ID_DENY_IOBITUNLOCKER_2D" />
          <FileRuleRef RuleID="ID_DENY_IOBITUNLOCKER_2E" />
          <FileRuleRef RuleID="ID_DENY_IOBITUNLOCKER_2F" />
          <FileRuleRef RuleID="ID_DENY_IOBITUNLOCKER_30" />
          <FileRuleRef RuleID="ID_DENY_IOBITUNLOCKER_31" />
          <FileRuleRef RuleID="ID_DENY_IOBITUNLOCKER_32" />
          <FileRuleRef RuleID="ID_DENY_IOBITUNLOCKER_33" />
          <FileRuleRef RuleID="ID_DENY_CAPCOM_SHA1" />
          <FileRuleRef RuleID="ID_DENY_CAPCOM_SHA256" />
          <FileRuleRef RuleID="ID_DENY_CAPCOM_SHA1_PAGE" />
          <FileRuleRef RuleID="ID_DENY_CAPCOM_SHA256_PAGE" />
          <FileRuleRef RuleID="ID_DENY_DBUTIL_32_SHA1" />
          <FileRuleRef RuleID="ID_DENY_DBUTIL_32_SHA256" />
          <FileRuleRef RuleID="ID_DENY_DBUTIL_32_SHA1_PAGE" />
          <FileRuleRef RuleID="ID_DENY_DBUTIL_32_SHA256_PAGE" />
          <FileRuleRef RuleID="ID_DENY_DBUTIL_64_SHA1" />
          <FileRuleRef RuleID="ID_DENY_DBUTIL_64_SHA256" />
          <FileRuleRef RuleID="ID_DENY_DBUTIL_64_SHA1_PAGE" />
          <FileRuleRef RuleID="ID_DENY_DBUTIL_64_SHA256_PAGE" />
          <FileRuleRef RuleID="ID_DENY_FIDDRV_SHA1" />
          <FileRuleRef RuleID="ID_DENY_FIDDRV_SHA256" />
          <FileRuleRef RuleID="ID_DENY_FIDDRV_SHA1_PAGE" />
          <FileRuleRef RuleID="ID_DENY_FIDDRV_SHA256_PAGE" />
          <FileRuleRef RuleID="ID_DENY_FIDDRV64_SHA1" />
          <FileRuleRef RuleID="ID_DENY_FIDDRV64_SHA256" />
          <FileRuleRef RuleID="ID_DENY_FIDDRV64_SHA1_PAGE" />
          <FileRuleRef RuleID="ID_DENY_FIDDRV64_SHA256_PAGE" />
          <FileRuleRef RuleID="ID_DENY_FIDPCIDRV_SHA1" />
          <FileRuleRef RuleID="ID_DENY_FIDPCIDRV_SHA256" />
          <FileRuleRef RuleID="ID_DENY_FIDPCIDRV_SHA1_PAGE" />
          <FileRuleRef RuleID="ID_DENY_FIDPCIDRV_SHA256_PAGE" />
          <FileRuleRef RuleID="ID_DENY_FIDPCIDRV64_SHA1" />
          <FileRuleRef RuleID="ID_DENY_FIDPCIDRV64_SHA256" />
          <FileRuleRef RuleID="ID_DENY_FIDPCIDRV64_SHA1_PAGE" />
          <FileRuleRef RuleID="ID_DENY_FIDPCIDRV64_SHA256_PAGE" />
          <FileRuleRef RuleID="ID_DENY_GLCKIO2_SHA1" />
          <FileRuleRef RuleID="ID_DENY_GLCKIO2_SHA256" />
          <FileRuleRef RuleID="ID_DENY_GLCKIO2_SHA1_PAGE" />
          <FileRuleRef RuleID="ID_DENY_GLCKIO2_SHA256_PAGE" />
          <FileRuleRef RuleID="ID_DENY_GMER_1" />
          <FileRuleRef RuleID="ID_DENY_GMER_2" />
          <FileRuleRef RuleID="ID_DENY_GMER_3" />
          <FileRuleRef RuleID="ID_DENY_GMER_4" />
          <FileRuleRef RuleID="ID_DENY_GMER_5" />
          <FileRuleRef RuleID="ID_DENY_GMER_6" />
          <FileRuleRef RuleID="ID_DENY_GVCIDRV64_SHA1" />
          <FileRuleRef RuleID="ID_DENY_GVCIDRV64_SHA256" />
          <FileRuleRef RuleID="ID_DENY_GVCIDRV64_SHA1_PAGE" />
          <FileRuleRef RuleID="ID_DENY_GVCIDRV64_SHA256_PAGE" />
          <FileRuleRef RuleID="ID_DENY_WINFLASH64_SHA1" />
          <FileRuleRef RuleID="ID_DENY_WINFLASH64_SHA256" />
          <FileRuleRef RuleID="ID_DENY_WINFLASH64_SHA1_PAGE" />
          <FileRuleRef RuleID="ID_DENY_WINFLASH64_SHA256_PAGE" />
          <FileRuleRef RuleID="ID_DENY_AMIFLDRV_1" />
          <FileRuleRef RuleID="ID_DENY_AMIFLDRV_2" />
          <FileRuleRef RuleID="ID_DENY_AMIFLDRV_3" />
          <FileRuleRef RuleID="ID_DENY_AMIFLDRV_4" />
          <FileRuleRef RuleID="ID_DENY_AMIFLDRV_5" />
          <FileRuleRef RuleID="ID_DENY_AMIFLDRV_6" />
          <FileRuleRef RuleID="ID_DENY_AMIFLDRV_7" />
          <FileRuleRef RuleID="ID_DENY_AMIFLDRV_8" />
          <FileRuleRef RuleID="ID_DENY_AMIFLDRV_9" />
          <FileRuleRef RuleID="ID_DENY_AMIFLDRV_A" />
          <FileRuleRef RuleID="ID_DENY_AMIFLDRV_B" />
          <FileRuleRef RuleID="ID_DENY_AMIFLDRV_C" />
          <FileRuleRef RuleID="ID_DENY_AMIFLDRV_11" />
          <FileRuleRef RuleID="ID_DENY_AMIFLDRV_12" />
          <FileRuleRef RuleID="ID_DENY_AMIFLDRV_13" />
          <FileRuleRef RuleID="ID_DENY_AMIFLDRV_14" />
          <FileRuleRef RuleID="ID_DENY_AMIFLDRV_15" />
          <FileRuleRef RuleID="ID_DENY_AMIFLDRV_16" />
          <FileRuleRef RuleID="ID_DENY_AMIFLDRV_17" />
          <FileRuleRef RuleID="ID_DENY_AMIFLDRV_18" />
          <FileRuleRef RuleID="ID_DENY_AMIFLDRV_19" />
          <FileRuleRef RuleID="ID_DENY_AMIFLDRV_1A" />
          <FileRuleRef RuleID="ID_DENY_AMIFLDRV_1B" />
          <FileRuleRef RuleID="ID_DENY_AMIFLDRV_1C" />
          <FileRuleRef RuleID="ID_DENY_AMIFLDRV_1D" />
          <FileRuleRef RuleID="ID_DENY_AMIFLDRV_1E" />
          <FileRuleRef RuleID="ID_DENY_AMIFLDRV_1F" />
          <FileRuleRef RuleID="ID_DENY_AMIFLDRV_20" />
          <FileRuleRef RuleID="ID_DENY_AMIFLDRV_21" />
          <FileRuleRef RuleID="ID_DENY_AMIFLDRV_22" />
          <FileRuleRef RuleID="ID_DENY_AMIFLDRV_23" />
          <FileRuleRef RuleID="ID_DENY_AMIFLDRV_24" />
          <FileRuleRef RuleID="ID_DENY_AMIFLDRV_25" />
          <FileRuleRef RuleID="ID_DENY_AMIFLDRV_26" />
          <FileRuleRef RuleID="ID_DENY_AMIFLDRV_27" />
          <FileRuleRef RuleID="ID_DENY_AMIFLDRV_28" />
          <FileRuleRef RuleID="ID_DENY_AMIFLDRV_29" />
          <FileRuleRef RuleID="ID_DENY_AMIFLDRV_2A" />
          <FileRuleRef RuleID="ID_DENY_AMIFLDRV_2B" />
          <FileRuleRef RuleID="ID_DENY_AMIFLDRV_2C" />
          <FileRuleRef RuleID="ID_DENY_AMIFLDRV_2D" />
          <FileRuleRef RuleID="ID_DENY_AMIFLDRV_2E" />
          <FileRuleRef RuleID="ID_DENY_AMIFLDRV_2F" />
          <FileRuleRef RuleID="ID_DENY_AMIFLDRV_30" />
          <FileRuleRef RuleID="ID_DENY_AMIFLDRV_31" />
          <FileRuleRef RuleID="ID_DENY_AMIFLDRV_32" />
          <FileRuleRef RuleID="ID_DENY_AMIFLDRV_33" />
          <FileRuleRef RuleID="ID_DENY_AMIFLDRV_34" />
          <FileRuleRef RuleID="ID_DENY_AMIFLDRV_35" />
          <FileRuleRef RuleID="ID_DENY_AMIFLDRV_36" />
          <FileRuleRef RuleID="ID_DENY_AMIFLDRV_37" />
          <FileRuleRef RuleID="ID_DENY_AMIFLDRV_38" />
          <FileRuleRef RuleID="ID_DENY_ASIO_1"/>
          <FileRuleRef RuleID="ID_DENY_ASIO_2"/>
          <FileRuleRef RuleID="ID_DENY_ASIO_3"/>
          <FileRuleRef RuleID="ID_DENY_ASIO_4"/>
          <FileRuleRef RuleID="ID_DENY_ASIO_5"/>
          <FileRuleRef RuleID="ID_DENY_ASIO_6"/>
          <FileRuleRef RuleID="ID_DENY_ASUPIO64_SHA1" />
          <FileRuleRef RuleID="ID_DENY_ASUPIO64_SHA256" />
          <FileRuleRef RuleID="ID_DENY_ASUPIO64_SHA1_PAGE" />
          <FileRuleRef RuleID="ID_DENY_ASUPIO64_SHA256_PAGE" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_22" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_23" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_24" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_25" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_26" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_27" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_28" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_29" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_2A" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_2B" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_2C" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_2D" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_2E" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_2F" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_30" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_31" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_32" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_33" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_34" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_35" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_36" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_37" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_38" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_39" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_3A" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_3B" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_3C" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_3D" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_3E" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_3F" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_40" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_41" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_42" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_43" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_44" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_45" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_46" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_47" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_48" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_49" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_4A" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_4B" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_4C" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_4D" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_4E" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_4F" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_50" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_51" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_52" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_53" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_54" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_55" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_56" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_57" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_58" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_59" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_5A" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_5B" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_5C" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_5D" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_5E" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_5F" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_60" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_61" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_62" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_63" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_64" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_65" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_66" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_67" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_68" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_69" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_6A" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_6B" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_6C" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_6D" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_6E" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_6F" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_70" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_71" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_72" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_73" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_74" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_75" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_76" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_77" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_78" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_79" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_7A" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_7B" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_7C" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_7D" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_7E" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_7F" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_80" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_81" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_82" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_83" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_84" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_85" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_86" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_87" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_88" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_89" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_8A" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_8B" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_8C" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_8D" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_8E" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_8F" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_90" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_91" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_92" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_93" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_94" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_95" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_96" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_97" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_98" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_99" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_9A" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_9B" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_9C" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_9D" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_9E" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_9F" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_A0" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_A1" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_A2" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_A3" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_A4" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_A5" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_A6" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_A7" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_A8" />
          <FileRuleRef RuleID="ID_DENY_BEDAISY_A9" />
          <FileRuleRef RuleID="ID_DENY_BSFLASH64_SHA1" />
          <FileRuleRef RuleID="ID_DENY_BSFLASH64_SHA256" />
          <FileRuleRef RuleID="ID_DENY_BSFLASH64_SHA1_PAGE" />
          <FileRuleRef RuleID="ID_DENY_BSFLASH64_SHA256_PAGE" />
          <FileRuleRef RuleID="ID_DENY_BSHWMIO64_SHA1" />
          <FileRuleRef RuleID="ID_DENY_BSHWMIO64_SHA256" />
          <FileRuleRef RuleID="ID_DENY_BSHWMIO64_SHA1_PAGE" />
          <FileRuleRef RuleID="ID_DENY_BSHWMIO64_SHA256_PAGE" />
          <FileRuleRef RuleID="ID_DENY_BSHWMIO64_SHA1_1" />
          <FileRuleRef RuleID="ID_DENY_BSHWMIO64_SHA256_1" />
          <FileRuleRef RuleID="ID_DENY_BSHWMIO64_SHA1_PAGE_1" />
          <FileRuleRef RuleID="ID_DENY_BSHWMIO64_SHA256_PAGE_1" />
          <FileRuleRef RuleID="ID_DENY_BS_RCIO_08" />
          <FileRuleRef RuleID="ID_DENY_BS_RCIO_09" />
          <FileRuleRef RuleID="ID_DENY_BS_RCIO_10" />
          <FileRuleRef RuleID="ID_DENY_BS_RCIO_11" />
          <FileRuleRef RuleID="ID_DENY_BS_RCIO_12" />
          <FileRuleRef RuleID="ID_DENY_BS_RCIO_13" />
          <FileRuleRef RuleID="ID_DENY_BS_RCIO_14" />
          <FileRuleRef RuleID="ID_DENY_BS_RCIO_15" />
          <FileRuleRef RuleID="ID_DENY_BS_RCIO_16" />
          <FileRuleRef RuleID="ID_DENY_BS_RCIO_17" />
          <FileRuleRef RuleID="ID_DENY_BS_RCIO_18" />
          <FileRuleRef RuleID="ID_DENY_BS_RCIO_19" />
          <FileRuleRef RuleID="ID_DENY_BS_RCIO_1A" />
          <FileRuleRef RuleID="ID_DENY_BS_RCIO_1B" />
          <FileRuleRef RuleID="ID_DENY_BS_RCIO_1C" />
          <FileRuleRef RuleID="ID_DENY_BS_RCIO_1D" />
          <FileRuleRef RuleID="ID_DENY_BS_RCIO_1E" />
          <FileRuleRef RuleID="ID_DENY_BS_RCIO_1F" />
          <FileRuleRef RuleID="ID_DENY_BS_RCIO_20" />
          <FileRuleRef RuleID="ID_DENY_BS_RCIO_21" />
          <FileRuleRef RuleID="ID_DENY_BS_RCIO_22" />
          <FileRuleRef RuleID="ID_DENY_BS_RCIO_23" />
          <FileRuleRef RuleID="ID_DENY_DHKERNEL_1" />
          <FileRuleRef RuleID="ID_DENY_DHKERNEL_2" />
          <FileRuleRef RuleID="ID_DENY_DHKERNEL_3" />
          <FileRuleRef RuleID="ID_DENY_DHKERNEL_4" />
          <FileRuleRef RuleID="ID_DENY_DHKERNEL_5" />
          <FileRuleRef RuleID="ID_DENY_DHKERNEL_6" />
          <FileRuleRef RuleID="ID_DENY_DHKERNEL_8" />
          <FileRuleRef RuleID="ID_DENY_DHKERNEL_9" />
          <FileRuleRef RuleID="ID_DENY_DHKERNEL_10"/>
          <FileRuleRef RuleID="ID_DENY_DHKERNEL_11" />
          <FileRuleRef RuleID="ID_DENY_DHKERNEL_12" />
          <FileRuleRef RuleID="ID_DENY_DHKERNEL_13" />
          <FileRuleRef RuleID="ID_DENY_DELLBIOS_1" />
          <FileRuleRef RuleID="ID_DENY_DELLBIOS_2" />
          <FileRuleRef RuleID="ID_DENY_DELLBIOS_3" />
          <FileRuleRef RuleID="ID_DENY_DELLBIOS_4" />
          <FileRuleRef RuleID="ID_DENY_DELLBIOS_5" />
          <FileRuleRef RuleID="ID_DENY_DELLBIOS_6" />
          <FileRuleRef RuleID="ID_DENY_DELLBIOS_7" />
          <FileRuleRef RuleID="ID_DENY_DELLBIOS_8" />
          <FileRuleRef RuleID="ID_DENY_DELLBIOS_9" />
          <FileRuleRef RuleID="ID_DENY_DELLBIOS_10"/>
          <FileRuleRef RuleID="ID_DENY_DELLBIOS_11"/>
          <FileRuleRef RuleID="ID_DENY_DELLBIOS_12"/>
          <FileRuleRef RuleID="ID_DENY_DELLBIOS_13"/>
          <FileRuleRef RuleID="ID_DENY_DELLBIOS_14"/>
          <FileRuleRef RuleID="ID_DENY_DELLBIOS_15"/>
          <FileRuleRef RuleID="ID_DENY_DELLBIOS_16"/>
          <FileRuleRef RuleID="ID_DENY_DELLBIOS_17"/>
          <FileRuleRef RuleID="ID_DENY_DELLBIOS_18"/>
          <FileRuleRef RuleID="ID_DENY_DELLBIOS_19"/>
          <FileRuleRef RuleID="ID_DENY_DELLBIOS_20"/>
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_12" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_13" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_14" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_15" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_16" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_17" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_18" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_19" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_1A" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_1B" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_1C" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_1D" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_1E" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_1F" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_20" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_21" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_22" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_23" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_24" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_25" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_26" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_27" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_28" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_29" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_2A" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_2B" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_2C" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_2D" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_2E" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_2F" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_30" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_31" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_32" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_33" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_34" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_35" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_36" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_37" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_38" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_39" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_3A" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_3B" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_42" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_43" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_44" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_45" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_46" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_47" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_48" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_49" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_4A" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_4B" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_4C" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_4D" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_4E" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_4F" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_50" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_51" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_52" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_53" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_54" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_55" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_56" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_57" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_58" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_59" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_5A" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_5B" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_5C" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_5D" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_5E" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_5F" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_60" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_61" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_62" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_63" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_64" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_65" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_66" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_67" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_68" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_69" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_6A" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_6B" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_6C" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_6D" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_6E" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_6F" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_70" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_71" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_72" />
          <FileRuleRef RuleID="ID_DENY_DIRECTIO_73" />
          <FileRuleRef RuleID="ID_DENY_ECHO_1" />
          <FileRuleRef RuleID="ID_DENY_ECHO_2" />
          <FileRuleRef RuleID="ID_DENY_ECHO_3" />
          <FileRuleRef RuleID="ID_DENY_ECHO_4" />
          <FileRuleRef RuleID="ID_DENY_ECHO_5" />
          <FileRuleRef RuleID="ID_DENY_ECHO_6" />
          <FileRuleRef RuleID="ID_DENY_ECHO_7" />
          <FileRuleRef RuleID="ID_DENY_ECHO_8" />
          <FileRuleRef RuleID="ID_DENY_ECHO_9" />
          <FileRuleRef RuleID="ID_DENY_ECHO_A" />
          <FileRuleRef RuleID="ID_DENY_ECHO_B" />
          <FileRuleRef RuleID="ID_DENY_ECHO_C" />
          <FileRuleRef RuleID="ID_DENY_ECSIODRV_1" />
          <FileRuleRef RuleID="ID_DENY_ECSIODRV_2" />
          <FileRuleRef RuleID="ID_DENY_ECSIODRV_3" />
          <FileRuleRef RuleID="ID_DENY_ECSIODRV_4" />
          <FileRuleRef RuleID="ID_DENY_EIO64_1" />
          <FileRuleRef RuleID="ID_DENY_EIO64_2" />
          <FileRuleRef RuleID="ID_DENY_EIO64_3" />
          <FileRuleRef RuleID="ID_DENY_EIO64_4" />
          <FileRuleRef RuleID="ID_DENY_EIO64_5" />
          <FileRuleRef RuleID="ID_DENY_EIO64_6" />
          <FileRuleRef RuleID="ID_DENY_EIO64_7" />
          <FileRuleRef RuleID="ID_DENY_EIO64_8" />
          <FileRuleRef RuleID="ID_DENY_FH_ETHER_1" />
          <FileRuleRef RuleID="ID_DENY_FH_ETHER_2" />
          <FileRuleRef RuleID="ID_DENY_GEDEVDRV_1" />
          <FileRuleRef RuleID="ID_DENY_GEDEVDRV_2" />
          <FileRuleRef RuleID="ID_DENY_GEDEVDRV_3" />
          <FileRuleRef RuleID="ID_DENY_GEDEVDRV_4" />
          <FileRuleRef RuleID="ID_DENY_GEDEVDRV_5" />
          <FileRuleRef RuleID="ID_DENY_GEDEVDRV_6" />
          <FileRuleRef RuleID="ID_DENY_GEDEVDRV_7" />
          <FileRuleRef RuleID="ID_DENY_GEDEVDRV_8" />
          <FileRuleRef RuleID="ID_DENY_GEDEVDRV_9" />
          <FileRuleRef RuleID="ID_DENY_GEDEVDRV_10"/>
          <FileRuleRef RuleID="ID_DENY_GEDEVDRV_11"/>
          <FileRuleRef RuleID="ID_DENY_GEDEVDRV_12"/>
          <FileRuleRef RuleID="ID_DENY_GEDEVDRV_13"/>
          <FileRuleRef RuleID="ID_DENY_GEDEVDRV_14"/>
          <FileRuleRef RuleID="ID_DENY_GEDEVDRV_15"/>
          <FileRuleRef RuleID="ID_DENY_GEDEVDRV_16"/>
          <FileRuleRef RuleID="ID_DENY_GVCIDRV_1" />
          <FileRuleRef RuleID="ID_DENY_GVCIDRV_2" />
          <FileRuleRef RuleID="ID_DENY_GVCIDRV_3" />
          <FileRuleRef RuleID="ID_DENY_GVCIDRV_4" />
          <FileRuleRef RuleID="ID_DENY_HW_22" />
          <FileRuleRef RuleID="ID_DENY_HW_23" />
          <FileRuleRef RuleID="ID_DENY_HW_24" />
          <FileRuleRef RuleID="ID_DENY_HW_25" />
          <FileRuleRef RuleID="ID_DENY_HWRWDRV_2" />
          <FileRuleRef RuleID="ID_DENY_HWRWDRV_3" />
          <FileRuleRef RuleID="ID_DENY_HWRWDRV_4" />
          <FileRuleRef RuleID="ID_DENY_HWRWDRV_5" />
          <FileRuleRef RuleID="ID_DENY_HWRWDRV_6" />
          <FileRuleRef RuleID="ID_DENY_HWRWDRV_7" />
          <FileRuleRef RuleID="ID_DENY_INPOUTX_11" />
          <FileRuleRef RuleID="ID_DENY_INPOUTX_12" />
          <FileRuleRef RuleID="ID_DENY_INPOUTX_13" />
          <FileRuleRef RuleID="ID_DENY_INPOUTX_14" />
          <FileRuleRef RuleID="ID_DENY_INPOUTX_15" />
          <FileRuleRef RuleID="ID_DENY_INPOUTX_16" />
          <FileRuleRef RuleID="ID_DENY_INPOUTX_17" />
          <FileRuleRef RuleID="ID_DENY_INPOUTX_18" />
          <FileRuleRef RuleID="ID_DENY_INPOUTX_19" />
          <FileRuleRef RuleID="ID_DENY_INPOUTX_1A" />
          <FileRuleRef RuleID="ID_DENY_INPOUTX_1B" />
          <FileRuleRef RuleID="ID_DENY_INPOUTX_1C" />
          <FileRuleRef RuleID="ID_DENY_INPOUTX_1D" />
          <FileRuleRef RuleID="ID_DENY_INPOUTX_1E" />
          <FileRuleRef RuleID="ID_DENY_INPOUTX_1F" />
          <FileRuleRef RuleID="ID_DENY_INPOUTX_20" />
          <FileRuleRef RuleID="ID_DENY_INPOUTX_21" />
          <FileRuleRef RuleID="ID_DENY_INPOUTX_22" />
          <FileRuleRef RuleID="ID_DENY_INPOUTX_23" />
          <FileRuleRef RuleID="ID_DENY_IREC_1" />
          <FileRuleRef RuleID="ID_DENY_IREC_2" />
          <FileRuleRef RuleID="ID_DENY_IREC_3" />
          <FileRuleRef RuleID="ID_DENY_IREC_4" />
          <FileRuleRef RuleID="ID_DENY_IREC_5" />
          <FileRuleRef RuleID="ID_DENY_IREC_6" />
          <FileRuleRef RuleID="ID_DENY_IREC_7" />
          <FileRuleRef RuleID="ID_DENY_IREC_8" />
          <FileRuleRef RuleID="ID_DENY_IREC_9" />
          <FileRuleRef RuleID="ID_DENY_IREC_A" />
          <FileRuleRef RuleID="ID_DENY_IREC_B" />
          <FileRuleRef RuleID="ID_DENY_IREC_C" />
          <FileRuleRef RuleID="ID_DENY_IREC_D" />
          <FileRuleRef RuleID="ID_DENY_IREC_E" />
          <FileRuleRef RuleID="ID_DENY_IREC_F" />
          <FileRuleRef RuleID="ID_DENY_IREC_10" />
          <FileRuleRef RuleID="ID_DENY_IREC_11" />
          <FileRuleRef RuleID="ID_DENY_IREC_12" />
          <FileRuleRef RuleID="ID_DENY_IREC_13" />
          <FileRuleRef RuleID="ID_DENY_IREC_14" />
          <FileRuleRef RuleID="ID_DENY_IREC_15" />
          <FileRuleRef RuleID="ID_DENY_IREC_16" />
          <FileRuleRef RuleID="ID_DENY_IREC_17" />
          <FileRuleRef RuleID="ID_DENY_IREC_18" />
          <FileRuleRef RuleID="ID_DENY_IREC_19" />
          <FileRuleRef RuleID="ID_DENY_IREC_1A" />
          <FileRuleRef RuleID="ID_DENY_IREC_1B" />
          <FileRuleRef RuleID="ID_DENY_IREC_1C" />
          <FileRuleRef RuleID="ID_DENY_IREC_1D" />
          <FileRuleRef RuleID="ID_DENY_IREC_1E" />
          <FileRuleRef RuleID="ID_DENY_IREC_1F" />
          <FileRuleRef RuleID="ID_DENY_IREC_20" />
          <FileRuleRef RuleID="ID_DENY_IREC_21" />
          <FileRuleRef RuleID="ID_DENY_IREC_22" />
          <FileRuleRef RuleID="ID_DENY_IREC_23" />
          <FileRuleRef RuleID="ID_DENY_IREC_24" />
          <FileRuleRef RuleID="ID_DENY_IREC_25" />
          <FileRuleRef RuleID="ID_DENY_IREC_26" />
          <FileRuleRef RuleID="ID_DENY_IREC_27" />
          <FileRuleRef RuleID="ID_DENY_IREC_28" />
          <FileRuleRef RuleID="ID_DENY_IREC_29" />
          <FileRuleRef RuleID="ID_DENY_IREC_2A" />
          <FileRuleRef RuleID="ID_DENY_IREC_2B" />
          <FileRuleRef RuleID="ID_DENY_IREC_2C" />
          <FileRuleRef RuleID="ID_DENY_IREC_2D" />
          <FileRuleRef RuleID="ID_DENY_IREC_2E" />
          <FileRuleRef RuleID="ID_DENY_IREC_2F" />
          <FileRuleRef RuleID="ID_DENY_IREC_30" />
          <FileRuleRef RuleID="ID_DENY_IREC_31" />
          <FileRuleRef RuleID="ID_DENY_IREC_32" />
          <FileRuleRef RuleID="ID_DENY_IREC_33" />
          <FileRuleRef RuleID="ID_DENY_IREC_34" />
          <FileRuleRef RuleID="ID_DENY_IREC_35" />
          <FileRuleRef RuleID="ID_DENY_IREC_36" />
          <FileRuleRef RuleID="ID_DENY_IREC_37" />
          <FileRuleRef RuleID="ID_DENY_IREC_38" />
          <FileRuleRef RuleID="ID_DENY_IREC_39" />
          <FileRuleRef RuleID="ID_DENY_IREC_3A" />
          <FileRuleRef RuleID="ID_DENY_IREC_3B" />
          <FileRuleRef RuleID="ID_DENY_IREC_3C" />
          <FileRuleRef RuleID="ID_DENY_IREC_3D" />
          <FileRuleRef RuleID="ID_DENY_IREC_3E" />
          <FileRuleRef RuleID="ID_DENY_IREC_3F" />
          <FileRuleRef RuleID="ID_DENY_IREC_40" />
          <FileRuleRef RuleID="ID_DENY_IREC_41" />
          <FileRuleRef RuleID="ID_DENY_IREC_42" />
          <FileRuleRef RuleID="ID_DENY_IREC_43" />
          <FileRuleRef RuleID="ID_DENY_IREC_44" />
          <FileRuleRef RuleID="ID_DENY_IREC_45" />
          <FileRuleRef RuleID="ID_DENY_IREC_46" />
          <FileRuleRef RuleID="ID_DENY_IREC_47" />
          <FileRuleRef RuleID="ID_DENY_IREC_48" />
          <FileRuleRef RuleID="ID_DENY_IREC_49" />
          <FileRuleRef RuleID="ID_DENY_IREC_4A" />
          <FileRuleRef RuleID="ID_DENY_IREC_4B" />
          <FileRuleRef RuleID="ID_DENY_IREC_4C" />
          <FileRuleRef RuleID="ID_DENY_IREC_4D" />
          <FileRuleRef RuleID="ID_DENY_IREC_4E" />
          <FileRuleRef RuleID="ID_DENY_IREC_4F" />
          <FileRuleRef RuleID="ID_DENY_IREC_50" />
          <FileRuleRef RuleID="ID_DENY_IREC_51" />
          <FileRuleRef RuleID="ID_DENY_IREC_52" />
          <FileRuleRef RuleID="ID_DENY_IREC_53" />
          <FileRuleRef RuleID="ID_DENY_IREC_54" />
          <FileRuleRef RuleID="ID_DENY_KLMD" />
          <FileRuleRef RuleID="ID_DENY_LGCORETEMP_1" />
          <FileRuleRef RuleID="ID_DENY_LGCORETEMP_2" />
          <FileRuleRef RuleID="ID_DENY_LGCORETEMP_3" />
          <FileRuleRef RuleID="ID_DENY_LGCORETEMP_4" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT2_1" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT2_2" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT2_3" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT2_4" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT2_5" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT2_6" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT2_7" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT2_8" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT2_9" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT2_A" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT2_B" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT2_C" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT2_D" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT2_E" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT2_F" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT2_10" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT2_11" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT2_12" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT2_13" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT2_14" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT2_15" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT2_16" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT2_17" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT2_18" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT2_19" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT2_1A" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT2_1B" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT2_1C" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT3_11" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT3_12" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT3_13" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT3_14" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT3_15" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT3_16" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT3_17" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT3_18" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT3_19" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT3_1A" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT3_1B" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT3_1C" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT3_1D" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT3_1E" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT3_1F" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT3_20" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT3_21" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT3_22" />
          <FileRuleRef RuleID="ID_DENY_MHYPROTECT_1" />
          <FileRuleRef RuleID="ID_DENY_MHYPROTECT_2" />
          <FileRuleRef RuleID="ID_DENY_MHYPROTECT_3" />
          <FileRuleRef RuleID="ID_DENY_MHYPROTECT_4" />
          <FileRuleRef RuleID="ID_DENY_MHYPROTECT_5" />
          <FileRuleRef RuleID="ID_DENY_MHYPROTECT_6" />
          <FileRuleRef RuleID="ID_DENY_MHYPROTECT_7" />
          <FileRuleRef RuleID="ID_DENY_MHYPROTECT_8" />
          <FileRuleRef RuleID="ID_DENY_MHYPROTNAP_1" />
          <FileRuleRef RuleID="ID_DENY_MHYPROTNAP_2" />
          <FileRuleRef RuleID="ID_DENY_MHYPROTNAP_3" />
          <FileRuleRef RuleID="ID_DENY_MHYPROTNAP_4" />
          <FileRuleRef RuleID="ID_DENY_MHYPROTRG_1" />
          <FileRuleRef RuleID="ID_DENY_MHYPROTRG_2" />
          <FileRuleRef RuleID="ID_DENY_MHYPROTRG_3" />
          <FileRuleRef RuleID="ID_DENY_MHYPROTRG_4" />
          <FileRuleRef RuleID="ID_DENY_MHYPROTRG_5" />
          <FileRuleRef RuleID="ID_DENY_MHYPROTRG_6" />
          <FileRuleRef RuleID="ID_DENY_MHYPROTRG_7" />
          <FileRuleRef RuleID="ID_DENY_MHYPROTRG_8" />
          <FileRuleRef RuleID="ID_DENY_MSIO_1" />
          <FileRuleRef RuleID="ID_DENY_MSIO_2" />
          <FileRuleRef RuleID="ID_DENY_MSIO_3" />
          <FileRuleRef RuleID="ID_DENY_MSIO_4" />
          <FileRuleRef RuleID="ID_DENY_MSIO_5" />
          <FileRuleRef RuleID="ID_DENY_MSIO_6" />
          <FileRuleRef RuleID="ID_DENY_MSIO_7" />
          <FileRuleRef RuleID="ID_DENY_MSIO_8" />
          <FileRuleRef RuleID="ID_DENY_MSIO_9" />
          <FileRuleRef RuleID="ID_DENY_MSIO_10" />
          <FileRuleRef RuleID="ID_DENY_MSIO_11" />
          <FileRuleRef RuleID="ID_DENY_MSIO_12" />
          <FileRuleRef RuleID="ID_DENY_MSR_1" />
          <FileRuleRef RuleID="ID_DENY_MSR_2" />
          <FileRuleRef RuleID="ID_DENY_MSR_3" />
          <FileRuleRef RuleID="ID_DENY_MSR_4" />
          <FileRuleRef RuleID="ID_DENY_MSR_5" />
          <FileRuleRef RuleID="ID_DENY_MSR_6" />
          <FileRuleRef RuleID="ID_DENY_MSR_7" />
          <FileRuleRef RuleID="ID_DENY_MSR_8" />
          <FileRuleRef RuleID="ID_DENY_MSRHOOK_1" />
          <FileRuleRef RuleID="ID_DENY_MSRHOOK_2" />
          <FileRuleRef RuleID="ID_DENY_MSRHOOK_3" />
          <FileRuleRef RuleID="ID_DENY_MSRHOOK_4" />
          <FileRuleRef RuleID="ID_DENY_MSRHOOK_5" />
          <FileRuleRef RuleID="ID_DENY_MSRHOOK_6" />
          <FileRuleRef RuleID="ID_DENY_MSRHOOK_7" />
          <FileRuleRef RuleID="ID_DENY_MSRHOOK_8" />
          <FileRuleRef RuleID="ID_DENY_MSRHOOK_9" />
          <FileRuleRef RuleID="ID_DENY_MSRHOOK_10"/>
          <FileRuleRef RuleID="ID_DENY_MSRHOOK_11"/>
          <FileRuleRef RuleID="ID_DENY_MSRHOOK_12"/>
          <FileRuleRef RuleID="ID_DENY_MSRHOOK_13"/>
          <FileRuleRef RuleID="ID_DENY_MSRHOOK_14"/>
          <FileRuleRef RuleID="ID_DENY_MSRHOOK_15"/>
          <FileRuleRef RuleID="ID_DENY_MSRHOOK_16"/>
          <FileRuleRef RuleID="ID_DENY_MSRHOOK_17"/>
          <FileRuleRef RuleID="ID_DENY_MSRHOOK_18"/>
          <FileRuleRef RuleID="ID_DENY_MSRHOOK_19"/>
          <FileRuleRef RuleID="ID_DENY_MSRHOOK_20"/>
          <FileRuleRef RuleID="ID_DENY_MSRHOOK_21"/>
          <FileRuleRef RuleID="ID_DENY_MSRHOOK_22"/>
          <FileRuleRef RuleID="ID_DENY_MSRHOOK_23"/>
          <FileRuleRef RuleID="ID_DENY_MSRHOOK_24"/>
          <FileRuleRef RuleID="ID_DENY_MSRHOOK_25"/>
          <FileRuleRef RuleID="ID_DENY_MSRHOOK_26"/>
          <FileRuleRef RuleID="ID_DENY_MSRHOOK_27"/>
          <FileRuleRef RuleID="ID_DENY_MSRHOOK_28"/>
          <FileRuleRef RuleID="ID_DENY_MSRHOOK_29"/>
          <FileRuleRef RuleID="ID_DENY_MSRHOOK_30"/>
          <FileRuleRef RuleID="ID_DENY_MSRHOOK_31"/>
          <FileRuleRef RuleID="ID_DENY_MSRHOOK_32"/>
          <FileRuleRef RuleID="ID_DENY_NVFLASH_1" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_2" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_3" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_4" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_5" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_6" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_7" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_8" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_9" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_A" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_B" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_C" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_D" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_E" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_F" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_10" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_11" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_12" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_13" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_14" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_15" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_16" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_17" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_18" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_19" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_1A" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_1B" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_1C" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_1D" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_1E" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_1F" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_20" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_21" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_22" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_23" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_24" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_25" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_26" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_27" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_28" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_29" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_2A" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_2B" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_2C" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_2D" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_2E" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_2F" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_30" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_31" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_32" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_33" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_34" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_35" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_36" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_37" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_38" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_39" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_3A" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_3B" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_3C" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_3D" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_3E" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_3F" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_40" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_41" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_42" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_43" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_44" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_45" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_46" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_47" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_48" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_49" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_4A" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_4B" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_4C" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_4D" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_4E" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_4F" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_50" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_51" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_52" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_53" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_54" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_55" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_56" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_57" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_58" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_59" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_5A" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_5B" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_5C" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_5D" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_5E" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_5F" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_60" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_61" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_62" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_63" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_64" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_65" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_66" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_67" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_68" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_69" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_6A" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_6B" />
          <FileRuleRef RuleID="ID_DENY_NVFLASH_6C" />
          <FileRuleRef RuleID="ID_DENY_NVOCLOCK_1" />
          <FileRuleRef RuleID="ID_DENY_NVOCLOCK_2" />
          <FileRuleRef RuleID="ID_DENY_NVOCLOCK_3" />
          <FileRuleRef RuleID="ID_DENY_NVOCLOCK_4" />
          <FileRuleRef RuleID="ID_DENY_NVOCLOCK_5" />
          <FileRuleRef RuleID="ID_DENY_NVOCLOCK_6" />
          <FileRuleRef RuleID="ID_DENY_NVOCLOCK_7" />
          <FileRuleRef RuleID="ID_DENY_NVOCLOCK_8" />
          <FileRuleRef RuleID="ID_DENY_NVOCLOCK_9" />
          <FileRuleRef RuleID="ID_DENY_NVOCLOCK_10" />
          <FileRuleRef RuleID="ID_DENY_NVOCLOCK_11" />
          <FileRuleRef RuleID="ID_DENY_NVOCLOCK_12" />
          <FileRuleRef RuleID="ID_DENY_NVOCLOCK_13" />
          <FileRuleRef RuleID="ID_DENY_NVOCLOCK_14" />
          <FileRuleRef RuleID="ID_DENY_NVOCLOCK_15" />
          <FileRuleRef RuleID="ID_DENY_NVOCLOCK_16" />
          <FileRuleRef RuleID="ID_DENY_NVOCLOCK_17" />
          <FileRuleRef RuleID="ID_DENY_NVOCLOCK_18" />
          <FileRuleRef RuleID="ID_DENY_NVOCLOCK_19" />
          <FileRuleRef RuleID="ID_DENY_NVOCLOCK_20" />
          <FileRuleRef RuleID="ID_DENY_OTIPCIBUS_1" />
          <FileRuleRef RuleID="ID_DENY_OTIPCIBUS_2" />
          <FileRuleRef RuleID="ID_DENY_OTIPCIBUS_3" />
          <FileRuleRef RuleID="ID_DENY_OTIPCIBUS_4" />
          <FileRuleRef RuleID="ID_DENY_PCHUNTER_3" />
          <FileRuleRef RuleID="ID_DENY_PCHUNTER_4" />
          <FileRuleRef RuleID="ID_DENY_PCHUNTER_5" />
          <FileRuleRef RuleID="ID_DENY_PCHUNTER_6" />
          <FileRuleRef RuleID="ID_DENY_PIDDRV_SHA1" />
          <FileRuleRef RuleID="ID_DENY_PIDDRV_SHA256" />
          <FileRuleRef RuleID="ID_DENY_PIDDRV_SHA1_PAGE" />
          <FileRuleRef RuleID="ID_DENY_PIDDRV_SHA256_PAGE" />
          <FileRuleRef RuleID="ID_DENY_PIDDRV64_SHA1" />
          <FileRuleRef RuleID="ID_DENY_PIDDRV64_SHA256" />
          <FileRuleRef RuleID="ID_DENY_PIDDRV64_SHA1_PAGE" />
          <FileRuleRef RuleID="ID_DENY_PIDDRV64_SHA256_PAGE" />
          <FileRuleRef RuleID="ID_DENY_PHYDMACC_1" />
          <FileRuleRef RuleID="ID_DENY_PHYDMACC_2" />
          <FileRuleRef RuleID="ID_DENY_PHYDMACC_3" />
          <FileRuleRef RuleID="ID_DENY_PHYDMACC_4" />
          <FileRuleRef RuleID="ID_DENY_PHYDMACC_5" />
          <FileRuleRef RuleID="ID_DENY_PHYDMACC_6" />
          <FileRuleRef RuleID="ID_DENY_PHYMEMX64_SHA1" />
          <FileRuleRef RuleID="ID_DENY_PHYMEMX64_SHA256" />
          <FileRuleRef RuleID="ID_DENY_PHYMEMX64_SHA1_PAGE" />
          <FileRuleRef RuleID="ID_DENY_PHYMEMX64_SHA256_PAGE" />
          <FileRuleRef RuleID="ID_DENY_QMBSEC_0" />
          <FileRuleRef RuleID="ID_DENY_QMBSEC_1" />
          <FileRuleRef RuleID="ID_DENY_QMBSEC_2" />
          <FileRuleRef RuleID="ID_DENY_QMBSEC_3" />
          <FileRuleRef RuleID="ID_DENY_QMBSEC_4" />
          <FileRuleRef RuleID="ID_DENY_QMBSEC_5" />
          <FileRuleRef RuleID="ID_DENY_QMBSEC_6" />
          <FileRuleRef RuleID="ID_DENY_QMBSEC_7" />
          <FileRuleRef RuleID="ID_DENY_QMBSEC_8" />
          <FileRuleRef RuleID="ID_DENY_QMBSEC_9" />
          <FileRuleRef RuleID="ID_DENY_QMBSEC_A" />
          <FileRuleRef RuleID="ID_DENY_QMBSEC_B" />
          <FileRuleRef RuleID="ID_DENY_QMBSEC_C" />
          <FileRuleRef RuleID="ID_DENY_QMBSEC_D" />
          <FileRuleRef RuleID="ID_DENY_QMBSEC_E" />
          <FileRuleRef RuleID="ID_DENY_QMBSEC_F" />
          <FileRuleRef RuleID="ID_DENY_SEMAV6MSR64_SHA1" />
          <FileRuleRef RuleID="ID_DENY_SEMAV6MSR64_SHA256" />
          <FileRuleRef RuleID="ID_DENY_SEMAV6MSR64_SHA1_PAGE" />
          <FileRuleRef RuleID="ID_DENY_SEMAV6MSR64_SHA256_PAGE" />
          <FileRuleRef RuleID="ID_DENY_RENTDRV_1" />
          <FileRuleRef RuleID="ID_DENY_RENTDRV_2" />
          <FileRuleRef RuleID="ID_DENY_RENTDRV_3" />
          <FileRuleRef RuleID="ID_DENY_RENTDRV_4" />
          <FileRuleRef RuleID="ID_DENY_RENTDRV_5" />
          <FileRuleRef RuleID="ID_DENY_RENTDRV_6" />
          <FileRuleRef RuleID="ID_DENY_RENTDRV_7" />
          <FileRuleRef RuleID="ID_DENY_RENTDRV_8" />
          <FileRuleRef RuleID="ID_DENY_RENTDRV_9" />
          <FileRuleRef RuleID="ID_DENY_RENTDRV_10"/>
          <FileRuleRef RuleID="ID_DENY_RENTDRV_11"/>
          <FileRuleRef RuleID="ID_DENY_RENTDRV_12"/>
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_1" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_2" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_3" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_4" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_5" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_6" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_7" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_8" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_9" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_10" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_11" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_12" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_13" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_14" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_15" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_16" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_17" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_18" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_19" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_20" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_21" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_22" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_23" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_24" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_25" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_26" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_27" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_28" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_29" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_30" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_31" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_32" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_33" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_34" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_35" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_36" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_37" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_38" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_39" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_40" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_41" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_42" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_43" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_44" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_45" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_46" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_47" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_48" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_49" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_50" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_51" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_52" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_53" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_54" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_55" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_56" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_57" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_58" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_59" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_60" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_61" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_62" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_63" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_64" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_65" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_66" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_67" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_68" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_69" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_70" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_71" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_72" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_1" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_2" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_3" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_4" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_5" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_6" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_7" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_8" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_9" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_10" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_11" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_12" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_13" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_14" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_15" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_16" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_17" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_18" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_19" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_20" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_21" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_22" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_23" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_24" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_25" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_26" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_27" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_28" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_29" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_30" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_31" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_32" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_33" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_34" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_35" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_36" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_37" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_38" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_39" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_40" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_41" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_42" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_43" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_44" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_45" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_46" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_47" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_48" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_49" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_50" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_51" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_52" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_53" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_54" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_55" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_56" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_57" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_58" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_59" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_60" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_61" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_62" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_63" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_64" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_65" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_66" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_67" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_68" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_69" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_70" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_71" />
          <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_72" />
          <FileRuleRef RuleID="ID_DENY_RTCORE_1"/>
          <FileRuleRef RuleID="ID_DENY_RTCORE_2"/>
          <FileRuleRef RuleID="ID_DENY_RTCORE_3"/>
          <FileRuleRef RuleID="ID_DENY_RTCORE_4"/>
          <FileRuleRef RuleID="ID_DENY_RTCORE_5"/>
          <FileRuleRef RuleID="ID_DENY_RTCORE_6"/>
          <FileRuleRef RuleID="ID_DENY_RTCORE_7"/>
          <FileRuleRef RuleID="ID_DENY_RTCORE_8"/>
          <FileRuleRef RuleID="ID_DENY_RTCORE_9"/>
          <FileRuleRef RuleID="ID_DENY_RTCORE_10"/>
          <FileRuleRef RuleID="ID_DENY_RTCORE_11"/>
          <FileRuleRef RuleID="ID_DENY_RTCORE_12"/>
          <FileRuleRef RuleID="ID_DENY_RTCORE_13"/>
          <FileRuleRef RuleID="ID_DENY_RTCORE_14"/>
          <FileRuleRef RuleID="ID_DENY_RTCORE_15"/>
          <FileRuleRef RuleID="ID_DENY_RTCORE_16"/>
          <FileRuleRef RuleID="ID_DENY_RTCORE_17"/>
          <FileRuleRef RuleID="ID_DENY_RTCORE_18"/>
          <FileRuleRef RuleID="ID_DENY_RTCORE_19"/>
          <FileRuleRef RuleID="ID_DENY_RTCORE_20"/>
          <FileRuleRef RuleID="ID_DENY_RTCORE_21"/>
          <FileRuleRef RuleID="ID_DENY_RTCORE_22"/>
          <FileRuleRef RuleID="ID_DENY_RTCORE_23"/>
          <FileRuleRef RuleID="ID_DENY_RTCORE_24"/>
          <FileRuleRef RuleID="ID_DENY_RTCORE_25"/>
          <FileRuleRef RuleID="ID_DENY_RTCORE_26"/>
          <FileRuleRef RuleID="ID_DENY_RTCORE_27"/>
          <FileRuleRef RuleID="ID_DENY_RTCORE_28"/>
          <FileRuleRef RuleID="ID_DENY_RTCORE_29"/>
          <FileRuleRef RuleID="ID_DENY_RTCORE_30"/>
          <FileRuleRef RuleID="ID_DENY_RTCORE_31"/>
          <FileRuleRef RuleID="ID_DENY_RTCORE_32"/>
          <FileRuleRef RuleID="ID_DENY_RTPORT_1"/>
          <FileRuleRef RuleID="ID_DENY_RTPORT_2"/>
          <FileRuleRef RuleID="ID_DENY_RTPORT_3"/>
          <FileRuleRef RuleID="ID_DENY_RTPORT_4"/>
          <FileRuleRef RuleID="ID_DENY_RTPORT_5"/>
          <FileRuleRef RuleID="ID_DENY_RTPORT_6"/>
          <FileRuleRef RuleID="ID_DENY_RTPORT_7"/>
          <FileRuleRef RuleID="ID_DENY_RTPORT_8"/>
          <FileRuleRef RuleID="ID_DENY_RTPORT_9"/>
          <FileRuleRef RuleID="ID_DENY_RTPORT_10"/>
          <FileRuleRef RuleID="ID_DENY_RTPORT_11"/>
          <FileRuleRef RuleID="ID_DENY_RTPORT_12"/>
          <FileRuleRef RuleID="ID_DENY_RTPORT_13"/>
          <FileRuleRef RuleID="ID_DENY_RTPORT_14"/>
          <FileRuleRef RuleID="ID_DENY_RTPORT_15"/>
          <FileRuleRef RuleID="ID_DENY_RTPORT_16"/>
          <FileRuleRef RuleID="ID_DENY_SEMAV6MSR64_SHA1" />
          <FileRuleRef RuleID="ID_DENY_SEMAV6MSR64_SHA256" />
          <FileRuleRef RuleID="ID_DENY_SEMAV6MSR64_SHA1_PAGE" />
          <FileRuleRef RuleID="ID_DENY_SEMAV6MSR64_SHA256_PAGE" />
          <FileRuleRef RuleID="ID_DENY_SEPDRV3_1" />
          <FileRuleRef RuleID="ID_DENY_SEPDRV3_2" />
          <FileRuleRef RuleID="ID_DENY_SEPDRV3_3" />
          <FileRuleRef RuleID="ID_DENY_SEPDRV3_4" />
          <FileRuleRef RuleID="ID_DENY_SEPDRV3_5" />
          <FileRuleRef RuleID="ID_DENY_SEPDRV3_6" />
          <FileRuleRef RuleID="ID_DENY_SEPDRV3_7" />
          <FileRuleRef RuleID="ID_DENY_SEPDRV3_8" />
          <FileRuleRef RuleID="ID_DENY_SEPDRV3_9" />
          <FileRuleRef RuleID="ID_DENY_SEPDRV3_10"/>
          <FileRuleRef RuleID="ID_DENY_SEPDRV3_11"/>
          <FileRuleRef RuleID="ID_DENY_SEPDRV3_12"/>
          <FileRuleRef RuleID="ID_DENY_SEPDRV3_13"/>
          <FileRuleRef RuleID="ID_DENY_SEPDRV3_14"/>
          <FileRuleRef RuleID="ID_DENY_SEPDRV3_15"/>
          <FileRuleRef RuleID="ID_DENY_SEPDRV3_16"/>
          <FileRuleRef RuleID="ID_DENY_SEPDRV3_17"/>
          <FileRuleRef RuleID="ID_DENY_SEPDRV3_18"/>
          <FileRuleRef RuleID="ID_DENY_SEPDRV3_19"/>
          <FileRuleRef RuleID="ID_DENY_SEPDRV3_20"/>
          <FileRuleRef RuleID="ID_DENY_SEPDRV3_21"/>
          <FileRuleRef RuleID="ID_DENY_SEPDRV3_22"/>
          <FileRuleRef RuleID="ID_DENY_SEPDRV3_23"/>
          <FileRuleRef RuleID="ID_DENY_SEPDRV3_24"/>
          <FileRuleRef RuleID="ID_DENY_SEPDRV3_25"/>
          <FileRuleRef RuleID="ID_DENY_SEPDRV3_26"/>
          <FileRuleRef RuleID="ID_DENY_SEPDRV3_27"/>
          <FileRuleRef RuleID="ID_DENY_SEPDRV3_28"/>
          <FileRuleRef RuleID="ID_DENY_SEPDRV3_29"/>
          <FileRuleRef RuleID="ID_DENY_SEPDRV3_30"/>
          <FileRuleRef RuleID="ID_DENY_SEPDRV3_31"/>
          <FileRuleRef RuleID="ID_DENY_SEPDRV3_32"/>
          <FileRuleRef RuleID="ID_DENY_SEPDRV3_33"/>
          <FileRuleRef RuleID="ID_DENY_SEPDRV3_34"/>
          <FileRuleRef RuleID="ID_DENY_SEPDRV3_35"/>
          <FileRuleRef RuleID="ID_DENY_SEPDRV3_36"/>
          <FileRuleRef RuleID="ID_DENY_SEPDRV3_37"/>
          <FileRuleRef RuleID="ID_DENY_SEPDRV3_38"/>
          <FileRuleRef RuleID="ID_DENY_SEPDRV3_39"/>
          <FileRuleRef RuleID="ID_DENY_SEPDRV3_40"/>
          <FileRuleRef RuleID="ID_DENY_SUPERBMC_2" />
          <FileRuleRef RuleID="ID_DENY_SUPERBMC_3" />
          <FileRuleRef RuleID="ID_DENY_SUPERBMC_4" />
          <FileRuleRef RuleID="ID_DENY_SUPERBMC_5" />
          <FileRuleRef RuleID="ID_DENY_SUPERBMC_6" />
          <FileRuleRef RuleID="ID_DENY_SUPERBMC_7" />
          <FileRuleRef RuleID="ID_DENY_SUPERBMC_8" />
          <FileRuleRef RuleID="ID_DENY_SUPERBMC_9" />
          <FileRuleRef RuleID="ID_DENY_SUPERBMC_A" />
          <FileRuleRef RuleID="ID_DENY_SUPERBMC_B" />
          <FileRuleRef RuleID="ID_DENY_SUPERBMC_C" />
          <FileRuleRef RuleID="ID_DENY_SUPERBMC_D" />
          <FileRuleRef RuleID="ID_DENY_SUPERBMC_E" />
          <FileRuleRef RuleID="ID_DENY_SUPERBMC_F" />
          <FileRuleRef RuleID="ID_DENY_SUPERBMC_10" />
          <FileRuleRef RuleID="ID_DENY_SUPERBMC_11" />
          <FileRuleRef RuleID="ID_DENY_SUPERBMC_12" />
          <FileRuleRef RuleID="ID_DENY_SUPERBMC_13" />
          <FileRuleRef RuleID="ID_DENY_SUPERBMC_14" />
          <FileRuleRef RuleID="ID_DENY_SUPERBMC_15" />
          <FileRuleRef RuleID="ID_DENY_SUPERBMC_16" />
          <FileRuleRef RuleID="ID_DENY_SUPERBMC_17" />
          <FileRuleRef RuleID="ID_DENY_SYSCONP_1"/>
          <FileRuleRef RuleID="ID_DENY_SYSCONP_2"/>
          <FileRuleRef RuleID="ID_DENY_SYSCONP_3"/>
          <FileRuleRef RuleID="ID_DENY_SYSCONP_4"/>
          <FileRuleRef RuleID="ID_DENY_SYSCONP_5"/>
          <FileRuleRef RuleID="ID_DENY_SYSCONP_6"/>
          <FileRuleRef RuleID="ID_DENY_SYSCONP_7"/>
          <FileRuleRef RuleID="ID_DENY_SYSCONP_8"/>
          <FileRuleRef RuleID="ID_DENY_SYSDRV3S_1" />
          <FileRuleRef RuleID="ID_DENY_SYSDRV3S_2" />
          <FileRuleRef RuleID="ID_DENY_SYSDRV3S_3" />
          <FileRuleRef RuleID="ID_DENY_SYSDRV3S_4" />
          <FileRuleRef RuleID="ID_DENY_SYSDRV3S_5" />
          <FileRuleRef RuleID="ID_DENY_SYSDRV3S_6" />
          <FileRuleRef RuleID="ID_DENY_SYSDRV3S_7" />
          <FileRuleRef RuleID="ID_DENY_SYSDRV3S_8" />
          <FileRuleRef RuleID="ID_DENY_SYSDRV3S_9" />
          <FileRuleRef RuleID="ID_DENY_SYSDRV3S_A" />
          <FileRuleRef RuleID="ID_DENY_SYSDRV3S_B" />
          <FileRuleRef RuleID="ID_DENY_SYSDRV3S_C" />
          <FileRuleRef RuleID="ID_DENY_SYSINFO_1" />
          <FileRuleRef RuleID="ID_DENY_SYSINFO_2" />
          <FileRuleRef RuleID="ID_DENY_SYSINFO_3" />
          <FileRuleRef RuleID="ID_DENY_SYSINFO_4" />
          <FileRuleRef RuleID="ID_DENY_SYSINFO_5" />
          <FileRuleRef RuleID="ID_DENY_SYSINFO_6" />
          <FileRuleRef RuleID="ID_DENY_SYSINFO_7" />
          <FileRuleRef RuleID="ID_DENY_SYSINFO_8" />
          <FileRuleRef RuleID="ID_DENY_TDEIO_1"/>
          <FileRuleRef RuleID="ID_DENY_TDEIO_2"/>
          <FileRuleRef RuleID="ID_DENY_TDEIO_3"/>
          <FileRuleRef RuleID="ID_DENY_TDEIO_4"/>
          <FileRuleRef RuleID="ID_DENY_TDEIO_5"/>
          <FileRuleRef RuleID="ID_DENY_TDEIO_6"/>
          <FileRuleRef RuleID="ID_DENY_TDEIO_7"/>
          <FileRuleRef RuleID="ID_DENY_TDEIO_8"/>
          <FileRuleRef RuleID="ID_DENY_WFSHBR_1" />
          <FileRuleRef RuleID="ID_DENY_WFSHBR_2" />
          <FileRuleRef RuleID="ID_DENY_WFSHBR_3" />
          <FileRuleRef RuleID="ID_DENY_WFSHBR_4" />
          <FileRuleRef RuleID="ID_DENY_WINIO_1" />
          <FileRuleRef RuleID="ID_DENY_WINIO_2" />
          <FileRuleRef RuleID="ID_DENY_WINIO_3" />
          <FileRuleRef RuleID="ID_DENY_WINIO_4" />
          <FileRuleRef RuleID="ID_DENY_WINIO_5" />
          <FileRuleRef RuleID="ID_DENY_WINIO_6" />
          <FileRuleRef RuleID="ID_DENY_WINIO_7" />
          <FileRuleRef RuleID="ID_DENY_WINIO_8" />
          <FileRuleRef RuleID="ID_DENY_WINIO_9" />
          <FileRuleRef RuleID="ID_DENY_WINIO_10" />
          <FileRuleRef RuleID="ID_DENY_WINIO_11" />
          <FileRuleRef RuleID="ID_DENY_WINIO_12" />
          <FileRuleRef RuleID="ID_DENY_WINIO_13" />
          <FileRuleRef RuleID="ID_DENY_WINIO_14" />
          <FileRuleRef RuleID="ID_DENY_WINIO_15" />
          <FileRuleRef RuleID="ID_DENY_WINIO_16" />
          <FileRuleRef RuleID="ID_DENY_WINIO_17" />
          <FileRuleRef RuleID="ID_DENY_WINIO_18" />
          <FileRuleRef RuleID="ID_DENY_WINIO_19" />
          <FileRuleRef RuleID="ID_DENY_WINIO_20" />
          <FileRuleRef RuleID="ID_DENY_WINIO_21" />
          <FileRuleRef RuleID="ID_DENY_WINIO_22" />
          <FileRuleRef RuleID="ID_DENY_WINIO_23" />
          <FileRuleRef RuleID="ID_DENY_WINIO_24" />
          <FileRuleRef RuleID="ID_DENY_WINIO_25" />
          <FileRuleRef RuleID="ID_DENY_WINIO_26" />
          <FileRuleRef RuleID="ID_DENY_WINIO_27" />
          <FileRuleRef RuleID="ID_DENY_WINIO_28" />
          <FileRuleRef RuleID="ID_DENY_WINIO_29" />
          <FileRuleRef RuleID="ID_DENY_WINIO_30" />
          <FileRuleRef RuleID="ID_DENY_WINIO_31" />
          <FileRuleRef RuleID="ID_DENY_WINIO_32" />
          <FileRuleRef RuleID="ID_DENY_WINIO_33" />
          <FileRuleRef RuleID="ID_DENY_WINIO_34" />
          <FileRuleRef RuleID="ID_DENY_WINIO_35" />
          <FileRuleRef RuleID="ID_DENY_WINIO_36" />
          <FileRuleRef RuleID="ID_DENY_WINIO_37" />
          <FileRuleRef RuleID="ID_DENY_WINIO_38" />
          <FileRuleRef RuleID="ID_DENY_WINIO_39" />
          <FileRuleRef RuleID="ID_DENY_WINIO_40" />
          <FileRuleRef RuleID="ID_DENY_WINIO_41" />
          <FileRuleRef RuleID="ID_DENY_WINIO_42" />
          <FileRuleRef RuleID="ID_DENY_WINIO_43" />
          <FileRuleRef RuleID="ID_DENY_WINIO_44" />
          <FileRuleRef RuleID="ID_DENY_WINIO_45" />
          <FileRuleRef RuleID="ID_DENY_WINIO_46" />
          <FileRuleRef RuleID="ID_DENY_WINIO_47" />
          <FileRuleRef RuleID="ID_DENY_WINIO_48" />
          <FileRuleRef RuleID="ID_DENY_WINIO_49" />
          <FileRuleRef RuleID="ID_DENY_WINIO_50" />
          <FileRuleRef RuleID="ID_DENY_WINIO_51" />
          <FileRuleRef RuleID="ID_DENY_WINIO_52" />
          <FileRuleRef RuleID="ID_DENY_WINIO_53" />
          <FileRuleRef RuleID="ID_DENY_WINIO_54" />
          <FileRuleRef RuleID="ID_DENY_WINIO_55" />
          <FileRuleRef RuleID="ID_DENY_WINIO_56" />
          <FileRuleRef RuleID="ID_DENY_WINIO_57" />
          <FileRuleRef RuleID="ID_DENY_WINIO_58" />
          <FileRuleRef RuleID="ID_DENY_WINIO_59" />
          <FileRuleRef RuleID="ID_DENY_WINIO_60" />
          <FileRuleRef RuleID="ID_DENY_WINIO_61" />
          <FileRuleRef RuleID="ID_DENY_WINIO_62" />
          <FileRuleRef RuleID="ID_DENY_WINIO_63" />
          <FileRuleRef RuleID="ID_DENY_WINIO_64" />
          <FileRuleRef RuleID="ID_DENY_WINIO_65" />
          <FileRuleRef RuleID="ID_DENY_WINIO_66" />
          <FileRuleRef RuleID="ID_DENY_WINIO_67" />
          <FileRuleRef RuleID="ID_DENY_WINIO_68" />
          <FileRuleRef RuleID="ID_DENY_WINIO_69" />
          <FileRuleRef RuleID="ID_DENY_WINIO_70" />
          <FileRuleRef RuleID="ID_DENY_WINIO_71" />
          <FileRuleRef RuleID="ID_DENY_WINIO_72" />
          <FileRuleRef RuleID="ID_DENY_WINIO_73" />
          <FileRuleRef RuleID="ID_DENY_WINIO_74" />
          <FileRuleRef RuleID="ID_DENY_WINIO_75" />
          <FileRuleRef RuleID="ID_DENY_WINIO_76" />
          <FileRuleRef RuleID="ID_DENY_WINIO_77" />
          <FileRuleRef RuleID="ID_DENY_WINIO_78" />
          <FileRuleRef RuleID="ID_DENY_WINIO_79" />
          <FileRuleRef RuleID="ID_DENY_WINIO_80" />
          <FileRuleRef RuleID="ID_DENY_WINIO_81" />
          <FileRuleRef RuleID="ID_DENY_WINIO_82" />
          <FileRuleRef RuleID="ID_DENY_WINIO_83" />
          <FileRuleRef RuleID="ID_DENY_WINIO_84" />
          <FileRuleRef RuleID="ID_DENY_WINRING0_SHA1" />
          <FileRuleRef RuleID="ID_DENY_WINRING0_SHA256" />
          <FileRuleRef RuleID="ID_DENY_WINRING0_SHA1_PAGE" />
          <FileRuleRef RuleID="ID_DENY_WINRING0_SHA256_PAGE" />
          <FileRuleRef RuleID="ID_DENY_PROCESSHACKER" />
          <FileRuleRef RuleID="ID_DENY_AMP" />
          <FileRuleRef RuleID="ID_DENY_ASMMAP" />
          <FileRuleRef RuleID="ID_DENY_ASMMAP_64" />
          <FileRuleRef RuleID="ID_DENY_DBK_32" />
          <FileRuleRef RuleID="ID_DENY_DBK_64" />
          <FileRuleRef RuleID="ID_DENY_GDRV" />
          <FileRuleRef RuleID="ID_DENY_PCHUNTER_1" />
          <FileRuleRef RuleID="ID_DENY_PCHUNTER_2" />
          <FileRuleRef RuleID="ID_DENY_PHYMEMX_64" />
        </FileRulesRef>
      </ProductSigners>
    </SigningScenario>
    <SigningScenario Value="12" ID="ID_SIGNINGSCENARIO_WINDOWS" FriendlyName="Auto generated policy on 09-19-2022">
      <ProductSigners>
        <FileRulesRef>
            <FileRuleRef RuleID="ID_ALLOW_ALL_2" />
        </FileRulesRef>
      </ProductSigners>
    </SigningScenario>
  </SigningScenarios>
  <UpdatePolicySigners />
  <CiSigners />
  <HvciOptions>0</HvciOptions>
  <Settings>
    <Setting Provider="PolicyInfo" Key="Information" ValueName="Name">
      <Value>
        <String>Microsoft Windows Driver Policy</String>
      </Value>
    </Setting>
    <Setting Provider="PolicyInfo" Key="Information" ValueName="Id">
      <Value>
        <String>10.0.26025.0</String>
      </Value>
    </Setting>
  </Settings>
  <PolicyTypeID>{A244370E-44C9-4C06-B551-F6016E563076}</PolicyTypeID>
</SiPolicy>
```

## More information

- [Merge Windows Defender Application Control policies](/windows/security/threat-protection/windows-defender-application-control/merge-windows-defender-application-control-policies)
