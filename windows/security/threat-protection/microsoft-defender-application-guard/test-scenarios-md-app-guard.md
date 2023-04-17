---
title: Testing scenarios with Microsoft Defender Application Guard
description: Suggested testing scenarios for Microsoft Defender Application Guard, showing how it works in both Standalone and Enterprise-managed mode.
ms.prod: windows-client
ms.technology: itpro-security
ms.localizationpriority: medium
author: vinaypamnani-msft
ms.author: vinpa
ms.reviewer: sazankha
manager: aaroncz
ms.date: 09/23/2022
ms.custom: asr
ms.topic: conceptual
---

# Application Guard testing scenarios

**Applies to:**

- Windows 10
- Windows 11

We've come up with a list of scenarios that you can use to test hardware-based isolation in your organization.

## Application Guard in standalone mode

You can see how an employee would use standalone mode with Application Guard.

### To test Application Guard in Standalone mode

1. [Install Application Guard](./install-md-app-guard.md).

2. Restart the device, start Microsoft Edge, and then select **New Application Guard window** from the menu.

    ![New Application Guard window setting option.](images/appguard-new-window.png)

3. Wait for Application Guard to set up the isolated environment.

    >[!NOTE]
    >Starting Application Guard too quickly after restarting the device might cause it to take a bit longer to load. However, subsequent starts should occur without any perceivable delays.

4. Go to an untrusted, but safe URL (for this example, we used msn.com) and view the new Microsoft Edge window, making sure you see the Application Guard visual cues.

    ![Untrusted website running in Application Guard.](images/appguard-visual-cues.png)

## Application Guard in Enterprise-managed mode

How to install, set up, turn on, and configure Application Guard for Enterprise-managed mode.

### Install, set up, and turn on Application Guard

Before you can use Application Guard in managed mode, you must install Windows 10 Enterprise edition, version 1709, and Windows 11 which includes the functionality. Then, you must use Group Policy to set up the required settings.

