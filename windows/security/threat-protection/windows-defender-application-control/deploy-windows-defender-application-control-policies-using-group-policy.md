---
title: Deploy Windows Defender Application Control (WDAC) policies by using Group Policy (Windows 10)
description: Windows Defender Application Control restricts which applications users are allowed to run and the code that runs in the system core.
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
ms.date: 02/28/2018
---

# Deploy Windows Defender Application Control policies by using Group Policy

**Applies to:**

-   Windows 10
-   Windows Server 2016

WDAC policies can easily be deployed and managed with Group Policy. A Windows Defender Device Guard administrative template will be available in Windows Server 2016 that allows you to simplify deployment of Windows Defender Device Guard hardware-based security features and Windows Defender Application Control policies. The following procedure walks you through how to deploy a WDAC policy called **DeviceGuardPolicy.bin** to a test OU called *DG Enabled PCs* by using a GPO called **Contoso GPO Test**.

> [!NOTE] 
> This walkthrough requires that you have previously created a WDAC policy and have a computer running Windows 10 on which to test a Group Policy deployment. For more information about how to create a WDAC policy, see [Create a Windows Defender Application Control policy from a reference computer](create-initial-default-policy.md), earlier in this topic.

> [!NOTE] 
> Signed WDAC policies can cause boot failures when deployed. We recommend that signed WDAC policies be thoroughly tested on each hardware platform before enterprise deployment.

To deploy and manage a WDAC policy with Group Policy:

1.  On a client computer on which RSAT is installed, open the GPMC by running **GPMC.MSC** 

2.  Create a new GPO: right-click an OU and then click **Create a GPO in this domain, and Link it here**.

    > [!NOTE]
    > You can use any OU name. Also, security group filtering is an option when you consider different ways of combining WDAC policies (or keeping them separate), as discussed in [Plan for Windows Defender Application Control policy management](plan-windows-defender-application-control-management.md).

    ![Group Policy Management, create a GPO](images/dg-fig24-creategpo.png)

3.  Name the new GPO. You can choose any name. 

4.  Open the Group Policy Management Editor: right-click the new GPO, and then click **Edit**.

5.  In the selected GPO, navigate to Computer Configuration\\Administrative Templates\\System\\Device Guard. Right-click **Deploy Windows Defender Application Control** and then click **Edit**.

    ![Edit the Group Policy for Windows Defender Application Control](images/wdac-edit-gp.png)

6.  In the **Deploy Windows Defender Application Control** dialog box, select the **Enabled** option, and then specify the code integrity policy deployment path.

    In this policy setting, you specify either the local path in which the policy will exist on the client computer or a Universal Naming Convention (UNC) path that the client computers will look to retrieve the latest version of the policy. For example, with DeviceGuardPolicy.bin on the test computer, the example file path would be C:\\Windows\\System32\\CodeIntegrity\\DeviceGuardPolicy.bin.

    > [!NOTE] 
    > This policy file does not need to be copied to every computer. You can instead copy the WDAC policies to a file share to which all computer accounts have access. Any policy selected here is converted to SIPolicy.p7b when it is deployed to the individual client computers.

    ![Group Policy called Deploy Windows Defender Application Control](images/dg-fig26-enablecode.png)

    > [!NOTE] 
    > You may have noticed that the GPO setting references a .p7b file and this example uses a .bin file for the policy. Regardless of the type of policy you deploy (.bin, .p7b, or .p7), they are all converted to SIPolicy.p7b when dropped on the client computer running Windows 10. Make your WDAC policies friendly and allow the system to convert the policy names for you to ensure that the policies are easily distinguishable when viewed in a share or any other central repository.

7.  Close the Group Policy Management Editor, and then restart the Windows 10 test computer. Restarting the computer updates the WDAC policy. For information about how to audit WDAC policies, see [Audit Windows Defender Application Control policies](audit-windows-defender-application-control-policies.md).
