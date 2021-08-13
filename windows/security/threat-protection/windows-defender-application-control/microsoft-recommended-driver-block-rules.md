---
title: Microsoft recommended driver block rules (Windows 10)
description: View a list of recommended block rules to block vulnerable third-party drivers discovered by Microsoft and the security research community.  
keywords:  security, malware, kernel mode, driver
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
ms.collection: M365-security-compliance
author: jgeurten
ms.reviewer: isbrahm
ms.author: dansimp
manager: dansimp
ms.date: 
---

# Microsoft recommended driver block rules

**Applies to:**

- Windows 10
- Windows Server 2016 and above

Microsoft has strict requirements for code running in kernel. Consequently, malicious actors are turning to exploit vulnerabilities in legitimate and signed kernel drivers to run malware in kernel. One of the many strengths of the Windows platform is our strong collaboration with independent hardware vendors (IHVs) and OEMs. Microsoft works closely with our IHVs and security community to ensure the highest level of driver security for our customers and when vulnerabilities in drivers do arise, that they are patched and rolled out to the ecosystem in an expedited manner. Microsoft then adds the vulnerable versions of the drivers to our ecosystem block policy which is applied to the following sets of devices:

- Hypervisor-protected code integrity (HVCI) enabled devices
- Windows 10 in S mode (S mode) devices

