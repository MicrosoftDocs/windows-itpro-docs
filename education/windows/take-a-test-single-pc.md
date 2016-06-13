---
title: Set up Take a Test on a single PC
description: Learn how to set up and use the Take a Test app on a single PC.
keywords: shared cart, shared PC, school
ms.prod: w10
ms.mktglfcycl: plan
ms.sitesec: library
ms.pagetype: edu
author: jdeckerMS
---

# Set up Take a Test on a single PC (Preview)
**Applies to:**

-   Windows 10 Insider Preview  


> <span style="color:#ED1C24;">[Some information relates to pre-released product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here. ]</span>

The **Take a Test** app in Windows 10, Version 1607, creates the right environment for taking a test:

- A Microsoft Edge browser window opens, showing just the test and nothing else.
- Students aren’t able to go to other websites.
- Students can’t open or access other apps.
- Students can't share, print, or record their screens.
- Students can’t copy or paste.
- Students can’t change settings, extend their display, see notifications, get updates, or use autofill features.
- Cortana is turned off.

> **Tip!**
> To exit **Take a Test**, press Ctrl+Alt+Delete. 

**Take a Test** is included in version 1607 of Windows 10 Pro, Pro Education, Education and Enterprise. 

## How you use Take a Test

![Use test account or test url in Take a Test](images/take-a-test-flow.png)

- **Use a test URL and a [dedicated testing account](#set-up-a-dedicated-test-account)** - A user signs in to the account and the **Take a Test** app automatically launches the pre-configured assessment URL in Microsoft Edge in a single-app, kiosk mode. A student will never have access to the desktop in this configuration. We recommend this configuration for high stakes testing.
- **[Put a test URL with an included prefix](#provide-link-to-test) on a web page or OneNote for students to click** - This allows teachers and test administrators an easier way to deploy assessments. We recommend this method for lower stakes assessments.

## Set up a dedicated test account


    



1. Sign into the device with an administrator account.
2. Go to **Settings** > **Accounts** > **Work or school access** (final name needs to be updated, still TBD) > **Set up an account for taking tests**.
3. Select an account to use as the dedicated testing account.
    >**Note**: If you don't have an account on the device, you can create a new account. To do this, go to **Settings** > **Accounts** > **Other Users** > **Add someone else to this PC** > **I don’t have this person’s sign-in information** > **Add a user without a Microsoft account**.
4. Specify an assessment URL.  

5. Click **Save**.

6. To take the test, the student signs in to the selected account.




## Provide link to test

Anything hosted on the web can be presented in a locked down manner, not just assessments. To lock down online content, just embed a URL with a specific prefix and devices will be locked down when users follow the link. We recommend using this method for lower stakes assessments. 

1. Create a link to the test URL. Use **ms-edu-secureassessment:** before the URL and **!enforceLockdown** after the URL.
``` 
ms-edu-secureassessment:<URL>!enforceLockdown
 ```

2. Distribute the link. You can use the web, email, OneNote, or any other method of your choosing.
3. To take the test, the student clicks on the link and provides user consent.


## Related topics
[Take tests in Windows 10](take-tests-in-windows-10.md)

[Set up Take a Test on multiple PCs](take-a-test-multiple-pcs.md)

[Take a Test app technical reference](take-a-test-app-technical.md)






