---
title: Configure Take a Test
description: Learn how to configure and use the Take a Test app
keywords: take a test, test taking, school
ms.prod: windows
ms.mktglfcycl: plan
ms.sitesec: library
ms.pagetype: edu
ms.localizationpriority: medium
ms.collection: education
author: paolomatarazzo
ms.author: paoloma
ms.date: 09/30/2022
ms.reviewer: 
manager: aaroncz
appliesto:
- ✅ <b>Windows 10</b>
- ✅ <b>Windows 11</b>
- ✅ <b>Windows 11 SE</b>
---

# Configure Take a Test

Many schools use online testing for formative and summation assessments. It's critical that students use a secure browser that prevents them from using other computer or Internet resources during the test. To help schools with this, Windows provides an application called **Take a Test**. The application is a secure browser that can be configured to only allow access to a specific URL or a list of URLs. The application also provides a number of other features to help with testing, such as preventing printing, preventing screen capture, and preventing text suggestions.

There are different ways to configure and use Take a Test.
The simplest approach is to generate a *secure assessment URL* and share it with the students. Students can then use the URL access the assessment through Take a Test. This approach is recommended for lower stakes assessments, and it's described in [Create and distribute a secure assessment link](#create-and-distribute-a-secure-assessment-link).
Another approach is to configure the devices to use a dedicated account for testing. This approach is recommended for higher stakes assessments. Depending if you need to configure a single device or multiple devices, the process is described in [[Configure Take a Test with a dedicated account on a single device](#configure-a-single-device-for-testing)](#configure-take-a-test-with-a-dedicated-account-on-a-single-device) or [Configure Take a Test  with a dedicated account on multiple devices](#configure-take-a-test-with-a-dedicated-account-on-multiple-devices)).

## Create and distribute a secure assessment link

Anything hosted on the web can be presented in a locked down manner using the **Take a Test** app, not just assessments. To lock down online content, embed a URL with a specific prefix and devices will be locked down when users follow the link. This approach is recommended for lower stakes assessment, such as a quick quiz in a class.

To create a secure assessment link to the test, there are two options:

- Create a link using a web application
- Create a link using schema activation

### Create a link using a web application

For this option, copy the assessment URL and open the web application <a href="https://aka.ms/create-a-take-a-test-link" target="_blank"><u>Customize your assessment URL</u></a>, where you can:

1. Paste the link to the assessment URL
1. Select the options you want to allow during the test
1. Generate the link by selecting the button Create link

This is an ideal option for teachers who want to create a link to a specific assessment and and share it with students using OneNote, for example.

### Create a link using schema activation

For this option, you embed a URL with a specific prefix and specify parameters depending on what you want to allow during the test.
The URL must be in the following format:

```
ms-edu-secureassessment:<URL>#enforceLockdown
```

To enable printing, screen capture, or both, use the above link and append one of these parameters:

- `&enableTextSuggestions` - Enables text suggestions
- `&requirePrinting` - Enables printing
- `&enableScreenCapture` - Enables screen capture
- `&requirePrinting&enableScreenCapture` - Enables printing and screen capture; you can use a combination of `&enableTextSuggestions`, `&requirePrinting`, and `&enableScreenCapture` if you want to enable more than one capability.

If these parameters are not included, the default behavior is to disable the capabilities.

For tests that utilizes the Windows lockdown API, which checks for running processes before locking down, remove `enforceLockdown`. Removing `enforceLockdown` will result in the app not locking down immediately, which allows you to close apps that are not allowed to run during lockdown. Take a Test will lock down the device once the applications are closed.

To enable permissive mode, do not include `enforceLockdown` in the schema parameters. For more information, see [Permissive mode](take-a-test-app-technical.md#permissive-mode).

### Distribute the link

Once the link is created, you can distribute it through the web, email, OneNote, or any other method of your choosing.

For example, you can create and copy the shortcut to the assessment URL to the students' desktop.

To take the test, have the students click on the link and provide user consent.

> [!NOTE] 
> If you enabled printing, the printer must be pre-configured for the account before the student takes the test.

:::image type="content" source="./images/takeatest/desktop-shortcuts.png" alt-text="Windows 11 SE desktop showing two shortcuts to assessment URLs." border="true":::

## Configure Take a Test with a dedicated account on a single device

For higher stakes testing, such as mid-term exams, you can set up a device with a dedicated testing account.
To configure Take a Test with a dedicated testing account on a single PC, follow these steps:

1. Sign into the Windows device with an administrator account
1. Open the **Settings** app and select **Accounts** > **Other Users**
1. Under **Other users**, select **Add account** > **I don't have this person's sign-in information** > **Add a user without a Microsoft account**
1. Provide a user name and password for the account that will be used for testing
   :::image type="content" source="./images/takeatest/settings-accounts-create-take-a-test-account.png" alt-text="Use the Settings app to create a test-taking account." border="true":::
1. Select **Accounts > Access work or school**
1. Select **Create a test-taking account**
   :::image type="content" source="./images/takeatest/settings-accounts-set-up-take-a-test-account.png" alt-text="Use the Settings app to set up a test-taking account." border="true":::
1. Under **Add an account for taking tests**, select **Add account** > Select the account created in step 4
   :::image type="content" source="./images/takeatest/settings-accounts-choose-take-a-test-account.png" alt-text="Use the Settings app to choose the test-taking account." border="true":::
1. Under **Enter the tests's web address**, enter the assessment URL
1. Under **Test taking settings** select the options you want to enable during the test
   - To enable printing, select **Require printing**

      > [!NOTE]  
      > Make sure a printer is pre-configured on the Take a Test account if you're enabling this option.

   - To enable teachers to monitor screens, select **Allow screen monitoring**
   - To allow text suggestions, select **Allow text suggestions**

1. To take the test, a student must sign in using the test-taking account selected in step 4
   :::image type="content" source="./images/takeatest/login-screen-take-a-test-single-pc.png" alt-text="Windows 11 SE login screen with the take a test account." border="true":::

## Configure Take a Test  with a dedicated account on multiple devices

For higher stakes testing, such as mid-term exams, you can set up devices with a dedicated testing account.
Follow the instructions below to configure your devices using either Microsoft Intune or a provisioning package (PPKG).

#### [:::image type="icon" source="images/icons/intune.svg"::: **Intune**](#tab/intune)

To enable Stickers using Microsoft Intune, [create a custom profile][MEM-1] with the following settings:

You can set up a test-taking account in Intune for Education. To do this, follow these steps:

1. In Intune for Education, select **Take a Test profiles** from the menu.
2. Click **+ Add Test Profile** to create an account.

    **Figure 2** - Add a test profile in Intune for Education

    ![Add a test profile in Intune for Education.](images/takeatest/i4e_takeatestprofile_addnewprofile.png)

3. In the new profile page:
   1. Enter a name for the profile.
   2. Enter the assessment URL.
   3. Toggle the switch to **Allow screen capture**.
   4. Select a user account to use as the test-taking account.
   5. Click **Save**.

      **Figure 3** - Add information about the test profile

      ![Add information about the test profile.](images/takeatest/i4e_takeatestprofile_newtestaccount.png)

      After you save the test profile, you'll see a summary of the settings that you configured for Take a Test. Next, you'll need to assign the test profile to a group that will be using the test account.
    
4. In the test account page, click **Groups**.

   **Figure 4** - Assign the test account to a group

   ![Assign the test account to a group.](images/takeatest/i4e_takeatestprofile_accountsummary.png)

5. In the **Groups** page, click **Change group assignments**.

    **Figure 5** - Change group assignments

    ![Change group assignments.](images/takeatest/i4e_takeatestprofile_groups_changegroupassignments.png)

6. In the **Change group assignments** page:
   1. Select a group from the right column and click **Add Members** to select the group and assign the test-taking account to that group. You can select more than one group. 
   2. Click **OK** when you're done making your selection.

      **Figure 6** - Select the group(s) that will use the test account

      ![Select the groups that will use the test account.](images/takeatest/i4e_takeatestprofile_groupassignment_selected.png)

And that's it! When the students from the selected group sign in to the student PCs using the Take a Test user name that you selected, the PC will be locked down and Take a Test will open the assessment URL and students can start taking tests.

Assign the policy to a security group that contains as members the devices or users that you want to enable Stickers on.

#### [:::image type="icon" source="images/icons/provisioning-package.svg"::: **PPKG**](#tab/ppkg)

To Set up a test account in the Set up School PCs app 
If you want to set up a test account using the Set up School PCs app, configure the settings in the **Set up the Take a Test app** page in the Set up School PCs app. Follow the instructions in [Use the Set up School PCs app](use-set-up-school-pcs-app.md) to configure the test-taking account and create a provisioning package. 

If you set up Take a Test, the **Take a Test** button is added on the student PC's sign-in screen. Windows will also lock down the student PC so that students can't access anything else while taking the test.

**Figure 1** - Configure Take a Test in the Set up School PCs app

![Configure Take a Test in the Set up School PCs app.](images/takeatest/suspc_choosesettings_setuptakeatest.png)

### Set up a test account through Windows Configuration Designer
To set up a test account through Windows Configuration Designer, follow these steps.

1. [Install Windows Configuration Designer](/windows/configuration/provisioning-packages/provisioning-install-icd).
2. Create a provisioning package by following the steps in [Provision PCs with common settings for initial deployment (desktop wizard)](/windows/configuration/provisioning-packages/provision-pcs-for-initial-deployment). However, make a note of these other settings to customize the test account.
   1. After you're done with the wizard, don't click **Create**. Instead, click the **Switch to advanced editor** to switch the project to the advanced editor to see all the available **Runtime settings**.
   2. Under **Runtime settings**, go to **AssignedAccess > AssignedAccessSettings**.
   3. Enter **{"Account":"*redmond\\kioskuser*","AUMID":” Microsoft.Windows.SecureAssessmentBrowser_cw5n1h2txyewy!App "}**, using the account that you want to set up.

      **Figure 7** - Add the account to use for test-taking

      ![Add the account to use for test-taking.](images/wcd/wcd_settings_assignedaccess.png)

      The account can be in one of the following formats:
      - username
      - domain\username
      - computer name\\username
      - username@tenant.com

   4. Under **Runtime settings**, go to **TakeATest** and configure the following settings:
      - In **LaunchURI**, enter the assessment URL.
      - In **TesterAccount**, enter the test account you entered in step 3.

3. Follow the steps to [build a package](/windows/configuration/provisioning-packages/provisioning-create-package#build-package). 

   - You'll see the file path for your provisioning package. By default, this is set to %windir%\Users\*your_username<em>\Windows Imaging and Configuration Designer (WICD)\*Project name</em>). 
   - Copy the provisioning package to a USB drive.

4. Follow the steps in [Apply a provisioning package](/windows/configuration/provisioning-packages/provisioning-apply-package) to apply the package that you created.

Apply the provisioning package to the devices that you want to enable Stickers on.

---

### Set up a test account in MDM or Configuration Manager
You can configure a dedicated testing account through MDM or Configuration Manager by specifying a single account in the directory to be the test-taking account. Devices that have the test-taking policies can sign into the specified account to take the test.

**Best practice**
- Create a single account in the directory specifically for test taking 
  - Active Directory example: Contoso\TestAccount
  - Azure Active Directory example: testaccount@contoso.com

- Deploy the policies to the group of test-taking devices

**To enable this configuration**

1. Launch your management console.
2. Create a policy to set up single app kiosk mode using the following values:

   - **Custom OMA-DM URI** = ./Vendor/MSFT/AssignedAccess/KioskModeApp
   - **String value** = {"*Account*":"*redmond\\kioskuser*","AUMID":” Microsoft.Windows.SecureAssessmentBrowser_cw5n1h2txyewy!App "}

     *Account* can be in one of the following formats:
     - username (not recommended)
     - domain\username
     - computer name\\username (not recommended)
     - username@tenant.com

3. Create a policy to configure the assessment URL using the following values:

    - **Custom OMA-DM URI** = ./Vendor/MSFT/SecureAssessment/LaunchURI
    - **String value** = *assessment URL*

4. Create a policy that associates the assessment URL to the account using the following values:

    - **Custom OMA-DM URI** = ./Vendor/MSFT/SecureAssessment/TesterAccount
    - **String value** = Enter the account that you specified in step 2, using the same account format.

5. Deploy the policies to the test-taking devices.
6. To take the test, the student signs in to the test account.

---