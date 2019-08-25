---
ms.localizationpriority: medium
ms.mktglfcycl: deploy
ms.pagetype: security
description: Enable and disable add-ons using administrative templates and group policy
ms.author: lomayor
author: lomayor
ms.prod: ie11
ms.assetid: c6fe1cd3-0bfc-4d23-8016-c9601f674c0b
ms.reviewer: 
audience: itpromanager: dansimp
title: Enable and disable add-ons using administrative templates and group policy (Internet Explorer 11 for IT Pros)
ms.sitesec: library
ms.date: 4/12/2018
---


# Enable and disable add-ons using administrative templates and group policy
Add-ons let your employees personalize Internet Explorer. You can manage IE add-ons using Group Policy and Group Policy templates.

There are four types of add-ons:

-   **Search Providers.** Type a term and see suggestions provided by your search provider.

-   **Accelerators.** Highlight text on a web page and then click the blue **Accelerator** icon to email, map, search, translate, or do many other tasks.

-   **Web Slices.** Subscribe to parts of a website to get real-time information on the Favorites bar.

-   **Toolbars.** Add features (like stock tickers) to your browser.

## Using the Local Group Policy Editor to manage group policy objects
You can use the Local Group Policy Editor to change how add-ons work in your organization.

 **To manage add-ons**

1.  In the Local Group Policy Editor, go to `Computer Configuration\Administrative Templates\Windows Components\Internet Explorer`.

2.  Change any or all of these settings to match your company’s policy and requirements.

    -   Turn off add-on performance notifications

    -   Automatically activate newly installed add-ons

    -   Do not allow users to enable or disable add-ons

3.  Go into the **Internet Control Panel\\Advance Page** folder, where you can change:

    -   Do not allow resetting IE settings

    -   Allow third-party browser extensions

4.  Go into the **Security Features\\Add-on Management** folder, where you can change:

    -   Add-on List

    -   Deny all add-ons unless specifically allowed in the Add-on List

    -   Turn off Adobe Flash in IE and prevent applications from using IE technology to instantiate Flash objects

5.  Close the Local Group Policy Editor when you’re done.

## Using the CLSID and Administrative Templates to manage group policy objects
Every add-on has a Class ID (CLSID) that you use to enable and disable specific add-ons, using Group Policy and Administrative Templates.

 **To manage add-ons**

1.  Get the CLSID for the add-on you want to enable or disable:

    1.  Open IE, click **Tools**, and then click **Manage Add-ons**.

    2.  Double-click the add-on you want to change. 

    3.  In the More Information dialog, click **Copy** and then click **Close**. 
    
    4. Open Notepad and paste the information for the add-on. 
    
    5. On the Manage Add-ons windows, click **Close**.
    
    6. On the Internet Options dialog, click **Close** and then close IE.
    
2.  From the copied information, select and copy just the **Class ID** value.

    >[!NOTE]
    >You want to copy the curly brackets as well as the CLSID: **{47833539-D0C5-4125-9FA8-0819E2EAAC93}**.

3.  Open the Group Policy Management Editor and go to: Computer Configuration\Policies\Administrative Templates\Windows Components\Internet Explorer\Security Features\Add-on Management.
<br>**-OR-**<br>
Open the Local Group Policy Editor and go to: User Configuration\Administrative Templates\Windows Components\Internet Explorer\Security Features\Add-on Management.

4.  Open the **Add-on List** Group Policy Object, select **Enabled**, and then click **Show**.<br>The Show Contents dialog appears.

6.  In **Value Name**, paste the Class ID for your add-on, for example, **{47833539-D0C5-4125-9FA8-0819E2EAAC93}**.

6.  In **Value**, enter one of the following:

    -   **0**. The add-on is disabled and your employees can’t change it.

    -   **1**. The add-on is enabled and your employees can’t change it.

    -   **2**. The add-on is enabled and your employees can change it.

7.  Close the Show Contents dialog.

7.  In the Group Policy editor, go to: Computer Configuration\Administrative Templates\Windows Components\Internet Explorer.

8.  Double-click **Automatically activate/enable newly installed add-ons** and select **Enabled**.<br><br>Enabling turns off the message prompting you to Enable or Don't enable the add-on.

7.  Click **OK** twice to close the Group Policy editor.
 
<!-- do they need to run the gpudate /force command? -->
