---
title: Set up Take a Test on a single PC
description: Learn how to set up and use the Take a Test app on a single PC.
keywords: take a test, test taking, school, set up on single PC
ms.prod: w10
ms.mktglfcycl: plan
ms.sitesec: library
ms.pagetype: edu
ms.localizationpriority: medium
author: mjcaparas
ms.author: macapara
ms.date: 11/08/2017
ms.reviewer: 
manager: dansimp
---

# Set up Take a Test on a single PC
**Applies to:**

-   Windows 10  

To configure [Take a Test](take-tests-in-windows-10.md) on a single PC, follow the guidance in this topic.

## Set up a dedicated test account
To configure the assessment URL and a dedicated testing account on a single PC, follow these steps.

1. Sign into the Windows 10 device with an administrator account.
2. Open the **Settings** app and go to **Accounts > Access work or school**.
3. Click **Set up an account for taking tests**.

  **Figure 1** - Use the Settings app to set up a test-taking account

  ![Use the Settings app to set up a test-taking account](images/tat_settingsapp_workorschoolaccess_setuptestaccount.png)

4. In the **Set up an account for taking tests** window, choose an existing account to use as the dedicated testing account.

  **Figure 2** - Choose the test-taking account

  ![Choose the test-taking account](images/tat_settingsapp_setuptesttakingaccount_1703.png) 

    > [!NOTE]  
    > If you don't have an account on the device, you can create a new account. To do this, go to **Settings > Accounts > Other people > Add someone else to this PC > I don’t have this person’s sign-in information > Add a user without a Microsoft account**.

5. In the **Set up an account for taking tests**, enter the assessment URL in the field under **Enter the test's web address**. 
6. Select the options you want to enable during the test.
  - To enable printing, select **Require printing**. 

      > [!NOTE]  
      > Make sure a printer is preconfigured on the Take a Test account if you're enabling this option.

  - To enable teachers to monitor screens, select **Allow screen monitoring**.
  - To allow text suggestions, select **Allow text suggestions**.

6. Click **Save**.
7. To take the test, the student must sign in using the test-taking account that you created.

## Provide a link to the test
Anything hosted on the web can be presented in a locked down manner, not just assessments. To lock down online content, just embed a URL with a specific prefix and devices will be locked down when users follow the link. We recommend using this method for lower stakes assessments.

**To provide a link to the test**

1. Create the link to the test. 

  There are different ways you can do this:
  - Create a link using a web UI

    For this option, you can just copy the assessment URL, select the options you want to allow during the test, and click a button to create the link. We recommend this for option for teachers.

    To get started, go here: [Create a link using a web UI](https://education.microsoft.com/courses-and-resources/windows-10-create-a-take-a-test-link).

  - Create a link using schema activation

    You can accomplish the same thing as the first option (using a web UI), by manually embedding a URL with a specific prefix. You can select parameters depending on what you want to enable. 

    For more info, see [Create a link using schema activation](#create-a-link-using-schema-activation).

2. Distribute the link.

  Once the links are created, you can distribute them through the web, email, OneNote, or any other method of your choosing. 

  You can also create shortcuts to distribute the link. For more info, see [Create a shortcut for the test link](#create-a-shortcut-for-the-test-link).

3. To take the test, have the students click on the link and provide user consent.

  > [!NOTE] 
  > If you enabled printing, the printer must be preconfigured for the account before the student takes the test.


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


## Related topics
[Take tests in Windows 10](take-tests-in-windows-10.md)

[Set up Take a Test on multiple PCs](take-a-test-multiple-pcs.md)

[Take a Test app technical reference](take-a-test-app-technical.md)
