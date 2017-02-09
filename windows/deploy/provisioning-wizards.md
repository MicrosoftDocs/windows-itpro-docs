---
title: provisioning wizards (Windows 10)
description: 
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: jdeckerMS
localizationpriority: high
---

# provisioning wizards


**Applies to**

-   Windows 10
-   Windows 10 Mobile

| Step | Description | Desktop</br>wizard | Mobile</br>wizard | Kiosk</br>wizard | 
| --- | --- | --- | --- | --- |
| Set up device | Assign device name,</br>enter product key to upgrade Windows,</br>configure shared used,</br>remove pre-installed software | ![yes](images/checkmark.png)</br> | ![yes](images/checkmark.png)</br>(Only device name and upgrade key) | ![yes](images/checkmark.png)</br> |
| Set up network | Connect to a Wi-Fit network  | ![yes](images/checkmark.png) | ![yes](images/checkmark.png) | ![yes](images/checkmark.png) |
| Account management | Enroll device in Active Directory,</br>enroll device in Azure Active Directory,</br>or create a local administrator account | ![yes](images/checkmark.png)  | ![no](images/crossmark.png)  | ![yes](images/checkmark.png)  |
| Bulk Enrollment in Azure AD | Enroll device in Azure Active Directory  |  ![no](images/crossmark.png) | ![yes](images/checkmark.png) | ![no](images/crossmark.png) |
| Add applications | ? |  ![no](images/crossmark.png) | ![no](images/crossmark.png) | ![yes](images/checkmark.png) |
| Add certificates | ? |  ![no](images/crossmark.png) | ![no](images/crossmark.png) | ![yes](images/checkmark.png) |
| Configure kiosk account and app | Create local account to run the kiosk mode app,</br>specify the app to run in kiosk mode |  ![no](images/crossmark.png) | ![no](images/crossmark.png) | ![yes](images/checkmark.png) |
| Configure kiosk common settings | Set tablet mode,</br>configure welcome and shutdown screens,</br>turn off timeout settings |  ![no](images/crossmark.png) | ![no](images/crossmark.png) | ![yes](images/checkmark.png) |
 
Also HoloLens wizard and Surface Hub wizard -- link to those docs


## Related topics

- [How provisioning works in Windows 10](provisioning-how-it-works.md)
- [Install Windows Imaging and Configuration Designer](provisioning-install-icd.md)
- [Create a provisioning package](provisioning-create-package.md)
- [Apply a provisioning package](provisioning-apply-package.md)
- [Settings changed when you uninstall a provisioning package](provisioning-uninstall-package.md)
- [Provision PCs with common settings for initial deployment (simple provisioning)](provision-pcs-for-initial-deployment.md)
- [Provision PCs with apps and certificates for initial deployments (advanced provisioning)](provision-pcs-with-apps-and-certificates.md)
- [Use a script to install a desktop app in provisioning packages](provisioning-script-to-install-app.md)
- [NFC-based device provisioning](provisioning-nfc.md)
- [Windows ICD command-line interface (reference)](provisioning-command-line.md)
- [Create a provisioning package with multivariant settings](provisioning-multivariant.md)





 

 