Microsoft recommends enabling [HVCI](https://docs.microsoft.com/windows/security/threat-protection/device-guard/enable-virtualization-based-protection-of-code-integrity) or S mode to protect your devices against security threats. If this is not possible, Microsoft recommends blocking the following list of drivers by merging this policy with your existing Windows Defender Application Control policy. Blocking kernel drivers without sufficient testing can result in devices or software to malfunction, and in rare cases, blue screen. It is recommended to first validate this policy in [audit mode](audit-windows-defender-application-control-policies.md) and review the audit block events.

> [!Note]
> This application list will be updated with the latest vendor information as application vulnerabilities are resolved and new issues are discovered. It is recommended that this policy be first validated in audit mode before rolling the rules into enforcement mode. 

```xml
<?xml version="1.0" encoding="utf-8"?>
<SiPolicy xmlns="urn:schemas-microsoft-com:sipolicy">
  <VersionEx>10.0.19565.0</VersionEx>
  <PolicyTypeID>{D2BDA982-CCF6-4344-AC5B-0B44427B6816}</PolicyTypeID>
  <PlatformID>{2E07F7E4-194C-4D20-B7C9-6F44A6C5A234}</PlatformID>
  <Rules>
    <Rule>
      <Option>Enabled:Unsigned System Integrity Policy</Option>
    </Rule>
    <Rule>
      <Option>Enabled:Audit Mode</Option>
    </Rule>
    <Rule>
      <Option>Enabled:Advanced Boot Options Menu</Option>
    </Rule>
  </Rules>
  <!--EKUS-->
  <EKUs />
  <!--File Rules-->
  <FileRules>
    <Deny ID="ID_DENY_BANDAI_SHA1" FriendlyName="bandai.sys Hash Sha1" Hash="0F780B7ADA5DD8464D9F2CC537D973F5AC804E9C" />
    <Deny ID="ID_DENY_BANDAI_SHA256" FriendlyName="bandai.sys Hash Sha256" Hash="7FD788358585E0B863328475898BB4400ED8D478466D1B7F5CC0252671456CC8" />
    <Deny ID="ID_DENY_BANDAI_SHA1_PAGE" FriendlyName="bandai.sys Hash Page Sha1" Hash="EA360A9F23BB7CF67F08B88E6A185A699F0C5410" />
    <Deny ID="ID_DENY_BANDAI_SHA256_PAGE" FriendlyName="bandai.sys Hash Page Sha256" Hash="BB83738210650E09307CE869ACA9BFA251024D3C47B1006B94FCE2846313F56E" />
    <Deny ID="ID_DENY_CAPCOM_SHA1" FriendlyName="capcom.sys Hash Sha1" Hash="1D1CAFC73C97C6BCD2331F8777D90FDCA57125A3" />
    <Deny ID="ID_DENY_CAPCOM_SHA256" FriendlyName="capcom.sys Hash Sha256" Hash="FAA08CB609A5B7BE6BFDB61F1E4A5E8ADF2F5A1D2492F262483DF7326934F5D4" />
    <Deny ID="ID_DENY_CAPCOM_SHA1_PAGE" FriendlyName="capcom.sys Hash Page Sha1" Hash="69006FBBD1B150FB9404867A5BCDC04FE0FC1BAD" />
    <Deny ID="ID_DENY_CAPCOM_SHA256_PAGE" FriendlyName="capcom.sys Hash Page Sha256" Hash="42589C7CE89941060465096C4661654B43E38C1F9D05D66239825E8FCCF52705" />
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
    <Deny ID="ID_DENY_GDRV" FriendlyName="gdrv.sys" FileName="gdrv.sys" />
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
    <Deny ID="ID_DENY_AMIFLDRV64_SHA1" FriendlyName="amifldrv64.sys Hash Sha1" Hash="B0EC7D971DA8AE84C0ED8F88A5D46B23996E636C" />
    <Deny ID="ID_DENY_AMIFLDRV64_SHA256C" FriendlyName="amifldrv64.sys Hash Sha256" Hash="038F39558035292F1D794B7CF49F8E751E8633DAEC31454FE85CCCBEA83BA3FB" />
    <Deny ID="ID_DENY_AMIFLDRV64_SHA1_PAGE" FriendlyName="amifldrv64.sys Hash Page Sha1" Hash="C9CC3779ED67755220DBF9592EC2AC0E1DE363DC" />
    <Deny ID="ID_DENY_AMIFLDRV64_SHA256_PAGE" FriendlyName="amifldrv64.sys Hash Page Sha256" Hash="AA594D977312A944B14351C075634E7C59B42687928FBCDA8E2C4CEA46686DD9" />
    <Deny ID="ID_DENY_ASUPIO64_SHA1F" FriendlyName="AsUpIO64.sys Hash Sha1" Hash="2A95F882DD9BAFCC57F144A2708A7EC67DD7844C" />
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
    <Deny ID="ID_DENY_MSIO64_SHA1" FriendlyName="MsIo64.sys Hash Sha1" Hash="7E732ACB7CFAD9BA043A9350CDEFF25D742BECB8" />
    <Deny ID="ID_DENY_MSIO64_SHA256" FriendlyName="MsIo64.sys Hash Sha256" Hash="7018D515A6C781EA6097CA71D0F0603AD0D689F7EC99DB27FCACD492A9E86027" />
    <Deny ID="ID_DENY_MSIO64_SHA1_PAGE" FriendlyName="MsIo64.sys Hash Page Sha1" Hash="CDE1A50E1DF7870F8E4AFD8631E45A847C714C0A" />
    <Deny ID="ID_DENY_MSIO64_SHA256_PAGE" FriendlyName="MsIo64.sys Hash Page Sha256" Hash="05736AB8B48DF84D81CB2CC0FBDC9D3DA34C22DB67A3E71C6F4B6B3923740DD5" />
    <Deny ID="ID_DENY_PIDDRV_SHA1" FriendlyName="piddrv.sys Hash Sha1" Hash="877C6C36A155109888FE1F9797B93CB30B4957EF" />
    <Deny ID="ID_DENY_PIDDRV_SHA256" FriendlyName="piddrv.sys Hash Sha256" Hash="4E19D4CE649C28DD947424483796BEACE3656284FB0379D97DDDD320AA602BBC" />
    <Deny ID="ID_DENY_PIDDRV_SHA1_PAGE" FriendlyName="piddrv.sys Hash Page Sha1" Hash="A7D827A41B2C4B7638495CD1D77926F1BA902978" />
    <Deny ID="ID_DENY_PIDDRV_SHA256_PAGE" FriendlyName="piddrv.sys Hash Page Sha256" Hash="EAC7316089DBAF7DF79A531355547BBDA22FA0921E31BBA0D27BCC88234E9ED3" />
    <Deny ID="ID_DENY_PIDDRV64_SHA1" FriendlyName="piddrv64.sys Hash Sha1" Hash="0C2599D738D01A82EC91725F499ACEBBCFB47CC9" />
    <Deny ID="ID_DENY_PIDDRV64_SHA256" FriendlyName="piddrv64.sys Hash Sha256" Hash="B97F870C501714FA453CF18AE8A30C87D08FF1E6D784AFDBB0121AEA3DA2DC28" />
    <Deny ID="ID_DENY_PIDDRV64_SHA1_PAGE" FriendlyName="piddrv64.sys Hash Page Sha1" Hash="C978063E678233C5EFB8F002FEF000FD479CC632" />
    <Deny ID="ID_DENY_PIDDRV64_SHA256_PAGE" FriendlyName="piddrv64.sys Hash Page Sha256" Hash="1081CCD57FD35998634103AE1E736638D82351092ACD30FE75084EA6A08CA0F7" />
    <Deny ID="ID_DENY_SEMAV6MSR64_SHA1" FriendlyName="semav6msr64.sys Hash Sha1" Hash="E3DBE2AA03847DF621591A4CAD69A5609DE5C237" />
    <Deny ID="ID_DENY_SEMAV6MSR64_SHA256" FriendlyName="semav6msr64.sys Hash Sha256" Hash="EB71A8ECEF692E74AE356E8CB734029B233185EE5C2CCB6CC87CC6B36BEA65CF" />
    <Deny ID="ID_DENY_SEMAV6MSR64_SHA1_PAGE" FriendlyName="semav6msr64.sys Hash Page Sha1" Hash="F3821EC0AEF270F749DF9F44FBA91AFA5C8C38E8" />
    <Deny ID="ID_DENY_SEMAV6MSR64_SHA256_PAGE" FriendlyName="semav6msr64.sys Hash Page Sha256" Hash="4F12EE563E7496E7105D67BF64AF6B436902BE4332033AF0B5A242B206372CB7" />
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_1"  FriendlyName="nt2.sys Hash Sha1" Hash="8F0B99B53EB921547AFECF1F12B3299818C4E5D1"/>
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_2"  FriendlyName="nstr.sys Hash Sha1" Hash="61258963D900C2A39408EF4B51F69F405F55E407"/>
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_3"  FriendlyName="nt5.sys Hash Sha1" Hash="7A43BE821832E9BF55B1B781AE468179D0E4F56E"/>
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_4"  FriendlyName="80.sys Hash Sha1" Hash="BC2F3850C7B858340D7ED27B90E63B036881FD6C"/>
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_5" FriendlyName="nstrwsk.sys Hash Sha1" Hash="83767982B3A5F70615A386F4D6638F20509F3560"/>
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_6" FriendlyName="netfilterdrv.sys Hash Sha1" Hash="8BC75E18953B7B23991B2FBC79713E1E175F75E4"/>
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_7" FriendlyName="nt3.sys Hash Sha1" Hash="295E590D49DF717C489C5C824E9C6896A14248BB"/>
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_8" FriendlyName="nt4.sys Hash Sha1" Hash="EC7947AD1919C8F60BC973B96DA4132A1EA396E0"/>
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_9" FriendlyName="nt6.sys Hash Sha1" Hash="8403A17AE001FEF3488C2E641E2BE553CD5B478D"/>
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_10" FriendlyName="81.sys Hash Sha1" Hash="FAA870B0CB15C9AC2B9BBA5D0470BD501CCD4326"/>
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_11" FriendlyName="81.sys Hash Sha1" Hash="ACA8E53483B40A06DFDEE81BB364B1622F9156FE"/>
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_12" FriendlyName="full.sys Hash Sha1" Hash="4B8C0445075F09AEEF542AB1C86E5DE6B06E91A3"/>
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_13" FriendlyName="netfilterdrv.sys Hash Sha1" Hash="E74B6DDA8BC53BC687FC21218BD34062A78D8467"/>
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_14" FriendlyName="netfilterdrv.sys Hash Sha1" Hash="E014C6BEBFDA944CE3A58AB9FE055D4F9367D49C"/>
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_15" FriendlyName="netfilterdrv.sys Hash Sha1" Hash="8241C9A5755A740811C8E8D2739B33146ACD3E6D"/>
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_16" FriendlyName="netfilterdrv.sys Hash Sha1" Hash="2C27ABBBBCF10DFB75AD79557E30ACE5ED314DF8"/>
    <Deny ID="ID_DENY_RETLIFTEN_SHA1_17" FriendlyName="netfilterdrv.sys Hash Sha1" Hash="E5A152BB57060C2B27E825258698BD7FF67907FF"/>
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_1"  FriendlyName="nt2.sys Hash Sha256" Hash="CB9890D4E303A4C03095D7BC176C42DEE1B47D8AA58E2F442EC1514C8F9E3CEC"/>
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_2"  FriendlyName="nstr.sys Hash Sha256" Hash="455BC98BA32ADAB8B47D2D89BDBADCA4910F91C182AB2FC3211BA07D3784537B"/>
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_3"  FriendlyName="nt5.sys Hash Sha256" Hash="FD33FB2735CC5EF466A54807D3436622407287E325276FCD3ED1290C98BD0533"/>
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_4"  FriendlyName="80.sys Hash Sha256" Hash="F08EBDDC11AEFCB46082C239F8D97CEEA247D846E22C4BCDD72AF75C1CBC6B0B"/>
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_5" FriendlyName="nstrwsk.sys Hash Sha256" Hash="3390919BB28D5C36CC348F9EF23BE5FA49BFD81263EB7740826E4437CBE904CD"/>
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_6" FriendlyName="netfilterdrv.sys Hash Sha256" Hash="82774D5230C5B6604D6F67A32883F720B4695387F3F383AABC713FC2904FF45D"/>
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_7" FriendlyName="nt3.sys Hash Sha256" Hash="7D8937C18D6E11A0952E53970A0934CF0E65515637AC24D6CA52CCF4B93D385F"/>
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_8" FriendlyName="nt4.sys Hash Sha256" Hash="D7BC7306CB489FE4C285BBEDDC6D1A09E814EF55CF30BD5B8DAF87A52396F102"/>
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_9" FriendlyName="nt6.sys Hash Sha256" Hash="15C53EB3A0EA44BBD2901A45A6EBEAE29BB123F9C1115C38DFB2CDBEC0642229"/>
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_10" FriendlyName="81.sys Hash Sha256" Hash="5C206B569B7059B7C32EB5FC36922CB435C2B16C8D96DE1038C8BD298ED498FE"/>
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_11" FriendlyName="81.sys Hash Sha256" Hash="3D31118A2E92377ECB632BD722132C04AF4E65E24FF87743796C75EB07CFCD71"/>
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_12" FriendlyName="full.sys Hash Sha256" Hash="0988D366572A57B3015D875B60704517D05115580678E8F2E126F771EDA28F7B"/>
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_13" FriendlyName="netfilterdrv.sys Hash Sha256" Hash="12A636449A491EF3DC8688C5D25BE9EBF785874F9C4573667EEFD42139201AA4"/>
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_14" FriendlyName="netfilterdrv.sys Hash Sha256" Hash="651FFA0C7AFF7B4A7695DDDD209DC3E7F68156E29A14D3FCC17AEF4F2A205DCC"/>
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_15" FriendlyName="netfilterdrv.sys Hash Sha256" Hash="C56536F99207915E5A1F7D4F014AB942BD820E64FF7F371AD0462EF26ED27242"/>
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_16" FriendlyName="netfilterdrv.sys Hash Sha256" Hash="7F1772BDF7DD81CB00D30159D19D4EB9160B54D7609B36F781D08CA3AFBD29A7"/>
    <Deny ID="ID_DENY_RETLIFTEN_SHA256_17" FriendlyName="netfilterdrv.sys Hash Sha256" Hash="7113DEE11925B346192F6EE5441974DB7D1FE9B5BE1497A6B295C06930FDD264"/>
    <FileAttrib ID="ID_FILEATTRIB_CPUZ_DRIVER" FriendlyName="" FileName="cpuz.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="1.0.4.3" />
    <FileAttrib ID="ID_FILEATTRIB_ELBY_DRIVER" FriendlyName="" FileName="ElbyCDIO.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="6.0.3.2" />
    <FileAttrib ID="ID_FILEATTRIB_LIBNICM_DRIVER" FriendlyName="" FileName="libnicm.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="3.1.12.0" />
    <FileAttrib ID="ID_FILEATTRIB_MTCBSV64" FriendlyName="mtcBSv64.sys FileAttribute" FileName="mtcBSv64.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="21.2.0.0" />
    <FileAttrib ID="ID_FILEATTRIB_NICM_DRIVER" FriendlyName="" FileName="NICM.SYS" MinimumFileVersion="0.0.0.0" MaximumFileVersion="3.1.12.0" />
    <FileAttrib ID="ID_FILEATTRIB_NSCM_DRIVER" FriendlyName="" FileName="nscm.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="3.1.12.0" />
    <FileAttrib ID="ID_FILEATTRIB_SANDRA_DRIVER" FriendlyName="" FileName="sandra.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="10.12.0.0" />
    <FileAttrib ID="ID_FILEATTRIB_RTKIO64_DRIVER" FriendlyName="" FileName="rtkio64.sys " MinimumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_RTKIOW10X64_DRIVER" FriendlyName="" FileName="rtkiow10x64.sys " MinimumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_RTKIOW8X64_DRIVER" FriendlyName="" FileName="rtkiow8x64.sys " MinimumFileVersion="65535.65535.65535.65535" />
    <FileAttrib ID="ID_FILEATTRIB_BSMI" FriendlyName="" FileName="BSMI.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="1.0.0.3" />
    <FileAttrib ID="ID_FILEATTRIB_BS_HWMIO64" FriendlyName="" FileName="BS_HWMIO64_W10.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="10.0.1806.2200" />
    <FileAttrib ID="ID_FILEATTRIB_BS_I2CIO" FriendlyName="" FileName="BS_I2cIo.sys"  MinimumFileVersion="0.0.0.0" MaximumFileVersion="1.1.0.0" />
    <FileAttrib ID="ID_FILEATTRIB_NTIOLIB" FriendlyName="" FileName="NTIOLib.sys"  MinimumFileVersion="0.0.0.0" MaximumFileVersion="1.0.0.0" />
    <FileAttrib ID="ID_FILEATTRIB_NCHGBIOS2X64" FriendlyName="" FileName="NCHGBIOS2x64.SYS"  MinimumFileVersion="0.0.0.0" MaximumFileVersion="4.2.4.0" />
    <FileAttrib ID="ID_FILEATTRIB_SEGWINDRVX64" FriendlyName="segwindrvx64.sys FileAttribute" FileName="segwindrvx64.sys" MinimumFileVersion="0.0.0.0" MaximumFileVersion="100.0.7.2" />
  </FileRules>
  <!--Signers-->
  <Signers>
     <Signer ID="ID_SIGNER_F_1" Name="VeriSign Class 3 Code Signing 2010 CA">
      <CertRoot Type="TBS" Value="4843A82ED3B1F2BFBEE9671960E1940C942F688D" />
      <CertPublisher Value="CPUID" />
      <FileAttribRef RuleID="ID_FILEATTRIB_CPUZ_DRIVER" />
    </Signer>
    <Signer ID="ID_SIGNER_F_2" Name="Microsoft Windows Third Party Component CA 2014">
      <CertRoot Type="TBS" Value="D8BE9E4D9074088EF818BC6F6FB64955E90378B2754155126FEEBBBD969CF0AE" />
      <CertPublisher Value="Microsoft Windows Hardware Compatibility Publisher" />
      <FileAttribRef RuleID="ID_FILEATTRIB_CPUZ_DRIVER" />
    </Signer>
    <Signer ID="ID_SIGNER_CPUZ" Name="DigiCert EV Code Signing CA (SHA2)">
      <CertRoot Type="TBS" Value="EEC58131DC11CD7F512501B15FDBC6074C603B68CA91F7162D5A042054EDB0CF" />
      <CertPublisher Value="CPUID" />
      <FileAttribRef RuleID="ID_FILEATTRIB_CPUZ_DRIVER" />
    </Signer>
    <Signer ID="ID_SIGNER_ELBY" Name="GlobalSign Primary Object Publishing CA">
      <CertRoot Type="TBS" Value="041750993D7C9E063F02DFE74699598640911AAB" />
      <CertPublisher Value="Elaborate Bytes AG" />
      <FileAttribRef RuleID="ID_FILEATTRIB_ELBY_DRIVER" />
    </Signer>
    <Signer ID="ID_SIGNER_NOVELL" Name="VeriSign Class 3 Code Signing 2009-2 CA">
      <CertRoot Type="TBS" Value="4CDC38C800761463749C3CBD94A12F32E49877BF" />
      <CertPublisher Value="Novell, Inc." />
      <FileAttribRef RuleID="ID_FILEATTRIB_LIBNICM_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_NICM_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_NSCM_DRIVER" />
    </Signer>
    <Signer ID="ID_SIGNER_SANDRA" Name="GeoTrust TrustCenter CodeSigning CA I">
      <CertRoot Type="TBS" Value="172F39BCA3DDA7C6D5169C96B34A5FE7E96FF0BD" />
      <CertPublisher Value="SiSoftware Ltd" />
      <FileAttribRef RuleID="ID_FILEATTRIB_SANDRA_DRIVER" />
    </Signer>
    <Signer ID="ID_SIGNER_MIMIKATZ_KERNEL" Name="GlobalSign CodeSigning CA - G2">
      <CertRoot Type="TBS" Value="589A7D4DF869395601BA7538A65AFAE8C4616385" />
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
      <FileAttribRef RuleID="ID_FILEATTRIB_RTKIO64_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTKIOW10X64_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTKIOW8X64_DRIVER" />
    </Signer>
    <Signer ID="ID_SIGNER_REALTEK_2" Name="DigiCert EV Code Signing CA (SHA2)">
      <CertRoot Type="TBS" Value="EEC58131DC11CD7F512501B15FDBC6074C603B68CA91F7162D5A042054EDB0CF" />
      <CertPublisher Value="Realtek Semiconductor Corp." />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTKIO64_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTKIOW10X64_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTKIOW8X64_DRIVER" />
    </Signer>
    <Signer ID="ID_SIGNER_WINDOWS_3RD_PARTY_2014" Name="Microsoft Windows Third Party Component CA 2014">
      <CertRoot Type="TBS" Value="D8BE9E4D9074088EF818BC6F6FB64955E90378B2754155126FEEBBBD969CF0AE" />
      <CertPublisher Value="Microsoft Windows Hardware Compatibility Publisher" />
      <FileAttribRef RuleID="ID_FILEATTRIB_RTKIOW10X64_DRIVER" />
      <FileAttribRef RuleID="ID_FILEATTRIB_BS_HWMIO64" />
    </Signer>
    <Signer ID="ID_SIGNER_VERISIGN_2004" Name="VeriSign Class 3 Code Signing 2004 CA">
      <CertRoot Type="TBS" Value="C7FC1727F5B75A6421A1F95C73BBDB23580C48E5" />
      <CertPublisher Value="Mitac Technology Corporation" />
      <FileAttribRef RuleID="ID_FILEATTRIB_MTCBSV64" />
      </Signer>
    <Signer ID="ID_SIGNER_VERISIGN_2009" Name="VeriSign Class 3 Code Signing 2009-2 CA">
      <CertRoot Type="TBS" Value="4CDC38C800761463749C3CBD94A12F32E49877BF" />
      <CertPublisher Value="BIOSTAR MICROTECH INT'L CORP" />
      <FileAttribRef RuleID="ID_FILEATTRIB_BSMI" />
    </Signer>
    <Signer ID="ID_SIGNER_VERISIGN_BIOSTAR" Name="VeriSign Class 3 Code Signing 2004 CA">
      <CertRoot Type="TBS" Value="C7FC1727F5B75A6421A1F95C73BBDB23580C48E5" />
      <CertPublisher Value="BIOSTAR MICROTECH INT'L CORP" />
      <FileAttribRef RuleID="ID_FILEATTRIB_BS_I2CIO" />
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
  </Signers>
  <!--Driver Signing Scenarios-->
  <SigningScenarios>
    <SigningScenario Value="131" ID="ID_SIGNINGSCENARIO_DENIED_VULN_MAL_SIGNERS" FriendlyName="Signers of known vulnerable or malicious drivers">
      <ProductSigners>
        <DeniedSigners>
          <DeniedSigner SignerId="ID_SIGNER_MIMIKATZ_KERNEL" />
          <DeniedSigner SignerId="ID_SIGNER_MIMIKATZ_USER" />
          <DeniedSigner SignerId="ID_SIGNER_NOVELL" />
          <DeniedSigner SignerId="ID_SIGNER_RWEVERY" />
          <DeniedSigner SignerId="ID_SIGNER_SANDRA" />
          <DeniedSigner SignerId="ID_SIGNER_SPEEDFAN" />
          <DeniedSigner SignerId="ID_SIGNER_VBOX" />
          <DeniedSigner SignerId="ID_SIGNER_CPUZ" />
          <DeniedSigner SignerId="ID_SIGNER_ELBY" />
          <DeniedSigner SignerId="ID_SIGNER_F_1" />
          <DeniedSigner SignerId="ID_SIGNER_F_2" />
          <DeniedSigner SignerId="ID_SIGNER_REALTEK" />
          <DeniedSigner SignerId="ID_SIGNER_REALTEK_2" />
          <DeniedSigner SignerId="ID_SIGNER_VERISIGN_2004" />
          <DeniedSigner SignerId="ID_SIGNER_WINDOWS_3RD_PARTY_2014" />
          <DeniedSigner SignerId="ID_SIGNER_VERISIGN_2009" />
          <DeniedSigner SignerId="ID_SIGNER_VERISIGN_BIOSTAR" />
          <DeniedSigner SignerId="ID_SIGNER_GLOBALSIGN_G2_MICROSTAR" />
          <DeniedSigner SignerId="ID_SIGNER_VERISIGN_TOSHIBA" />
          <DeniedSigner SignerId="ID_SIGNER_GLOBALSIGN_MICROSTAR" />
          <DeniedSigner SignerId="ID_SIGNER_VERISIGN_INSYDE" />
        </DeniedSigners>
        <FileRulesRef>        
            <FileRuleRef RuleID="ID_DENY_BANDAI_SHA1" />
            <FileRuleRef RuleID="ID_DENY_BANDAI_SHA256" />
            <FileRuleRef RuleID="ID_DENY_BANDAI_SHA1_PAGE" />
            <FileRuleRef RuleID="ID_DENY_BANDAI_SHA256_PAGE" />
            <FileRuleRef RuleID="ID_DENY_CAPCOM_SHA1" />
            <FileRuleRef RuleID="ID_DENY_CAPCOM_SHA256" />
            <FileRuleRef RuleID="ID_DENY_CAPCOM_SHA1_PAGE" />
            <FileRuleRef RuleID="ID_DENY_CAPCOM_SHA256_PAGE" />
            <FileRuleRef RuleID="ID_DENY_FIDDRV_SHA1"/>
            <FileRuleRef RuleID="ID_DENY_FIDDRV_SHA256"/>
            <FileRuleRef RuleID="ID_DENY_FIDDRV_SHA1_PAGE"/>
            <FileRuleRef RuleID="ID_DENY_FIDDRV_SHA256_PAGE"/>
            <FileRuleRef RuleID="ID_DENY_FIDDRV64_SHA1"/>
            <FileRuleRef RuleID="ID_DENY_FIDDRV64_SHA256"/>
            <FileRuleRef RuleID="ID_DENY_FIDDRV64_SHA1_PAGE"/>
            <FileRuleRef RuleID="ID_DENY_FIDDRV64_SHA256_PAGE"/>
            <FileRuleRef RuleID="ID_DENY_FIDPCIDRV_SHA1"/>
            <FileRuleRef RuleID="ID_DENY_FIDPCIDRV_SHA256"/>
            <FileRuleRef RuleID="ID_DENY_FIDPCIDRV_SHA1_PAGE"/>
            <FileRuleRef RuleID="ID_DENY_FIDPCIDRV_SHA256_PAGE"/>
            <FileRuleRef RuleID="ID_DENY_FIDPCIDRV64_SHA1"/>
            <FileRuleRef RuleID="ID_DENY_FIDPCIDRV64_SHA256"/>
            <FileRuleRef RuleID="ID_DENY_FIDPCIDRV64_SHA1_PAGE"/>
            <FileRuleRef RuleID="ID_DENY_FIDPCIDRV64_SHA256_PAGE"/>
            <FileRuleRef RuleID="ID_DENY_GDRV" />
            <FileRuleRef RuleID="ID_DENY_GLCKIO2_SHA1"/>
            <FileRuleRef RuleID="ID_DENY_GLCKIO2_SHA256"/>
            <FileRuleRef RuleID="ID_DENY_GLCKIO2_SHA1_PAGE"/>
            <FileRuleRef RuleID="ID_DENY_GLCKIO2_SHA256_PAGE"/>
            <FileRuleRef RuleID="ID_DENY_GVCIDRV64_SHA1"/>
            <FileRuleRef RuleID="ID_DENY_GVCIDRV64_SHA256"/>
            <FileRuleRef RuleID="ID_DENY_GVCIDRV64_SHA1_PAGE"/>
            <FileRuleRef RuleID="ID_DENY_GVCIDRV64_SHA256_PAGE"/>
            <FileRuleRef RuleID="ID_DENY_WINFLASH64_SHA1"/>
            <FileRuleRef RuleID="ID_DENY_WINFLASH64_SHA256"/>
            <FileRuleRef RuleID="ID_DENY_WINFLASH64_SHA1_PAGE"/>
            <FileRuleRef RuleID="ID_DENY_WINFLASH64_SHA256_PAGE"/>
            <FileRuleRef RuleID="ID_DENY_AMIFLDRV64_SHA1"/>
            <FileRuleRef RuleID="ID_DENY_AMIFLDRV64_SHA256C"/>
            <FileRuleRef RuleID="ID_DENY_AMIFLDRV64_SHA1_PAGE"/>
            <FileRuleRef RuleID="ID_DENY_AMIFLDRV64_SHA256_PAGE"/>
            <FileRuleRef RuleID="ID_DENY_ASUPIO64_SHA1F" />
            <FileRuleRef RuleID="ID_DENY_ASUPIO64_SHA256" />
            <FileRuleRef RuleID="ID_DENY_ASUPIO64_SHA1_PAGE"/>
            <FileRuleRef RuleID="ID_DENY_ASUPIO64_SHA256_PAGE"/>
            <FileRuleRef RuleID="ID_DENY_BSFLASH64_SHA1"/>
            <FileRuleRef RuleID="ID_DENY_BSFLASH64_SHA256"/>
            <FileRuleRef RuleID="ID_DENY_BSFLASH64_SHA1_PAGE"/>
            <FileRuleRef RuleID="ID_DENY_BSFLASH64_SHA256_PAGE"/>
            <FileRuleRef RuleID="ID_DENY_BSHWMIO64_SHA1" />
            <FileRuleRef RuleID="ID_DENY_BSHWMIO64_SHA256"/>
            <FileRuleRef RuleID="ID_DENY_BSHWMIO64_SHA1_PAGE"/>
            <FileRuleRef RuleID="ID_DENY_BSHWMIO64_SHA256_PAGE"/>
            <FileRuleRef RuleID="ID_DENY_MSIO64_SHA1"/>
            <FileRuleRef RuleID="ID_DENY_MSIO64_SHA256"/>
            <FileRuleRef RuleID="ID_DENY_MSIO64_SHA1_PAGE"/>
            <FileRuleRef RuleID="ID_DENY_MSIO64_SHA256_PAGE"/>
            <FileRuleRef RuleID="ID_DENY_PIDDRV_SHA1"/>
            <FileRuleRef RuleID="ID_DENY_PIDDRV_SHA256"/>
            <FileRuleRef RuleID="ID_DENY_PIDDRV_SHA1_PAGE"/>
            <FileRuleRef RuleID="ID_DENY_PIDDRV_SHA256_PAGE"/>
            <FileRuleRef RuleID="ID_DENY_PIDDRV64_SHA1"/>
            <FileRuleRef RuleID="ID_DENY_PIDDRV64_SHA256"/>
            <FileRuleRef RuleID="ID_DENY_PIDDRV64_SHA1_PAGE"/>
            <FileRuleRef RuleID="ID_DENY_PIDDRV64_SHA256_PAGE"/>
            <FileRuleRef RuleID="ID_DENY_SEMAV6MSR64_SHA1"/>
            <FileRuleRef RuleID="ID_DENY_SEMAV6MSR64_SHA256"/>
            <FileRuleRef RuleID="ID_DENY_SEMAV6MSR64_SHA1_PAGE"/>
            <FileRuleRef RuleID="ID_DENY_SEMAV6MSR64_SHA256_PAGE"/>
            <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_1" />
            <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_2" />
            <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_3" />
            <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_4" />
            <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_5" />
            <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_6" />
            <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_7" />
            <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_8" />
            <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_9" />
            <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_10"/>
            <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_11"/>
            <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_12"/>
            <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_13"/>
            <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_14"/>
            <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_15"/>
            <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_16"/>
            <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA1_17"/>
            <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_1" />
            <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_2" />
            <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_3" />
            <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_4" />
            <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_5" />
            <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_6" />
            <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_7" />
            <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_8" />
            <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_9" />
            <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_10"/>
            <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_11"/>
            <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_12"/>
            <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_13"/>
            <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_14"/>
            <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_15"/>
            <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_16"/>
            <FileRuleRef RuleID="ID_DENY_RETLIFTEN_SHA256_17"/>
        </FileRulesRef>
      </ProductSigners>
    </SigningScenario>
    <SigningScenario Value="12" ID="ID_SIGNINGSCENARIO_WINDOWS" FriendlyName="">
      <ProductSigners>
        <FileRulesRef>
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
        <String>10.0.19565.0</String>
      </Value>
    </Setting>
  </Settings>
</SiPolicy>
```
<br />


## More information

- [Merge Windows Defender Application Control policies](merge-windows-defender-application-control-policies.md)
