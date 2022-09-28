---
title: Set up Take a Test on a single PC
description: Learn how to set up and use the Take a Test app on a single PC.
keywords: take a test, test taking, school, set up on single PC
ms.prod: windows
ms.mktglfcycl: plan
ms.sitesec: library
ms.pagetype: edu
ms.localizationpriority: medium
ms.collection: education
author: paolomatarazzo
ms.author: paoloma
ms.date: 08/10/2022
ms.reviewer: 
manager: aaroncz
appliesto:
- ✅ <b>Windows 10</b>
- ✅ <b>Windows 11</b>
- ✅ <b>Windows 11 SE</b>
---
# Set up Take a Test on a single PC

To configure [Take a Test](take-tests-in-windows-10.md) on a single PC, follow the guidance in this topic.

## Set up a dedicated test account
To configure the assessment URL and a dedicated testing account on a single PC, follow these steps:

1. Sign into the Windows device with an administrator account
1. Open the **Settings** app and select **Accounts > Access work or school**
1. Select **Create a test-taking account**
   :::image type="content" source="./images/takeatest/settings-accounts-set-up-take-a-test-account.png" alt-text="Use the Settings app to set up a test-taking account." border="true":::
1. Under **Add an account for taking tests**, select **Add account** > Select a local account that will be used for testing
   :::image type="content" source="./images/takeatest/settings-accounts-choose-take-a-test-account.png" alt-text="Use the Settings app to choose the test-taking account." border="true":::

    > [!NOTE]  
    > If you don't already have an account on the device, you can create a new account. To do this:
    > - Open the **Settings** app and select **Accounts** > **Other Users**
    > - Under **Other users**, select **Add account** > **I don't have this person's sign-in information** > **Add a user without a Microsoft account**
    > - Provide a user name and password for the account.
    > :::image type="content" source="./images/takeatest/settings-accounts-create-take-a-test-account.png" alt-text="Use the Settings app to create a test-taking account." border="true":::

1. Under **Enter the tests's web address**, enter the assessment URL
1. Under **Test taking settings** select the options you want to enable during the test
   - To enable printing, select **Require printing**

      > [!NOTE]  
      > Make sure a printer is pre-configured on the Take a Test account if you're enabling this option.

   - To enable teachers to monitor screens, select **Allow screen monitoring**
   - To allow text suggestions, select **Allow text suggestions**

1. To take the test, a student must sign in using the test-taking account selected in step 4
   :::image type="content" source="./images/takeatest/login-screen-take-a-test-single-pc.png" alt-text="Windows 11 SE login screen with the take a test account." border="true":::

## Create and distribute a link to the test

Anything hosted on the web can be presented in a locked down manner, not just assessments. To lock down online content, embed a URL with a specific prefix and devices will be locked down when users follow the link. This approach is recommended for lower stakes assessments.
To create a link to the test, there are two options:

1. Create a link using a web UI
1. Create a link using schema activation

### Create a link using a web UI

For this option, copy the assessment URL and open the web application <a href="https://aka.ms/create-a-take-a-test-link" target="_blank"><u>Customize your assessment URL</u></a>, where you can:

1. Paste the link to the assessment URL
1. Select the options you want to allow during the test
1. Generate the link by selecting the button Create link

This is an ideal option for teachers.

### Create a link using schema activation

For this option, you embed a URL with a specific prefix and specify parameters depending on what you want to allow during the test. Once users open the URL, devices will be locked down.
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