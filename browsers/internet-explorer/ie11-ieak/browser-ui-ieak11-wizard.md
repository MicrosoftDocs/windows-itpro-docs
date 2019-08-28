---
ms.localizationpriority: medium
ms.mktglfcycl: deploy
description: How to use the Browser User Interface page in the IEAK 11 Customization Wizard to change the toolbar buttons and the title bar.
author: lomayor
ms.prod: ie11
ms.assetid: c4a18dcd-2e9c-4b5b-bcc5-9b9361a79f0d
ms.reviewer: 
audience: itpromanager: dansimp
ms.author: lomayor
title: Use the Browser User Interface page in the IEAK 11 Wizard (Internet Explorer Administration Kit 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


# Use the Browser User Interface page in the IEAK 11 Wizard
The **Browser User Interface** page of the Internet Explorer Customization Wizard 11 lets you change the toolbar buttons and the title bar text in IE.

**Note**<br>The customizations you make on this page apply only to Internet Explorer for the desktop.

 **To use the Browser User Interface page**

1.  Check the **Customize Title Bars** box so you can add your custom text to the **Title Bar Text** box.<p>
The text shows up in the title bar as **IE provided by** &lt;*your_custom_text*&gt;.

2.  Check the **Delete existing toolbar buttons, if present** box so you can delete all of the toolbar buttons in your employee’s browser, except for the standard buttons installed with IE (which can’t be removed).

**Note**<br>Only Administrators can use this option.

3. Click **Add** to add new toolbar buttons.<p>
   The **Browser Toolbar Button Information** box appears.

4. In the **Toolbar caption** box, type the text that shows up when an employee hovers over your custom button. We recommend no more than 10 characters.

5. In the **Toolbar action** box, browse to your script or executable file that runs when an employee clicks your custom button.

6. In the **Toolbar icon** box, browse to the icon file that represents your button while active. This icon must be 20x20 pixels.

7. Check the **This button should be shown on the toolbar by default** box so your custom button shows by default.<p>
   This box should be cleared if you want to offer a custom set of buttons, but want your employees to choose whether or not to use them. In this situation, your buttons will show up in the **Customize Toolbars** dialog box, under **Available toolbar buttons**. Your employees can get to this dialog box in IE by clicking **Tools** from the **Command Bar**, clicking **Toolbars**, and then clicking **Customize**.

8. Click **OK.**

9. Click **Edit** to change your custom toolbar button or **Remove** to delete the button. The removed button will disappear from your employee’s computer after you apply the updated customization. Only custom toolbar buttons can be removed.

10. Click **Next** to go to the [Search Providers](search-providers-ieak11-wizard.md) page or **Back** to go to the [User Experience](user-experience-ieak11-wizard.md) page.

 

 





