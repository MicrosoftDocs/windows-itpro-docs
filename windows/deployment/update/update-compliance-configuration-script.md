---
title: Update Compliance Configuration Script
ms.reviewer: 
manager: laurawi
description: Downloading and using the Update Compliance Configuration Script
keywords: update compliance, oms, operations management suite, prerequisites, requirements, updates, upgrades, antivirus, antimalware, signature, log analytics, wdav
ms.prod: w10
ms.mktglfcycl: deploy
ms.pagetype: deploy
audience: itpro
author: jaimeo, cinglis-msft
ms.author: jaimeo, cinglis-msft
ms.localizationpriority: medium
ms.collection: M365-analytics
ms.topic: article
---

# Configuring devices through the Update Compliance Configuration Script

The Update Compliance Configuration Script is the recommended method of configuring devices to send data to Microsoft for use with Update Compliance. The script configures device policies via Group Policy, ensures that required services are running, and more.

You can [**download the script here**](https://github.com/cinglis-msft/UpdateComplianceConfigurationScript). Keep reading to learn how to configure the script and interpret error codes that are output in logs for troubleshooting.

## How the script is organized

The script is organized into two folders **Pilot** and **Deployment**.  Both folders have the same key files: `ConfigScript.ps1` and `RunConfig.bat`. You configure `RunConfig.bat` according to the directions in the .bat itself, which will then execute `ConfigScript.ps1` with the parameters entered to RunConfig.bat.

- The **Pilot** folder and its contents are intended to be used on an initial set of single devices in specific environments (main office & satellite office, for example) for testing and troubleshooting prior to broader deployment. This script is configured to collect and output detailed logs for every device it runs on.
- The **Deployment** folder is intended to be deployed across an entire device population in a specific environment once devices in that environment have been validated with the Pilot script.

## How to use the script

### Piloting and Troubleshooting

> [!IMPORTANT]
> If you encounter an issue with Update Compliance, the first step should be to run the script in Pilot mode on a device you are encountering issues with, and save these Logs for reference with Support.

When using the script in the context of troubleshooting, use `Pilot`. Enter `RunConfig.bat`, and configure it as follows:

1. Configure `logPath` to a path where the script will have write access and a place you can easily access. This specifies the output of the log files generated when the script is in Verbose mode.
2. Configure `commercialIDValue` to your CommercialID. To get your CommercialID, see [Getting your CommercialID](update-compliance-get-started.md#get-your-commercialid).
3. Run the script. The script must be run in System context.
4. Examine the Logs output for any issues. If there were issues:
    - Compare Logs output with the required settings covered in [Manually Configuring Devices for Update Compliance](update-compliance-configuration-manual.md).
    - Examine the script errors and refer to the [script error reference](#script-error-reference) on how to interpret the codes.
    - Make the necessary corrections and run the script again.
5. When you no longer have issues, proceed to using the script for more broad deployment with the `Deployment` folder.


### Broad deployment

After verifying on a set of devices in a specific environment that everything is configured correctly, you can proceed to broad deployment.

1. Configure `commercialIDValue` in `RunConfig.bat` to [your CommercialID](update-compliance-get-started.md#get-your-commercialid).
2. Use a management tool like Configuration Manager or Intune to broadly deploy the script to your entire target population.
