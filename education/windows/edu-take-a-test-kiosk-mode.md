---
title: Configure Take a Test
description: Description of Take a Test app for Windows and how to configure it via Intune and provisioning package.
ms.date: 09/30/2022
ms.prod: windows
ms.technology: windows
ms.topic: how-to
ms.localizationpriority: medium
author: paolomatarazzo
ms.author: paoloma
ms.reviewer:
manager: aaroncz
ms.collection: education
appliesto:
- ✅ <b>Windows 10</b>
- ✅ <b>Windows 11</b>
- ✅ <b>Windows 11 SE</b>
---

# Configure Take a Test in kiosk mode

Many schools use online testing for formative and summation assessments. It's critical that students use a secure browser that prevents them from using other computer or Internet resources during the test. To help schools with this, Windows provides an application called **Take a Test**. The application is a secure browser that can be configured to only allow access to a specific URL or a list of URLs. The application also provides a number of other features to help with testing, such as preventing printing, preventing screen capture, and preventing text suggestions.

There are different ways to configure and use Take a Test:
- The simplest approach is to generate a *secure assessment URL* and share it with the students. Students can then use the generated URL to access the assessment through Take a Test. This option is recommended for lower stakes assessments, and its configuration is described in the section: [Create and distribute a secure assessment link](#create-and-distribute-a-secure-assessment-link)
- Another approach is to configure the devices to use a dedicated account for testing. This option is recommended for higher stakes assessments, as students must sign in using the test-taking account.Once signed in with a dedicated account, Windows will execute Take a Test in a lock-down mode, called **kiosk mode**, which prevents the execution of any applications other than Take a Test. Depending if you need to configure a single device or multiple devices, the process is described in the following sections:
- [Configure Take a Test in kiosk mode on a single device](#configure-take-a-test-in-kiosk-mode-on-a-single-device)
- [Configure Take a Test in kiosk mode on multiple devices](#configure-take-a-test-in-kiosk-mode-on-multiple-devices)

## Create and distribute a secure assessment link

Anything hosted on the web can be presented in a locked down manner using the **Take a Test** app, not just assessments. To lock down online content, embed a URL with a specific prefix and devices will be locked down when users open the link. This approach is recommended for lower stakes assessment, such as a quick quiz in a class.

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

To take the test, have the students open the link.

> [!NOTE]
> If you enabled printing, the printer must be pre-configured for the account before the student takes the test.

:::image type="content" source="./images/takeatest/desktop-shortcuts.png" alt-text="Windows 11 SE desktop showing two shortcuts to assessment URLs." border="true":::

If using `enforceLockdown`, to exit the Take a Test app at any time, press <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>Delete</kbd>. Students will be prompted to type their password to get back to their desktop.

## Configure Take a Test in kiosk mode on a single device

For higher stakes testing, such as mid-term exams, you can set up a device with a dedicated testing account running the Take a Test app in kiosk mode.
To configure a device for this scenario, follow these steps:

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

## Configure Take a Test in kiosk mode on multiple devices

For higher stakes testing, such as mid-term exams, you can set up devices with a dedicated testing account running the Take a Test app in kiosk mode.

> [!TIP]
> While you could create a single account in the directory to be the dedicated test-taking account, it is recommended to use a guest account. This way, you don't get into a scenario where the testing account is locked out due to bad password attempts or other factors.
>
> An additional benefit of using a guest account, is that your students don't have to type a password to access the test.

Follow the instructions below to configure your devices with a guest account, using either Microsoft Intune or a provisioning package (PPKG).

#### [:::image type="icon" source="images/icons/intune.svg"::: **Intune**](#tab/intune)

To configure a guest account for Take a Test, you can either use Intune for Education or a custom profile. While Intune for Education provides a simpler experience, a custom profile provides more flexibility and control over the configuration.

> [!IMPORTANT]
> Currently, the policy created in Intune for Education is applicable to Windows 10 and Windows 11 only. **It will not apply to Windows 11 SE devices.**
>
> If you want to configure Take a Test for Windows 11 SE devices, you must use a custom policy.

### Configure Take a Test from Intune for Education

To configure a guest account for Take a Test using Intune for Education, follow these steps:

1. Sign in to the <a href="https://intuneeducation.portal.azure.com/" target="_blank"><b>Intune for Education portal</b></a>
1. Select **Groups** > Pick a group to configure Take a Test for
1. Select **Windows device settings**
1. Expand the **Take a Test profiles** category and select **+ Assign new Take a Test profile**
1. Specify a **Profile Name**, **Account Name**, **Assessment URL** and, optionally, **Description** and options allowed during the test
1. Select **Create and assign profile**

:::image type="content" source="./images/takeatest/intune-education-take-a-test-profile.png" alt-text="Intune for Education - creation of a Take a Test profile." lightbox="./images/takeatest/intune-education-take-a-test-profile.png" border="true":::

### Configure Take a Test with a custom policy

Another option to configure devices with Intune, is to use a custom policy. This option is applicable to all versions of Windows 10 and Windows 11, including Windows 11 SE.
To configure a guest account for Take a Test using Microsoft Intune, create a [custom policy][MEM-1] with the following settings:

| Setting |
|--------|
| <li> OMA-URI: **`./Vendor/MSFT/Policy/Config/LocalPoliciesSecurityOptions/InteractiveLogon_DoNotDisplayLastSignedIn`** </li><li> Data type: **Integer** </li><li>Value: **1**</li>|
| <li> OMA-URI: **`./Vendor/MSFT/Policy/Config/WindowsLogon/HideFastUserSwitching`** </li><li> Data type: **Integer**</li><li>Value: **1**</li>|
| <li> OMA-URI: **`./Vendor/MSFT/SharedPC/AccountModel`**</li><li>Data type: **Integer** </li><li> Value: **1**</li>|
| <li> OMA-URI: **`./Vendor/MSFT/SharedPC/KioskModeAUMID`**</li><li>Data type: **String** </li><li> Value: **Microsoft.Windows.SecureAssessmentBrowser_cw5n1h2txyewy!App**</li>|
| <li> OMA-URI: **`./Vendor/MSFT/SharedPC/KioskModeUserTileDisplayText`** </li><li>Data type: **String** </li><li> Value: **Take a Test** (or a string of your choice to display in the sing-in screen)</li>|
| <li> OMA-URI: **`./Vendor/MSFT/SecureAssessment/LaunchURI`** </li><li>Data type: **String** </li><li> Value: **\<provide testing URL>**</li>|

:::image type="content" source="./images/takeatest/intune-take-a-test-custom-profile.png" alt-text="Intune portal - creation of a custom policy to configure Take a Test." lightbox="./images/takeatest/intune-take-a-test-custom-profile.png" border="true":::

Assign the policy to a security group that contains as members the devices or users that you want to configure Take a Test for.

#### [:::image type="icon" source="images/icons/provisioning-package.svg"::: **PPKG**](#tab/ppkg)

To configure a provisioning package for Take a Test, you can either use Set up School PCs or Windows Configuration Designer. While Set up School PCs provides a simple wizard to configure the provisioning package, Windows Configuration Designer provides more flexibility and control over the configuration.

### Create a provisioning package using Set up School PCs

To configure Take a Test with a dedicated account using Set up School PCs, configure the settings in the **Set up the Take a Test app** page in the Set up School PCs app.

:::image type="content" source="./images/takeatest/suspcs-take-a-test.png" alt-text="Set up School PCs app - Take a test page" lightbox="./images/takeatest/suspcs-take-a-test.png" border="true":::

### Create a provisioning package using Windows Configuration Designer

To configure Take a Test with a dedicated account using Windows Configuration Designer (WCD), use the following settings:

| Setting |
|--------|
| <li> Path: **`Policies/LocalPoliciesSecurityOptions/InteractiveLogon_DoNotDisplayLastSignedIn`** </li><li>Value: **Enabled**</li>|
| <li> Path: **`Policies/WindowsLogon/HideFastUserSwitching`** </li><li>Value: **True**</li>|
| <li> Path: **`SharedPC/AccountManagement/AccountModel`** </li><li>Value: **Domain-joined only**</li>|
| <li> Path: **`SharedPC/AccountManagement/EnableAccountManager`** </li><li>Value: **True**</li>|
| <li> Path: **`SharedPC/AccountManagement/KioskModeAUMID`** </li><li>Value: **Microsoft.Windows.SecureAssessmentBrowser_cw5n1h2txyewy!App**</li>|
| <li> Path: **`SharedPC/AccountManagement/KioskModeUserTileDisplayText`** </li><li>Value: **Take a Test** (or a string of your choice to display in the sing-in screen)</li>|
| <li> Path: **`TakeATest/LaunchURI/`** </li><li>Value: **\<provide testing URL>**</li>|

:::image type="content" source="./images/takeatest/wcd-take-a-test.png" alt-text="Windows Configuration Designer - configuration of policies to enable Take a Test to run in kiosk mode" lightbox="./images/takeatest/wcd-take-a-test.png" border="true":::

### Apply the provisioning package

Follow the steps in [Apply a provisioning package][WIN-1] to apply the package that you created.

---

## How to use Take a Test with a dedicated account

When the policy or provisioning package is applied to the devices, students will be able to select the testing account from the sign-in screen. Take a Test will be executed in kiosk mode, opening the assessment URL.

## How to exit Take a Test

To exit the Take a Test app at any time, press <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>Delete</kbd>. You will have the option to sign out of the test-taking account or return to the test. Once signed out, the device will be unlocked from kiosk mode and can be used as normal.

The following animation shows the process of signing in to the test-taking account, taking a test, and exiting the test:

:::image type="content" source="./images/takeatest/sign-in-sign-out.gif" alt-text="Signing in and signing out with a test account" border="true":::

-----------

[MEM-1]: /mem/intune/configuration/custom-settings-windows-10
[MEM-2]: /mem/intune/configuration/settings-catalog

[WIN-1]: /windows/configuration/provisioning-packages/provisioning-apply-package