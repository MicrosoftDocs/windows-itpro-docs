---
title: Add multiple apps to your enterprise data protection (EDP) Protected Apps list (Windows 10)
description: Add multiple apps to your enterprise data protection (EDP) Protected Apps list at the same time, by using the Microsoft Intune Custom URI functionality and the AppLocker.
ms.assetid: b50db35d-a2a9-4b78-a95d-a1b066e66880
keywords: EDP, Enterprise Data Protection, protected apps, protected app list
ms.prod: w10
ms.mktglfcycl: explore
ms.pagetype: security
ms.sitesec: library
author: eross-msft
---

# Add multiple apps to your enterprise data protection (EDP) Protected Apps list
**Applies to:**

-   Windows 10 Insider Preview
-   Windows 10 Mobile Preview

<span style="color:#ED1C24;">[Some information relates to pre-released product, which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.]</span>

Add multiple apps to your enterprise data protection (EDP) **Protected Apps** list at the same time, by using the Microsoft Intune Custom URI functionality and AppLocker. For more info about how to create a custom URI using Intune, see [Windows 10 custom policy settings in Microsoft Intune](http://go.microsoft.com/fwlink/p/?LinkID=691330).

**Important**  
Results can be unpredictable if you configure your policy using both the UI and the Custom URI method together. We recommend using a single method for each policy.

If you only want to add one app at a time, you can follow the instructions in the [Create an enterprise data protection (EDP) policy using Microsoft Intune](create-edp-policy-using-intune.md) topic.

**To add Universal Windows Platform (UWP) apps**

1.  Go to the AppLocker UI by opening a command line window and running secpol.msc. The local security policy MMC snap-in opens showing the **Security Settings**.

2.  Double-click **Application Control Policies**, double-click **AppLocker**, right-click **Packaged app Rules**, and then click **Automatically Generate Rules**.<p>
The **Automatically Generate Packaged app Rules** wizard opens, letting you create EDP-protected app polices for all of the installed apps on the device or for packaged apps within a specific folder.

3.  In the **Folder and Permissions** screen, keep the default value of **Everyone** in the **User or security group that the rules will apply to** box.<p>
You want to keep this value because your EDP policy needs to apply to the device being managed, not a single user or group of users.

4.  Type the name you’ll use to tag the rules into the **Name to identify this set of rules** box, and then click **Next**.<p>
This name should be easily recognizable, such as *EDP_UniversalApps_Rules*.

5.  In the **Rules Preferences** screen, keep the default settings, and then click **Next** to start generating the rules.<p>
**Important**<br>You can also use **Path** rules instead of the **File hash** if you have concerns about unsigned files potentially changing the hash value if they're updated in the future.<p>
**Note**<br>We recommend that you use **Publisher** rules because they only work with apps you've specifically defined and they can be configured to not require updating simply because a new version came out.<p>If you can't use **Publisher** rules, we then recommend that you use **File hash** rules. **File hash** rules are a secure alternative that can be used on unsigned code. The primary disadvantage to **File hash** is that every time a binary changes (such as, through servicing updates or upgrades), you'll need to create a new rule.<p>Finally, there's **Path** rules. **Path** rules are easier to set up and maintain, but can let apps bypass enterprise data protection (EDP) by simply renaming and moving an unallowed file to match one of the apps on the **Protected App** list. For example, if your **Path** rule says to allow `%PROGRAMFILES%/NOTEPAD.EXE`, it becomes possible to rename DisallowedApp.exe to Notepad.exe, move it into the specified path above, and have it suddenly be allowed.

6.  In the **Review Rules** screen, look over your rules to make sure they’re right, and then click **Create** to add them to your collection of rules.

7.  In the left pane, right-click **AppLocker**, click **Export Policies**, go to where you want to save the XML file and type a file name, click **Save**, and then clear your AppLocker rules.<p>
**Important**<br>Be aware that what you're saving are the actual AppLocker rules using your local policy. You don't want to apply these rules to your employee devices, you just want to use them to create and export the XML content. You must delete the AppLocker rules before you apply your policy.

8.  Open the Intune administration console, and go to the **Policy** node, click **Add Policy** from the **Tasks** area, go to **Windows**, click the **Custom Configuration (Windows 10 Desktop and Mobile and later)** policy, click **Create and Deploy a Custom Policy**, and then click **Create Policy**.

9.  Type a name (required) and an optional description for your policy into the **Name** and **Description** boxes.

10. In the **Add one or more OMA-URI settings that control functionality on Windows devices** box, click **Add**.

11. Type your new **Setting Name** and **Description** into the associated boxes, keeping the default **Data Type** of **String**.

12. In the **OMA-URI** box, type `./Vendor/MSFT/AppLocker/EnterpriseDataProtection/<your_enterprise_name>/StoreApp EXE`

13. Open File Explorer, go to the location where you saved your new XML file, and open it using an XML editor, such as Notepad.

14. Copy the text that has a **Type** of Appx, within the **RuleCollection** tags, and then go back to Intune and paste the text into the **Value** box of the **Add or edit OMA-URI Setting** box. For example:

    ```
    <RuleCollection Type="Appx" EnforcementMode="Enabled"><your_xml_rules_here></RuleCollection>
    ```

15. Click **OK** to close the **Add or edit OMA-URI Setting** box, and then click **Save Policy**.<p>
After saving the policy, you’ll need to deploy it to your employee’s devices. For more info, see the [Deploy your enterprise data protection (EDP) policy](deploy-edp-policy-using-intune.md) topic.

**To add Classic Windows applications**

1.  Go to the AppLocker UI by opening a command line window and running secpol.msc. The local security policy MMC snap-in opens showing the **Security Settings**.

2.  Double-click **Application Control Policies**, double-click **AppLocker**, right-click **Executable Rules**, and then click **Automatically Generate Rules**.<p>
The **Automatically Generate Executable Rules** wizard opens, letting you create EDP-protected app polices by analyzing the files within a specific folder.

3.  In the **Folder and Permissions** screen, keep the default value of **Everyone** in the **User or security group that the rules will apply to** box.<p>
You want to keep this value because your EDP policy needs to apply to the device being managed, not a single user or group of users.

4.  Type the name you’ll use to tag the rules into the **Name to identify this set of rules** box, and then click **Next**.<p>
This name should be easily recognizable, such as *EDP_ClassicApps_Rules*.

5.  In the **Rules Preferences** screen, keep the default settings, and then click **Next** to start generating the rules.<p>
**Important**<br>You can also use **Path** rules instead of the **File hash** if you have concerns about unsigned files potentially changing the hash value if they're updated in the future.<p>
**Note**<br>We recommend that you use **Publisher** rules because they only work with apps you've specifically defined and they can be configured to not require updating simply because a new version came out.<p>If you can't use **Publisher** rules, we then recommend that you use **File hash** rules. **File hash** rules are a secure alternative that can be used on unsigned code. The primary disadvantage to **File hash** is that every time a binary changes (such as, through servicing updates or upgrades), you'll need to create a new rule.<p>Finally, there's **Path** rules. **Path** rules are easier to set up and maintain, but can let apps bypass enterprise data protection (EDP) by simply renaming and moving an unallowed file to match one of the apps on the **Protected App** list. For example, if your **Path** rule says to allow `%PROGRAMFILES%/NOTEPAD.EXE`, it becomes possible to rename DisallowedApp.exe to Notepad.exe, move it into the specified path above, and have it suddenly be allowed.

6.  In the **Review Rules** screen, look over your rules to make sure they’re right, and then click **Create** to add them to your collection of rules.

7.  In the left pane, right-click **AppLocker**, click **Export Policies**, go to where you want to save the XML file and type a file name, click **Save**, and then clear your AppLocker rules.<p>
**Important**<br>Be aware that what you're saving are the actual AppLocker rules using your local policy. You don't want to apply these rules to your employee devices, you just want to use them to create and export the XML content. You must delete the AppLocker rules before you apply your policy.

8.  Open the Intune administration console, and go to the **Policy** node, click **Add Policy** from the **Tasks** area, go to **Windows**, click the **Custom Configuration (Windows 10 Desktop and Mobile and later)** policy, click **Create and Deploy a Custom Policy**, and then click **Create Policy**.

9.  Type a name (required) and an optional description for your policy into the **Name** and **Description** boxes.

10. In the **Add one or more OMA-URI settings that control functionality on Windows devices** box, click **Add**.

11. Type your new **Setting Name** and **Description** into the associated boxes, keeping the default **Data Type** of **String**.

12. In the **OMA-URI** box, type `./Vendor/MSFT/AppLocker/EnterpriseDataProtection/<your_enterprise_name>/EXE`

13. Open File Explorer, go to the location where you saved your new XML file, and open it using an XML editor, such as Notepad.

14. Copy the text that has a **Type** of EXE, within in the **RuleCollection** tags, and then go back to Intune and paste the text into the **Value** box of the **Add or edit OMA-URI Setting** box. For example:

    ``` 
    <RuleCollection Type="Exe" EnforcementMode="Enabled"><your_xml_rules_here></RuleCollection>
    ```

15. Click **OK** to close the **Add or edit OMA-URI Setting** box, and then click **Save Policy**.<p>
After saving the policy, you’ll need to deploy it to your employee’s devices. For more info, see the [Deploy your enterprise data protection (EDP) policy](deploy-edp-policy-using-intune.md) topic.

##Related topics
- [Create an enterprise data protection (EDP) policy using Microsoft Intune](create-edp-policy-using-intune.md)
- [Deploy your enterprise data protection (EDP) policy](deploy-edp-policy-using-intune.md)
- [Create and deploy a VPN policy for enterprise data protection (EDP) using Microsoft Intune](create-vpn-and-edp-policy-using-intune.md)


 

 





