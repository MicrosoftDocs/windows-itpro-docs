---
title: Set up the Microsoft Defender ATP for macOS policies in Jamf Pro
description: Learn how to set up the Microsoft Defender ATP for macOS policies in Jamf Pro
keywords: policies, microsoft, defender, atp, mac, installation, deploy, uninstallation, intune, jamfpro, macos, catalina, mojave, high sierra
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

# Set up the Microsoft Defender ATP for macOS policies in Jamf Pro

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP) for Mac](microsoft-defender-atp-mac.md)

This page will guide you through the steps you need to take to set up macOS policies in Jamf Pro.

You'll need to take the following steps:

1. [Get the Microsoft Defender ATP onboarding package](#step-1-get-the-microsoft-defender-atp-onboarding-package)

2. [Create a configuration profile in Jamf Pro using the onboarding package](#step-2-create-a-configuration-profile-in-jamf-pro-using-the-onboarding-package)

3. [Configure Microsoft  Defender ATP settings](#step-3-configure-microsoft-defender-atp-settings)

4. [Configure Microsoft Defender ATP notification settings](#step-4-configure-notifications-settings)

5. [Configure Microsoft AutoUpdate (MAU)](#step-5-configure-microsoft-autoupdate-mau)

6. [Grant full disk access to Microsoft Defender ATP](#step-6-grant-full-disk-access-to-microsoft-defender-atp)

7. [Approve Kernel extension for Microsoft Defender ATP](#step-7-approve-kernel-extension-for-microsoft-defender-atp)

8. [Schedule scans with Microsoft Defender ATP for Mac](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/mac-schedule-scan-atp)

9. [Deploy Microsoft Defender ATP for macOS](#step-9-deploy-microsoft-defender-atp-for-macos)


## Step 1: Get the Microsoft Defender ATP onboarding package

1. In [Microsoft Defender Security Center](https://securitycenter.microsoft.com ), navigate to **Settings > Onboarding**. 

2. Select macOS as the operating system and Mobile Device Management / Microsoft Intune as the deployment method.

    ![Image of Microsoft Defender Security Center](images/onboarding-macos.png)

3. Select **Download onboarding package** (WindowsDefenderATPOnboardingPackage.zip).

4. Extract `WindowsDefenderATPOnboardingPackage.zip`.

5. Copy the file to your preferred location. For example,  `C:\Users\JaneDoe_or_JohnDoe.contoso\Downloads\WindowsDefenderATPOnboardingPackage_macOS_MDM_contoso\jamf\WindowsDefenderATPOnboarding.plist`.


## Step 2: Create a configuration profile in Jamf Pro using the onboarding package

1. Locate the file `WindowsDefenderATPOnboarding.plist` from the previous section.

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

4. In **Application & Custom Settings** select **Configure**.

    ![Image of configuration profile](images/jamfpro-mac-profile.png)

5. Select **Upload File (PLIST file)** then in **Preference Domain** enter: `com.microsoft.wdav.atp`. 

    ![Image of upload file](images/jamfpro-plist-upload.png)

    ![Image of upload file](images/jamfpro-plist-file.png)

7. Select **Open** and select the onboarding file.

    ![Image of onboarding file](images/jamfpro-plist-file-onboard.png)

8. Select **Upload**. 

    ![Image of uploading plist file](images/jamfpro-upload-plist.png)


9. Select the **Scope** tab.

    ![Image of scope tab](images/jamfpro-scope-tab.png)

10. Select the target computers.

    ![Image of target computers](images/jamfpro-target-computer.png)

    ![Image of target computers](images/jamfpro-targets.png) 

11. Select **Save**.

    ![Image of target computers](images/jamfpro-deployment-target.png)

    ![Image of target computers selected](images/jamfpro-target-selected.png)

12. Select **Done**.

    ![Image of target computers](images/jamfpro-target-group.png)

    ![List of configuration profiles](images/jamfpro-configuration-policies.png)

## Step 3: Configure Microsoft Defender ATP settings

1.  Use the following Microsoft Defender ATP configuration settings:

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

2. Save the file as `MDATP_MDAV_configuration_settings.plist`.


3.  In the Jamf Pro dashboard, select **General**.

    ![Image of Jamf Pro dashboard](images/644e0f3af40c29e80ca1443535b2fe32.png)

4. Enter the following details:

    **General**
  - Name: MDATP MDAV configuration settings
  - Description:\<blank\>
  - Category: None (default)
  - Distribution Method: Install Automatically(default)
  - Level: Computer Level(default)

    ![Image of configuration settings](images/3160906404bc5a2edf84d1d015894e3b.png)

5. In **Application & Custom Settings** select **Configure**.

    ![Image of configuration settings](images/e1cc1e48ec9d5d688087b4d771e668d2.png)

6. Select **Upload File (PLIST file)**.

    ![Image of configuration settings](images/6f85269276b2278eca4bce84f935f87b.png)

7. In **Preferences Domain**, enter `com.microsoft.wdav`, then select  **Upload PLIST File**.

    ![Image of configuration settings](images/db15f147dd959e872a044184711d7d46.png)

8. Select **Choose File**.

    ![Image of configuration settings](images/526e978761fc571cca06907da7b01fd6.png)

9. Select the **MDATP_MDAV_configuration_settings.plist**, then select **Open**.

    ![Image of configuration settings](images/98acea3750113b8dbab334296e833003.png)

10. Select **Upload**.

    ![Image of configuration settings](images/0adb21c13206861ba9b30a879ade93d3.png)

    ![Image of configuration settings](images/f624de59b3cc86e3e2d32ae5de093e02.png)

    >[!NOTE]
    >If you happen to upload the Intune file, you'll get the following error:<br>
    >![Image of configuration settings](images/8e69f867664668796a3b2904896f0436.png)


11. Select **Save**. 

    ![Image of configuration settings](images/1b6b5a4edcb42d97f1e70a6a0fa48e3a.png)

12. The file is uploaded.

    ![Image of configuration settings](images/33e2b2a1611fdddf6b5b79e54496e3bb.png)

    ![Image of configuration settings](images/a422e57fe8d45689227e784443e51bd1.png)

13. Select the **Scope** tab.

    ![Image of configuration settings](images/9fc17529e5577eefd773c658ec576a7d.png)

14. Select **Contoso's Machine Group**. 

15. Select **Add**, then select **Save**.

    ![Image of configuration settings](images/cf30438b5512ac89af1d11cbf35219a6.png)

    ![Image of configuration settings](images/6f093e42856753a3955cab7ee14f12d9.png)

16. Select **Done**. You'll see the new **Configuration profile**.

    ![Image of configuration settings](images/dd55405106da0dfc2f50f8d4525b01c8.png)


## Step 4: Configure notifications settings

These steps are applicable of macOS 10.15 (Catalina) or newer.

1. Use the following Microsoft Defender ATP notification configuration settings:

```xml
<?xml version="1.0" encoding="UTF-8"?><!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
    <dict>
        <key>PayloadContent</key>
            <array>
                <dict>
                    <key>NotificationSettings</key>
                    <array>
                        <dict>
                            <key>AlertType</key>
                            <integer>2</integer>
                            <key>BadgesEnabled</key>
                            <true/>
                            <key>BundleIdentifier</key>
                            <string>com.microsoft.autoupdate2</string>
                            <key>CriticalAlertEnabled</key>
                            <false/><key>GroupingType</key>
                            <integer>0</integer>
                            <key>NotificationsEnabled</key>
                            <true/>
                            <key>ShowInLockScreen</key>
                            <false/>
                            <key>ShowInNotificationCenter</key>
                            <true/>
                            <key>SoundsEnabled</key>
                            <true/>
                        </dict>
                        <dict>
                            <key>AlertType</key>
                            <integer>2</integer><key>BadgesEnabled</key>
                            <true/><key>BundleIdentifier</key>
                            <string>com.microsoft.wdav.tray</string>
                            <key>CriticalAlertEnabled</key>
                            <false/><key>GroupingType</key>
                            <integer>0</integer>
                            <key>NotificationsEnabled</key>
                            <true/><key>ShowInLockScreen</key>
                            <false/><key>ShowInNotificationCenter</key>
                            <true/><key>SoundsEnabled</key>
                            <true/>
                        </dict>
                    </array>
                    <key>PayloadDescription</key>
                    <string/><key>PayloadDisplayName</key>
                    <string>notifications</string>
                    <key>PayloadEnabled</key>
                    <true/><key>PayloadIdentifier</key>
                    <string>BB977315-E4CB-4915-90C7-8334C75A7C64</string>
                    <key>PayloadOrganization</key>
                    <string>Microsoft</string>
                    <key>PayloadType</key>
                    <string>com.apple.notificationsettings</string>
                    <key>PayloadUUID</key>
                    <string>BB977315-E4CB-4915-90C7-8334C75A7C64</string>
                    <key>PayloadVersion</key>
                    <integer>1</integer>
                </dict>
            </array>
            <key>PayloadDescription</key>
            <string/><key>PayloadDisplayName</key>
            <string>mdatp - allow notifications</string>
            <key>PayloadEnabled</key><true/>
            <key>PayloadIdentifier</key>
            <string>85F6805B-0106-4D23-9101-7F1DFD5EA6D6</string>
            <key>PayloadOrganization</key>
            <string>Microsoft</string>
            <key>PayloadRemovalDisallowed</key>
            <false/><key>PayloadScope</key>
            <string>System</string>
            <key>PayloadType</key>
            <string>Configuration</string>
            <key>PayloadUUID</key>
            <string>85F6805B-0106-4D23-9101-7F1DFD5EA6D6</string>
            <key>PayloadVersion</key>
            <integer>1</integer>
    </dict>
 </plist>   
   ```

2.  Save it as `MDATP_MDAV_notification_settings.plist`.

3. In the Jamf Pro dashboard, select **General**. 
       
4. Enter the following details:

    **General** 
  - Name: MDATP MDAV Notification settings
  - Description: macOS 10.15 (Catalina) or newer
  - Category: None (default)
  - Distribution Method: Install Automatically(default)
  - Level: Computer Level(default)

    ![Image of configuration settings](images/c9820a5ff84aaf21635c04a23a97ca93.png)


5. Select **Upload File (PLIST file)**.

    ![Image of configuration settings](images/7f9138053dbcbf928e5182ee7b295ebe.png)
 

6. Select **Choose File** > **MDATP_MDAV_Notification_Settings.plist**.


    ![Image of configuration settings](images/4bac6ce277aedfb4a674f2d9fcb2599a.png)


    ![Image of configuration settings](images/20e33b98eb54447881dc6c89e58b890f.png)

7. Select **Open** > **Upload**.

    ![Image of configuration settings](images/7697c33b9fd376ae5a8023d01f9d3857.png)


    ![Image of configuration settings](images/2bda9244ec25d1526811da4ea91b1c86.png)

8. Select the **Scope** tab, then select **Add**.

    ![Image of configuration settings](images/441aa2ecd36abadcdd8aed03556080b5.png)


9. Select **Contoso's Machine Group**. 

10. Select **Add**, then select **Save**.
    
    ![Image of configuration settings](images/09a275e321268e5e3ac0c0865d3e2db5.png)

    
    ![Image of configuration settings](images/4d2d1d4ee13d3f840f425924c3df0d51.png)

11. Select **Done**. You'll see the new **Configuration profile**.
    ![Image of configuration setting](images/633ad26b8bf24ec683c98b2feb884bdf.png)

## Step 5: Configure Microsoft AutoUpdate (MAU)

1. Use the following Microsoft Defender ATP configuration settings:

```XML
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>ChannelName</key>
	<string>Production</string>
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

2. Save it as `MDATP_MDAV_MAU_settings.plist`.

3. In the Jamf Pro dashboard, select **General**. 

    ![Image of configuration setting](images/eaba2a23dd34f73bf59e826217ba6f15.png)

4. Enter the following details:

    **General** 
  - Name: MDATP MDAV MAU settings
  - Description: Microsoft AutoUpdate settings for MDATP for macOS
  - Category: None (default)
  - Distribution Method: Install Automatically(default)
  - Level: Computer Level(default)

5. In **Application & Custom Settings** select **Configure**.

    ![Image of configuration setting](images/1f72e9c15eaafcabf1504397e99be311.png)

6. Select **Upload File (PLIST file)**.

    ![Image of configuration setting](images/1213872db5833aa8be535da57653219f.png)  

7. In **Preference Domain** enter: `com.microsoft.autoupdate2`, then select **Upload PLIST File**.

    ![Image of configuration setting](images/1213872db5833aa8be535da57653219f.png)

8. Select **Choose File**.

    ![Image of configuration setting](images/335aff58950ce62d1dabc289ecdce9ed.png)

9. Select **MDATP_MDAV_MAU_settings.plist**.

    ![Image of configuration setting](images/a26bd4967cd54bb113a2c8d32894c3de.png)

10. Select **Upload**.
    ![Image of configuration setting](images/4239ca0528efb0734e4ca0b490bfb22d.png)

    ![Image of configuration setting](images/4ec20e72c8aed9a4c16912e01692436a.png)

11. Select **Save**.

    ![Image of configuration setting](images/253274b33e74f3f5b8d475cf8692ce4e.png)

12. Select the **Scope** tab.
   
     ![Image of configuration setting](images/10ab98358b2d602f3f67618735fa82fb.png)

13. Select **Add**.
    
    ![Image of configuration setting](images/56e6f6259b9ce3c1706ed8d666ae4947.png)

    ![Image of configuration setting](images/38c67ee1905c4747c3b26c8eba57726b.png)

    ![Image of configuration setting](images/321ba245f14743c1d5d51c15e99deecc.png)

14. Select **Done**.
    
    ![Image of configuration setting](images/ba44cdb77e4781aa8b940fb83e3c21f7.png)

## Step 6: Grant full disk access to Microsoft Defender ATP

1. In the Jamf Pro dashboard, select **Configuration Profiles**.

    ![Image of configuration setting](images/264493cd01e62c7085659d6fdc26dc91.png)

2. Select **+ New**. 

3. Enter the following details:

    **General** 
    - Name: MDATP MDAV - grant Full Disk Access to EDR and AV
    - Description: On macOS Catalina or newer, the new Privacy Preferences Policy Control
    - Category: None
    - Distribution method: Install Automatically
    - Level: Computer level


    ![Image of configuration setting](images/ba3d40399e1a6d09214ecbb2b341923f.png)

4. In **Configure Privacy Preferences Policy Control** select **Configure**.

    ![Image of configuration setting](images/715ae7ec8d6a262c489f94d14e1e51bb.png)

5. In **Privacy Preferences Policy Control**, enter the following details:

    - Identifier: `com.microsoft.wdav`
    - Identifier Type: Bundle ID
    - Code Requirement: identifier `com.microsoft.wdav` and anchor apple generic and
certificate 1[field.1.2.840.113635.100.6.2.6] /\* exists \*/ and certificate
leaf[field.1.2.840.113635.100.6.1.13] /\* exists \*/ and certificate
leaf[subject.OU] = UBF8T346G9


    ![Image of configuration setting](images/22cb439de958101c0a12f3038f905b27.png)

6. Select **+ Add**.

    ![Image of configuration setting](images/bd93e78b74c2660a0541af4690dd9485.png)


  - Under App or service: Set to **SystemPolicyAllFiles**

  - Under "access": Set to **Allow**

7. Select **Save** (not the one at the bottom right).

    ![Image of configuration setting](images/6de50b4a897408ddc6ded56a09c09fe2.png)

8. Select the **Scope** tab.

    ![Image of configuration setting](images/2c49b16cd112729b3719724f581e6882.png)

 9. Select **+ Add**.

    ![Image of configuration setting](images/57cef926d1b9260fb74a5f460cee887a.png)

10. Select **Computer Groups** > under **Group Name** > select **Contoso's MachineGroup**. 

    ![Image of configuration setting](images/368d35b3d6179af92ffdbfd93b226b69.png)

11. Select **Add**. 

12. Select **Save**. 
    
13. Select **Done**.
    
    ![Image of configuration setting](images/809cef630281b64b8f07f20913b0039b.png)
    
    ![Image of configuration setting](images/6c8b406ee224335a8c65d06953dc756e.png)


## Step 7: Approve Kernel extension for Microsoft Defender ATP

1. In the **Configuration Profiles**, select **+ New**.

    ![A screenshot of a social media post Description automatically generated](images/6c8b406ee224335a8c65d06953dc756e.png)

2. Enter the following details:

    **General** 
  - Name: MDATP MDAV Kernel Extension
  - Description: MDATP kernel extension (kext)
  - Category: None
  - Distribution Method: Install Automatically
  - Level: Computer Level

    ![Image of configuration settings](images/24e290f5fc309932cf41f3a280d22c14.png)

3. In **Configure Approved Kernel Extensions** select **Configure**.

    ![Image of configuration settings](images/30be88b63abc5e8dde11b73f1b1ade6a.png)

   

4. In **Approved Kernel Extensions** Enter the following details:

  - Display Name: Microsoft Corp.
  - Team ID: UBF8T346G9

    ![Image of configuration settings](images/39cf120d3ac3652292d8d1b6d057bd60.png)

5. Select the **Scope** tab.

    ![Image of configuration settings](images/0df36fc308ba569db204ee32db3fb40a.png)

6. Select **+ Add**.

7. Select **Computer Groups** > under **Group Name** > select **Contoso's Machine Group**.

8. Select **+ Add**.

    ![Image of configuration settings](images/0dde8a4c41110dbc398c485433a81359.png)

9. Select **Save**.

    ![Image of configuration settings](images/0add8019b85a453b47fa5c402c72761b.png)

10. Select **Done**.

    ![Image of configuration settings](images/1c9bd3f68db20b80193dac18f33c22d0.png)


## Step 8: Schedule scans with Microsoft Defender ATP for Mac
Follow the instructions on [Schedule scans with Microsoft Defender ATP for Mac](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/mac-schedule-scan-atp).

## Step 9: Deploy Microsoft Defender ATP for macOS

1. Navigate to where you saved `wdav.pkg`.

    ![Image of file explorer](images/8dde76b5463047423f8637c86b05c29d.png)

2. Rename it to `wdav_MDM_Contoso_200329.pkg`.

    ![Image of file explorer](images/fb2220fed3a530f4b3ef36f600da0c27.png)

3. Open the Jamf Pro dashboard.

    ![Image of configuration settings](images/990742cd9a15ca9fdd37c9f695d1b9f4.png)

4. Navigate to **Advanced Computer Searches**.
    
    ![A screenshot of a social media post Description automatically generated](images/95313facfdd5e1ea361981e0a2478fec.png)

5. Select **Computer Management**. 

    ![Image of configuration settings](images/b6d671b2f18b89d96c1c8e2ea1991242.png)

6. In **Packages**, select **+ New**. 
    ![A picture containing bird Description automatically generated](images/57aa4d21e2ccc65466bf284701d4e961.png)

7. In **New Package** Enter the following details:

    **General tab**
    - Display Name: Leave it blank for now. Because it will be reset when you choose your pkg.
    - Category: None (default)
    - Filename: Choose File

    ![Image of configuration settings](images/21de3658bf58b1b767a17358a3f06341.png)

    Open the file and point it to `wdav.pkg` or `wdav_MDM_Contoso_200329.pkg`.
    
    ![A screenshot of a computer screen Description automatically generated](images/1aa5aaa0a387f4e16ce55b66facc77d1.png)

8. Select **Open**. Set the **Display Name** to **Microsoft Defender Advanced Threat Protection and Microsoft Defender Antivirus**.

    - Manifest File: Select **Upload Manifest File**. 

    **Options tab**<br> Keep default values.

    **Limitations tab**<br> Keep default values.
    
     ![Image of configuration settings](images/56dac54634d13b2d3948ab50e8d3ef21.png)
   
9. Select **Save**. The package is uploaded to Jamf Pro. 
    ![Image of configuration settings](images/33f1ecdc7d4872555418bbc3efe4b7a3.png)

    It can take a few minutes for the package to be available for deployment.
    ![Image of configuration settings](images/1626d138e6309c6e87bfaab64f5ccf7b.png)

10. Navigate to the **Policies** page.

    ![Image of configuration settings](images/f878f8efa5ebc92d069f4b8f79f62c7f.png)

11. Select **+ New** to create a new policy.

    ![Image of configuration settings](images/847b70e54ed04787e415f5180414b310.png)


12. In **General** Enter the following details:

    - Display name: MDATP Onboarding Contoso 200329 v100.86.92 or later

    ![Image of configuration settings](images/625ba6d19e8597f05e4907298a454d28.png)

13. Select **Recurring Check-in**. 
    
    ![Image of configuration settings](images/68bdbc5754dfc80aa1a024dde0fce7b0.png)

  
14. Select **Save**. 
 
15. Select **Packages > Configure**.
 
    ![Image of configuration settings](images/8fb4cc03721e1efb4a15867d5241ebfb.png)

16. Select the **Add** button next to **Microsoft Defender Advanced Threat Protection and Microsoft Defender Antivirus**.

    ![Image of configuration settings](images/526b83fbdbb31265b3d0c1e5fbbdc33a.png)

17. Select **Save**.
    ![Image of configuration settings](images/9d6e5386e652e00715ff348af72671c6.png)

18. Select the **Scope** tab.   
    ![Image of configuration settings](images/8d80fe378a31143db9be0bacf7ddc5a3.png)

19. Select the target computers.

    ![Image of configuration settings](images/6eda18a64a660fa149575454e54e7156.png)

    **Scope**<br>
    Select **Add**.
    ![Image of configuration settings](images/1c08d097829863778d562c10c5f92b67.png)

    ![Image of configuration settings](images/216253cbfb6ae738b9f13496b9c799fd.png)

    **Self-Service** <br>
    ![Image of configuration settings](images/c9f85bba3e96d627fe00fc5a8363b83a.png)

20. Select **Done**. 
    ![Image of configuration settings](images/99679a7835b0d27d0a222bc3fdaf7f3b.png)

    ![Image of configuration settings](images/632aaab79ae18d0d2b8e0c16b6ba39e2.png)





