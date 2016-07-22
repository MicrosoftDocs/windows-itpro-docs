---
title: Troubleshoot Upgrade Analytics (Windows 10)
description: Provides troubleshooting information for Upgrade Analytics.
ms.prod: w10
author: MaggiePucciEvans
---

# Troubleshoot Upgrade Analytics

If you’re having issues seeing data in Upgrade Analytics after running the script, enable verbose mode in the Upgrade Analytics Deployment script to turn on a more comprehensive mode of logging. To enable:

1.  Download and extract UpgradeAnalytics.zip. Ensure the “Diagnostics” folder is included.

2.  Edit the script as described in [Run the Upgrade Analytics deployment script](#_Run_the_Upgrade).

3.  Check that isVerboseLogging is set to $true.

4.  Run the script again. Log files will be saved to the directory specified in the script.

5.  Open a support case with Microsoft Support through your regular channel and provide this information.

## Disable Upgrade Analytics

If you want to stop using Upgrade Analytics and stop sending telemetry data to Microsoft, follow these steps:

1.  Unsubscribe from the Upgrade Analytics solution in the OMS portal.

2.  Disable the Customer Experience Improvement Program on computers running Windows 7 SP1 or 8.1. On computers running Windows 10, set the telemetry level to Security.

3.  Delete the CommercialDataOptin key in *HKLM:\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Policies\\DataCollection*

