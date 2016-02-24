---
Description: 'Enable and disable add-ons using administrative templates and group policy'
ms.assetid: c6fe1cd3-0bfc-4d23-8016-c9601f674c0b
ms.prod: IE11
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
title: 'Enable and disable add-ons using administrative templates and group policy'
---

# Enable and disable add-ons using administrative templates and group policy
Add-ons let your employees personalize Internet Explorer. You can manage IE add-ons using Group Policy and Group Policy templates.

There are 4 types of add-ons:

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
Because every add-on has a Class ID (CLSID), you can use it to enable and disable specific add-ons, using Group Policy and Administrative Templates.

**To manage add-ons**

1.  Get the CLSID for the add-on you want to enable or disable:

    1.  Open IE, click **Tools**, and then click **Manage Add-ons**.

    2.  Pick the add-on you want to change, and then right-click **More Information**.

    3.  Click **Copy** and then close **Manage Add-ons** and IE.

2.  From the copied information, select and copy just the **Class ID** value.

3.  Open the Group Policy Management Editor and go to `Computer Configuration\Policies\Administrative Templates\Windows Components\Internet Explorer\Security Features\Add-on Management`.
<br>**-OR-**<br>
Open the Local Group Policy Editor and go to `Computer Configuration\Administrative Templates\Windows Components\Internet Explorer\Security Features\Add-on Management`.

4.  Open the **Add-on List** Group Policy Object, pick **Enabled**, and then click **Show**.<br>
**Show Contents** box appears.

5.  In **Value Name**, put your copied Class ID.

6.  In **Value**, put:

    -   **0**. The add-on is disabled and your employees can’t change it.

    -   **1**. The add-on is enabled and your employees can’t change it.

    -   **2**. The add-on is enabled and your employees can change it.

7.  Click **OK** and close the Group Policy editor.

 

 



