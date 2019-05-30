---
title: Walkthrough use Group Policy to configure Windows Update for Business (Windows 10)
description: Configure Windows Update for Business settings using Group Policy.
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: lomayor
ms.localizationpriority: medium
ms.author: lomayor
ms.date: 07/27/2017
ms.topic: article
---

# Walkthrough: use Group Policy to configure Windows Update for Business


**Applies to**

- Windows 10

> **Looking for consumer information?** See [Windows Update: FAQ](https://support.microsoft.com/help/12373/windows-update-faq) 

>[!IMPORTANT]
>Due to [naming changes](waas-overview.md#naming-changes), older terms like CB,CBB and LTSB may still be displayed in some of our products.
>
>In the following settings CB refers to Semi-Annual Channel (Targeted), while CBB refers to Semi-Annual Channel.

Using Group Policy to manage Windows Update for Business is simple and familiar: use the same Group Policy Management Console (GPMC) you use to manage other device and user policy settings in your environment. Before configuring the Windows Update for Business Group Policy settings, consider a [deployment strategy](waas-servicing-strategy-windows-10-updates.md) for updates and feature updates in your environment. 

In Windows 10 version 1511, only Current Branch for Business (CBB) upgrades could be delayed, restricting the Current Branch (CB) builds to a single deployment ring. Windows 10 version 1607, however, has a new Group Policy setting that allows you to delay feature updates for both CB and CBB, broadening the use of the CB servicing branch.

>[!NOTES]
>The terms *feature updates* and *quality updates* in Windows 10, version 1607, correspond to the terms *upgrades* and *updates* in version 1511.

>To follow the instructions in this article, you will need to download and install the relevant ADMX templates for your Windows 10 version.
>See the following articles for instructions on the ADMX templates in your environment.

> - [How to create and manage the Central Store for Group Policy Administrative Templates in Windows](https://support.microsoft.com/help/3087759)
> - [Step-By-Step: Managing Windows 10 with Administrative templates](https://blogs.technet.microsoft.com/canitpro/2015/10/20/step-by-step-managing-windows-10-with-administrative-templates/)


To use Group Policy to manage quality and feature updates in your environment, you must first create Active Directory security groups that align with your constructed deployment rings. Most customers have many deployment rings already in place in their environment, and these rings likely align with existing phased rollouts of current patches and operating system upgrades.

## Configure Windows Update for Business in Windows 10 version 1511

In this example, you use two security groups to manage your updates: **Ring 4 Broad business users** and **Ring 5 Broad business users #2** from  Table 1 in [Build deployment rings for Windows 10 updates](waas-deployment-rings-windows-10-updates.md). 

- The **Ring 4 Broad business users** group contains PCs of IT members who test the updates as soon as they’re released for Windows clients in the Current Branch for Business (CBB) servicing branch. This phase typically occurs after testing on Current Branch (CB) devices.
- The **Ring 5 Broad business users #2** group consists of the first line-of-business (LOB) users, who consume quality updates after 1 week and feature updates 1 month after the CBB release.

>[!NOTE]
>Although the [sample deployment rings](waas-deployment-rings-windows-10-updates.md) specify a feature update deferral of 2 weeks for Ring 5, deferrals in Windows 10, version 1511 are in increments of months only.
>
>Windows 10 version 1511 does not support deferment of CB builds of Windows 10, so you can establish only one CB deployment ring. In version 1607 and later, CB builds can be delayed, making it possible to have multiple CB deployment rings.

 Complete the following steps on a PC running the Remote Server Administration Tools or on a domain controller. 
 
 ### Configure the Ring 4 Broad business users deployment ring for CBB with no deferral

1. Open GPMC (gpmc.msc).

2. Expand **Forest** > **Domains** > *your domain*.

3. Right-click *your domain* and select **Create a GPO in this domain, and Link it here**.

    ![UI for Create GPO menu](images/waas-wufb-gp-create.png)
   
4. In the **New GPO** dialog box, type **Windows Update for Business - CBB1** for the name of the new GPO.

    >[!NOTE]
    >In this example, you’re linking the GPO to the top-level domain. This is not a requirement: you can link the Windows Update for Business GPOs to any organizational unit (OU) that’s appropriate for your Active Directory Domain Services (AD DS) structure.

5. Right-click the **Windows Update for Business - CBB1** GPO, and then click **Edit**. 

    ![UI for Edit GPO](images/waas-wufb-gp-edit.png)
    
6. In the Group Policy Management Editor, go to **Computer Configuration** > **Policies** > **Administrative Templates** > **Windows Components** > **Windows Update**.

7. Right-click **Defer Upgrades and Updates**, and then click **Edit**.

    ![UI to edit Defer Upgrades and Updates](images/waas-wufb-gp-edit-defer.png)
    
    In the **Defer Upgrades and Updates** Group Policy setting configuration, you see several options:
    - **Enable/Disable Deferred Updates**. Enabling this policy setting sets the receiving client to the CBB servicing branch. Specifically disabling this policy forces the client into the CB servicing branch, making it impossible for users to change it.
    - **Defer upgrades for the following**. This option allows you to delay feature updates up to 8 months, a number added to the default CBB delay (approximately 4 months from CB). By using Windows Update for Business, you can use this option to stagger CBB feature updates, making the total offset up to 12 months from CB.
    - **Defer updates for the following**. This option allows you to delay the installation of quality updates on a Windows 10 device for up to 4 weeks, allowing for phased rollouts of updates in your enterprise, but not all quality updates are deferrable with this option. Table 1 shows the deferment capabilities by update type.
    - **Pause Upgrades and Updates**. Should an issue arise with a feature update, this option allows a one-time skip of the current month’s quality and feature update. Quality updates will resume after 35 days, and feature updates will resume after 60 days. For example, deploy this setting as a stand-alone policy to the entire organization in an emergency.
    
    Table 1 summarizes the category of update in Windows 10 and how long Windows Update for Business can defer its installation.
    
    **Table 1**
    
    <table>
    <tr>
    <th>Category</th>
    <th>Maximum deferral</th>
    <th>Deferral increments</th>
    <th>Classification type</th>
    <th>Classification GUID</th>
    </tr>
    <tr>
    <td>OS upgrades</td>
    <td>8 months</td>
    <td>1 month</td>
    <td>Upgrade</td>
    <td>3689BDC8-B205-4AF4-8D4A-A63924C5E9D5</td>
    </tr>
    <tr>
    <td rowspan="3">OS updates</td>
    <td rowspan="3">4 weeks</td>
    <td rowspan="3">1 week</td>
    <td>Security updates</td>
    <td>0FA1201D-4330-4FA8-8AE9-B877473B6441</td>
    </tr>
    <tr>
    <td>Drivers</td>
    <td>EBFC1FC5-71A4-4F7B-9ACA-3B9A503104A0</td>
    </tr>
    <tr>
    <td>Updates</td>
    <td>CD5FFD1E-E932-4E3A-BF74-18BF0B1BBD83</td>
    </tr>
    <tr>
    <td>Other/non-deferrable</td>
    <td>No deferral</td>
    <td>No deferral</td>
    <td>Definition updates</td>
    <td>E0789628-CE08-4437-BE74-2495B842F43B</td>
    </tr>
    </table> 

    Simply enabling the **Defer Upgrades and Updates** policy sets the receiving client to the CBB servicing branch, which is what you want for your first deployment ring, **Ring 4 Broad business users**.
    
8. Enable the **Defer Updates and Upgrades** setting, and then click **OK**.

9. Close the Group Policy Management Editor.

Because the **Windows Update for Business - CBB1** GPO contains a computer policy and you only want to apply it to computers in the **Ring 4 Broad business users** group, use **Security Filtering** to scope the policy’s effect.

### Scope the policy to the Ring 4 Broad business users group

1.  In the GPMC, select the **Windows Update for Business - CBB1** policy.

2. In **Security Filtering** on the **Scope** tab, remove the default **AUTHENTICATED USERS** security group, and add the **Ring 4 Broad business users** group. 

    ![Scope policy to group](images/waas-wufb-gp-scope.png)
    

The **Ring 4 Broad business users** deployment ring has now been configured. Next, configure **Ring 5 Broad business users #2** to accommodate a 1-week delay for quality updates and a 2-week delay for feature updates. 


### Configure the Ring 5 Broad business users \#2 deployment ring for CBB with deferrals

1. Open GPMC (gpmc.msc).

2. Expand **Forest** > **Domains** > *your domain*.

3. Right-click *your domain* and select **Create a GPO in this domain, and Link it here**.

    ![UI for Create GPO menu](images/waas-wufb-gp-create.png)
   
4. In the **New GPO** dialog box, type **Windows Update for Business - CBB2** for the name of the new GPO.
    
5. Right-click the **Windows Update for Business - CBB2** GPO, and then click **Edit**. 

    ![UI for Edit GPO](images/waas-wufb-gp-edit.png)
    
6. In the Group Policy Management Editor, go to **Computer Configuration** > **Policies** > **Administrative Templates** > **Windows Components** > **Windows Update**.

7. Right-click **Defer Upgrades and Updates**, and then click **Edit**.
  
8. Enable the **Defer Updates and Upgrades** setting, configure the **Defer upgrades for the following** option for 1 month, and then configure the **Defer updates for the following** option for 1 week.

    ![Example of policy settings](images/waas-wufb-gp-broad.png)

9. Click **OK** and close the Group Policy Management Editor.


### Scope the policy to the Ring 5 Broad business users \#2 group

1.  In the GPMC, select the **Windows Update for Business - CBB2** policy.

2. In **Security Filtering** on the **Scope** tab, remove the default **AUTHENTICATED USERS** security group, and add the **Ring 5 Broad business users \#2** group. 

## Configure Windows Update for Business in Windows 10 version 1607

To use Group Policy to manage quality and feature updates in your environment, you must first create Active Directory security groups that align with your constructed deployment rings. Most customers have many deployment rings already in place in their environment, and these rings likely align with existing phased rollouts of current patches and operating system upgrades. 

In this example, you use three security groups from Table 1 in [Build deployment rings for Windows 10 updates](waas-deployment-rings-windows-10-updates.md) to manage your updates: 

- **Ring 2 Pilot Business Users** contains the PCs of business users which are part of the pilot testing process, receiving CB builds 4 weeks after they are released.
- **Ring 4 Broad business users** consists of IT members who receive updates after Microsoft releases a Windows 10 build to the CBB servicing branch.
- **Ring 5 Broad business users #2** consists of LOB users on CBB, who receive quality updates after 7 days and feature updates after 14 days. 

In this example, you configure and scope the update schedules for all three groups. 

### Configure Ring 2 Pilot Business Users policy

1. Open GPMC (gpmc.msc).

2. Expand **Forest** > **Domains** > *your domain*.

3. Right-click *your domain* and select **Create a GPO in this domain, and Link it here**.

     ![UI for Create GPO menu](images/waas-wufb-gp-create.png)

4. In the **New GPO** dialog box, type **Windows Update for Business - CB2** for the name of the new GPO.

    >[!NOTE]
    >In this example, you’re linking the GPO to the top-level domain. This is not a requirement: you can link the Windows Update for Business GPOs to any organizational unit (OU) that’s appropriate for your Active Directory Domain Services (AD DS) structure.
    
5. Right-click the **Windows Update for Business - CB2** GPO, and then click **Edit**. 

    ![Edit menu for this GPO](images/waas-wufb-gp-cb2.png)
    
6. In the Group Policy Management Editor, go to **Computer Configuration** > **Policies** > **Administrative Templates** > **Windows Components** > **Windows Update** > **Defer Windows Updates**.

7. Right-click **Select when Feature Updates are received**, and then click **Edit**.

8. In the **Select when Feature Updates are received** policy, enable it, select a branch readiness level of **CB**, set the feature update delay to **28** days, and then click **OK**.

    ![Settings for this GPO](images/waas-wufb-gp-cb2-settings.png)
    
    Table 3 summarizes the category of updates in Windows 10, version 1607, and how long Windows Update for Business can defer its installation.

    **Table 3**

    <table>
    <tr>
    <th>Category</th>
    <th>Maximum deferral</th>
    <th>Deferral increments</th>
    <th>Example</th>
    <th>Classification GUID</th>
    </tr>
    <tr>
    <td>Feature Updates</td>
    <td>180 days</td>
    <td>Days</td>
    <td>From Windows 10, version 1511 to version 1607</td>
    <td>3689BDC8-B205-4AF4-8D4A-A63924C5E9D5</td>
    </tr>
    <tr>
    <td rowspan="4">Quality Updates</td>
    <td rowspan="4">30 days</td>
    <td rowspan="4">Days</td>
    <td>Security updates</td>
    <td>0FA1201D-4330-4FA8-8AE9-B877473B6441</td>
    </tr>
    <tr>
    <td>Drivers (optional)</td>
    <td>EBFC1FC5-71A4-4F7B-9ACA-3B9A503104A0</td>
    </tr>
    <tr>
    <td>Non-security updates</td>
    <td>CD5FFD1E-E932-4E3A-BF74-18BF0B1BBD83</td>
    </tr><tr><td>Microsoft updates (Office, Visual Studio, etc.)</td><td>varies</td></tr>
    <tr>
    <td>Non-deferrable</td>
    <td>No deferral</td>
    <td>No deferral</td>
    <td>Definition updates</td>
    <td>E0789628-CE08-4437-BE74-2495B842F43B</td>
    </tr>
    </table> 

9. Close the Group Policy Management Editor.

Because the **Windows Update for Business – CB2** GPO contains a computer policy and you only want to apply it to computers in the **Ring 2 Pilot Business Users** group, use **Security Filtering** to scope the policy’s effect.

### Scope the policy to the Ring 2 Pilot Business Users group

1.  In the GPMC, select the **Windows Update for Business - CB2** policy.

2. In **Security Filtering** on the **Scope** tab, remove the default **AUTHENTICATED USERS** security group, and add the **Ring 2 Pilot Business Users** group.

    ![Scope policy to group](images/waas-wufb-gp-scope-cb2.png) 

The **Ring 2 Pilot Business Users** deployment ring has now been configured. Next, configure **Ring 4 Broad business users** to set those clients into the CBB servicing branch so that they receive feature updates as soon as they’re made available for the CBB servicing branch.

### Configure Ring 4 Broad business users policy

1. Open GPMC (gpmc.msc).

2. Expand **Forest** > **Domains** > *your domain*.

3. Right-click *your domain* and select **Create a GPO in this domain, and Link it here**.

4. In the **New GPO** dialog box, type **Windows Update for Business - CBB1** for the name of the new GPO.
     
5. Right-click the **Windows Update for Business - CBB1** GPO, and then click **Edit**. 
  
6. In the Group Policy Management Editor, go to **Computer Configuration** > **Policies** > **Administrative Templates** > **Windows Components** > **Windows Update** > **Defer Windows Updates**.

7. Right-click **Select when Feature Updates are received**, and then click **Edit**.

8. In the **Select when Feature Updates are received** policy, enable it, select a branch readiness level of **CBB**, and then click **OK**.

    ![Settings for this GPO](images/waas-wufb-gp-cbb1-settings.png)

9. Close the Group Policy Management Editor.



### Scope the policy to the Ring 4 Broad business users group

1.  In the GPMC, select the **Windows Update for Business - CBB1** policy.

2. In **Security Filtering** on the **Scope** tab, remove the default **AUTHENTICATED USERS** security group, and add the **Ring 4 Broad business users** group.


The **Ring 4 Broad business users** deployment ring has now been configured. Finally, configure **Ring 5 Broad business users #2** to accommodate a 7-day delay for quality updates and a 14-day delay for feature updates

### Configure Ring 5 Broad business users \#2 policy

1. Open GPMC (gpmc.msc).

2. Expand **Forest** > **Domains** > *your domain*.

3. Right-click *your domain* and select **Create a GPO in this domain, and Link it here**.

4. In the **New GPO** dialog box, type **Windows Update for Business - CBB2** for the name of the new GPO.
     
5. Right-click the **Windows Update for Business - CBB2** GPO, and then click **Edit**. 
  
6. In the Group Policy Management Editor, go to **Computer Configuration** > **Policies** > **Administrative Templates** > **Windows Components** > **Windows Update** > **Defer Windows Updates**.

7. Right-click **Select when Feature Updates are received**, and then click **Edit**.

8. In the **Select when Feature Updates are received** policy, enable it, select a branch readiness level of **CBB**, set the feature update delay to **14** days, and then click **OK**.

    ![Settings for this GPO](images/waas-wufb-gp-cbb2-settings.png)

9. Right-click **Select when Quality Updates are received**, and then click **Edit**.

10. In the **Select when Quality Updates are received** policy, enable it, set the quality update delay to **7** days, and then click **OK**.

    ![Settings for this GPO](images/waas-wufb-gp-cbb2q-settings.png)

11. Close the Group Policy Management Editor.



### Scope the policy to the Ring 5 Broad business users \#2 group

1.  In the GPMC, select the **Windows Update for Business - CBB2** policy.

2. In **Security Filtering** on the **Scope** tab, remove the default **AUTHENTICATED USERS** security group, and add the **Ring 5 Broad business users #2** group.

## Known issues
The following article describes the known challenges that can occur when you manage a Windows 10 Group policy client base:
- [Known issues managing a Windows 10 Group Policy client in Windows Server 2012 R2](https://support.microsoft.com/help/4015786/known-issues-managing-a-windows-10-group-policy-client-in-windows-serv)

## Related topics

- [Update Windows 10 in the enterprise](index.md)
- [Overview of Windows as a service](waas-overview.md)
- [Prepare servicing strategy for Windows 10 updates](waas-servicing-strategy-windows-10-updates.md)
- [Build deployment rings for Windows 10 updates](waas-deployment-rings-windows-10-updates.md)
- [Assign devices to servicing channels for Windows 10 updates](waas-servicing-channels-windows-10-updates.md)
- [Optimize update delivery for Windows 10 updates](waas-optimize-windows-10-updates.md)
- [Configure Delivery Optimization for Windows 10 updates](waas-delivery-optimization.md)
- [Configure BranchCache for Windows 10 updates](waas-branchcache.md)
- [Deploy updates for Windows 10 Mobile Enterprise and Windows 10 IoT Mobile](waas-mobile-updates.md) 
- [Deploy updates using Windows Update for Business](waas-manage-updates-wufb.md)
- [Configure Windows Update for Business](waas-configure-wufb.md)
- [Integrate Windows Update for Business with management solutions](waas-integrate-wufb.md)
- [Walkthrough: use Intune to configure Windows Update for Business](waas-wufb-intune.md)
- [Deploy Windows 10 updates using Windows Server Update Services](waas-manage-updates-wsus.md)
- [Deploy Windows 10 updates using System Center Configuration Manager](waas-manage-updates-configuration-manager.md)
- [Manage device restarts after updates](waas-restart.md)
