---
title: Microsoft recommended driver block rules (Windows)
description: View a list of recommended block rules to block vulnerable third-party drivers discovered by Microsoft and the security research community.
keywords: security, malware, kernel mode, driver
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.prod: windows-client
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
ms.collection: 
  - M365-security-compliance
  - highpri
author: jgeurten
ms.reviewer: jsuther
ms.author: vinpa
manager: aaroncz
ms.date: 11/01/2022
ms.technology: itpro-security
---

# Microsoft recommended driver block rules

**Applies to:**

- Windows 10
- Windows 11
- Windows Server 2016 and above

>[!NOTE]
>Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Windows Defender Application Control feature availability](/windows/security/threat-protection/windows-defender-application-control/feature-availability).

Microsoft has strict requirements for code running in kernel. So, malicious actors are turning to exploit vulnerabilities in legitimate and signed kernel drivers to run malware in kernel. One of the many strengths of the Windows platform is our strong collaboration with independent hardware vendors (IHVs) and OEMs. Microsoft works closely with our IHVs and security community to ensure the highest level of driver security for our customers. When vulnerabilities in drivers are found, we work with our partners to ensure they're quickly patched and rolled out to the ecosystem. The vulnerable driver blocklist is designed to help harden systems against third party-developed drivers across the Windows ecosystem with any of the following attributes:

- Known security vulnerabilities that can be exploited by attackers to elevate privileges in the Windows kernel
- Malicious behaviors (malware) or certificates used to sign malware
- Behaviors that aren't malicious but circumvent the Windows Security Model and can be exploited by attackers to elevate privileges in the Windows kernel

