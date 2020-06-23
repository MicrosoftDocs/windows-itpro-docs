---
title: Setup the Microsoft Defender ATP for macOS policies in Jamf Pro
description: Learn how to setup the Microsoft Defender ATP for macOS policies in Jamf Pro
keywords: microsoft, defender, atp, mac, installation, deploy, uninstallation, intune, jamfpro, macos, catalina, mojave, high sierra
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: conceptual
---

# Setup the Microsoft Defender ATP for macOSpolicies in Jamf Pro

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP) for Mac](microsoft-defender-atp-mac.md)

1. In the Jamf Pro dashboard, navigate to **Configuration Profiles**. 

2. Select **New**.

    ![Image of configuration policies](images/jamfpro-policies.png)

3. In [Microsoft Defender Security Center](https://securitycenter.microsoft.com ), navigate to **Settings > Onboarding**. 

4. Select macOS as the operating system and Mobile Device Management / Microsoft Intune as the deployment method.

    ![Image of Microsoft Defender Security Center](images/onboarding-macos.png)

5. Select **Download onboarding package** (WindowsDefenderATPOnboardingPackage.zip).

6. Extract `WindowsDefenderATPOnboardingPackage.zip` such as `WindowsDefenderATPOnboardingPackage_macOS_MDM_contoso`.

7. Copy the file from `C:\Users\JaneDoe_or_JohnDoe.contoso\Downloads\WindowsDefenderATPOnboardingPackage_macOS_MDM_contoso\jamf\WindowsDefenderATPOnboarding.plist`.

8. Use the following Microsoft Defender ATP configuration settings:

    - enableRealTimeProtection
    - passiveMode
    
    >[!NOTE]
    >Not turned on by default, if you are planning to run a third-party AV for macOS, set it to `true`.

    - exclusions
    - excludedPath
    - excludedFileExtension
    - excludedFileName
    - exclusionsMergePolicy
    - allowedThreats
    
    >[!NOTE]
    >EICAR is on the sample, if you are going through a proof-of-concept, remove it especially if you are testing EICAR.
        
    - disallowedThreatActions
    - potentially_unwanted_application
    - archive_bomb
    - cloudService
    - automaticSampleSubmission
    - tags
    - hideStatusMenuIcon
    
     For information, see [Property list for Jamf configuration profile](mac-preferences.md#property-list-for-jamf-configuration-profile).

```XML
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>antivirusEngine</key>
    <dict>
        <key>enableRealTimeProtection</key>
        <true/>
        <key>passiveMode</key>
        <false/>
        <key>exclusions</key>
        <array>
            <dict>
                <key>$type</key>
                <string>excludedPath</string>
                <key>isDirectory</key>
                <false/>
                <key>path</key>
                <string>/var/log/system.log</string>
            </dict>
            <dict>
                <key>$type</key>
                <string>excludedPath</string>
                <key>isDirectory</key>
                <true/>
                <key>path</key>
                <string>/home</string>
            </dict>
            <dict>
                <key>$type</key>
                <string>excludedFileExtension</string>
                <key>extension</key>
                <string>pdf</string>
            </dict>
            <dict>
                <key>$type</key>
                <string>excludedFileName</string>
                <key>name</key>
                <string>cat</string>
            </dict>
        </array>
        <key>exclusionsMergePolicy</key>
        <string>merge</string>
        <key>allowedThreats</key>
        <array>
            <string>EICAR-Test-File (not a virus)</string>
        </array>
        <key>disallowedThreatActions</key>
        <array>
            <string>allow</string>
            <string>restore</string>
        </array>
        <key>threatTypeSettings</key>
        <array>
            <dict>
                <key>key</key>
                <string>potentially_unwanted_application</string>
                <key>value</key>
                <string>block</string>
            </dict>
            <dict>
                <key>key</key>
                <string>archive_bomb</string>
                <key>value</key>
                <string>audit</string>
            </dict>
        </array>
        <key>threatTypeSettingsMergePolicy</key>
        <string>merge</string>
    </dict>
    <key>cloudService</key>
    <dict>
        <key>enabled</key>
        <true/>
        <key>diagnosticLevel</key>
        <string>optional</string>
        <key>automaticSampleSubmission</key>
        <true/>
    </dict>
    <key>edr</key>
    <dict>
        <key>tags</key>
        <array>
            <dict>
                <key>key</key>
                <string>GROUP</string>
                <key>value</key>
                <string>ExampleTag</string>
            </dict>
        </array>
    </dict>
    <key>userInterface</key>
    <dict>
        <key>hideStatusMenuIcon</key>
        <false/>
    </dict>
</dict>
</plist>
```

10. Configure the notification settings (macOS 10.15 (Catalina) or newer). For more information, see [Notification settings](mac-install-with-jamf.md#notification-settings).

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0"><dict><key>PayloadContent</key><array><dict><key>NotificationSettings</key><array><dict><key>AlertType</key><integer>2</integer><key>BadgesEnabled</key><true/><key>BundleIdentifier</key><string>com.microsoft.autoupdate2</string><key>CriticalAlertEnabled</key><false/><key>GroupingType</key><integer>0</integer><key>NotificationsEnabled</key><true/><key>ShowInLockScreen</key><false/><key>ShowInNotificationCenter</key><true/><key>SoundsEnabled</key><true/></dict><dict><key>AlertType</key><integer>2</integer><key>BadgesEnabled</key><true/><key>BundleIdentifier</key><string>com.microsoft.wdavtray</string><key>CriticalAlertEnabled</key><false/><key>GroupingType</key><integer>0</integer><key>NotificationsEnabled</key><true/><key>ShowInLockScreen</key><false/><key>ShowInNotificationCenter</key><true/><key>SoundsEnabled</key><true/></dict></array><key>PayloadDescription</key><string/><key>PayloadDisplayName</key><string>notifications</string><key>PayloadEnabled</key><true/><key>PayloadIdentifier</key><string>BB977315-E4CB-4915-90C7-8334C75A7C64</string><key>PayloadOrganization</key><string>Microsoft</string><key>PayloadType</key><string>com.apple.notificationsettings</string><key>PayloadUUID</key><string>BB977315-E4CB-4915-90C7-8334C75A7C64</string><key>PayloadVersion</key><integer>1</integer></dict></array><key>PayloadDescription</key><string/><key>PayloadDisplayName</key><string>mdatp - allow notifications</string><key>PayloadEnabled</key><true/><key>PayloadIdentifier</key><string>85F6805B-0106-4D23-9101-7F1DFD5EA6D6</string><key>PayloadOrganization</key><string>Microsoft</string><key>PayloadRemovalDisallowed</key><false/><key>PayloadScope</key><string>System</string><key>PayloadType</key><string>Configuration</string><key>PayloadUUID</key><string>85F6805B-0106-4D23-9101-7F1DFD5EA6D6</string><key>PayloadVersion</key><integer>1</integer></dict></plist>
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>ChannelName</key>
	<string>InsiderFast</string>
	<key>HowToCheck</key>
	<string>AutomaticDownload</string>
	<key>EnableCheckForUpdatesButton</key>
	<true/>
    <key>DisableInsiderCheckbox</key>
    <false/>
	<key>SendAllTelemetryEnabled</key>
	<true/>
</dict>
</plist>

```

Save it as `AutoEnable_notifications_for_MDATP_AutoUpdate.mobileconfig` or `MDATP_MDAV_notification_settings.plist`.


12. Configure Microsoft AutoUpdate (MAU).

    - JAMF - Set preferences for Microsoft AutoUpdate. For more infomation, see [JAMF](mac-updates.md#jamf).
    - Save the file as e.g. MDATP_MDAV_MAU_settings.plist

    >[!IMPORTANT]
    >Set the Preference Domain to `com.microsoft.autoupdate2`

    Add path to the location of `com.microsoft.autoupdate2.plist`

    `plutil -lint com.microsoft.autoupdate2.plist`
    `com.microsoft.autoupdate2.plist: OK`

13. Grant full disk access to Microsoft Defender ATP. 
    
    Privacy Preferences Policy Control (TCC,  Full Disk Access for macOS 10.15 (Catalina) and newer).

    For more information, see [Privacy preferences policy control](mac-install-with-jamf.md#privacy-preferences-policy-control).

    a. Select **Options > Privacy Preferences Policy Control**.

    b. Use any identifier and identifier type = Bundle.

    c. Set Code Requirement to identifier 'com.microsoft.wdav' and `anchor apple generic and certificate 1[field.1.2.840.113635.100.6.2.6] /* exists */ and certificate leaf[field.1.2.840.113635.100.6.1.13] /* exists */ and certificate leaf[subject.OU] = UBF8T346G9`.

    d. Set app or service to `SystemPolicyAllFiles` and access to `Allow`.

14. Approve Kernel Extension for Microsoft Defender ATP.

    a. In **Computers > Configuration Profiles select Options > Approved Kernel Extensions**.
  
    b. Use **UBF8T346G9** for **Team Id**.


## Step 1: Onboard the package

1. Locate the file `WindowsDefenderATPOnboarding.plist`.

    ![Image of file](images/plist-onboarding-file.png)

2. In the Jamf Pro dashboard, select **New**.

    ![Image of Jamf Pro dashboard](images/jamf-pro-configure-profile.png)

3. Enter the following details:

   **General**
   - Name: MDATP onboarding for macOS
   - Description: MDATP EDR onboarding for macOS
   - Category: None
   - Distribution Method: Install Automatically
   - Level: Computer Level

   **General**
   - Select **Application & Custom Settings**
   - Select **Configure**.

    ![Image of configuration profile](images/jamfpro-mac-profile.png)

4. Select **Upload File (PLIST file)**.

    ![Image of profile](images/jamfpro-plist.png)

5. Select **Upload File (PLIST file) then in **Preference Domain** enter: `com.microsoft.wdav.atp`. 

    ![Image of upload file](images/jamfpro-plist-upload.png)

    ![Image of upload file](images/jamfpro-plist-file.png)

6. Select **Open** and select the onboarding file.

    ![Image of onboarding file](images/jamfpro-plist-file-onboard.png)

7. Select **Upload**. 

    ![Image of uploading plist file](images/jamfpro-upload-plist.png)


8. Select the **Scope** tab.

    ![Image of scope tab](images/jamfpro-scope-tab.png)

9. Select the target computers.

    ![Image of target computers](images/jamfpro-target-computer.png)

    ![Image of target computers](images/jamfpro-targets.png) 

10. Select **Save**.

    ![Image of target computers](images/jamfpro-deployment-target.png)

    ![Image of target computers selected](images/jamfpro-target-selected.png)

11. Select **Done**.

    ![Image of target computers](images/jamfpro-target-group.png)

    ![List of configuration profiles](images/jamfpro-configuration-policies.png)

## Step 2: Configure Microsoft Defender ATP settings

1. In the Jamf Pro dashboard, select **General**.

2. Enter the following values:

  - Name: MDATP MDAV configuration settings
  - Description:\<blank\>
  - Category: None (default)
  - Distribution Method: Install Automatically(default)
  - Level: Computer Level(default)

    ![Image of configuration settings](images/3160906404bc5a2edf84d1d015894e3b.png)

3. Select **Application & Custom Settings** > **Configure**.

    ![Image of configuration settings](images/e1cc1e48ec9d5d688087b4d771e668d2.png)

4. In **Application & Custom Settings**, select the radio button **Upload File (PLIST file)**.

    ![Image of configuration settings](images/6f85269276b2278eca4bce84f935f87b.png)

5. In **Preferences Domain**, enter `com.microsoft.wdav`.

    ![Image of configuration settings](images/db15f147dd959e872a044184711d7d46.png)

6. Select **Upload PLIST File**.

    ![Image of configuration settings](images/526e978761fc571cca06907da7b01fd6.png)

    ![Image of configuration settings](images/d8254adf4bd30290f9a8a0c131830a1f.png)

7. Select **Choose File**.

    ![Image of configuration settings](images/98acea3750113b8dbab334296e833003.png)

8. Select the **MDATP_MDAV_configuration_settings.plist**.

9. Select **Open**.

    ![Image of configuration settings](images/0adb21c13206861ba9b30a879ade93d3.png)

    ![Image of configuration settings](images/f624de59b3cc86e3e2d32ae5de093e02.png)

    >[!NOTE]
    >If you end-up uploading the Intune file, you get the following error:<br>
    >![Image of configuration settings](images/8e69f867664668796a3b2904896f0436.png)


10. Select **Upload**. 

    ![Image of configuration settings](images/1b6b5a4edcb42d97f1e70a6a0fa48e3a.png)

11. Select **Save**.

    ![Image of configuration settings](images/33e2b2a1611fdddf6b5b79e54496e3bb.png)

    ![Image of configuration settings](images/a422e57fe8d45689227e784443e51bd1.png)

12. Select the **Scope** tab, then select **Add**.

    ![Image of configuration settings](images/9fc17529e5577eefd773c658ec576a7d.png)

13. Select **Contoso's Machine Group**. 

14. Select **Add**, then select **Save**.

    ![Image of configuration settings](images/cf30438b5512ac89af1d11cbf35219a6.png)

    ![Image of configuration settings](images/6f093e42856753a3955cab7ee14f12d9.png)

15. Select **Done**. You'll see the new **Configuration profile**.

    ![Image of configuration settings](images/dd55405106da0dfc2f50f8d4525b01c8.png)


## Step 3: Configure notifications settings

These steps are applicable of macOS 10.15 (Catalina) or newer.

1. In the Jamf Pro dashboard, select **General**. 
    
    ![Image of configuration settings](images/c9820a5ff84aaf21635c04a23a97ca93.png)

2. Enter the following values:

  - Name: MDATP MDAV Notification settings
  - Description: macOS 10.15 (Catalina) or newer
  - Category: None (default)
  - Distribution Method: Install Automatically(default)
  - Level: Computer Level(default)

    ![Image of configuration settings](images/abccba0b620cec06b03d219832667fe1.png)

3. In **Application & Custom Settings**, select the radio button **Upload File (PLIST file)**.

    ![Image of configuration settings](images/7f9138053dbcbf928e5182ee7b295ebe.png)
 

4. Select **Choose File** > **MDATP_MDAV_Notification_Settings.plist**.


    ![Image of configuration settings](images/4bac6ce277aedfb4a674f2d9fcb2599a.png)


    ![Image of configuration settings](images/20e33b98eb54447881dc6c89e58b890f.png)

5. Select **Open** > **Upload**.

    ![Image of configuration settings](images/7697c33b9fd376ae5a8023d01f9d3857.png)


    ![Image of configuration settings](images/2bda9244ec25d1526811da4ea91b1c86.png)

6. Select the **Scope** tab, then select **Add**.

    ![Image of configuration settings](images/441aa2ecd36abadcdd8aed03556080b5.png)



7. Select **Contoso's Machine Group**. 

8. Select **Add**, then select **Save**.
    
    ![Image of configuration settings](images/09a275e321268e5e3ac0c0865d3e2db5.png)

    
    ![Image of configuration settings](images/4d2d1d4ee13d3f840f425924c3df0d51.png)

9. Select **Done**. You'll see the new **Configuration profile**.
    ![A screenshot of a social media post Description automatically generated](images/633ad26b8bf24ec683c98b2feb884bdf.png)

## Step 4: Configure Microsoft AutoUPdate (MAU)


