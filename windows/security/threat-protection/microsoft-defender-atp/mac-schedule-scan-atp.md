---
title: How to schedule scans with MDATP for macOS
description: Learn how to schedule an automatic scanning time for Microsoft Defender ATP in macOS to better protect your organization's assets.
keywords: microsoft, defender, atp, mac, scans, antivirus
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

# Schedule scans with Microsoft Defender ATP for Mac

While you can start a threat scan at any time with Microsoft Defender ATP, your enterprise might benefit from scheduled or timed scans. For example, you can schedule a scan to run at the beginning of every workday or week. Create a scanning schedule using launchd on a macOS computer.

## Schedule a scan with launchd

1. Create a new .xml file. Use the following example to create your scanning schedule file.

    ```xml
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN"
      "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
    <dict>
        <key>Label</key>
        <string>com.microsoft.wdav.schedquickscan</string>
        <key>ProgramArguments</key>
        <array>
            <string>sh</string>
            <string>-c</string>
            <string>/usr/local/bin/mdatp --scan --quick</string>
        </array>
        <key>RunAtLoad</key>
        <true/>
        <key>StartCalendarInterval</key>
        <dict>
            <key>Day</key>
            <integer>3</integer>
            <key>Hour</key>
            <integer>2</integer>
            <key>Minute</key>
            <integer>0</integer>
            <key>Weekday</key>
            <integer>5</integer>
        </dict>
        <key>StartInterval</key>
        <integer>604800</integer>
        <key>WorkingDirectory</key>
        <string>/usr/local/bin/</string>
    </dict>
    </plist>
     ```

2. Save the file as a program configuration file (.plist) with the name com.microsoft.wdav.schedquickscan.plist.

    >[!NOTE]
    >To change a quick scan to a full scan, use /usr/local/bin/mdatp --scan –full in the array string and update your .plist filename.

3. Search for, and then open **Terminal**.
4. To load your file into **launchd**, enter the following commands:

    ```bash
    launchctl load /Library/LaunchDaemons/<your file name.plist>`
    launchctl start <your file name>`
    ```

5. Your scheduled scan runs at the date, time, and frequency you defined in your .plist file. In the example, the scan runs at 2:00 AM every 7 days on a Friday, with the StartInterval using 604800 seconds for one week.

 > [!NOTE]
 > Agents executed with launchd will not run at the scheduled time if the computer is asleep, but will run once the computer is awake. If the computer is off, the scan will not run until the computer is on at the next scheduled time.