Drivers can be submitted to Microsoft for security analysis at the [Microsoft Security Intelligence Driver Submission page](https://www.microsoft.com/en-us/wdsi/driversubmission). For more information about driver submission, see [Improve kernel security with the new Microsoft Vulnerable and Malicious Driver Reporting Center](https://www.microsoft.com/security/blog/2021/12/08/improve-kernel-security-with-the-new-microsoft-vulnerable-and-malicious-driver-reporting-center/). To report an issue or request a change to the vulnerable driver blocklist, including updating a block rule once a driver vulnerability has been patched, visit the [Microsoft Security Intelligence portal](https://www.microsoft.com/wdsi) or submit feedback on this article.

> [!NOTE]
> Blocking drivers can cause devices or software to malfunction, and in rare cases, lead to blue screen. The vulnerable driver blocklist is not guaranteed to block every driver found to have vulnerabilities. Microsoft attempts to balance the security risks from vulnerable drivers with the potential impact on compatibility and reliability to produce the blocklist. As always, Microsoft recommends using an explicit allow list approach to security wherever possible.

## Microsoft vulnerable driver blocklist

<!-- MAXADO-6286432 -->

With Windows 11 2022 update, the vulnerable driver blocklist  is enabled by default for all devices, and can be turned on or off via the [Windows Security](https://support.microsoft.com/windows/device-protection-in-windows-security-afa11526-de57-b1c5-599f-3a4c6a61c5e2) app. Except on Windows Server 2016, the vulnerable driver blocklist is also enforced when either memory integrity (also known as hypervisor-protected code integrity or HVCI), Smart App Control, or S mode is active. Users can opt in to HVCI using the [Windows Security](https://support.microsoft.com/windows/device-protection-in-windows-security-afa11526-de57-b1c5-599f-3a4c6a61c5e2) app, and HVCI is on by-default for most new Windows 11 devices.

> [!NOTE]
>
> - The Windows Security app is updated separately from the OS and ships out of box. The version with the vulnerable driver blocklist toggle is in the final validation ring and will ship to all customers very soon. Initially, you will be able to view the configuration state only and the toggle will appear grayed out. The ability to turn the toggle on or off will come with a future Windows update.
>
> - For Windows Insiders, the option to turn Microsoft's vulnerable driver blocklist on or off using the Windows Security app is grayed out when HVCI, Smart App Control, or S mode is enabled. You must disable HVCI or Smart App Control, or switch the device out of S mode, and restart the device before you can turn off the Microsoft vulnerable driver blocklist.

The blocklist is updated with each new major release of Windows, typically 1-2 times per year, including most recently with the Windows 11 2022 update released in September 2022. The most current blocklist is now also available for Windows 10 20H2 and Windows 11 21H2 users as an optional update from Windows Update. Microsoft will occasionally publish future updates through regular Windows servicing.

Customers who always want the most up-to-date driver blocklist can also use Windows Defender Application Control (WDAC) to apply the latest recommended driver blocklist contained in this article. For your convenience, we've provided a download of the most up-to-date vulnerable driver blocklist along with instructions to apply it on your computer at the end of this article. Otherwise, you can use the XML provided below to create your own custom WDAC policies.

## Blocking vulnerable drivers using WDAC

Microsoft recommends enabling [HVCI](/windows/security/threat-protection/device-guard/enable-virtualization-based-protection-of-code-integrity) or S mode to protect your devices against security threats. If this setting isn't possible, Microsoft recommends blocking this list of drivers within your existing Windows Defender Application Control policy. Blocking kernel drivers without sufficient testing can cause devices or software to malfunction, and in rare cases, blue screen. It's recommended to first validate this policy in [audit mode](/windows/security/threat-protection/windows-defender-application-control/audit-windows-defender-application-control-policies) and review the audit block events.

> [!IMPORTANT]
> Microsoft also recommends enabling Attack Surface Reduction (ASR) rule [**Block abuse of exploited vulnerable signed drivers**](/microsoft-365/security/defender-endpoint/attack-surface-reduction-rules-reference#block-abuse-of-exploited-vulnerable-signed-drivers) to prevent an application from writing a vulnerable signed driver to disk. The ASR rule doesn't block a driver already existing on the system from loading, however enabling **Microsoft vulnerable driver blocklist** or applying this WDAC policy will prevent the existing driver from loading.

<br>
<details>
  <summary>Expand this section to see the blocklist WDAC policy XML</summary>

```xml
<?xml version="1.0" encoding="utf-8"?>
<SiPolicy xmlns="urn:schemas-microsoft-com:sipolicy">
  <VersionEx>10.0.25210.0</VersionEx>
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
    <Deny ID="ID_DENY_BANDAI_SHA1" FriendlyName="bandai.sys Hash Sha1" Hash="0F780B7ADA5DD8464D9F2CC537D973F5AC804E9C" />
    <Deny ID="ID_DENY_BANDAI_SHA256" FriendlyName="bandai.sys Hash Sha256" Hash="7FD788358585E0B863328475898BB4400ED8D478466D1B7F5CC0252671456CC8" />
    <Deny ID="ID_DENY_BANDAI_SHA1_PAGE" FriendlyName="bandai.sys Hash Page Sha1" Hash="EA360A9F23BB7CF67F08B88E6A185A699F0C5410" />
    <Deny ID="ID_DENY_BANDAI_SHA256_PAGE" FriendlyName="bandai.sys Hash Page Sha256" Hash="BB83738210650E09307CE869ACA9BFA251024D3C47B1006B94FCE2846313F56E" />
    <Deny ID="ID_DENY_BS_RCIO64_SHA1" FriendlyName="BS_RCIO64 73327429c505d8c5fd690a8ec019ed4fd5a726b607cabe71509111c7bfe9fc7e Hash Sha1" Hash="4BFE9E5A5A25B7CDE6C81EBE31ED4ABEB5147FAF" />
    <Deny ID="ID_DENY_BS_RCIO64_SHA256" FriendlyName="BS_RCIO64 73327429c505d8c5fd690a8ec019ed4fd5a726b607cabe71509111c7bfe9fc7e Hash Sha256" Hash="0381632CD236CD94FA9E64CCC958516AC50F9437F99092E231A607B1E6BE6CF8" />
    <Deny ID="ID_DENY_BS_RCIO64_SHA1_PAGE" FriendlyName="BS_RCIO64 5651466512138240\73327429c505d8c5fd690a8ec019ed4fd5a726b607cabe71509111c7bfe9fc7e Hash Page Sha1" Hash="C28B640BECA5E2834D2A373F139869CC309F6631" />
    <Deny ID="ID_DENY_BS_RCIO64_SHA256_PAGE" FriendlyName="BS_RCIO64 5651466512138240\73327429c505d8c5fd690a8ec019ed4fd5a726b607cabe71509111c7bfe9fc7e Hash Page Sha256" Hash="9378F7DFF94D9409D38FA1A125C52734D6BAEA90913FC3CEE2659FD36AB0DA29" />
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
    <Deny ID="ID_DENY_GDRV" FriendlyName="gdrv.sys" FileName="gdrv.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <Deny ID="ID_DENY_GLCKIO2_SHA1" FriendlyName="GLCKIO2.sys Hash Sha1" Hash="D99B80B3269D735CAC43AF5E43483E64CA7961C3" />
    <Deny ID="ID_DENY_GLCKIO2_SHA256" FriendlyName="GLCKIO2.sys Hash Sha256" Hash="47DBA240967FD0088BE618163672DFBDDF0138178CCCD45B54037F622B221220" />
    <Deny ID="ID_DENY_GLCKIO2_SHA1_PAGE" FriendlyName="GLCKIO2.sys Hash Page Sha1" Hash="51E0740AAEE5AE76B0095C92908C97B817DB8BEA" />
    <Deny ID="ID_DENY_GLCKIO2_SHA256_PAGE" FriendlyName="GLCKIO2.sys Hash Page Sha256" Hash="E7F011E9857C7DB5AACBD424612CD7E3D12C363FDC8F072DDFAF9E2E5C85F5F3" />
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
    <Deny ID="ID_DENY_ASUPIO64_SHA1" FriendlyName="AsUpIO64.sys Hash Sha1" Hash="2A95F882DD9BAFCC57F144A2708A7EC67DD7844C" />
    <Deny ID="ID_DENY_ASUPIO64_SHA256" FriendlyName="AsUpIO64.sys Hash Sha256" Hash="7F75D91844B0C162EEB24D14BCF63B7F230E111DAA7B0A26EAA489EEB22D9057" />
    <Deny ID="ID_DENY_ASUPIO64_SHA1_PAGE" FriendlyName="AsUpIO64.sys Hash Page Sha1" Hash="316E7872A227F0EAD483D244805E9FF4D3569F6F" />
    <Deny ID="ID_DENY_ASUPIO64_SHA256_PAGE" FriendlyName="AsUpIO64.sys Hash Page Sha256" Hash="5958CBE6CF7170C4B66893777BDE66343F5536A98610BD188E10D47DB84BC04C" />
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
    <Deny ID="ID_DENY_MHYPROT2_21" FriendlyName="mhyprot.sys\69e3fda487a5ec2ec0f67b7d79a5a836ff0036497b2d1aec514c67d2efa789b2 Hash Sha1" Hash="C771EA59F075170E952C393CFD6FC784B265027C" />
    <Deny ID="ID_DENY_MHYPROT2_22" FriendlyName="mhyprot.sys\69e3fda487a5ec2ec0f67b7d79a5a836ff0036497b2d1aec514c67d2efa789b2 Hash Sha256" Hash="39937D239220C1B779D7D55613DE2C0A48BD6E12E0214DA4C65992B96CF591DF" />
    <Deny ID="ID_DENY_MHYPROT2_23" FriendlyName="mhyprot.sys\69e3fda487a5ec2ec0f67b7d79a5a836ff0036497b2d1aec514c67d2efa789b2 Hash Page Sha1" Hash="CB44C6F0EE51CB4C5836499BC61DD6C1FBDF8AA1" />
    <Deny ID="ID_DENY_MHYPROT2_24" FriendlyName="mhyprot.sys\69e3fda487a5ec2ec0f67b7d79a5a836ff0036497b2d1aec514c67d2efa789b2 Hash Page Sha256" Hash="7ED26A593524A2A92FFCFB075A42BB4FA4775FFBF83AF98525244A4710886EAD" />
    <Deny ID="ID_DENY_MHYPROT2_25" FriendlyName="mhyprot.sys\8eed6b4a1e6f7dd66807beeb6ff71f8b34cd8c7777f1e31d326cb87593e8f836 Hash Sha1" Hash="0918277FCDC64A9DC51C04324377B3468FA1269B" />
    <Deny ID="ID_DENY_MHYPROT2_26" FriendlyName="mhyprot.sys\8eed6b4a1e6f7dd66807beeb6ff71f8b34cd8c7777f1e31d326cb87593e8f836 Hash Sha256" Hash="AA717E9AB4D614497DF19F602D289A6EDDCDBA8027C71BCC807780A219347D16" />
    <Deny ID="ID_DENY_MHYPROT2_27" FriendlyName="mhyprot.sys\8eed6b4a1e6f7dd66807beeb6ff71f8b34cd8c7777f1e31d326cb87593e8f836 Hash Page Sha1" Hash="B09BCC042D60D2F4C0D08284818ED198CEDEDA04" />
    <Deny ID="ID_DENY_MHYPROT2_28" FriendlyName="mhyprot.sys\8eed6b4a1e6f7dd66807beeb6ff71f8b34cd8c7777f1e31d326cb87593e8f836 Hash Page Sha256" Hash="FF5F6048A3D6F6738B60E911E3876FCBDC9A02EC9862F909345C8A50FD4CC0A7" />
    <Deny ID="ID_DENY_MHYPROT3_1" FriendlyName="mhyprot3.sys\24E70C87D58FA5771F02B9DDF0D8870CBA6B26E35C6455A2C77F482E2080D3E9 Hash Sha1" Hash="E19E10D97D7ECD4A4376196F7E3DFA2365872867" />
    <Deny ID="ID_DENY_MHYPROT3_2" FriendlyName="mhyprot3.sys\24E70C87D58FA5771F02B9DDF0D8870CBA6B26E35C6455A2C77F482E2080D3E9 Hash Sha256" Hash="5A021532F0AC453256526428CCF3518CDBA4C6373CC72F340BA208B6C41B3A9E" />
    <Deny ID="ID_DENY_MHYPROT3_3" FriendlyName="mhyprot3.sys\24E70C87D58FA5771F02B9DDF0D8870CBA6B26E35C6455A2C77F482E2080D3E9 Hash Page Sha1" Hash="25C88C4312C3120547FE62EBF5E56FF1174AAFBC" />
    <Deny ID="ID_DENY_MHYPROT3_4" FriendlyName="mhyprot3.sys\24E70C87D58FA5771F02B9DDF0D8870CBA6B26E35C6455A2C77F482E2080D3E9 Hash Page Sha256" Hash="AADE26BCD9B435D7ED420134855428AFF84EDCF4E6E66A500A04135ADB4D97E0" />
    <Deny ID="ID_DENY_MSIO_SHA1_1" FriendlyName="MsIo.sys Hash Sha1" Hash="0CB0FD5BEA730E4EAAEC1426B0C15376CCAC6D83" />
    <Deny ID="ID_DENY_MSIO_SHA256_1" FriendlyName="MsIo.sys Hash Sha256" Hash="0D0962DB9DC6879067270134801AD425C1F3E85B0DC39877C02AAA9C54ACA14E" />
    <Deny ID="ID_DENY_MSIO_SHA1_PAGE_1" FriendlyName="MsIo.sys Hash Page Sha1" Hash="D4E21C205DE75CDE70CD73C52C646E1E5D333A35" />
    <Deny ID="ID_DENY_MSIO_SHA256_PAGE_1" FriendlyName="MsIo.sys Hash Page Sha256" Hash="C1D2036235A489FDD8B3970C9EF01567443A87D17B0AD5C2A033D4C471D0ECDE" />
    <Deny ID="ID_DENY_MSIO_SHA1_2" FriendlyName="MsIo.sys Hash Sha1" Hash="7E732ACB7CFAD9BA043A9350CDEFF25D742BECB8" />
    <Deny ID="ID_DENY_MSIO_SHA256_2" FriendlyName="MsIo.sys Hash Sha256" Hash="7018D515A6C781EA6097CA71D0F0603AD0D689F7EC99DB27FCACD492A9E86027" />
    <Deny ID="ID_DENY_MSIO_SHA1_PAGE_2" FriendlyName="MsIo.sys Hash Page Sha1" Hash="CDE1A50E1DF7870F8E4AFD8631E45A847C714C0A" />
    <Deny ID="ID_DENY_MSIO_SHA256_PAGE_2" FriendlyName="MsIo.sys Hash Page Sha256" Hash="05736AB8B48DF84D81CB2CC0FBDC9D3DA34C22DB67A3E71C6F4B6B3923740DD5" />
    <Deny ID="ID_DENY_MSIO_SHA1_3" FriendlyName="MsIo.sys Hash Sha1" Hash="07660D1867E20BE0212A96CBA6B5FE6BE7776EAF" />
    <Deny ID="ID_DENY_MSIO_SHA256_3" FriendlyName="MsIo.sys Hash Sha256" Hash="BE0AF245444321E51F4DD8A90A19A0ABE05A060CBAD93701E23A02DF307957AE" />
    <Deny ID="ID_DENY_MSIO_SHA1_4" FriendlyName="MsIo.sys Hash Sha1" Hash="B2CD3A63D04EAE427BEDE6C6FE8FACBA91ECECBF" />
    <Deny ID="ID_DENY_MSIO_SHA256_4" FriendlyName="MsIo.sys Hash Sha256" Hash="D86D6732AC4D1CB41A2DCE40436B839C0DFDCEF9BA306CE5D0F97C0522ABFAC8" />
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
    <Deny ID="ID_DENY_OTIPCIBUS_1" FriendlyName="otipcibus.sys\4e3eb5b9bce2fd9f6878ae36288211f0997f6149aa8c290ed91228ba4cdfae80 Hash Sha1" Hash="FD172C7F8BDC81988FCF1642881078A8CA8415F6" />
    <Deny ID="ID_DENY_OTIPCIBUS_2" FriendlyName="otipcibus.sys\4e3eb5b9bce2fd9f6878ae36288211f0997f6149aa8c290ed91228ba4cdfae80 Hash Sha256" Hash="1CDA1A6E33D14D5DD06344425102BF840F8149E817ECFB01C59A2190D3367024" />
    <Deny ID="ID_DENY_OTIPCIBUS_3" FriendlyName="otipcibus.sys\4e3eb5b9bce2fd9f6878ae36288211f0997f6149aa8c290ed91228ba4cdfae80 Hash Page Sha1" Hash="8DFBFD888C9A420AC7F3371E5443C26A2852E539" />
    <Deny ID="ID_DENY_OTIPCIBUS_4" FriendlyName="otipcibus.sys\4e3eb5b9bce2fd9f6878ae36288211f0997f6149aa8c290ed91228ba4cdfae80 Hash Page Sha256" Hash="FC6D1B67464228C2FA102AD121DCD40292054DC0FC8C4D86BEFACA7456535C57" />
    <Deny ID="ID_DENY_PIDDRV_SHA1" FriendlyName="piddrv.sys Hash Sha1" Hash="877C6C36A155109888FE1F9797B93CB30B4957EF" />
    <Deny ID="ID_DENY_PIDDRV_SHA256" FriendlyName="piddrv.sys Hash Sha256" Hash="4E19D4CE649C28DD947424483796BEACE3656284FB0379D97DDDD320AA602BBC" />
    <Deny ID="ID_DENY_PIDDRV_SHA1_PAGE" FriendlyName="piddrv.sys Hash Page Sha1" Hash="A7D827A41B2C4B7638495CD1D77926F1BA902978" />
    <Deny ID="ID_DENY_PIDDRV_SHA256_PAGE" FriendlyName="piddrv.sys Hash Page Sha256" Hash="EAC7316089DBAF7DF79A531355547BBDA22FA0921E31BBA0D27BCC88234E9ED3" />
    <Deny ID="ID_DENY_PIDDRV64_SHA1" FriendlyName="piddrv64.sys Hash Sha1" Hash="0C2599D738D01A82EC91725F499ACEBBCFB47CC9" />
    <Deny ID="ID_DENY_PIDDRV64_SHA256" FriendlyName="piddrv64.sys Hash Sha256" Hash="B97F870C501714FA453CF18AE8A30C87D08FF1E6D784AFDBB0121AEA3DA2DC28" />
    <Deny ID="ID_DENY_PIDDRV64_SHA1_PAGE" FriendlyName="piddrv64.sys Hash Page Sha1" Hash="C978063E678233C5EFB8F002FEF000FD479CC632" />
    <Deny ID="ID_DENY_PIDDRV64_SHA256_PAGE" FriendlyName="piddrv64.sys Hash Page Sha256" Hash="1081CCD57FD35998634103AE1E736638D82351092ACD30FE75084EA6A08CA0F7" />
    <Deny ID="ID_DENY_PHYMEMX64_SHA1" FriendlyName="phymemx64 Hash Sha1" Hash="3C9F40AC72B0202CB40627FDEB7298079187193A" />
    <Deny ID="ID_DENY_PHYMEMX64_SHA256" FriendlyName="phymemx64 Hash Sha256" Hash="A6AE7364FD188C10D6B5A729A7FF58A3EB11E7FEB0D107D18F9133655C11FB66" />
    <Deny ID="ID_DENY_PHYMEMX64_SHA1_PAGE" FriendlyName="phymemx64 Hash Page Sha1" Hash="6E7D8ABF7F81A2433F27B052B3952EFC4B9CC0B1" />
    <Deny ID="ID_DENY_PHYMEMX64_SHA256_PAGE" FriendlyName="phymemx64 Hash Page Sha256" Hash="B7113B9A68E17428E2107B19BA099571AAFFC854B8FB9CBCEB79EF9E3FD1CC62" />
    <Deny ID="ID_DENY_SEMAV6MSR64_SHA1" FriendlyName="semav6msr64.sys Hash Sha1" Hash="E3DBE2AA03847DF621591A4CAD69A5609DE5C237" />
    <Deny ID="ID_DENY_SEMAV6MSR64_SHA256" FriendlyName="semav6msr64.sys Hash Sha256" Hash="EB71A8ECEF692E74AE356E8CB734029B233185EE5C2CCB6CC87CC6B36BEA65CF" />
    <Deny ID="ID_DENY_SEMAV6MSR64_SHA1_PAGE" FriendlyName="semav6msr64.sys Hash Page Sha1" Hash="F3821EC0AEF270F749DF9F44FBA91AFA5C8C38E8" />
    <Deny ID="ID_DENY_SEMAV6MSR64_SHA256_PAGE" FriendlyName="semav6msr64.sys Hash Page Sha256" Hash="4F12EE563E7496E7105D67BF64AF6B436902BE4332033AF0B5A242B206372CB7" />
    <Deny ID="ID_DENY_WINRING0_SHA1" FriendlyName="WinRing0.sys Hash Sha1" Hash="12EB825418A932B1E4C6697DC7647E89AE52CF3F" />
    <Deny ID="ID_DENY_WINRING0_SHA256" FriendlyName="WinRing0.sys Hash Sha256" Hash="4582ADB2E67EEBAFF755AE740C1F24BC3AF78E0F28E8E8DECB99F86BF155AB23" />
    <Deny ID="ID_DENY_WINRING0_SHA1_PAGE" FriendlyName="WinRing0.sys Hash Page Sha1" Hash="497AFEB0D5B97D4B863704A2F77FFEF31220402D" />
    <Deny ID="ID_DENY_WINRING0_SHA256_PAGE" FriendlyName="WinRing0.sys Hash Page Sha256" Hash="8D8A5696BDF11D2427016F91F9726AFF4F0C80FADBC3E6033662FA11C8B282BD" />
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
    <Deny ID="ID_DENY_WINIO_1" FriendlyName="WinIo64A.sys\0c74d09da7baf7c05360346e4c3512d0cd433d59 Hash Sha1" Hash="0C74D09DA7BAF7C05360346E4C3512D0CD433D59" />
    <Deny ID="ID_DENY_WINIO_2" FriendlyName="WinIo64B.sys\f18e669127c041431cde8f2d03b15cfc20696056 Hash Sha1" Hash="F18E669127C041431CDE8F2D03B15CFC20696056" />
    <Deny ID="ID_DENY_WINIO_3" FriendlyName="WinIo64B.sys\80ca9c9cce4b5e6afb92a56b5bfd954eca0ff690 Hash Sha1" Hash="80CA9C9CCE4B5E6AFB92A56B5BFD954ECA0FF690" />
    <Deny ID="ID_DENY_WINIO_4" FriendlyName="WinIo64A.sys\c21043466942961203e751c9cebcd159e661fa1a Hash Sha1" Hash="C21043466942961203E751C9CEBCD159E661FA1A" />
    <Deny ID="ID_DENY_WINIO_5" FriendlyName="WinIo64.sys\40cc2318ffffd458023c8cd1e285a5ad51adf538 Hash Sha1" Hash="40CC2318FFFFD458023C8CD1E285A5AD51ADF538" />
    <Deny ID="ID_DENY_WINIO_6" FriendlyName="WinIO32B.sys\f1c8c3926d0370459a1b7f0cf3d17b22ff9d0c7f Hash Sha1" Hash="F1C8C3926D0370459A1B7F0CF3D17B22FF9D0C7F" />
    <Deny ID="ID_DENY_WINIO_7" FriendlyName="WinIO32.sys\8fb149fc476cf5bf18dc575334edad7caf210996 Hash Sha1" Hash="8FB149FC476CF5BF18DC575334EDAD7CAF210996" />
    <Deny ID="ID_DENY_WINIO_8" FriendlyName="WinIO32A.sys\01779ee53f999464465ed690d823d160f73f10e7 Hash Sha1" Hash="01779EE53F999464465ED690D823D160F73F10E7" />
    <Deny ID="ID_DENY_WINIO_9" FriendlyName="WinIo64C.sys\b242b0332b9c9e8e17ec27ef10d75503d20d97b6 Hash Sha1" Hash="B242B0332B9C9E8E17EC27EF10D75503D20D97B6" />
    <Deny ID="ID_DENY_WINIO_10" FriendlyName="WinIO64C.sys\a65fabaf64aa1934314aae23f25cdf215cbaa4b6 Hash Sha1" Hash="A65FABAF64AA1934314AAE23F25CDF215CBAA4B6" />
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
    <Deny ID="ID_DENY_PROCESSHACKER" FriendlyName="kprocesshacker.sys FileRule" FileName="kprocesshacker.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="3.1.65535.65535" />
    <Deny ID="ID_DENY_AMP" FriendlyName="System Mechanic CVE-2018-5701" FileName="amp.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="5.4.11.1" />
    <Deny ID="ID_DENY_ASMMAP" FriendlyName="Asus Memory Mapping Driver" FileName="asmmap.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <Deny ID="ID_DENY_ASMMAP_64" FriendlyName="Asus Memory Mapping Driver" FileName="asmmap64.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <Deny ID="ID_DENY_PCHUNTER_1" FriendlyName="PCHunter Driver" FileName="PCHunter.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <Deny ID="ID_DENY_PCHUNTER_2" FriendlyName="PCHunter Driver" FileName="安全专用" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <Deny ID="ID_DENY_PHYMEMX_64" FriendlyName="Phymemx64 Memory Mapping Driver" FileName="phymemx64.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <Deny ID="ID_DENY_DBK_32" FriendlyName="Cheat Engine Driver" FileName="dbk32.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <Deny ID="ID_DENY_DBK_64" FriendlyName="Cheat Engine Driver" FileName="dbk64.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_AMD_RYZEN" FriendlyName="amdryzenmaster.sys" FileName="AMDRyzenMasterDriver.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="1.5.0.0" />
    <FileAttrib ID="ID_FILEATTRIB_AMDPP" FriendlyName="AMDPowerProfiler.sys FileAttribute" FileName="AMDPowerProfiler.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="6.1.0.0" />
    <FileAttrib ID="ID_FILEATTRIB_AMDPP_1" FriendlyName="AMDPowerProfiler.sys FileAttribute" FileName="AMDPowerProfiler.sys" MinimumFileVersion="6.1.0.0" />
    <FileAttrib ID="ID_FILEATTRIB_ASWARPOT" FriendlyName="Avast aswArpot FileAttribute" FileName="aswArPot.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="21.4.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_ATILLK" FriendlyName="atillk64 FileAttribute" FileName="atillk64.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_ATSZIO" FriendlyName="ATSZIO.sys FileAttribute" FileName="ATSZIO.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_ATSZIO_1" FriendlyName="ATSZIO.sys FileAttribute" FileName="ATSZIO.sys" MinimumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_BS_DEF" FriendlyName="Bs_Def64 FileAttribute" FileName="Bs_Def64.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_BS_DEF_64" FriendlyName="Bs_Def FileAttribute" FileName="Bs_Def.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_BS_HWMIO64" FriendlyName="" FileName="BS_HWMIO64_W10.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="10.0.1806.2200" />
    <FileAttrib ID="ID_FILEATTRIB_BS_I2CIO" FriendlyName="" FileName="BS_I2cIo.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="1.1.0.0" />
    <FileAttrib ID="ID_FILEATTRIB_BS_RCIO_1" FriendlyName="BS_RCIO.sys FileAttribute" FileName="BS_RCIO64.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="10.0.0.1" />
    <FileAttrib ID="ID_FILEATTRIB_BSMI" FriendlyName="" FileName="BSMI.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="1.0.0.3" />
    <FileAttrib ID="ID_FILEATTRIB_CPUZ_DRIVER" FriendlyName="" FileName="cpuz.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="1.0.4.3" />
    <FileAttrib ID="ID_FILEATTRIB_ELBY_DRIVER" FriendlyName="" FileName="ElbyCDIO.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="6.0.3.2" />
    <FileAttrib ID="ID_FILEATTRIB_HPPORTIOX64" FriendlyName="HpPortIox64.sys" FileName="HpPortIox64.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="1.2.0.9" />
    <FileAttrib ID="ID_FILEATTRIB_HW" FriendlyName="hw_sys\4880f40f2e557cff38100620b9aa1a3a753cb693af16cd3d95841583edcb57a8 FileAttribute" FileName="HW.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="4.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_HWRWDRV" FriendlyName="HwRwDrv FileAttribute" FileName="HwRwDrv.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_IOBITUNLOCKER" FriendlyName="IObitUnlocker FileAttribute" FileName="IObitUnlocker.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="1.3.0.0" />
    <FileAttrib ID="ID_FILEATTRIB_IQVW64" FriendlyName="IQVW64.sys FileAttribute" FileName="iQVW64.SYS" MinimumFileVersion="0.0.0.0" MaximumFileVersion="1.4.0.0" />
    <FileAttrib ID="ID_FILEATTRIB_KEVP64" FriendlyName="kevp64.sys FileAttribute" FileName="kEvP64.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_KEVP64_1" FriendlyName="kevp64.sys FileAttribute" FileName="kEvP64.sys" MinimumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_LHA" FriendlyName="LHA.sys FileAttribute" FileName="LHA.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_LHA_1" FriendlyName="LHA.sys FileAttribute" FileName="LHA.sys" MinimumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_LIBNICM_DRIVER" FriendlyName="" FileName="libnicm.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="3.1.11.0" />
    <FileAttrib ID="ID_FILEATTRIB_LV_DIAG" FriendlyName="LenovoDiagnosticsDriver FileAttribute" FileName="LenovoDiagnosticsDriver.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="2.0.0.0" />
    <FileAttrib ID="ID_FILEATTRIB_LV561V64" FriendlyName="LV561V64 LogiTech FileAttribute" FileName="Lv561av.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_MONITOR" FriendlyName="IOBit Monitor.sys FileAttribute" FileName="Monitor.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="15.0.0.2" />
    <FileAttrib ID="ID_FILEATTRIB_MTCBSV64" FriendlyName="mtcBSv64.sys FileAttribute" FileName="mtcBSv64.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="21.2.0.0" />
    <FileAttrib ID="ID_FILEATTRIB_MYDRIVERS" FriendlyName="mydrivers.sys FileAttribute" FileName="mydrivers.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_NCHGBIOS2X64" FriendlyName="" FileName="NCHGBIOS2x64.SYS" MinimumFileVersion="0.0.0.0" MaximumFileVersion="4.2.4.0" />
    <FileAttrib ID="ID_FILEATTRIB_NCPL_DRIVER_1" FriendlyName="" FileName="NCPL.SYS" MinimumFileVersion="0.0.0.0" MaximumFileVersion="3.1.11.0" />
    <FileAttrib ID="ID_FILEATTRIB_NICM_DRIVER" FriendlyName="" FileName="NICM.SYS" MinimumFileVersion="0.0.0.0" MaximumFileVersion="3.1.11.0" />
    <FileAttrib ID="ID_FILEATTRIB_NSCM_DRIVER" FriendlyName="" FileName="nscm.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="3.1.11.0" />
    <FileAttrib ID="ID_FILEATTRIB_NTIOLIB" FriendlyName="" FileName="NTIOLib.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="1.0.0.0" />
    <FileAttrib ID="ID_FILEATTRIB_NVFLASH" FriendlyName="Nvidia NVFlash FileAttribute" FileName="nvflash.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="1.9.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_PANIO_1" FriendlyName="PanIOx64\6b830ea0db6546a044c9900d3f335e7820c2a80e147b0751641899d1a5aa8f74 FileAttribute" FileName="PanIOx64.sys" MinimumFileVersion="1.0.0.1" />
    <FileAttrib ID="ID_FILEATTRIB_PANIO_2" FriendlyName="PanIO\f596e64f4c5d7c37a00493728d8756b243cfdc11e3372d6d6dfeffc13c9ab960 FileAttribute" FileName="PanIO.sys" MinimumFileVersion="1.0.0.1" />
    <FileAttrib ID="ID_FILEATTRIB_PANIOMON_1" FriendlyName="PanMonFltx64\06508aacb4ed0a1398a2b0da5fa2dbf7da435b56da76fd83c759a50a51c75caf FileAttribute" FileName="PanMonFltX64.sys" MinimumFileVersion="1.0.0.1" />
    <FileAttrib ID="ID_FILEATTRIB_PANIOMON_2" FriendlyName="PanMonFlt\7e0124fcc7c95fdc34408cf154cb41e654dade8b898c71ad587b2090b1da30d7 FileAttribute" FileName="PanMonFlt.sys" MinimumFileVersion="1.0.0.1" />
    <FileAttrib ID="ID_FILEATTRIB_PHYMEM" FriendlyName="Phymem FileAttribute" FileName="phymem.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_PHYSMEM" FriendlyName="Physmem.sys FileAttribute" FileName="physmem.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_RTKIO_DRIVER" FriendlyName="" FileName="rtkio.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_RTKIO_DRIVER_1" FriendlyName="" FileName="rtkio.sys" MinimumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_RTKIO64_DRIVER" FriendlyName="" FileName="rtkio64.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_RTKIO64_DRIVER_1" FriendlyName="" FileName="rtkio64.sys" MinimumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_RTKIOW10X64_DRIVER" FriendlyName="" FileName="rtkiow10x64.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_RTKIOW10X64_DRIVER_1" FriendlyName="" FileName="rtkiow10x64.sys" MinimumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_RTKIOW8X64_DRIVER" FriendlyName="" FileName="rtkiow8x64.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_RTKIOW8X64_DRIVER_1" FriendlyName="" FileName="rtkiow8x64.sys" MinimumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_RWDRV_DRIVER" FriendlyName="" FileName="RwDrv.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_RWDRV_DRIVER_1" FriendlyName="" FileName="RwDrv.sys" MinimumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_SANDBOX_1" FriendlyName="Agnitum sandbox FileAttribute" FileName="sandbox.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_SANDBOX_2" FriendlyName="Agnitum SandBox FileAttribute" FileName="SandBox.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_SANDRA" FriendlyName="" FileName="SANDRA" MinimumFileVersion="0.0.0.0" MaximumFileVersion="10.12.0.0" />
    <FileAttrib ID="ID_FILEATTRIB_SANDRA_DRIVER" FriendlyName="" FileName="sandra.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="10.12.0.0" />
    <FileAttrib ID="ID_FILEATTRIB_SEGWINDRVX64" FriendlyName="segwindrvx64.sys FileAttribute" FileName="segwindrvx64.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="100.0.7.2" />
    <FileAttrib ID="ID_FILEATTRIB_SUPERBMC" FriendlyName="Superbmc FileAttribute" FileName="superbmc.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="2.2.1.0" />
    <FileAttrib ID="ID_FILEATTRIB_TREND_MICRO" FriendlyName="TmComm.sys" FileName="TmComm.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="8.0.0.0" />
    <FileAttrib ID="ID_FILEATTRIB_VBOX_1" FriendlyName="VBoxDrv.sys FileAttribute" FileName="VBoxDrv.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="3.0.0.0" />
    <FileAttrib ID="ID_FILEATTRIB_VIRAGT" FriendlyName="viragt.sys 32-bit" FileName="viragt.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="1.80.0.0" />
    <FileAttrib ID="ID_FILEATTRIB_VIRAGT64" FriendlyName="viragt64.sys" FileName="viragt64.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="1.0.0.11" />
    <FileAttrib ID="ID_FILEATTRIB_VMDRV" FriendlyName="vmdrv.sys FileAttribute" FileName="vmdrv.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="10.0.10011.16384" />
    <FileAttrib ID="ID_FILEATTRIB_VMDRV_1" FriendlyName="vmdrv.sys FileAttribute" FileName="vmdrv.sys" MinimumFileVersion="10.0.10011.16384" />
    <FileAttrib ID="ID_FILEATTRIB_WINRING0" FriendlyName="WinRing0.sys" FileName="WinRing0.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="2.0.0.0" />
    <FileAttrib ID="ID_FILEATTRIB_WISEUNLO" FriendlyName="WiseUnlo FileAttribute" FileName="WiseUnlo.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="65535.65535.65535.65535" />
  </FileRules>
  <!--Signers-->
  <Signers>
    <Signer ID="ID_SIGNER_ATILLK" Name="VeriSign Class 3 Code Signing 2004 CA">
      <CertRoot Type="TBS" Value="C7FC1727F5B75A6421A1F95C73BBDB23580C48E5" />
      <CertPublisher Value="ATI Technologies, Inc" />
      <FileAttribRef RuleID="ID_FILEATTRIB_ATILLK" />
    </Signer>
    <Signer ID="ID_SIGNER_ASWARPOT_1" Name="DigiCert High Assurance Code Signing CA-1">
      <CertRoot Type="TBS" Value="1D7E838ACCD498C2E5BA9373AF819EC097BB955C" />
      <CertPublisher Value="Avast Software s.r.o." />
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
    </Signer>
    <Signer ID="ID_SIGNER_ASWARPOT_5" Name="DigiCert High Assurance Code Signing CA-1">
      <CertRoot Type="TBS" Value="1D7E838ACCD498C2E5BA9373AF819EC097BB955C" />
      <CertPublisher Value="AVAST Software s.r.o." />
      <FileAttribRef RuleID="ID_FILEATTRIB_ASWARPOT" />
    </Signer>
    <Signer ID="ID_SIGNER_ASWARPOT_6" Name="DigiCert SHA2 Assured ID Code Signing CA">
      <CertRoot Type="TBS" Value="E767799478F64A34B3F53FF3BB9057FE1768F4AB178041B0DCC0FF1E210CBA65" />
      <CertPublisher Value="AVAST Software s.r.o." />
      <FileAttribRef RuleID="ID_FILEATTRIB_ASWARPOT" />
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
    <Signer ID="ID_SIGNER_CAPCOM" Name="Symantec Class 3 SHA256 Code Signing CA">
      <CertRoot Type="TBS" Value="A08E79C386083D875014C409C13D144E0A24386132980DF11FF59737C8489EB1" />
      <CertPublisher Value="CAPCOM Co.,Ltd." />
    </Signer>
    <Signer ID="ID_SIGNER_CHEAT_ENGINE" Name="Microsoft Windows Third Party Component CA 2014 Cheat Engine OPUS">
      <CertRoot Type="TBS" Value="D8BE9E4D9074088EF818BC6F6FB64955E90378B2754155126FEEBBBD969CF0AE" />
      <CertOemID Value="Cheat Engine" />
    </Signer>
    <Signer ID="ID_SIGNER_ENE" Name="Microsoft Windows Third Party Component CA 2014 ENE Tech OPUS">
      <CertRoot Type="TBS" Value="D8BE9E4D9074088EF818BC6F6FB64955E90378B2754155126FEEBBBD969CF0AE" />
      <CertOemID Value="ENE Technology Inc." />
    </Signer>
    <Signer ID="ID_SIGNER_GEOTRUST_SRL_2009" Name="HT Srl Digital ID Class 3 - Microsoft Software Validation v2">
      <CertRoot Type="TBS" Value="D70EDFA009A76BD8250D74E9EE92EB9EAD7D4CB3" />
    </Signer>
    <Signer ID="ID_SIGNER_GLOBALSIGN_CHEAT_ENGINE" Name="GlobalSign CA Cheat Engine Publisher">
      <CertRoot Type="TBS" Value="BD1765C56594221373893EF26D97F88C144FB0E5A0111215B45D7239C3444DF7" />
      <CertPublisher Value="Cheat Engine" />
    </Signer>
    <Signer ID="ID_SIGNER_GLOBALSIGN_G2_CHEAT_ENGINE" Name="GlobalSign CodeSigning CA - G2">
      <CertRoot Type="TBS" Value="589A7D4DF869395601BA7538A65AFAE8C4616385" />
      <CertPublisher Value="Cheat Engine" />
    </Signer>
    <Signer ID="ID_SIGNER_GEOTRUST_SRL_2010" Name="HT Srl Digital ID Class 3 - Microsoft Software Validation v2">
      <CertRoot Type="TBS" Value="E5BA2ABBD1DC89F143A66A3CDCDA26D968758E2D" />
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
    <Signer ID="ID_SIGNER_JEROMIN_CODY_ERIC" Name="Jeromin Cody Eric">
      <CertRoot Type="TBS" Value="DFA6171201B51A2EC174310E8FB9F4C0FDE2D365235E589DED0213C5279BEA6E" />
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
    <Signer ID="ID_SIGNER_LV_LOGITECH" Name="VeriSign Class 3 Code Signing 2004 CA">
      <CertRoot Type="TBS" Value="C7FC1727F5B75A6421A1F95C73BBDB23580C48E5" />
      <CertPublisher Value="Logitech Inc" />
      <FileAttribRef RuleID="ID_FILEATTRIB_LV561V64" />
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
    <Signer ID="ID_SIGNER_NANJING" Name="Nanjing Zhixiao Information Technology Co.,Ltd">
      <CertRoot Type="TBS" Value="F5E1C4D98F9CE552EAD3776C16F3AD91FE5F3984" />
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
    <Signer ID="ID_SIGNER_PAN" Name="GlobalSign CodeSigning CA - G2">
      <CertRoot Type="TBS" Value="589A7D4DF869395601BA7538A65AFAE8C4616385" />
      <CertPublisher Value="PAN YAZILIM BILISIM TEKNOLOJILERI TICARET LTD. STI." />
      <FileAttribRef RuleID="ID_FILEATTRIB_PANIOMON_1" />
      <FileAttribRef RuleID="ID_FILEATTRIB_PANIO_1" />
      <FileAttribRef RuleID="ID_FILEATTRIB_PANIOMON_2" />
      <FileAttribRef RuleID="ID_FILEATTRIB_PANIO_2" />
    </Signer>
    <Signer ID="ID_SIGNER_RWEVERY" Name="GlobalSign CodeSigning CA - G2">
      <CertRoot Type="TBS" Value="589A7D4DF869395601BA7538A65AFAE8C4616385" />
      <CertPublisher Value="ChongKim Chan" />
    </Signer>
    <Signer ID="ID_SIGNER_SAASAME" Name="SaaSaMe Ltd.">
      <CertRoot Type="TBS" Value="A86DE66D8198E4272859881476A6F9936034A482" />
    </Signer>
    <Signer ID="ID_SIGNER_SPEEDFAN" Name="VeriSign Class 3 Code Signing 2004 CA">
      <CertRoot Type="TBS" Value="C7FC1727F5B75A6421A1F95C73BBDB23580C48E5" />
      <CertPublisher Value="Sokno S.R.L." />
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
    <Signer ID="ID_SIGNER_TRUST_ASIA" Name="上海域联软件技术有限公司">
      <CertRoot Type="TBS" Value="232A71B4D1734EAC2CFC6EA554C86DE34F9F8B72" />
    </Signer>
    <Signer ID="ID_SIGNER_VBOX" Name="GlobalSign Primary Object Publishing CA">
      <CertRoot Type="TBS" Value="041750993D7C9E063F02DFE74699598640911AAB" />
      <CertPublisher Value="innotek GmbH" />
    </Signer>
    <Signer ID="ID_SIGNER_VERISIGN_2004_ASUS_BS_DEF" Name="VeriSign Class 3 Code Signing 2004 CA">
      <CertRoot Type="TBS" Value="C7FC1727F5B75A6421A1F95C73BBDB23580C48E5" />
      <CertPublisher Value="ASUSTeK Computer Inc." />
      <FileAttribRef RuleID="ID_FILEATTRIB_BS_DEF" />
      <FileAttribRef RuleID="ID_FILEATTRIB_BS_DEF_64" />
    </Signer>
    <Signer ID="ID_SIGNER_WINDOWS_3RD_PARTY_2012" Name="Microsoft Windows Third Party Component CA 2012">
      <CertRoot Type="TBS" Value="CEC1AFD0E310C55C1DCC601AB8E172917706AA32FB5EAF826813547FDF02DD46" />
      <CertPublisher Value="Microsoft Windows Hardware Compatibility Publisher" />
      <FileAttribRef RuleID="ID_FILEATTRIB_AMD_RYZEN" />
      <FileAttribRef RuleID="ID_FILEATTRIB_AMDPP" />
      <FileAttribRef RuleID="ID_FILEATTRIB_HWRWDRV" />
      <FileAttribRef RuleID="ID_FILEATTRIB_IQVW64" />
      <FileAttribRef RuleID="ID_FILEATTRIB_TREND_MICRO" />
      <FileAttribRef RuleID="ID_FILEATTRIB_HPPORTIOX64" />
      <FileAttribRef RuleID="ID_FILEATTRIB_LV_DIAG" />
      <FileAttribRef RuleID="ID_FILEATTRIB_MTCBSV64" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTKIO_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTKIO64_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_WINRING0" />
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
    <Signer ID="ID_SIGNER_AGNITUM_2004" Name="VeriSign Class 3 Code Signing 2004 CA">
      <CertRoot Type="TBS" Value="C7FC1727F5B75A6421A1F95C73BBDB23580C48E5" />
      <CertPublisher Value="Agnitum Ltd." />
      <FileAttribRef RuleID="ID_FILEATTRIB_SANDBOX_2" />
    </Signer>
    <Signer ID="ID_SIGNER_AGNITUM_2009" Name="VeriSign Class 3 Code Signing 2009-2 CA">
      <CertRoot Type="TBS" Value="4CDC38C800761463749C3CBD94A12F32E49877BF" />
      <CertPublisher Value="Agnitum Ltd." />
      <FileAttribRef RuleID="ID_FILEATTRIB_SANDBOX_1" />
    </Signer>
    <Signer ID="ID_SIGNER_AGNITUM_2010" Name="VeriSign Class 3 Code Signing 2010 CA">
      <CertRoot Type="TBS" Value="4843A82ED3B1F2BFBEE9671960E1940C942F688D" />
      <CertPublisher Value="Agnitum Ltd." />
      <FileAttribRef RuleID="ID_FILEATTRIB_SANDBOX_1" />
    </Signer>
    <Signer ID="ID_SIGNER_AGNITUM_2010_1" Name="VeriSign Class 3 Code Signing 2010 CA">
      <CertRoot Type="TBS" Value="4678C6E4A8787A8E6ED2BCE8792B122F6C08AFD8" />
      <CertPublisher Value="Agnitum Ltd." />
      <FileAttribRef RuleID="ID_FILEATTRIB_SANDBOX_1" />
    </Signer>
    <Signer ID="ID_SIGNER_AMDPP" Name="USERTrust RSA Certification Authority">
      <CertRoot Type="TBS" Value="13BAA039635F1C5292A8C2F36AAE7E1D25C025202E9092F5B0F53F5F752DFA9C71B3D1B8D9A6358FCEE6EC75622FABF9" />
      <CertPublisher Value="Advanced Micro Devices Inc." />
      <FileAttribRef RuleID="ID_FILEATTRIB_AMDPP" />
      <FileAttribRef RuleID="ID_FILEATTRIB_AMDPP_1" />
    </Signer>
    <Signer ID="ID_SIGNER_COMODO_IQVW" Name="COMODO RSA Certification Authority">
      <CertRoot Type="TBS" Value="7CE102D63C57CB48F80A65D1A5E9B350A7A618482AA5A36775323CA933DDFCB00DEF83796A6340DEC5EBF7596CFD8E5D" />
      <FileAttribRef RuleID="ID_FILEATTRIB_IQVW64" />
    </Signer>
    <Signer ID="ID_SIGNER_ELBY" Name="GlobalSign Primary Object Publishing CA">
      <CertRoot Type="TBS" Value="041750993D7C9E063F02DFE74699598640911AAB" />
      <CertPublisher Value="Elaborate Bytes AG" />
      <FileAttribRef RuleID="ID_FILEATTRIB_ELBY_DRIVER" />
    </Signer>
    <Signer ID="ID_SIGNER_DIGICERT_EV" Name="DigiCert EV Code Signing CA (SHA2)">
      <CertRoot Type="TBS" Value="EEC58131DC11CD7F512501B15FDBC6074C603B68CA91F7162D5A042054EDB0CF" />
      <FileAttribRef RuleID="ID_FILEATTRIB_CPUZ_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTKIO_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTKIO64_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTKIOW10X64_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTKIOW8X64_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTKIO_DRIVER_1" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTKIO64_DRIVER_1" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTKIOW10X64_DRIVER_1" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTKIOW8X64_DRIVER_1" />
    </Signer>
    <Signer ID="ID_SIGNER_GEOTRUST_SRL_2009_1" Name="HT Srl Digital ID Class 3 - Microsoft Software Validation v2">
      <CertRoot Type="TBS" Value="d70edfa009a76bd8250d74e9ee92eb9ead7d4cb3" />
    </Signer>
    <Signer ID="ID_SIGNER_GETAC" Name="Symantec Class 3 Extended Validation Code Signing CA - G2">
      <CertRoot Type="TBS" Value="B3C925B4048C3F7C444D248A2B101186B57CBA39596EB5DCE0E17A4EE4B32F19" />
      <CertPublisher Value="Getac Technology Corp." />
      <FileAttribRef RuleID="ID_FILEATTRIB_MTCBSV64" />
    </Signer>
    <Signer ID="ID_SIGNER_GLOBALSIGN_G2_MICROSTAR" Name="GlobalSign CodeSigning CA - G2">
      <CertRoot Type="TBS" Value="589A7D4DF869395601BA7538A65AFAE8C4616385" />
      <CertPublisher Value="MICRO-STAR INTERNATIONAL CO., LTD." />
      <FileAttribRef RuleID="ID_FILEATTRIB_NTIOLIB" />
    </Signer>
    <Signer ID="ID_SIGNER_GLOBALSIGN_MICROSTAR" Name="GlobalSign Primary Object Publishing CA">
      <CertRoot Type="TBS" Value="041750993D7C9E063F02DFE74699598640911AAB" />
      <CertPublisher Value="Micro-Star Int'l Co. Ltd." />
      <FileAttribRef RuleID="ID_FILEATTRIB_NTIOLIB" />
    </Signer>
    <Signer ID="ID_SIGNER_GEOTRUST_SRL_2010_1" Name="HT Srl Digital ID Class 3 - Microsoft Software Validation v2">
      <CertRoot Type="TBS" Value="e5ba2abbd1dc89f143a66a3cdcda26d968758e2d" />
    </Signer>
    <Signer ID="ID_SIGNER_GLOBALSIGN_TG_SOFT" Name="GlobalSign CodeSigning CA - G3">
      <CertRoot Type="TBS" Value="F478F0E790D5C8EC6056A3AB2567404A991D2837" />
      <CertPublisher Value="TG Soft di Tonello Gianfranco ed Enrico S.r.l." />
      <FileAttribRef RuleID="ID_FILEATTRIB_VIRAGT" />
      <FileAttribRef RuleID="ID_FILEATTRIB_VIRAGT64" />
    </Signer>
    <Signer ID="ID_SIGNER_HANDAN_1" Name="Handan City Congtai District LiKang  Daily Goods Department">
      <CertRoot Type="TBS" Value="cccae21fbc083f5d1af6997bb3f29ed9915e7324" />
    </Signer>
    <Signer ID="ID_SIGNER_HERMETICWIPER_1_1" Name="DigiCert Assured ID Code Signing CA-1">
      <CertRoot Type="TBS" Value="47F4B9898631773231B32844EC0D49990AC4EB1E" />
      <CertPublisher Value="CHENGDU YIWO Tech Development Co., Ltd." />
    </Signer>
    <Signer ID="ID_SIGNER_HERMETICWIPER_2_1" Name="Symantec Class 3 Extended Validation Code Signing CA - G2">
      <CertRoot Type="TBS" Value="B3C925B4048C3F7C444D248A2B101186B57CBA39596EB5DCE0E17A4EE4B32F19" />
      <CertPublisher Value="Chengdu Yiwo Tech Development Co., Ltd." />
    </Signer>
    <Signer ID="ID_SIGNER_HERMETICWIPER_3_1" Name="VeriSign Class 3 Code Signing 2004 CA">
      <CertRoot Type="TBS" Value="C7FC1727F5B75A6421A1F95C73BBDB23580C48E5" />
      <CertPublisher Value="CHENGDU YIWO Tech Development Co., Ltd." />
    </Signer>
    <Signer ID="ID_SIGNER_HERMETICWIPER_4_1" Name="VeriSign Class 3 Code Signing 2010 CA">
      <CertRoot Type="TBS" Value="4843A82ED3B1F2BFBEE9671960E1940C942F688D" />
      <CertPublisher Value="CHENGDU YIWO Tech Development Co., Ltd." />
    </Signer>
    <Signer ID="ID_SIGNER_HP" Name="DigiCert SHA2 Assured ID Code Signing CA">
      <CertRoot Type="TBS" Value="E767799478F64A34B3F53FF3BB9057FE1768F4AB178041B0DCC0FF1E210CBA65" />
      <CertPublisher Value="HP Inc." />
      <FileAttribRef RuleID="ID_FILEATTRIB_HPPORTIOX64" />
      <FileAttribRef RuleID="ID_FILEATTRIB_WINRING0" />
    </Signer>
    <Signer ID="ID_SIGNER_INTEL_IQVW" Name="Intel External Basic Policy CA">
      <CertRoot Type="TBS" Value="53B052BA209C525233293274854B264BC0F68B73" />
      <FileAttribRef RuleID="ID_FILEATTRIB_IQVW64" />
    </Signer>
    <Signer ID="ID_SIGNER_JEROMIN_CODY_ERIC_1" Name="Jeromin Cody Eric">
      <CertRoot Type="TBS" Value="dfa6171201b51a2ec174310e8fb9f4c0fde2d365235e589ded0213c5279bea6e" />
    </Signer>
    <Signer ID="ID_SIGNER_NANJING_1" Name="Nanjing Zhixiao Information Technology Co.,Ltd">
      <CertRoot Type="TBS" Value="f5e1c4d98f9ce552ead3776c16f3ad91fe5f3984" />
    </Signer>
    <Signer ID="ID_SIGNER_NVIDIA_2007_1" Name="Leaked 2007 NVIDIA Corporation Verisign Class 3 Code Signing 2004 CA">
      <CertRoot Type="TBS" Value="80854F578E2A3B5552EA839BA4F98DDFE94B2381" />
    </Signer>
    <Signer ID="ID_SIGNER_NVIDIA_2011_1" Name="Leaked 2011 NVIDIA Corporation Verisign Class 3 Code Signing 2010 CA">
      <CertRoot Type="TBS" Value="15C37DBEBE6FCC77108E3D7AD982676D3D5E77F7" />
    </Signer>
    <Signer ID="ID_SIGNER_NVIDIA_2015_1" Name="Leaked 2015 NVIDIA Corporation Verisign Class 3 Code Signing 2010 CA">
      <CertRoot Type="TBS" Value="F049A238763D4A90B148AB10A500F96EBF1DC436" />
    </Signer>
    <Signer ID="ID_SIGNER_PHYSMEM" Name="GlobalSign CodeSigning CA - G2">
      <CertRoot Type="TBS" Value="589A7D4DF869395601BA7538A65AFAE8C4616385" />
      <CertPublisher Value="Hilscher Gesellschaft fuer Systemautomation mbH" />
      <FileAttribRef RuleID="ID_FILEATTRIB_PHYSMEM" />
    </Signer>
    <Signer ID="ID_SIGNER_REALTEK" Name="DigiCert EV Code Signing CA">
      <CertRoot Type="TBS" Value="2D54C16A8F8B69CCDEA48D0603C132F547A5CF75" />
      <CertPublisher Value="Realtek Semiconductor Corp." />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTKIO_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTKIO64_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTKIOW10X64_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTKIOW8X64_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTKIO_DRIVER_1" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTKIO64_DRIVER_1" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTKIOW10X64_DRIVER_1" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTKIOW8X64_DRIVER_1" />
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
    <Signer ID="ID_SIGNER_SYMANTEC_CLASS_3" Name="Symantec Class 3 SHA256 Code Signing CA">
      <CertRoot Type="TBS" Value="A08E79C386083D875014C409C13D144E0A24386132980DF11FF59737C8489EB1" />
      <FileAttribRef RuleID="ID_FILEATTRIB_AMD_RYZEN" />
      <FileAttribRef RuleID="ID_FILEATTRIB_AMDPP" />
      <FileAttribRef RuleID="ID_FILEATTRIB_TREND_MICRO" />
      <FileAttribRef RuleID="ID_FILEATTRIB_AMDPP_1" />
    </Signer>
    <Signer ID="ID_SIGNER_TRUST_ASIA_1" Name="上海域联软件技术有限公司">
      <CertRoot Type="TBS" Value="232a71b4d1734eac2cfc6ea554c86de34f9f8b72" />
    </Signer>
    <Signer ID="ID_SIGNER_VBOX_ORCALE_1" Name="VeriSign Class 3 Code Signing 2010 CA">
      <CertRoot Type="TBS" Value="4843A82ED3B1F2BFBEE9671960E1940C942F688D" />
      <CertPublisher Value="Oracle Corporation" />
      <FileAttribRef RuleID="ID_FILEATTRIB_VBOX_1" />
    </Signer>
    <Signer ID="ID_SIGNER_VBOX_SUN_1" Name="VeriSign Class 3 Code Signing 2004 CA">
      <CertRoot Type="TBS" Value="C7FC1727F5B75A6421A1F95C73BBDB23580C48E5" />
      <CertPublisher Value="Sun Microsystems, Inc." />
      <FileAttribRef RuleID="ID_FILEATTRIB_VBOX_1" />
    </Signer>
    <Signer ID="ID_SIGNER_VERISIGN_2004" Name="VeriSign Class 3 Code Signing 2004 CA">
      <CertRoot Type="TBS" Value="C7FC1727F5B75A6421A1F95C73BBDB23580C48E5" />
      <FileAttribRef RuleID="ID_FILEATTRIB_CPUZ_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_IQVW64" />
      <FileAttribRef RuleID="ID_FILEATTRIB_MTCBSV64" />
    </Signer>
    <Signer ID="ID_SIGNER_VERISIGN_2004_BIOSTAR" Name="VeriSign Class 3 Code Signing 2004 CA">
      <CertRoot Type="TBS" Value="C7FC1727F5B75A6421A1F95C73BBDB23580C48E5" />
      <CertPublisher Value="BIOSTAR MICROTECH INT'L CORP" />
      <FileAttribRef RuleID="ID_FILEATTRIB_BS_I2CIO" />
      <FileAttribRef RuleID="ID_FILEATTRIB_BSMI" />
    </Signer>
    <Signer ID="ID_SIGNER_VERISIGN_2009" Name="VeriSign Class 3 Code Signing 2009-2 CA">
      <CertRoot Type="TBS" Value="4CDC38C800761463749C3CBD94A12F32E49877BF" />
      <FileAttribRef RuleID="ID_FILEATTRIB_ATSZIO" />
      <FileAttribRef RuleID="ID_FILEATTRIB_IQVW64" />
      <FileAttribRef RuleID="ID_FILEATTRIB_LIBNICM_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_NICM_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_NSCM_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_TREND_MICRO" />
      <FileAttribRef RuleID="ID_FILEATTRIB_NCHGBIOS2X64" />
      <FileAttribRef RuleID="ID_FILEATTRIB_ATSZIO_1" />
      <FileAttribRef RuleID="ID_FILEATTRIB_NCPL_DRIVER_1" />
    </Signer>
    <Signer ID="ID_SIGNER_VERISIGN_2009_BIOSTAR" Name="VeriSign Class 3 Code Signing 2009-2 CA">
      <CertRoot Type="TBS" Value="4CDC38C800761463749C3CBD94A12F32E49877BF" />
      <CertPublisher Value="BIOSTAR MICROTECH INT'L CORP" />
      <FileAttribRef RuleID="ID_FILEATTRIB_BSMI" />
      <FileAttribRef RuleID="ID_FILEATTRIB_BS_I2CIO" />
    </Signer>
    <Signer ID="ID_SIGNER_VERISIGN_2009_REALTEK" Name="VeriSign Class 3 Code Signing 2009-2 CA">
      <CertRoot Type="TBS" Value="4CDC38C800761463749C3CBD94A12F32E49877BF" />
      <CertPublisher Value="Realtek Semiconductor Corp." />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTKIO_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTKIO64_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTKIO_DRIVER_1" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTKIO64_DRIVER_1" />
    </Signer>
    <Signer ID="ID_SIGNER_VERISIGN_2010" Name="VeriSign Class 3 Code Signing 2010 CA">
      <CertRoot Type="TBS" Value="4843A82ED3B1F2BFBEE9671960E1940C942F688D" />
      <FileAttribRef RuleID="ID_FILEATTRIB_AMDPP" />
      <FileAttribRef RuleID="ID_FILEATTRIB_ATSZIO" />
      <FileAttribRef RuleID="ID_FILEATTRIB_CPUZ_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_IQVW64" />
      <FileAttribRef RuleID="ID_FILEATTRIB_KEVP64" />
      <FileAttribRef RuleID="ID_FILEATTRIB_LHA" />
      <FileAttribRef RuleID="ID_FILEATTRIB_MONITOR" />
      <FileAttribRef RuleID="ID_FILEATTRIB_MTCBSV64" />
      <FileAttribRef RuleID="ID_FILEATTRIB_TREND_MICRO" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTKIO_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTKIO64_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RWDRV_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_AMDPP_1" />
      <FileAttribRef RuleID="ID_FILEATTRIB_ATSZIO_1" />
      <FileAttribRef RuleID="ID_FILEATTRIB_KEVP64_1" />
      <FileAttribRef RuleID="ID_FILEATTRIB_LHA_1" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTKIO_DRIVER_1" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTKIO64_DRIVER_1" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RWDRV_DRIVER_1" />
    </Signer>
    <Signer ID="ID_SIGNER_VERISIGN_2010_2" Name="VeriSign Class 3 Code Signing 2010 CA">
      <CertRoot Type="TBS" Value="4678C6E4A8787A8E6ED2BCE8792B122F6C08AFD8" />
      <FileAttribRef RuleID="ID_FILEATTRIB_TREND_MICRO" />
    </Signer>
    <Signer ID="ID_SIGNER_VERISIGN_2010_BIOSTAR" Name="VeriSign Class 3 Code Signing 2010 CA">
      <CertRoot Type="TBS" Value="4843A82ED3B1F2BFBEE9671960E1940C942F688D" />
      <CertPublisher Value="BIOSTAR MICROTECH INT'L CORP" />
      <FileAttribRef RuleID="ID_FILEATTRIB_BS_I2CIO" />
      <FileAttribRef RuleID="ID_FILEATTRIB_BSMI" />
    </Signer>
    <Signer ID="ID_SIGNER_VERISIGN_AMD" Name="VeriSign Class 3 Code Signing 2010 CA">
      <CertRoot Type="TBS" Value="4843A82ED3B1F2BFBEE9671960E1940C942F688D" />
      <CertPublisher Value="Advanced Micro Devices, Inc." />
      <FileAttribRef RuleID="ID_FILEATTRIB_AMD_RYZEN" />
    </Signer>
    <Signer ID="ID_SIGNER_VERISIGN_INSYDE" Name="VeriSign Class 3 Code Signing 2010 CA">
      <CertRoot Type="TBS" Value="4843A82ED3B1F2BFBEE9671960E1940C942F688D" />
      <CertPublisher Value="Insyde Software Corp." />
      <FileAttribRef RuleID="ID_FILEATTRIB_SEGWINDRVX64" />
    </Signer>
    <Signer ID="ID_SIGNER_VERISIGN_NOVELL" Name="VeriSign Class 3 Code Signing 2010 CA">
      <CertRoot Type="TBS" Value="4843A82ED3B1F2BFBEE9671960E1940C942F688D" />
      <CertPublisher Value="Novell, Inc." />
      <FileAttribRef RuleID="ID_FILEATTRIB_LIBNICM_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_NICM_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_NSCM_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_NCPL_DRIVER_1" />
    </Signer>
    <Signer ID="ID_SIGNER_VERISIGN_TG_SOFT" Name="VeriSign Class 3 Code Signing 2010 CA">
      <CertRoot Type="TBS" Value="4843A82ED3B1F2BFBEE9671960E1940C942F688D" />
      <CertPublisher Value="TG Soft S.a.s. Di Tonello Gianfranco e C." />
      <FileAttribRef RuleID="ID_FILEATTRIB_VIRAGT" />
      <FileAttribRef RuleID="ID_FILEATTRIB_VIRAGT64" />
    </Signer>
    <Signer ID="ID_SIGNER_VERISIGN_TOSHIBA" Name="VeriSign Class 3 Code Signing 2010 CA">
      <CertRoot Type="TBS" Value="4843A82ED3B1F2BFBEE9671960E1940C942F688D" />
      <CertPublisher Value="TOSHIBA CORPORATION" />
      <FileAttribRef RuleID="ID_FILEATTRIB_NCHGBIOS2X64" />
    </Signer>
    <Signer ID="ID_SIGNER_VMDRV" Name="DigiCert EV Code Signing CA (SHA2)">
      <CertRoot Type="TBS" Value="EEC58131DC11CD7F512501B15FDBC6074C603B68CA91F7162D5A042054EDB0CF" />
      <CertPublisher Value="Voicemod Sociedad Limitada" />
      <FileAttribRef RuleID="ID_FILEATTRIB_VMDRV" />
      <FileAttribRef RuleID="ID_FILEATTRIB_VMDRV_1" />
    </Signer>
    <Signer ID="ID_SIGNER_WINDOWS_3RD_PARTY_2010" Name="Microsoft Third Party Component Windows PCA 2010">
      <CertRoot Type="TBS" Value="90C9669670E75989159E6EEF69625EB6AD17CBA6209ED56F5665D55450A05212" />
      <CertPublisher Value="Microsoft Windows Hardware Compatibility Publisher" />
      <FileAttribRef RuleID="ID_FILEATTRIB_HPPORTIOX64" />
      <FileAttribRef RuleID="ID_FILEATTRIB_WINRING0" />
    </Signer>
    <Signer ID="ID_SIGNER_ASWARPOT_2" Name="Microsoft Windows Third Party Component CA 2012">
      <CertRoot Type="TBS" Value="CEC1AFD0E310C55C1DCC601AB8E172917706AA32FB5EAF826813547FDF02DD46" />
      <CertPublisher Value="Microsoft Windows Hardware Compatibility Publisher" />
      <FileAttribRef RuleID="ID_FILEATTRIB_ASWARPOT" />
      <FileAttribRef RuleID="ID_FILEATTRIB_AMD_RYZEN" />
      <FileAttribRef RuleID="ID_FILEATTRIB_AMDPP_1" />
      <FileAttribRef RuleID="ID_FILEATTRIB_IQVW64" />
      <FileAttribRef RuleID="ID_FILEATTRIB_TREND_MICRO" />
      <FileAttribRef RuleID="ID_FILEATTRIB_HPPORTIOX64" />
      <FileAttribRef RuleID="ID_FILEATTRIB_MTCBSV64" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTKIO_DRIVER_1" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTKIO64_DRIVER_1" />
      <FileAttribRef RuleID="ID_FILEATTRIB_WINRING0" />
    </Signer>
    <Signer ID="ID_SIGNER_WINDOWS_3RD_PARTY_2014" Name="Microsoft Windows Third Party Component CA 2014">
      <CertRoot Type="TBS" Value="D8BE9E4D9074088EF818BC6F6FB64955E90378B2754155126FEEBBBD969CF0AE" />
      <CertPublisher Value="Microsoft Windows Hardware Compatibility Publisher" />
      <FileAttribRef RuleID="ID_FILEATTRIB_BS_HWMIO64" />
      <FileAttribRef RuleID="ID_FILEATTRIB_CPUZ_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_HW" />
      <FileAttribRef RuleID="ID_FILEATTRIB_IOBITUNLOCKER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_LHA" />
      <FileAttribRef RuleID="ID_FILEATTRIB_LIBNICM_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_MYDRIVERS" />
      <FileAttribRef RuleID="ID_FILEATTRIB_NICM_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_NSCM_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_NVFLASH" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTKIO_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTKIOW10X64_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_VIRAGT" />
      <FileAttribRef RuleID="ID_FILEATTRIB_VIRAGT64" />
      <FileAttribRef RuleID="ID_FILEATTRIB_VMDRV" />
      <FileAttribRef RuleID="ID_FILEATTRIB_WISEUNLO" />
      <FileAttribRef RuleID="ID_FILEATTRIB_BS_RCIO_1" />
      <FileAttribRef RuleID="ID_FILEATTRIB_LHA_1" />
      <FileAttribRef RuleID="ID_FILEATTRIB_NCPL_DRIVER_1" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTKIO_DRIVER_1" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTKIOW10X64_DRIVER_1" />
      <FileAttribRef RuleID="ID_FILEATTRIB_VMDRV_1" />
    </Signer>
  </Signers>
  <!--Driver Signing Scenarios-->
  <SigningScenarios>
    <SigningScenario Value="131" ID="ID_SIGNINGSCENARIO_DRIVERS_1" FriendlyName="Auto generated policy on 09-19-2022">
      <ProductSigners>
        <DeniedSigners>
          <DeniedSigner SignerId="ID_SIGNER_ATILLK" />
          <DeniedSigner SignerId="ID_SIGNER_ASWARPOT_1" />
          <DeniedSigner SignerId="ID_SIGNER_ASWARPOT_3" />
          <DeniedSigner SignerId="ID_SIGNER_ASWARPOT_4" />
          <DeniedSigner SignerId="ID_SIGNER_ASWARPOT_5" />
          <DeniedSigner SignerId="ID_SIGNER_ASWARPOT_6" />
          <DeniedSigner SignerId="ID_SIGNER_BAOJI" />
          <DeniedSigner SignerId="ID_SIGNER_BEIJING_CHUNBAI" />
          <DeniedSigner SignerId="ID_SIGNER_BEIJING_VSK" />
          <DeniedSigner SignerId="ID_SIGNER_CAPCOM" />
          <DeniedSigner SignerId="ID_SIGNER_CHEAT_ENGINE" />
          <DeniedSigner SignerId="ID_SIGNER_ENE" />
          <DeniedSigner SignerId="ID_SIGNER_GEOTRUST_SRL_2009" />
          <DeniedSigner SignerId="ID_SIGNER_GLOBALSIGN_CHEAT_ENGINE" />
          <DeniedSigner SignerId="ID_SIGNER_GLOBALSIGN_G2_CHEAT_ENGINE" />
          <DeniedSigner SignerId="ID_SIGNER_GEOTRUST_SRL_2010" />
          <DeniedSigner SignerId="ID_SIGNER_GOOD_WEI" />
          <DeniedSigner SignerId="ID_SIGNER_HANDAN" />
          <DeniedSigner SignerId="ID_SIGNER_HYPERTECH" />
          <DeniedSigner SignerId="ID_SIGNER_HW_A" />
          <DeniedSigner SignerId="ID_SIGNER_HW_B" />
          <DeniedSigner SignerId="ID_SIGNER_HW_C" />
          <DeniedSigner SignerId="ID_SIGNER_HW_D" />
          <DeniedSigner SignerId="ID_SIGNER_HWRWDRV_1" />
          <DeniedSigner SignerId="ID_SIGNER_HWRWDRV_2" />
          <DeniedSigner SignerId="ID_SIGNER_JEROMIN_CODY_ERIC" />
          <DeniedSigner SignerId="ID_SIGNER_LV_DIAG" />
          <DeniedSigner SignerId="ID_SIGNER_LV_DIAG_2" />
          <DeniedSigner SignerId="ID_SIGNER_LV_LOGITECH" />
          <DeniedSigner SignerId="ID_SIGNER_MIMIKATZ_KERNEL" />
          <DeniedSigner SignerId="ID_SIGNER_MIMIKATZ_KERNEL_SHA2" />
          <DeniedSigner SignerId="ID_SIGNER_MIMIKATZ_USER" />
          <DeniedSigner SignerId="ID_SIGNER_MYDRIVERS_1" />
          <DeniedSigner SignerId="ID_SIGNER_MYDRIVERS_2" />
          <DeniedSigner SignerId="ID_SIGNER_MYDRIVERS_3" />
          <DeniedSigner SignerId="ID_SIGNER_NANJING" />
          <DeniedSigner SignerId="ID_SIGNER_NVFLASH" />
          <DeniedSigner SignerId="ID_SIGNER_NVFLASH_2" />
          <DeniedSigner SignerId="ID_SIGNER_NVFLASH_3" />
          <DeniedSigner SignerId="ID_SIGNER_PAN" />
          <DeniedSigner SignerId="ID_SIGNER_RWEVERY" />
          <DeniedSigner SignerId="ID_SIGNER_SAASAME" />
          <DeniedSigner SignerId="ID_SIGNER_SPEEDFAN" />
          <DeniedSigner SignerId="ID_SIGNER_PHYMEM" />
          <DeniedSigner SignerId="ID_SIGNER_PHYMEM_1" />
          <DeniedSigner SignerId="ID_SIGNER_PHYMEM_2" />
          <DeniedSigner SignerId="ID_SIGNER_TRUST_ASIA" />
          <DeniedSigner SignerId="ID_SIGNER_VBOX" />
          <DeniedSigner SignerId="ID_SIGNER_VERISIGN_2004_ASUS_BS_DEF" />
          <DeniedSigner SignerId="ID_SIGNER_WINDOWS_3RD_PARTY_2012" />
          <DeniedSigner SignerId="ID_SIGNER_WISEUNLO" />
          <DeniedSigner SignerId="ID_SIGNER_WISEUNLO_1" />
          <DeniedSigner SignerId="ID_SIGNER_WISEUNLO_2" />
          <DeniedSigner SignerId="ID_SIGNER_AGNITUM_2004" />
          <DeniedSigner SignerId="ID_SIGNER_AGNITUM_2009" />
          <DeniedSigner SignerId="ID_SIGNER_AGNITUM_2010" />
          <DeniedSigner SignerId="ID_SIGNER_AGNITUM_2010_1" />
          <DeniedSigner SignerId="ID_SIGNER_AMDPP" />
          <DeniedSigner SignerId="ID_SIGNER_COMODO_IQVW" />
          <DeniedSigner SignerId="ID_SIGNER_ELBY" />
          <DeniedSigner SignerId="ID_SIGNER_DIGICERT_EV" />
          <DeniedSigner SignerId="ID_SIGNER_GEOTRUST_SRL_2009_1" />
          <DeniedSigner SignerId="ID_SIGNER_GETAC" />
          <DeniedSigner SignerId="ID_SIGNER_GLOBALSIGN_G2_MICROSTAR" />
          <DeniedSigner SignerId="ID_SIGNER_GLOBALSIGN_MICROSTAR" />
          <DeniedSigner SignerId="ID_SIGNER_GEOTRUST_SRL_2010_1" />
          <DeniedSigner SignerId="ID_SIGNER_GLOBALSIGN_TG_SOFT" />
          <DeniedSigner SignerId="ID_SIGNER_HANDAN_1" />
          <DeniedSigner SignerId="ID_SIGNER_HERMETICWIPER_1_1" />
          <DeniedSigner SignerId="ID_SIGNER_HERMETICWIPER_2_1" />
          <DeniedSigner SignerId="ID_SIGNER_HERMETICWIPER_3_1" />
          <DeniedSigner SignerId="ID_SIGNER_HERMETICWIPER_4_1" />
          <DeniedSigner SignerId="ID_SIGNER_HP" />
          <DeniedSigner SignerId="ID_SIGNER_INTEL_IQVW" />
          <DeniedSigner SignerId="ID_SIGNER_JEROMIN_CODY_ERIC_1" />
          <DeniedSigner SignerId="ID_SIGNER_NANJING_1" />
          <DeniedSigner SignerId="ID_SIGNER_NVIDIA_2007_1" />
          <DeniedSigner SignerId="ID_SIGNER_NVIDIA_2011_1" />
          <DeniedSigner SignerId="ID_SIGNER_NVIDIA_2015_1" />
          <DeniedSigner SignerId="ID_SIGNER_PHYSMEM" />
          <DeniedSigner SignerId="ID_SIGNER_REALTEK" />
          <DeniedSigner SignerId="ID_SIGNER_SANDRA" />
          <DeniedSigner SignerId="ID_SIGNER_SANDRA_THAWTE" />
          <DeniedSigner SignerId="ID_SIGNER_SYMANTEC_CLASS_3" />
          <DeniedSigner SignerId="ID_SIGNER_TRUST_ASIA_1" />
          <DeniedSigner SignerId="ID_SIGNER_VBOX_ORCALE_1" />
          <DeniedSigner SignerId="ID_SIGNER_VBOX_SUN_1" />
          <DeniedSigner SignerId="ID_SIGNER_VERISIGN_2004" />
          <DeniedSigner SignerId="ID_SIGNER_VERISIGN_2004_BIOSTAR" />
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
          <DeniedSigner SignerId="ID_SIGNER_ASWARPOT_2" />
          <DeniedSigner SignerId="ID_SIGNER_WINDOWS_3RD_PARTY_2014" />
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
          <FileRuleRef RuleID="ID_DENY_GDRV" />
          <FileRuleRef RuleID="ID_DENY_GLCKIO2_SHA1" />
          <FileRuleRef RuleID="ID_DENY_GLCKIO2_SHA256" />
          <FileRuleRef RuleID="ID_DENY_GLCKIO2_SHA1_PAGE" />
          <FileRuleRef RuleID="ID_DENY_GLCKIO2_SHA256_PAGE" />
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
          <FileRuleRef RuleID="ID_DENY_ASUPIO64_SHA1" />
          <FileRuleRef RuleID="ID_DENY_ASUPIO64_SHA256" />
          <FileRuleRef RuleID="ID_DENY_ASUPIO64_SHA1_PAGE" />
          <FileRuleRef RuleID="ID_DENY_ASUPIO64_SHA256_PAGE" />
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
          <FileRuleRef RuleID="ID_DENY_MHYPROT2_21" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT2_22" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT2_23" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT2_24" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT2_25" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT2_26" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT2_27" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT2_28" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT3_1" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT3_2" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT3_3" />
          <FileRuleRef RuleID="ID_DENY_MHYPROT3_4" />
          <FileRuleRef RuleID="ID_DENY_MSIO_SHA1_1" />
          <FileRuleRef RuleID="ID_DENY_MSIO_SHA256_1" />
          <FileRuleRef RuleID="ID_DENY_MSIO_SHA1_PAGE_1" />
          <FileRuleRef RuleID="ID_DENY_MSIO_SHA256_PAGE_1" />
          <FileRuleRef RuleID="ID_DENY_MSIO_SHA1_2" />
          <FileRuleRef RuleID="ID_DENY_MSIO_SHA256_2" />
          <FileRuleRef RuleID="ID_DENY_MSIO_SHA1_PAGE_2" />
          <FileRuleRef RuleID="ID_DENY_MSIO_SHA256_PAGE_2" />
          <FileRuleRef RuleID="ID_DENY_MSIO_SHA1_3" />
          <FileRuleRef RuleID="ID_DENY_MSIO_SHA256_3" />
          <FileRuleRef RuleID="ID_DENY_MSIO_SHA1_4" />
          <FileRuleRef RuleID="ID_DENY_MSIO_SHA256_4" />
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
          <FileRuleRef RuleID="ID_DENY_OTIPCIBUS_1" />
          <FileRuleRef RuleID="ID_DENY_OTIPCIBUS_2" />
          <FileRuleRef RuleID="ID_DENY_OTIPCIBUS_3" />
          <FileRuleRef RuleID="ID_DENY_OTIPCIBUS_4" />
          <FileRuleRef RuleID="ID_DENY_PIDDRV_SHA1" />
          <FileRuleRef RuleID="ID_DENY_PIDDRV_SHA256" />
          <FileRuleRef RuleID="ID_DENY_PIDDRV_SHA1_PAGE" />
          <FileRuleRef RuleID="ID_DENY_PIDDRV_SHA256_PAGE" />
          <FileRuleRef RuleID="ID_DENY_PIDDRV64_SHA1" />
          <FileRuleRef RuleID="ID_DENY_PIDDRV64_SHA256" />
          <FileRuleRef RuleID="ID_DENY_PIDDRV64_SHA1_PAGE" />
          <FileRuleRef RuleID="ID_DENY_PIDDRV64_SHA256_PAGE" />
          <FileRuleRef RuleID="ID_DENY_PHYMEMX64_SHA1" />
          <FileRuleRef RuleID="ID_DENY_PHYMEMX64_SHA256" />
          <FileRuleRef RuleID="ID_DENY_PHYMEMX64_SHA1_PAGE" />
          <FileRuleRef RuleID="ID_DENY_PHYMEMX64_SHA256_PAGE" />
          <FileRuleRef RuleID="ID_DENY_SEMAV6MSR64_SHA1" />
          <FileRuleRef RuleID="ID_DENY_SEMAV6MSR64_SHA256" />
          <FileRuleRef RuleID="ID_DENY_SEMAV6MSR64_SHA1_PAGE" />
          <FileRuleRef RuleID="ID_DENY_SEMAV6MSR64_SHA256_PAGE" />
          <FileRuleRef RuleID="ID_DENY_WINRING0_SHA1" />
          <FileRuleRef RuleID="ID_DENY_WINRING0_SHA256" />
          <FileRuleRef RuleID="ID_DENY_WINRING0_SHA1_PAGE" />
          <FileRuleRef RuleID="ID_DENY_WINRING0_SHA256_PAGE" />
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
          <FileRuleRef RuleID="ID_DENY_PROCESSHACKER" />
          <FileRuleRef RuleID="ID_DENY_AMP" />
          <FileRuleRef RuleID="ID_DENY_ASMMAP" />
          <FileRuleRef RuleID="ID_DENY_ASMMAP_64" />
          <FileRuleRef RuleID="ID_DENY_PCHUNTER_1" />
          <FileRuleRef RuleID="ID_DENY_PCHUNTER_2" />
          <FileRuleRef RuleID="ID_DENY_PHYMEMX_64" />
          <FileRuleRef RuleID="ID_DENY_DBK_32" />
          <FileRuleRef RuleID="ID_DENY_DBK_64" />
          <FileRuleRef RuleID="ID_DENY_BS_RCIO64_SHA1" />
          <FileRuleRef RuleID="ID_DENY_BS_RCIO64_SHA256" />
          <FileRuleRef RuleID="ID_DENY_BS_RCIO64_SHA1_PAGE" />
          <FileRuleRef RuleID="ID_DENY_BS_RCIO64_SHA256_PAGE" />
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
        <String>10.0.25210.0</String>
      </Value>
    </Setting>
  </Settings>
  <PolicyTypeID>{A244370E-44C9-4C06-B551-F6016E563076}</PolicyTypeID>
</SiPolicy>
```

</details>

> [!NOTE]
> The policy listed above contains **Allow All** rules. If your version of Windows supports WDAC multiple policies, we recommend deploying this policy alongside any existing WDAC policies. If you do plan to merge this policy with another policy, you may need to remove the **Allow All** rules before merging it if the other policy applies an explicit allow list. For more information, see [Create a WDAC Deny Policy](/windows/security/threat-protection/windows-defender-application-control/create-wdac-deny-policy#single-policy-considerations).

> [!NOTE]
> To use the policy above with Windows Server 2016, you must convert the policy XML on a device running a newer operating system.

## Steps to download and apply the vulnerable driver blocklist binary

If you prefer to apply the vulnerable driver blocklist exactly as shown above, follow these steps:

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

## More information

- [Merge Windows Defender Application Control policies](/windows/security/threat-protection/windows-defender-application-control/merge-windows-defender-application-control-policies)
