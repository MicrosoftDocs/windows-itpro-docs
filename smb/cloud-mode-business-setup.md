---
title: Deploy and manage a full cloud IT solution for your business
description: Learn how to set up a cloud infrastructure for your business, acquire devices and apps, and configure and deploy policies to your devices.
keywords: smb, full cloud IT solution, small to medium business, deploy, setup, manage, Windows, Intune, Office 365
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: smb
author: CelesteDG
---

![Are you ready to move to the cloud?](images/business-cloud-mode-graphic.png)

# Get started: Deploy and manage a full cloud IT solution for your business
**Applies to:**

-   Windows 10

> [!IMPORTANT]  
> This is placeholder content only. Everything is TBD.

In this walkthrough, we'll show you how to deploy and manage a full cloud IT solution for your business using Microsoft Azure AD, Intune, Office 365, and Windows. We'll show you the basics on how to:
- Acquire an Office 365 business domain
- Add Microsoft Intune and Azure Active Directory (AD) Premium licenses to your business tenant
- Set up Windows Store for Business and manage app deployment and sync with Intune
- Add users and groups in Azure AD and Intune
- Create policies and app deployment rules
- Log in as a user and start using the device

Go to the [Microsoft Education site](https://www.microsoft.com/en-us/education) to learn more about these products. See [How to buy](https://www.microsoft.com/en-us/education/buy-license/overview-of-how-to-buy/default.aspx?tabshow=schools) to learn about pricing and purchasing options for businesses.

## 1. Get ready
Here's a few things to keep in mind before you get started:
- You must own and have a registered education domain

  > [!NOTE]
  > If you are a participant in the MEs Demo, you can skip this part. You can set up your tenant and complete this walkthrough without having your own registered fully qualified domain name (FQDN).

- **TBD - what else?**

## 2. Set up your cloud infrastructure
To set up a cloud infrastructure for your organization, follow the steps in this section.

### 2.1 Set up Office 365 Education tenant
To set up your Office 365 Education tenant, see [Get Started with Office 365 Education](https://support.office.com/en-US/article/Get-started-with-Office-365-Education-AB02ABE5-A1EE-458C-B749-5B44416CCF14).

If this is the first time you're setting this up, you'll need to create an account and a user ID and password to use to sign into your account. Save your sign-in info so you can use it to sign into https://portal.office.com (the sign-in page).

After you've set up your account, log into the Office 365 admin center.

**Figure 1** - Office 365 admin center
![Office 365 admin center](images/office365_admin_center.png)

  > [!NOTE]
  > You may need to [verify your Office 365 domain to prove ownership or education status](https://support.office.com/en-us/article/Verify-your-Office-365-domain-to-prove-ownership-nonprofit-or-education-status-87d1844e-aa47-4dc0-a61b-1b773fd4e590).

### 2.2 Add Classroom Preview to your Office 365 tenant
Follow the steps in [Add Microsoft Classroom Preview to your Office 365 Education tenant](http://aka.ms/classroomsetup).

**Figure 2** - Select **Classroom** in the Office 365 portal to add Classroom Preview
![Add Classroom Preview](images/office365_start_page_classroom.png)

### 2.4 Add Microsoft Intune to your domain
In the Office 365 admin center, select **Admin centers > Intune**.

  > [!NOTE]
  > If you are using Microsoft Edge and you get an unsupported browser or browser mode error message, use Internet Explorer instead.

Once you've successfully added Intune, you will see the Intune dashboard.

**Figure 4** - Microsoft Intune dashboard
![Microsoft Intune dashboard](images/intune_dashboard.png)

### 2.5 Add Azure AD to your domain
In the Office 365 admin center, select **Admin centers > Azure AD**.

  > [!NOTE]
  > You will need Azure AD Premium to configure automatic MDM enrollment with Intune.

You should see the Microsoft Azure portal once you've successfully added Azure AD.

**Figure 5** - Microsoft Azure portal
![Microsoft Azure portal](images/azure_ad_portal.png)

### 2.6 Assign licenses to users
Users need product licenses assigned to them to use services such as Microsoft Classroom and Office 365. You can assign product licenses to users in bulk or individually. For more info on how to do this, see the sections *Step 2: Assign licenses to global admins* and *Step 3: Assign licenses to teachers and students* in [Add Microsoft Classroom Preview and School Data Sync Preview to your Office 365 Education tenant](https://aka.ms/classroomsetup)

> [!TIP]
> - Assign **Enterprise Mobility + Security E5**, **Microsoft Classroom Preview**, and **Azure Active Directory Premium P2** to all users.
> - For all faculty, assign **Office 365 Education for faculty**.
> - For all students, assign **Office 365 Education for students**.

**Figure 6** - Assign product licenses to users
![Assign product licenses to users](images/office365_admin_center_product_licenses.png)

### 2.7 Configure automatic MDM enrollment with Azure AD and Intune
Read [this blog post](https://blogs.technet.microsoft.com/enterprisemobility/2015/08/14/windows-10-azure-ad-and-microsoft-intune-automatic-mdm-enrollment-powered-by-the-cloud/) to learn how you can combine login, Azure AD Join, and Intune MDM enrollment into an easy step so that you can bring your devices into a managed state that complies with the policies for your organization. We will use the blog post as our guide for this part of the walkthrough and we'll show how you can add new groups.

  > [!NOTE]
  > If you are using the new Azure portal, you may need to use the old Azure portal to make the steps work as outlined in the blog post. To go to the old Azure portal, type https://manage.windowsazure.com/@yourdomain#Workspaces/All/dashboard in your web browser. Replace *yourdomain* with your own domain name, such as contososchool.org.

**To configure the directory**
1. If this is the first time you're setting up your directory, When you navigate to the **Azure Active Directory** node in the Azure management portal you will see a screen informing you that your directory is ready for use.

  **Figure 7** - Active Directory is ready to use
  ![Your directory is ready to use](images/azure_ad_portal_old_select_directory.png)

2. Select the domain you want to configure.

  **Figure 8** - Select the directory or domain you want to configure
  ![Navigate to the Azure Active Directory node](images/azure_ad_portal_old_select_domain.png)

**To create groups**
1. After you have selected the domain (such as Contoso), select the **Groups** tab. You should see a list of all the groups you created as part of the SDS setup.
2. Select **Add Group** to create a new group. In the following example, this group is called **All Students**.

  **Figure 9** - Add an all students group

  ![Create a group for all students](images/azure_ad_portal_old_new_group.png)

  After you create the new group, it will appear in the list of all groups.

3. In the **Groups** tab, select the arrow next to the **All Students** group to add all students as members of the group and then save your changes.

  **Figure 10** - Add group members
  ![Add members to the new group](images/azure_ad_portal_old_add_group_members.png)

4. Repeat steps 1-3 and create an **All Teachers** group that includes all teachers and an **All Global Admins** group that includes all global administrators.

**To enable automatic MDM enrollment**
1. Select the **Applications** tab and verify that you can see Microsoft Intune in the list of applications. Click the arrow next to **Microsoft Intune** to configure the application.

  **Figure 11** - Microsoft Intune should appear in the list of applications
  ![Verify that Microsoft Intune appears in the list](images/azure_ad_portal_old_select_apps.png)

2. In the Microsoft Intune configuration page, select **Configure** to start automatic MDM enrollment configuration with Intune.
3. In the **Configure** tab:
  - In the **properties** section, you should see a list of URLs for MDM discovery, MDM terms of use, and MDM compliance. The URLs are automatically configured for your Azure AD tenant so you don't need to change them.
  - In the **manage devices for these users** section, you can specify which users' devices should be managed by Intune.
    - **All** will enable all users' Windows 10 devices to be managed by Intune.
    - **Groups** let you select whether only users that belong to a specific group will have their devices managed by Intune.

  <!-- Choose **Groups**, then click the **Select Groups** option to open the **Add groups** window. The list of groups should include the groups that were created as part of the SDS setup as well as the all students group that you created. -->

    > [!NOTE]
    > In this step, you must choose the group that contains all the users in your organization as members. This is the **All** group.

4. After you've chosen how to manage devices for users, select **Save** to enable automatic MDM enrollment with Intune.

### 2.8 Configure Windows Store for Business for app distribution
To distribute apps with a management tool, Configure Windows Store for Business. Follow the steps in [Manage apps you purchased from the Windows Store for Business with Microsoft Intune](https://docs.microsoft.com/en-us/intune/deploy-use/manage-apps-you-purchased-from-the-windows-store-for-business-with-microsoft-intune) to associate your Windows Store for Business account with Intune and configure Windows Store for Business synchronization.

**To associate your Windows Store for Business account with Intune**
1. Sign into the [Windows Store for Business](https://businessstore.microsoft.com/en-us/Store/Apps) using the same tenant account you used to sign into Intune.

  **Figure 13** - Windows Store for Business
  ![Sign into the Windows Store for Business](images/wsfb_portal.png)

2. In the Store portal, select **Settings > Management tools**.
3. From the Management tools page, choose **Add a management tool** or select **Microsoft Intune** if it's already on the list.
4. Click **Activate** to get Intune ready to use with Windows Store for Business.

  **Figure 14** - Intune is activated from the Store portal
  ![Activate Intune as the management tool](images/wsfb_portal_activate_intune.png)

**To configure synchronization**
1. From the [Microsoft Intune administration](https://manage.microsoft.com) console, choose **Admin**.
2. In the **Administration** workspace, expand **Mobile Device Management > Windows**, and then choose **Store for Business**.
3. Select **Configure Sync** to sync your Store for Business volume-purchased apps with Intune.
4. In the **Configure Windows Store for Business app sync** dialog box, select **Enable Windows Store for Business sync**. In the **Language** dropdown list, choose the language in which you want apps from the Store to be displayed in the Intune console and then click **OK**.

  **Figure 15** - Configure Store for Business app sync

  ![Configure Store for Business app sync](images/intune_portal_configure_wsfb_app_sync.png)

**To synchronize apps**
1. If you haven't done so already, from the Windows Store for Business page, synchronize the apps you've purchased from the Store with Intune.
2. In the Microsoft Intune administration console, select **Apps > Apps**, then choose **Volume-Purchased Apps** to see the available apps and verify that the apps you purchased were imported correctly.

  **Figure 16** - Verify volume-purchased apps
  ![Verify volume-purchased apps](images/intune_portal_apps_volume_purchased.png)

**To add more apps**

If you have other apps that you want to deploy or manage, you must add it to Microsoft Intune. See [Add apps for enrolled devices to Intune](https://docs.microsoft.com/en-us/intune/deploy-use/add-apps-for-mobile-devices-in-microsoft-intune) for more info on how to do this.

In the following example, we'll show you how to buy apps through the Windows Store for Business and then add the apps to Intune.

**Example 1 - Minecraft: Education Edition**
1. Go to the [Minecraft: Education Edition Get Started](http://education.minecraft.net/get-started/) page and select **I'm an administrator**.
2. Enter your school email address.
3. Follow the steps in [For IT administrators - get Minecraft: Education Edition](https://technet.microsoft.com/en-us/edu/windows/school-get-minecraft) to add Minecraft to your inventory.

**Example 2 - Duolingo and Khan Academy**
1. In the Windows Store for Business page, search the Store for the free **Duolingo - Learn Languages for Free** app, and then select the app from the search result(s).
2. In the app's Store page, select the license type and then select **Get the app**.
3. You should see a dialog that confirms your order. Click **Close**.
4. In the app's Store page, select **Add to private store**.
5. Repeat steps 1-4 for the **Khan Academy** app.
6. Select **Manage > Inventory** and verify that the apps you purchased appear in your inventory.

  > [!NOTE]
  > It takes a few hours for the apps you purchased to show up in your organization's private store and in Microsoft Intune.

7. After a few hours, verify that the apps you bought from the Store show up in Microsoft Intune.

  **Figure 17** - Verify new apps bought from the Store show up in Intune
  ![Verify new volume-purchased apps](images/intune_portal_apps_volume_purchased_wsfb_apps.png)

## 3. Set up devices

### 3.1 Set up new devices
To set up new Windows devices, choose from one of these options:
- **Option 1: [Use the Set up School PCs app](#usesetupschoolpcs)** - You can use the app to create a setup file that you can use to set up your Windows 10 devices.
- **Option 2: [Go through Windows OOBE](#usewindowsoobe)** - You can go through a typical Windows device setup or first-run experience to configure your device.

**<a name="usesetupschoolpcs"></a>To set up a device using the Set up School PCs app**
- Follow the steps in [Use the Set up School PCs app](use-set-up-school-pcs-app.md) to create a provisioning package that you can use to provision your Windows 10 devices.
  - In the *Create the setup file in the app* section, you will create a provisioning package that contains the settings that will be applied to the Windows PCs that you want to set up.
  - In the *Apply the setup file to PCs* section, you'll need to insert the USB drive that contains the provisioning package or setup file into the PC that you want to set up, and then restart or reset the PC so you are presented with the Windows first-run screen and then you go through device setup.

    > [!NOTE]
    > When you are applying the setup file to the PC, in the **Who owns this PC?** screen, make sure to select **My work or school owns it**.

**<a name="usewindowsoobe"></a>To set up a device using OOBE**
1. Go through the Windows device setup experience. On a new or reset device, this starts with the **Hi there** screen.
2. If you don't have a Wi-Fi network configured, make sure you connect the device to the Internet through a wired/Ethernet connection.
3. Select the option to **Join this device to Azure Active Directory**.
4. Sign in using one of the accounts you set up for your education tenant.

### 3.2 Verify correct device setup
Verify that the device is set up correctly and boots without any issues.

**To verify that the device was set up correctly**
1. Confirm that the Start menu contains a simple configuration and shows **School essentials**.
2. Confirm that the Store and built-in apps are working.

### 3.3 Verify the device is Azure AD joined
In the Intune management console, verify that the device is joined to Azure AD and shows up as being managed in Microsoft Intune.

**To verify if the device is joined to Azure AD**
1. Log in to the Intune management console.
2. Select **Groups** and go to **Groups > All Devices > All Mobile Devices**.
3. Select **All Direct Managed Devices** and then select the **Devices** tab.
4. See the list of devices and verify that the device you're signed into appears on the list.

  **Figure 18** - List of all direct managed devices
  ![Verify that PC is managed in Intune](images/intune_portal_direct_managed_devices_list.png)

### 3.4 Reconfigure app deployment settings
In some cases, if an app is missing from the device, you need to reconfigure the deployment settings for the app and set the app to require installation as soon as possible.

**To reconfigure app deployment settings**
1. In the Intune management console, select **Apps** and go to **Apps > Volume-Purchased Apps**.
2. Select the app, right-click, then select **Manage Deployment...**.
3. Select the group(s) whose apps will be managed.
4. Check the **Deployment Action** setting for the app.
5. For each group that you selected, set **Approval** to **Required Install**. This automatically sets **Deadline** to **As soon as possible**. If **Deadline** is not automatically set, set it to **As soon as possible**.

  **Figure 19** - Reconfigure an app's deployment setting in Intune
  ![Reconfigure app deployment settings in Intune](images/intune_app_deployment_action.png)

6. Verify that the app shows up on the device. You can check which users and devices have the app installed by selecting the app and checking the status in the **General** tab or selecting the **Devices** or **Users** tab.

## 4. Manage device settings and features
You can use Microsoft Intune admin settings and policies to manage features on your organization's mobile devices and computers. For more info, see [Manage settings and features on your devices with Microsoft Intune policies](https://docs.microsoft.com/en-us/intune/deploy-use/manage-settings-and-features-on-your-devices-with-microsoft-intune-policies).

In this walkthrough, we'll show you how to add a new policy that will disable the camera for the Intune-managed devices and turn off Windows Hello and PINs during setup.

**To disable the camera**
1. In the Intune admin console, choose **Policy > Configuration Policies > Add**.
2. On the **Create a New Policy** page, select **Windows > General Configuration (Windows 10 Desktop and Mobile and later)**.
3. Click **Create Policy**.
4. On the **Create Policy** page, select **Device Capabilities**.
5. In the **General** section, add a name and description for this policy. For example:
  - **Name**: Test Policy - Disable Camera
  - **Description**: Disables the camera
6. In the **Hardware** section, configure **Allow camera** and choose **No** from the dropdown list.
7. Click **Save Policy**.
8. On the **Deploy Policy** dialog box, select **Yes** to deploy the policy now.
9. On the **Management Deployment** dialog box, select the user group(s) or device group(s) that you want to apply the policy to. For example, select **All Students**.
10. Click **OK**.

**To turn off Windows Hello and PINs during device setup**
1. In the Intune admin console, select **Admin**.
2. Navigate to **Mobile Device Management > Windows > Windows Hello for Business**.
3. In the **Windows Hello for Business** page, select **Disable Windows Hello for Business on enrolled devices**.
4. Click **Save**.

  > [!NOTE]
  > This policy is a tenant-wide Intune setting. It disables Windows Hello and required PINs during setup for all enrolled devices in a tenant.

## 5. Add more devices and users
After your cloud infrastructure is set up and you have a device management strategy in place, you may need to add more devices or users and you want the same policies to apply to these new devices and users. In this section, we'll show you how to do this.

### 5.1 Connect other devices to your cloud infrastructure
Adding a new device to your cloud-based tenant is easy. For new devices, you can follow the steps in [3. Set up devices](#3-set-up-devices). For other devices, such as those personally-owned by teachers who need to connect to the school network to access work or school resources (BYOD), you can follow the steps in this section to get these devices connected.

  > [!NOTE]
  > These steps enable users to get access to the organization's resources, but it also gives the organization some control over the device.

**To connect a device to your work or school**
1. On your Windows device, go to **Settings > Accounts**.
2. Select **Work access** and then click **Add a work or school account** to add an Azure AD account to the device.
3. Enter the work credentials for the account to authenticate the user.
4. If it appears, accept the MDM terms prescribed by the organization to allow the device to be managed.
  Once this is done, the device should be registered in Azure AD and enrolled in MDM and the account should have access to the organization's resources.


### 5.2 Add a new user
You can add new users to your tenant simply by adding them to the Office 365 groups. Adding new users to Office 365 groups automatically adds them to the corresponding groups in Microsoft Intune.

See [Add users to Office 365](https://support.office.com/en-us/article/Add-users-to-Office-365-for-business-435ccec3-09dd-4587-9ebd-2f3cad6bc2bc?ui=en-US&rs=en-US&ad=US&fromAR=1) to learn more. Once you're done adding new users, go to the Intune admin portal and verify that the same users were added to the Intune groups as well.
