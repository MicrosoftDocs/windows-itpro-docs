---
title: Managed installer and ISG technical reference and troubleshooting guide
description: A technical reference and troubleshooting guide for managed installer and Intelligent Security Graph (ISG).
ms.localizationpriority: medium
ms.date: 09/11/2024
ms.topic: troubleshooting
---

# Managed installer and ISG technical reference and troubleshooting guide

[!INCLUDE [Feature availability note](../includes/feature-availability-note.md)]

## Enabling managed installer and Intelligent Security Graph (ISG) logging events

Refer to [Understanding App Control Events](event-id-explanations.md#diagnostic-events-for-intelligent-security-graph-isg-and-managed-installer-mi) for information on enabling optional managed installer diagnostic events.

## Using fsutil to query extended attributes for Managed Installer (MI)

Customers using App Control for Business with Managed Installer (MI) enabled can use fsutil.exe to determine whether a file was created by a managed installer process. This verification is done by querying the Extended Attributes (EAs) on a file using fsutil.exe and looking for the KERNEL.SMARTLOCKER.ORIGINCLAIM EA. Then, you can use the data from the first row of output to identify if the file was created by a managed installer. For example, let's look at the fsutil.exe output for a file called application.exe:

**Example:**

```powershell
fsutil.exe file queryEA C:\Users\Temp\Downloads\application.exe

Extended Attributes (EA) information for file C:\Users\Temp\Downloads\application.exe:

Ea Buffer Offset: 410
Ea Name: $KERNEL.SMARTLOCKER.ORIGINCLAIM
Ea Value Length: 7e
0000: 01 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00 ................
0010: b2 ff 10 66 bc a8 47 c7 00 d9 56 9d 3d d4 20 2a ...f..G...V.=. *
0020: 63 a3 80 e2 d8 33 8e 77 e9 5c 8d b0 d5 a7 a3 11 c....3.w.\......
0030: 83 00 00 00 00 00 00 00 5c 00 00 00 43 00 3a 00 ........\...C.:.
0040: 5c 00 55 00 73 00 65 00 72 00 73 00 5c 00 6a 00 \.U.s.e.r.s.\.T.
0050: 6f 00 67 00 65 00 75 00 72 00 74 00 65 00 2e 00 e.m.p..\D.o.w.n...
0060: 52 00 45 00 44 00 4d 00 4f 00 4e 00 44 00 5c 00 l.o.a.d.\a.p.p.l.
0070: 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 i.c.a.t.i.o.n..e.x.e
```

From the output shown above, find the first row of data labeled "0000:", which is then followed by 16 two-character sets. Every four sets form a group known as a ULONG. The two-character set at the front of the first ULONG will always be "01" as shown here:

0000: **`01` 00 00 00** 00 00 00 00 00 00 00 00 01 00 00 00

If there is "00" in the fifth position of the output (the start of the second ULONG), that indicates the EA is related to managed installer:

0000: 01 00 00 00 **`00` 00 00 00** 00 00 00 00 01 00 00 00

Finally, the two-character set in the ninth position of the output (the start of the third ULONG) indicates whether the file was created by a process running as managed installer. A value of "00" means the file was directly written by a managed installer process and will run if your App Control policy trusts managed installers.

0000: 01 00 00 00 00 00 00 00 **`00` 00 00 00** 01 00 00 00

If instead the starting value for the third ULONG is "02", then that indicates a "child of child". "Child of child" is set on any files created by something that was installed by a managed installer. But, the file was created **after** the managed installer completed its work. So this file **wouldn't** be allowed to run unless there's some other rule in your policy to allow it.

In rarer cases, you may see other values in this position, but that will also run if your policy trusts managed installer.

## Using fsutil to query extended attributes for Intelligent Security Graph (ISG)

When an installer runs that has good reputation according to the ISG, the files that the installer writes to disk will inherit the reputation from the installer. These files with ISG inherited trust will also have the KERNEL.SMARTLOCKER.ORIGINCLAIM EA set as described above for managed installers. You can identify that the EA was created by the ISG by looking for the value "01" in the fifth position of the output (the start of the second ULONG) from fsutil:

0000: 01 00 00 00 **`01` 00 00 00** 00 00 00 00 01 00 00 00

## More troubleshooting steps for Managed Installer and ISG

Both managed installer and the ISG depend on AppLocker to provide some functionality. Use the following steps to confirm that AppLocker is configured and running correctly.

1. Check that AppLocker services are running. From an elevated PowerShell window, run the following and confirm the STATE shows as RUNNING for both appidsvc and AppLockerFltr:

    ```powershell
    sc.exe query appidsvc
        SERVICE_NAME: appidsvc
        TYPE               : 30  WIN32
        STATE              : 4  RUNNING
                                (STOPPABLE, NOT_PAUSABLE, ACCEPTS_SHUTDOWN)
        WIN32_EXIT_CODE    : 0  (0x0)
        SERVICE_EXIT_CODE  : 0  (0x0)
        CHECKPOINT         : 0x0
        WAIT_HINT          : 0x0
    sc.exe query AppLockerFltr
        SERVICE_NAME: applockerfltr
        TYPE               : 1  KERNEL_DRIVER
        STATE              : 4  RUNNING
                                (STOPPABLE, NOT_PAUSABLE, IGNORES_SHUTDOWN)
        WIN32_EXIT_CODE    : 0  (0x0)
        SERVICE_EXIT_CODE  : 0  (0x0)
        CHECKPOINT         : 0x0
        WAIT_HINT          : 0x0
   ```

    If not, run *appidtel start* from the elevated PowerShell window and check again.

2. For managed installer, check for AppCache.dat and other *.AppLocker files created under %windir%\System32\AppLocker. There should minimally be a ".AppLocker" file created for each of EXE, DLL, and MANAGEDINSTALLER rule collections. If you don't see these files created, proceed to the next step to confirm the AppLocker policy has been correctly applied.

3. For managed installer troubleshooting, check that the AppLocker effective policy is correct. From an elevated PowerShell window:

   ```powershell
   Get-AppLockerPolicy -Effective -XML > $env:USERPROFILE\Desktop\AppLocker.xml
   ```

   Then open the XML file created and confirm it contains the rules you expect. In particular, the policy should include at least one rule for each of the EXE, DLL, and MANAGEDINSTALLER RuleCollections. The RuleCollections can either be set to AuditOnly or Enabled. Additionally, the EXE and DLL RuleCollections must include the RuleCollectionExtensions configuration as shown in [Automatically allow apps deployed by a managed installer with App Control for Business](../design/configure-authorized-apps-deployed-with-a-managed-installer.md#create-and-deploy-an-applocker-policy-that-defines-your-managed-installer-rules-and-enables-services-enforcement-for-executables-and-dlls).
