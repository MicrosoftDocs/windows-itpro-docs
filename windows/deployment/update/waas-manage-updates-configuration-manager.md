---
title: Deploy Windows 10 updates using System Center Configuration Manager (Windows 10)
description: System Center Configuration Manager provides maximum control over quality and feature updates for Windows 10.
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: greg-lindsay
ms.localizationpriority: medium
ms.author: greglin
ms.date: 10/16/2017
ms.topic: article
---

# Deploy Windows 10 updates using System Center Configuration Manager


**Applies to**

- Windows 10
- Windows 10 Mobile

> **Looking for consumer information?** See [Windows Update: FAQ](https://support.microsoft.com/help/12373/windows-update-faq)

>[!IMPORTANT]
>Due to [naming changes](waas-overview.md#naming-changes), older terms like CB,CBB and LTSB may still be displayed in some of our products.
>
>In the following settings CB refers to Semi-Annual Channel (Targeted), while CBB refers to Semi-Annual Channel. 

System Center Configuration Manager provides maximum control over quality and feature updates for Windows 10. Unlike other servicing tools, Configuration Manager has capabilities that extend beyond servicing, such as application deployment, antivirus management, software metering, and reporting, and provides a secondary deployment method for LTSB clients. Configuration Manager can effectively control bandwidth usage and content distribution through a combination of BranchCache and distribution points. Microsoft encourages organizations currently using Configuration Manager for Windows update management to continue doing so for Windows 10 client computers.

You can use Configuration Manager to service Windows 10 devices in two ways. The first option is to use Windows 10 Servicing Plans to deploy Windows 10 feature updates automatically based on specific criteria, similar to an Automatic Deployment Rule for software updates. The second option is to use a task sequence to deploy feature updates, along with anything else in the installation. 

>[!NOTE]
>This topic focuses on updating and upgrading Windows 10 after it has already been deployed. To use Configuration Manager to upgrade your systems from the Windows 8.1, Windows 8, or Windows 7 operating system, see [Upgrade to Windows 10 with System Center Configuration Manager](https://technet.microsoft.com/itpro/windows/deploy/upgrade-to-windows-10-with-system-center-configuraton-manager).

## Windows 10 servicing dashboard

The Windows 10 servicing dashboard gives you a quick-reference view of your active servicing plans, compliance for servicing plan deployment, and other key information about Windows 10 servicing. For details about what each tile on the servicing dashboard represents, see [Manage Windows as a service using System Center Configuration Manager](https://technet.microsoft.com/library/mt627931.aspx).

For the Windows 10 servicing dashboard to display information, you must adhere to the following requirements: 

- **Heartbeat discovery**. Enable heartbeat discovery for the site receiving Windows 10 servicing information. Configuration for heartbeat discovery can be found in Administration\Overview\Hierarchy Configuration\Discovery Methods.
- **Windows Server Update Service (WSUS)**. System Center Configuration Manager must have the Software update point site system role added and configured to receive updates from a WSUS 4.0 server with the hotfix KB3095113 installed.
- **Service connection point**. Add the Service connection point site system role in Online, persistent connection mode.
- **Upgrade classification**. Select **Upgrade** from the list of synchronized software update classifications.

    **To configure Upgrade classification**

    1.	Go to Administration\Overview\Site Configuration\Sites, and then select your site from the list.

    2.	On the Ribbon, in the **Settings** section, click **Configure Site Components**, and then click **Software Update Point**.

        ![Example of UI](images/waas-sccm-fig1.png)

    3.	In the **Software Update Point Component Properties** dialog box, on the **Classifications** tab, click **Upgrades**.

When you have met all these requirements and deployed a servicing plan to a collection, you’ll receive information on the Windows 10 servicing dashboard.

## Create collections for deployment rings

Regardless of the method by which you deploy Windows 10 feature updates to your environment, you must start the Windows 10 servicing process by creating collections of computers that represent your deployment rings. In this example, you create two collections: **Windows 10 – All Current Branch for Business** and **Ring 4 Broad business users**. You’ll use the **Windows 10 – All Current Branch for Business** collection for reporting and deployments that should go to all CBB clients. You’ll use the **Ring 4 Broad business users** collection as a deployment ring for the first CBB users.

>[!NOTE]
>The following procedures use the groups from Table 1 in [Build deployment rings for Windows 10 updates](waas-deployment-rings-windows-10-updates.md) as examples.

**To create collections for deployment rings**

1.	In the Configuration Manager console, go to Assets and Compliance\Overview\Device Collections.

2.	On the Ribbon, in the **Create** group, click **Create Device Collection**.

3.	In the Create Device Collection Wizard, in the **name** box, type **Windows 10 – All Current Branch for Business**.

4.	Click **Browse** to select the limiting collection, and then click **All Systems**.

5.	In **Membership rules**, click **Add Rule**, and then click **Query Rule**.

6.	Name the rule **CBB Detection**, and then click **Edit Query Statement**.

7.	On the **Criteria** tab, click the **New** icon.

    ![Example of UI](images/waas-sccm-fig4.png) 
    
8.	In the **Criterion Properties** dialog box, leave the type as **Simple Value**, and then click **Select**.

9.	In the **Select Attribute** dialog box, from the **Attribute class** list, select **System Resource**. From the **Attribute** list, select **OSBranch**, and then click **OK**.

     ![Example of UI](images/waas-sccm-fig5.png) 

     >[!NOTE]
     >Configuration Manager discovers clients’ servicing branch and stores that value in the **OSBranch** attribute, which you will use to create collections based on servicing branch. The values in this attribute can be **0 (Current Branch)**, **1 (Current Branch for Business)**, or **2 (Long-Term Servicing Branch)**.

10.	Leave **Operator** set to **is equal to**; in the **Value** box, type **1**. Click **OK**.

      ![Example of UI](images/waas-sccm-fig6.png) 

11.	Now that the **OSBranch** attribute is correct, verify the operating system version.

12.	On the **Criteria** tab, click the **New** icon again to add criteria.

13.	In the **Criterion Properties** dialog box, click **Select**.

14.	From the **Attribute class** list, select **System Resource**. From the **Attribute** list, select **Operating System Name and Version**, and then click **OK**.

      ![Example of UI](images/waas-sccm-fig7.png) 

15.	In the **Value** box, type **Microsoft Windows NT Workstation 10.0**, and then click **OK**. 

      ![Example of UI](images/waas-sccm-fig8.png) 
      
16.	In the **Query Statement Properties** dialog box, you see two values. Click **OK**, and then click **OK** again to continue to the Create Device Collection Wizard.

17.	Click **Summary**, and then click **Next**.

18.	Close the wizard.

>[!IMPORTANT]
>Windows Insider PCs are discovered the same way as CB or CBB devices. If you have Windows Insider PCs that you use Configuration Manager to manage, then you should create a collection of those PCs and exclude them from this collection. You can create the membership for the Windows Insider collection either manually or by using a query where the operating system build doesn’t equal any of the current CB or CBB build numbers. You would have to update each periodically to include new devices or new operating system builds.

After you have updated the membership, this new collection will contain all managed clients on the CBB servicing branch. You will use this collection as a limiting collection for future CBB-based collections and the **Ring 4 Broad broad business users** collection. Complete the following steps to create the **Ring 4 Broad business users** device collection, which you’ll use as a CBB deployment ring for servicing plans or task sequences.

1.	In the Configuration Manager console, go to Assets and Compliance\Overview\Device Collections.

2.	On the Ribbon, in the **Create** group, click **Create Device Collection**.

3.	In the Create Device Collection Wizard, in the **name** box, type **Ring 4 Broad business users**.

4.	Click **Browse** to select the limiting collection, and then click **Windows 10 – All Current Branch for Business**.

5.	In **Membership rules**, click **Add Rule**, and then click **Direct Rule**.

6.	In the **Create Direct Membership Rule Wizard** dialog box, click **Next**.

7.	In the **Value** field, type all or part of the name of a device to add, and then click **Next**.

8.	Select the computer that will be part of the **Ring 4 Broad business users** deployment ring, and then click **Next**.

9.	Click **Next**, and then click **Close**.

10.	In the **Create Device Collection Wizard** dialog box, click **Summary**.

11.	Click **Next**, and then click **Close**.


## Use Windows 10 servicing plans to deploy Windows 10 feature updates

There are two ways to deploy Windows 10 feature updates with System Center Configuration Manager. The first is to use servicing plans, which provide an automated method to update devices consistently in their respective deployment rings, similar to Automatic Deployment Rules for software updates. 

**To configure Windows feature updates for CBB clients in the Ring 4 Broad business users deployment ring using a servicing plan**

1.	In the Configuration Manager console, go to Software Library\Overview\Windows 10 Servicing, and then click **Servicing Plans**.

2.	On the Ribbon, in the **Create** group, click **Create Servicing Plan**.

3.	Name the plan **Ring 4 Broad business users Servicing Plan**, and then click **Next**.

4.	On the **Servicing Plan page**, click **Browse**. Select the **Ring 4 Broad business users** collection, which you created in the [Create collections for deployment rings](#create-collections-for-deployment-rings) section, click **OK**, and then click **Next**.

    >[!IMPORTANT]
    >Microsoft added a new protection feature to Configuration Manager that prevents accidental installation of high-risk deployments such as operating system upgrades on site systems. If you select a collection (All Systems in this example) that has a site system in it, you may receive the following message.
    >
    >![This is a high-risk deployment](images/waas-sccm-fig9.png) 
    >
    >For details about how to manage the settings for high-risk deployments in Configuration Manager, see [Settings to manage high-risk deployments for System Center Configuration Manager](https://technet.microsoft.com/library/mt621992.aspx).

5.	On the **Deployment Ring** page, select the **Business Ready (Current Branch for Business)** readiness state, leave the delay at **0 days**, and then click **Next**.

    Doing so deploys CBB feature updates to the broad business users deployment ring immediately after they are released to CBB.

    On the Upgrades page, you specify filters for the feature updates to which this servicing plan is applicable. For example, if you wanted this plan to be only for Windows 10 Enterprise, you could select **Title**, and then type **Enterprise**.
    
6.	For this example, on the **Upgrades** page, click **Next** to leave the criterion blank.

7.	On the **Deployment Schedule** page, click **Next** to keep the default values of making the content available immediately and requiring installation by the 7-day deadline.

8.	On the **User Experience** page, from the **Deadline behavior** list, select **Software Installation and System restart (if necessary)**. From the **Device restart behavior** list, select **Workstations**, and then click **Next**.

    Doing so allows installation and restarts after the 7-day deadline on workstations only.
    
9.	On the **Deployment Package** page, select **Create a new deployment package**. In **Name**, type **CBB Upgrades**, select a share for your package source location, and then click **Next**.

    In this example, \\contoso-cm01\Sources\Windows 10 Feature Upgrades is a share on the Configuration Manager server that contains all the Windows 10 feature updates.

    ![Example of UI](images/waas-sccm-fig10.png) 
    
10.	On the **Distribution Points** page, from the **Add** list, select **Distribution Point**.

    ![Example of UI](images/waas-sccm-fig11.png) 
    
    Select the distribution points that serve the clients to which you’re deploying this servicing plan, and then click **OK**.
    
11.	Click **Summary**, click **Next** to complete the servicing plan, and then click **Close**.


You have now created a servicing plan for the **Ring 4 Broad business users** deployment ring. By default, this rule is evaluated each time the software update point is synchronized, but you can modify this schedule by viewing the service plan’s properties on the **Evaluation Schedule** tab.

![Example of UI](images/waas-sccm-fig12.png) 


## Use a task sequence to deploy Windows 10 updates

There are times when deploying a Windows 10 feature update requires the use of a task sequence—for example:

- **LTSB feature updates**. With the LTSB servicing branch, feature updates are never provided to the Windows clients themselves. Instead, feature updates must be installed like a traditional in-place upgrade.
- **Additional required tasks**. When deploying a feature update requires additional steps (e.g., suspending disk encryption, updating applications), you must use task sequences to orchestrate the additional steps. Servicing plans do not have the ability to add steps to their deployments.

Each time Microsoft releases a new Windows 10 build, it releases a new .iso file containing the latest build, as well. Regardless of the scenario that requires a task sequence to deploy the Windows 10 upgrade, the base process is the same. Start by creating an Operating System Upgrade Package in the Configuration Manager console:

1.	In the Configuration Manager console, go to Software Library\Overview\Operating Systems\Operating System Upgrade Packages.

2.	On the Ribbon, in the **Create** group, click **Add Operating System Upgrade Package**.

3.	On the **Data Source** page, type the path of the extracted .iso file of the new version of Windows 10 you’re deploying, and then click **Next**.

    In this example, the Windows 10 Enterprise 1607 installation media is deployed to \\contoso-cm01\Sources\Operating Systems\Windows 10 Enterprise\Windows 10 Enterprise - Version 1607.
    
    >[!NOTE]
    >System Center Configuration Manager version 1606 is required to manage machines running Windows 10, version 1607.
    
4.	On the **General** page, in the **Name** field, type the name of the folder (**Windows 10 Enterprise - Version 1607** in this example). Set the **Version** to **1607**, and then click **Next**.

5.	On the **Summary** page, click **Next** to create the package.

6.	On the **Completion** page, click **Close**.

Now that the operating system upgrade package has been created, the content in that package must be distributed to the correct distribution points so that the clients can access the content. Complete the following steps to distribute the package content to distribution points:

1.	In the Configuration Manager console, go to Software Library\Overview\Operating Systems\Operating System Upgrade Packages, and then select the **Windows 10 Enterprise – Version 1607** software upgrade package.

2.	On the Ribbon, in the **Deployment group**, click **Distribute Content**.

3.	In the Distribute Content Wizard, on the **General** page, click **Next**.

4.	On the **Content Destination** page, click **Add**, and then click **Distribution Point**.

5.	In the **Add Distribution Points** dialog box, select the distribution point that will serve the clients receiving this package, and then click **OK**.

6.	On the **Content Destination** page, click **Next**.

7.	On the **Summary** page, click **Next** to distribute the content to the selected distribution point.

8.	On the **Completion** page, click **Close**.

Now that the upgrade package has been created and its contents distributed, create the task sequence that will use it. Complete the following steps to create the task sequence, using the previously created deployment package:

1.	In the Configuration Manager console, go to Software Library\Overview\Operating Systems\Task Sequences.

2.	On the Ribbon, in the **Create** group, click **Create Task Sequence**.

3.	In the Create Task Sequence Wizard, on the **Create a new task sequence** page, select **Upgrade an operating system from upgrade package**, and then click **Next**.

4.	On the **Task Sequence Information** page, in **Task sequence name**, type **Upgrade Windows 10 Enterprise – Version 1607**, and then click **Next**.

5.	On the **Upgrade the Windows Operating system** page, click **Browse**, select the deployment package you created in the previous steps, and then click **OK**.

6.	Click **Next**.

7.	On the **Include Updates** page, select **Available for installation – All software updates**, and then click **Next**.

8.	On the **Install Applications** page, click **Next**.

9.	On the **Summary** page, click **Next** to create the task sequence.

10.	On the **Completion** page, click **Close**.

With the task sequence created, you’re ready to deploy it. If you’re using this method to deploy most of your Windows 10 feature updates, you may want to create deployment rings to stage the deployment of this task sequence, with delays appropriate for the respective deployment ring. In this example, you deploy the task sequence to the **Ring 4 Broad business users collection**.

>[!IMPORTANT]
>This process deploys a Windows 10 operating system feature update to the affected devices. If you’re testing, be sure to select the collection to which you deploy this task sequence carefully.

**To deploy your task sequence**

1.	In the Configuration Manager console, go to Software Library\Overview\Operating Systems\Task Sequences, and then select the **Upgrade Windows 10 Enterprise – Version 1607** task sequence.

2.	On the Ribbon, in the **Deployment** group, click **Deploy**.

3.	In the Deploy Software Wizard, on the **General** page, click **Browse**. Select the target collection, click **OK**, and then click **Next**.
  
4.	On the **Deployment Settings** page, for **purpose**, select **Required**, and then click **Next**.

5.	On the **Scheduling** page, select the **Schedule when this deployment will become available** check box (it sets the current time by default). For **Assignment schedule**, click **New**.

6.	In the **Assignment Schedule** dialog box, click **Schedule**.

7.	In the **Custom Schedule** dialog box, select the desired deadline, and then click **OK**.
    
8.	In the **Assignment Schedule** dialog box, click **OK**, and then click **Next**.

9.	On the **User Experience** page, in the **When the scheduled assignment time is reached, allow the following activities to be performed outside of the maintenance window** section, select **Software Installation** and **System restart** (if required to complete the installation), and then click **Next**.

10.	Use the defaults for the remaining settings.

11.	Click **Summary**, and then click **Next** to deploy the task sequence.

12.	Click **Close**.


## Steps to manage updates for Windows 10

| | |
| --- | --- |
| ![done](images/checklistdone.png) | [Learn about updates and servicing channels](waas-overview.md) |
| ![done](images/checklistdone.png) | [Prepare servicing strategy for Windows 10 updates](waas-servicing-strategy-windows-10-updates.md) |
| ![done](images/checklistdone.png) | [Build deployment rings for Windows 10 updates](waas-deployment-rings-windows-10-updates.md) |
| ![done](images/checklistdone.png) | [Assign devices to servicing channels for Windows 10 updates](waas-servicing-channels-windows-10-updates.md) |
| ![done](images/checklistdone.png) | [Optimize update delivery for Windows 10 updates](waas-optimize-windows-10-updates.md) |
| ![done](images/checklistdone.png) | [Deploy updates using Windows Update for Business](waas-manage-updates-wufb.md)</br>or [Deploy Windows 10 updates using Windows Server Update Services](waas-manage-updates-wsus.md)</br>or Deploy Windows 10 updates using System Center Configuration Manager (this topic) |

## See also

[Manage Windows as a service using System Center Configuration Manager](https://docs.microsoft.com/sccm/osd/deploy-use/manage-windows-as-a-service)


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
- [Walkthrough: use Group Policy to configure Windows Update for Business](waas-wufb-group-policy.md)
- [Walkthrough: use Intune to configure Windows Update for Business](waas-wufb-intune.md)
- [Deploy Windows 10 updates using Windows Server Update Services](waas-manage-updates-wsus.md)
- [Manage device restarts after updates](waas-restart.md)