1. [Install Application Guard](./install-md-app-guard.md#install-application-guard).

2. Restart the device, and then start Microsoft Edge.

3. Set up the Network Isolation settings in Group Policy:

   a.  Select the **Windows** icon, type `Group Policy`, and then select **Edit Group Policy**.

   b.  Go to the **Administrative Templates\Network\Network Isolation\Enterprise resource domains hosted in the cloud** setting.

   c.  For the purposes of this scenario, type `.microsoft.com` into the **Enterprise cloud resources** box.

   ![Group Policy editor with Enterprise cloud resources setting.](images/appguard-gp-network-isolation.png)

   d. Go to the **Administrative Templates\Network\Network Isolation\Domains categorized as both work and personal** setting.

   e. For the purposes of this scenario, type `bing.com` into the **Neutral resources** box.

   ![Group Policy editor with Neutral resources setting.](images/appguard-gp-network-isolation-neutral.png)

4. Go to the **Computer Configuration\Administrative Templates\Windows Components\Microsoft Defender Application Guard\Turn on Microsoft Defender Application Guard in Managed Mode** setting.

5. Select **Enabled**, choose Option **1**, and select **OK**.

   ![Group Policy editor with Turn On/Off setting.](images/appguard-gp-turn-on.png)

   >[!NOTE]
   >Enabling this setting verifies that all the necessary settings are properly configured on your employee devices, including the network isolation settings set earlier in this scenario.

6. Start Microsoft Edge and type `https://www.microsoft.com`.

    After you submit the URL, Application Guard determines the URL is trusted because it uses the domain you've marked as trusted and shows the site directly on the host PC instead of in Application Guard.

    ![Trusted website running on Microsoft Edge.](images/appguard-turned-on-with-trusted-site.png)

7. In the same Microsoft Edge browser, type any URL that isn't part of your trusted or neutral site lists.

   After you submit the URL, Application Guard determines the URL is untrusted and redirects the request to the hardware-isolated environment.

   ![Untrusted website running in Application Guard.](images/appguard-visual-cues.png)

### Customize Application Guard

Application Guard lets you specify your configuration, allowing you to create the proper balance between isolation-based security and productivity for your employees.

Application Guard provides the following default behavior for your employees:

- No copying and pasting between the host PC and the isolated container.

- No printing from the isolated container.

- No data persistence from one isolated container to another isolated container.

You have the option to change each of these settings to work with your enterprise from within Group Policy.

**Applies to:**

- Windows 10 Enterprise or Pro editions, version 1803 or later
- Windows 11 Enterprise or Pro editions

#### Copy and paste options

1. Go to the **Computer Configuration\Administrative Templates\Windows Components\Microsoft Defender Application Guard\Configure Microsoft Defender Application Guard clipboard settings**.

2. Select **Enabled** and select **OK**.

    ![Group Policy editor clipboard options.](images/appguard-gp-clipboard.png)

3. Choose how the clipboard works:

    - Copy and paste from the isolated session to the host PC

    - Copy and paste from the host PC to the isolated session

    - Copy and paste both directions

4. Choose what can be copied:

    - Only text can be copied between the host PC and the isolated container.

    - Only images can be copied between the host PC and the isolated container.

    - Both text and images can be copied between the host PC and the isolated container.

5. Select **OK**.

#### Print options

1. Go to the **Computer Configuration\Administrative Templates\Windows Components\Microsoft Defender Application Guard\Configure Microsoft Defender Application Guard print** settings.

2. Select **Enabled** and select **OK**.

    ![Group Policy editor Print options.](images/appguard-gp-print.png)

3. Based on the list provided in the setting, choose the number that best represents what type of printing should be available to your employees. You can allow any combination of local, network, PDF, and XPS printing.

4. Select **OK**.

#### Data persistence options

1. Go to the **Computer Configuration\Administrative Templates\Windows Components\Microsoft Defender Application Guard\Allow data persistence for Microsoft Defender Application Guard** setting.

2. Select **Enabled** and select **OK**.

    ![Group Policy editor Data Persistence options.](images/appguard-gp-persistence.png)

3. Open Microsoft Edge and browse to an untrusted, but safe URL.

    The website opens in the isolated session.

4. Add the site to your **Favorites** list and then close the isolated session.

5. Sign out and back in to your device, opening Microsoft Edge in Application Guard again.

    The previously added site should still appear in your **Favorites** list.

    > [!NOTE]
    > Starting with Windows 11, version 22H2, data persistence is disabled by default. If you don't allow or turn off data persistence, restarting a device or signing in and out of the isolated container triggers a recycle event. This action discards all generated data, such as session cookies and Favorites, and removes the data from Application Guard. If you turn on data persistence, all employee-generated artifacts are preserved across container recycle events. However, these artifacts only exist in the isolated container and aren't shared with the host PC. This data persists after restarts and even through build-to-build upgrades of Windows 10 and Windows 11.
    >
    > If you turn on data persistence, but later decide to stop supporting it for your employees, you can use our Windows-provided utility to reset the container and to discard any personal data.
    > <!--- Inline HTML is used on the next several lines so that the ordinal numbers will be rendered correctly; Markdown would otherwise try to render them as letters (a, b, c...) because they would be treated as a nested list --->
    > **To reset the container, follow these steps:**<br/>1. Open a command-line program and navigate to Windows/System32.<br/>2. Type `wdagtool.exe cleanup`. The container environment is reset, retaining only the employee-generated data.<br/>3. Type `wdagtool.exe cleanup RESET_PERSISTENCE_LAYER`. The container environment is reset, including discarding all employee-generated data.
    >
    > _Microsoft Edge version 90 or later no longer supports `RESET_PERSISTENCE_LAYER`._

**Applies to:**

- Windows 10 Enterprise or Pro editions, version 1803
- Windows 11 Enterprise or Pro editions, version 21H2. Data persistence is disabled by default in Windows 11, version 22H2 and later.

#### Download options

1. Go to the **Computer Configuration\Administrative Templates\Windows Components\Microsoft Defender Application Guard\Allow files to download and save to the host operating system from Microsoft Defender Application Guard** setting.

2. Select **Enabled** and select **OK**.

    ![Group Policy editor Download options.](images/appguard-gp-download.png)

3. Sign out and back in to your device, opening Microsoft Edge in Application Guard again.

4. Download a file from Microsoft Defender Application Guard.

5. Check to see the file has been downloaded into This PC > Downloads > Untrusted files.

#### Hardware acceleration options

1. Go to the **Computer Configuration\Administrative Templates\Windows Components\Microsoft Defender Application Guard\Allow hardware-accelerated rendering for Microsoft Defender Application Guard** setting.

2. Select **Enabled** and Select **OK**.

    ![Group Policy editor hardware acceleration options.](images/appguard-gp-vgpu.png)

3. Once you have enabled this feature, open Microsoft Edge and browse to an untrusted, but safe URL with video, 3D, or other graphics-intensive content. The website opens in an isolated session.

4. Assess the visual experience and battery performance.

#### Camera and microphone options

1. Go to the **Computer Configuration\Administrative Templates\Windows Components\Microsoft Defender Application Guard\Allow camera and microphone access in Microsoft Defender Application Guard** setting.

2. Select **Enabled** and select **OK**.

    ![Group Policy editor Camera and microphone options.](images/appguard-gp-allow-camera-and-mic.png)

3. Sign out and back in to your device, opening Microsoft Edge in Application Guard again.

4. Open an application with video or audio capability in Edge.

5. Check that the camera and microphone work as expected.

#### Root certificate sharing options

1. Go to the **Computer Configuration\Administrative Templates\Windows Components\Microsoft Defender Application Guard\Allow Microsoft Defender Application Guard to use Root Certificate Authorities from the user's device** setting.

2. Select **Enabled**, copy the thumbprint of each certificate to share, separated by a comma, and select **OK**.

    ![Group Policy editor Root certificate options.](images/appguard-gp-allow-root-certificates.png)

3. Sign out and back in to your device, opening Microsoft Edge in Application Guard again.

## Application Guard Extension for third-party web browsers

The [Application Guard Extension](md-app-guard-browser-extension.md) available for Chrome and Firefox allows Application Guard to protect users even when they are running a web browser other than Microsoft Edge or Internet Explorer.

Once a user has the extension and its companion app installed on their enterprise device, you can run through the following scenarios.

1. Open either Firefox or Chrome, whichever browser you have the extension installed on.

2. Navigate to an organizational website. In other words, an internal website maintained by your organization. You might see this evaluation page for an instant before the site is fully loaded.
   ![The evaluation page displayed while the page is being loaded, explaining that the user must wait.](images/app-guard-chrome-extension-evaluation-page.png)

3. Navigate to a non-enterprise, external website site, such as [www.bing.com](https://www.bing.com). The site should be redirected to Microsoft Defender Application Guard Edge.
   ![A non-enterprise website being redirected to an Application Guard container -- the text displayed explains that the page is being opened in Application Guard for Microsoft Edge.](images/app-guard-chrome-extension-launchIng-edge.png)

4. Open a new Application Guard window, by selecting the Microsoft Defender Application Guard icon, then **New Application Guard Window**
   ![The "New Application Guard Window" option is highlighted in red](images/app-guard-chrome-extension-new-app-guard-page.png)
