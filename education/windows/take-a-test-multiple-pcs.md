---
title: Set up Take a Test on multiple PCs
description: Learn how to set up and use the Take a Test app on multiple PCs.
keywords: take a test, test taking, school, set up on multiple PCs
ms.prod: w10
ms.mktglfcycl: plan
ms.sitesec: library
ms.pagetype: edu
ms.localizationpriority: medium
author: mjcaparas
ms.author: macapara
ms.date: 11/08/2017
---

# Set up Take a Test on multiple PCs
**Applies to:**

-   Windows 10  


Many schools use online testing for formative and summative assessments. It's critical that students use a secure browser that prevents them from using other computer or Internet resources during the test. 

Follow the guidance in this topic to set up Take a Test on multiple PCs.

## Set up a dedicated test account
To configure a dedicated test account on multiple PCs, select any of the following methods:
- [Provisioning package created through the Set up School PCs app](#set-up-a-test-account-in-the-set-up-school-pcs-app)
- [Configuration in Intune for Education](#set-up-a-test-account-in-intune-for-education)
- [Mobile device management (MDM) or Microsoft System Center Configuration Manager](#set-up-a-test-account-in-mdm-or-configuration-manager)
- [Provisioning package created through Windows Configuration Designer](#set-up-a-test-account-through-windows-configuration-designer)
- [Group Policy to deploy a scheduled task that runs a Powershell script](https://docs.microsoft.com/education/windows/take-a-test-multiple-pcs#create-a-scheduled-task-in-group-policy) 

### Set up a test account in the Set up School PCs app 
If you want to set up a test account using the Set up School PCs app, configure the settings in the **Set up the Take a Test app** page in the Set up School PCs app. Follow the instructions in [Use the Set up School PCs app](use-set-up-school-pcs-app.md) to configure the test-taking account and create a provisioning package. 

If you set up Take a Test, this adds a **Take a Test** button on the student PC's sign-in screen. Windows will also lock down the student PC so that students can't access anything else while taking the test.

**Figure 1** - Configure Take a Test in the Set up School PCs app

![Configure Take a Test in the Set up School PCs app](images/suspc_choosesettings_setuptakeatest.png)

### Set up a test account in Intune for Education
You can set up a test-taking account in Intune for Education. To do this, follow these steps:

1. In Intune for Education, select **Take a Test profiles** from the menu.
2. Click **+ Add Test Profile** to create an account.

    **Figure 2** - Add a test profile in Intune for Education

    ![Add a test profile in Intune for Education](images/i4e_takeatestprofile_addnewprofile.png)

3. In the new profile page:
  1. Enter a name for the profile.
  2. Enter the assessment URL.
  3. Toggle the switch to **Allow screen capture**.
  4. Select a user account to use as the test-taking account.
  5. Click **Save**.

    **Figure 3** - Add information about the test profile

    ![Add information about the test profile](images/i4e_takeatestprofile_newtestaccount.png)

    After you save the test profile, you will see a summary of the settings that you configured for Take a Test. Next, you'll need to assign the test profile to a group that will be using the test account.
    
4.  In the test account page, click **Groups**.

    **Figure 4** - Assign the test account to a group

    ![Assign the test account to a group](images/i4e_takeatestprofile_accountsummary.png)

5. In the **Groups** page, click **Change group assignments**.

    **Figure 5** - Change group assignments

    ![Change group assignments](images/i4e_takeatestprofile_groups_changegroupassignments.png)

6. In the **Change group assignments** page:
  1. Select a group from the right column and click **Add Members** to select the group and assign the test-taking account to that group. You can select more than one group. 
  2. Click **OK** when you're done making your selection.

    **Figure 6** - Select the group(s) that will use the test account

    ![Select the groups that will use the test account](images/i4e_takeatestprofile_groupassignment_selected.png)

And that's it! When the students from the selected group sign in to the student PCs using the Take a Test user name that you selected, the PC will be locked down and Take a Test will open the assessment URL and students can start taking tests.

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

      See [Assessment URLs](#assessment-urls) for more information.

4. Create a policy that associates the assessment URL to the account using the following values:

    - **Custom OMA-DM URI** = ./Vendor/MSFT/SecureAssessment/TesterAccount
    - **String value** = Enter the account that you specified in step 2, using the same account format.

5. Deploy the policies to the test-taking devices.
6. To take the test, the student signs in to the test account.

### Set up a test account through Windows Configuration Designer
To set up a test account through Windows Configuration Designer, follow these steps.

1. [Install Windows Configuration Designer](https://technet.microsoft.com/itpro/windows/configure/provisioning-install-icd).
2. Create a provisioning package by following the steps in [Provision PCs with common settings for initial deployment (desktop wizard)](https://technet.microsoft.com/itpro/windows/configure/provision-pcs-for-initial-deployment). However, make a note of these other settings to customize the test account.
  1. After you're done with the wizard, do not click **Create**. Instead, click the **Switch to advanced editor** to switch the project to the advanced editor to see all the available **Runtine settings**.
  2. Under **Runtime settings**, go to **AssignedAccess > AssignedAccessSettings**.
  3. Enter **{"Account":"*redmond\\kioskuser*","AUMID":” Microsoft.Windows.SecureAssessmentBrowser_cw5n1h2txyewy!App "}**, using the account that you want to set up.

    **Figure 7** - Add the account to use for test-taking

    ![Add the account to use for test-taking](images/wcd_settings_assignedaccess.png)

    The account can be in one of the following formats:
    - username
    - domain\username
    - computer name\\username
    - username@tenant.com

  4. Under **Runtime settings**, go to **TakeATest** and configure the following settings:
    1. In **LaunchURI**, enter the assessment URL.
    2. In **TesterAccount**, enter the test account you entered in step 3.

3. Follow the steps to [build a package](https://technet.microsoft.com/itpro/windows/configure/provisioning-create-package#build-package). 

    - You will see the file path for your provisioning package. By default, this is set to %windir%\Users\*your_username*\Windows Imaging and Configuration Designer (WICD)\*Project name*). 
    - Copy the provisioning package to a USB drive.

4. Follow the steps in [Apply a provisioning package](https://technet.microsoft.com/itpro/windows/configure/provisioning-apply-package) to apply the package that you created.

### Set up a tester account in Group Policy
To set up a tester account using Group Policy, first create a Powershell script that configures the tester account and assessment URL, and then create a scheduled task to run the script.

#### Create a PowerShell script
This sample PowerShell script configures the tester account and the assessment URL. Edit the sample to:

- Use your assessment URL for **$obj.LaunchURI**  
- Use your tester account for **$obj.TesterAccount**
- Use your tester account for **-UserName**

>[!NOTE]
>The account that you specify for the tester account must already exist on the device.

```
$obj = get-wmiobject -namespace root/cimv2/mdm/dmmap -class MDM_SecureAssessment -filter "InstanceID='SecureAssessment' AND ParentID='./Vendor/MSFT'";
$obj.LaunchURI='https://www.foo.com';
$obj.TesterAccount='TestAccount';
$obj.put()
Set-AssignedAccess -AppUserModelId Microsoft.Windows.SecureAssessmentBrowser_cw5n1h2txyewy!App -UserName TestAccount
```

#### Create a scheduled task in Group Policy
1. Open the Group Policy Management Console.
2. Right-click the Group Policy object (GPO) that should contain the new preference item, and then click **Edit**.
3. In the console tree under **Computer Configuration** or **User Configuration**, go to **Preferences** > **Control Panel Settings**.
4. Right-click **Scheduled Tasks**, point to **New**, and select **Scheduled Task**.
5. In the **New Scheduled Task Properties** dialog box, click **Change User or Group**.
6. In the **Select User or Group** dialog box, click **Advanced**.
7. In the **Advanced** dialog box, click **Find Now**.
8. Select **System** in the search results
9. Go back to the **Properties** dialog box and select **Run with highest privileges** under **Security options**.
10. Specify the operating system in the **Configure for** field.
11. Navigate to the **Actions** tab.
12. Create a new **Action**.
13. Configure the action to **Start a program**.
14. In the **Program/script** field, enter **powershell**.
15. In the **Add arguments** field, enter **-file "<path to powershell script>"**.
16. Click **OK**.
17. Navigate to the **Triggers** tab and create a new trigger.
18. Specify the trigger to be **On a schedule**.
19. Specify the trigger to be **One time**.
20. Specify the time the trigger should start.
21. Click **OK**.
22. In the **Settings** tab, select **Run task as soon as possible after a scheduled start is missed**.
23. Click **OK**.

## Provide link to test
Anything hosted on the web can be presented in a locked down manner, not just assessments. To lock down online content, just embed a URL with a specific prefix and devices will be locked down when users follow the link. We recommend using this method for lower stakes assessments.

**To provide a link to the test**

1. Create the link to the test using schema activation.
  - Create a link using a web UI

    For this option, you can just copy the assessment URL, select the options you want to allow during the test, and click a button to create the link. We recommend this for option for teachers.

    To get started, go here: [Create a link using a web UI](https://education.microsoft.com/courses-and-resources/windows-10-create-a-take-a-test-link).

  - Create a link using schema activation

    You can accomplish the same thing as the first option (using a web UI), by manually embedding a URL with a specific prefix. You can select parameters depending on what you want to enable. 

    For more info, see [Create a link using schema activation](#create-a-link-using-schema-activation).

2. Distribute the link. 

    Once the links are created, you can distribute them through the web, email, OneNote, or any other method of your choosing. You can also create shortcuts to distribute the link. For more info, see [Create a shortcut for the test link](#create-a-shortcut-for-the-test-link).

3. To take the test, have the students click on the link and provide user consent.

### Create a link using schema activation
One of the ways you can present content in a locked down manner is by embedding a URL with a specific prefix. Once users click the URL, devices will be locked down.

**To enable schema activation for assessment URLs**

1. Embed a link or create a desktop shortcut with:

  ```
  ms-edu-secureassessment:<URL>#enforceLockdown
  ```

2. To enable printing, screen capture, or both, use the above link and append one of these parameters:

  - `&enableTextSuggestions` - Enables text suggestions
  - `&requirePrinting` - Enables printing
  - `&enableScreenCapture` - Enables screen capture
  - `&requirePrinting&enableScreenCapture` - Enables printing and screen capture; you can use a combination of `&enableTextSuggestions`, `&requirePrinting`, and `&enableScreenCapture` if you want to enable more than one capability. 

  If you exclude these parameters, the default behavior is disabled.

  For tests that utilizes the Windows lockdown API, which checks for running processes before locking down, remove `enforceLockdown`. Removing `enforceLockdown` will result in the app not locking down immediately, which allows you to close apps that are not allowed to run during lockdown. The test web application may lock down the device once you have closed the apps.

    > [!NOTE] 
    > The Windows 10, version 1607 legacy configuration, `ms-edu-secureassessment:<URL>!enforcelockdown` is still supported, but not in combination with the new parameters.

3. To enable permissive mode, do not include `enforceLockdown` in the schema parameters.

   See [Permissive mode](take-a-test-app-technical.md#permissive-mode) and [Secure Browser API Specification](https://github.com/SmarterApp/SB_BIRT/blob/master/irp/doc/req/SecureBrowserAPIspecification.md) for more info.

### Create a shortcut for the test link
You can also distribute the test link by creating a shortcut. To do this, create the link to the test by either using the [web UI](https://education.microsoft.com/courses-and-resources/windows-10-create-a-take-a-test-link) or using [schema activation](#create-a-link-using-schema-activation). After you have the link, follow these steps:

1. On a device running Windows, right-click on the desktop and then select **New > Shortcut**.
2. In the **Create Shortcut** window, paste the assessment URL in the field under **Type the location of the item**.
3. Click **Next**.
4. Type a name for the shortcut and then click **Finish**.

Once the shortcut is created, you can copy it and distribute it to students.


## Assessment URLs
This assessment URL uses our lockdown API:
- SBAC/AIR:  [https://mobile.tds.airast.org/launchpad/](https://mobile.tds.airast.org/launchpad/).


## Related topics

[Take tests in Windows 10](take-tests-in-windows-10.md)

[Set up Take a Test on a single PC](take-a-test-single-pc.md)

[Take a Test app technical reference](take-a-test-app-technical.md)
