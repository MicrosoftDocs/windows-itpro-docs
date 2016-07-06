---
title: Unenroll Surface devices from SEMM (Surface)
description: Learn how to unenroll a device from SEMM by using a Surface UEFI reset package or the Recovery Request option.
keywords: surface enterprise management
ms.prod: w10
ms.mktglfcycl: manage
ms.pagetype: surface, devices, security
ms.sitesec: library
author: jobotto
---

# Unenroll Surface devices from SEMM (Surface)

When a Surface device is enrolled in Surface Enterprise Management Mode (SEMM), a certificate is stored in the firmware of that device. The presence of that certificate and the enrollment in SEMM prevent any unauthorized changes to Surface UEFI settings or options while the device is enrolled in SEMM. To restore control of Surface UEFI settings to the user, the Surface device must be unenrolled from SEMM, a process sometimes described as reset or recovery. There are two ways to unenroll a device from SEMM—a Surface UEFI Reset Package and a Recovery Request.

>**Warning:**&nbsp;&nbsp;To unenroll a device from SEMM and restore user control of Surface UEFI settings, you must have the SEMM certificate that was used to enroll the device in SEMM. If this certificate becomes lost or corrupted, it is not possible to unenroll from SEMM. Back up and protect your SEMM certificate accordingly.

For more information about SEMM, see [Surface Enterprise Management Mode](https://technet.microsoft.com/en-us/itpro/surface/surface-enterprise-management-mode).

## Unenroll a Surface device from SEMM with a Surface UEFI Reset Package

The Surface UEFI Reset Package is the primary method for unenrolling a Surface device from SEMM. Like a Surface UEFI Configuration Package, the Reset Package is a Windows Installer (.msi) file that configures SEMM on the device. Unlike the Configuration Package, the Reset Package will reset the Surface UEFI configuration on a Surface device to defaults, remove the SEMM certificate, and unenroll the device from SEMM.

Reset Packages are created specifically for an individual Surface device. To begin the process of creating a Reset Package, you will need the serial number of the device you want to unenroll as well as the SEMM certificate used to enroll the device. You can find the serial number of your Surface device on the PC Information page of Surface UEFI, as shown in Figure 1. This page is displayed even if Surface UEFI is password protected and the incorrect password is entered.

![Serial number of Surface device is displayed](images\surface-semm-unenroll-fig1.png "Serial number of Surface device is displayed")

*Figure 1. The serial number of the Surface device is displayed on the Surface UEFI PC Information page*

>**Note:**&nbsp;&nbsp;To boot to Surface UEFI, press Volume Up and Power simultaneously while the device is off. Hold Volume Up until the Surface logo appears and the device begins to boot.

To create a Surface UEFI Reset Package, follow these steps:

1. Launch the Microsoft Surface UEFI Configurator from the Start Menu.
2. Click Start.
3. Select Reset Package, as shown in Figure 2.

   ![Select Reset Package to create a package to unenroll Surface device from SEMM](images\surface-semm-unenroll-fig2.png "Select Reset Package to create a package to unenroll Surface device from SEMM")

   *Figure 2. Select Reset Package to create a package for unenrolling a Surface device from SEMM*

4. Click Certificate Protection to add your SEMM certificate file with private key (.pfx), as shown in Figure 3. Browse to the location of your certificate file, select the file, then click OK.

   ![Add the SEMM certificate to Surface UEFI reset package](images\surface-semm-unenroll-fig3.png "Add the SEMM certificate to Surface UEFI reset package")

   *Figure 3. Adding the SEMM certificate to a Surface UEFI Reset Package*

5. Click Next.
6. Enter the serial number of the device you wish to unenroll from SEMM, as shown in Figure 4, then click Build to generate the Surface UEFI Reset Package.

   ![Create a Surface UEFI reset package with serial number of Surface device](images\surface-semm-unenroll-fig4.png "Create a Surface UEFI reset package with serial number of Surface device")

   *Figure 4. Using the serial number of your Surface device to create a Surface UEFI Reset Package*

7. In the Save As dialog, specify a name for the Surface UEFI Reset Package and browse to the location where you would like to save the file, then click Save.
8. When the package generation has completed, the Successful page is shown. Click End to complete package creation and close Microsoft Surface UEFI Configurator.

Run the Surface UEFI Reset Package Windows Installer (.msi) file on the Surface device to unenroll the device from SEMM. The Reset Package will require a reboot to perform the unenroll operation. Once the device has been unenrolled you can verify the successful removal by ensuring that the Microsoft Surface Configuration Package item in Programs and Features, shown in Figure 5, is no longer present.

![Screen that shows device is enrolled in SEMM](images\surface-semm-unenroll-fig5.png "Screen that shows device is enrolled in SEMM")

*Figure 5. The presence of the Microsoft Surface Configuration Package in Programs and Features indicates that the device is enrolled in SEMM*

## Unenroll a Surface Device from SEMM with a Recovery Request

In some scenarios, the Surface UEFI Reset Package may not be a viable option to unenroll a Surface device from SEMM, for example where Windows has become unusable. In these scenarios the device can be unenrolled using a Recovery Request generated from within Surface UEFI. The Recovery Request process can be initiated even on devices where you do not have the Surface UEFI password.

The Recovery Request process is initiated from Surface UEFI on the Surface device, approved with the Microsoft Surface UEFI Configurator on another computer, and then completed in Surface UEFI. Like the Reset Package, approving a Recovery Request with Microsoft Surface UEFI Configurator requires access to the SEMM certificate that was used to enroll the Surface device.

To initiate a Recovery Request, follow these steps:

1. Boot the Surface device that is to be unenrolled from SEMM to Surface UEFI.
2. Enter the Surface UEFI password if you are prompted for one.
3. Select the Enterprise Management page, as shown in Figure 6.

   ![Enterprise Management page](images\surface-semm-unenroll-fig6.png "Enterprise Management page")

   *Figure 6. The Enterprise Management page is shown in Surface UEFI on devices enrolled in SEMM*

4. Click or press Get Started.
5. Click or press Next to begin the Recovery Request process.
   >**Note:**&nbsp;&nbsp;Recovery Requests expire two hours after they are created. If a Recovery Request is not completed in this time, you will have to restart the Recovery Request process.
6. Select the SEMM certificate from the list of certificates shown on the Choose a SEMM Reset Key page shown in Figure 7, then click or press Next.

   ![Select the SEMM certificate for your recovery request](images\surface-semm-unenroll-fig7.png "Select the SEMM certificate for your recovery request")

   *Figure 7. Choosing the SEMM certificate for your Recovery Request*

7. On the Enter SEMM Reset Verification Code page you can use the QR Code or Text buttons to display your Recovery Request as shown in Figure 8 or the USB button to save your Recovery Request as a file to a USB drive as shown in Figure 9.

   ![Recovery request displayed as a QR Code](images\surface-semm-unenroll-fig8.png "Recovery request displayed as a QR Code")

   *Figure 8. A Recovery Request displayed as a QR Code*

   ![Save a recovery request to a USB drive](images\surface-semm-unenroll-fig9.png "Save a recovery request to a USB drive")

   *Figure 9. Saving a Recovery Request to a USB drive*

   * To use a QR Code Recovery Request, use a QR reader app on a mobile device to read the code. The QR reader app will translate the QR code into an alphanumeric string. You can then email or message that string to the administrator that will produce the Reset Verification Code with the Microsoft Surface UEFI Configurator.
   * To use a Reset Request saved to a USB drive as a file, use the USB drive to transfer the file to the computer where the Microsoft Surface UEFI Configurator will be used to produce the Reset Verification Code. The file can also be copied from the USB drive on another device to be emailed or transferred over the network.
   * To use the Reset Request as text, simply enter the Reset Request text directly into the Microsoft Surface UEFI Configurator.

8. Launch the Microsoft Surface UEFI Configurator from the Start Menu on another computer.
>**Note:**&nbsp;&nbsp;The Microsoft Surface UEFI Configurator must run in an environment that is able to authenticate the certificate chain for the SEMM certificate.
9. Click Start.
10. Select Recovery Request, as shown in Figure 10.

   ![Start process to approve a recovery request](images\surface-semm-unenroll-fig10.png "Start process to approve a recovery request")

   *Figure 10. Selecting Recovery Request to begin the process of approving a Recovery Request*

11.	Click Certificate Protection to authenticate the recovery request with the SEMM certificate.
12.	Browse to and select your SEMM certificate file, then click OK.
13.	When you are prompted to enter the certificate password as shown in Figure 11, enter and confirm the password for the certificate file, then click OK.

   ![Type password for SEMM certificate](images\surface-semm-unenroll-fig11.png "Type password for SEMM certificate")

   *Figure 11. Entering the password for the SEMM certificate*

14. Click Next.
15. Enter the Recovery Request and click Generate to create a Reset Verification Code, as shown in Figure 12.

   ![Enter the recovery request](images\surface-semm-unenroll-fig12.png "Enter the recovery request")

   *Figure 12. Entering the Recovery Request*

   * If you displayed the Recovery Request as text on the Surface device being reset, use the keyboard to type the Recover Request in the provided field.
   * If you displayed the Recovery Request as a QR Code and then used a messaging or email application to send the code to the computer with Microsoft Surface UEFI Configurator, copy and paste the code into the provided field.
   * If you saved the Recovery Request as a file to a USB drive, click the Import button, then browse to and select the Recovery Request file, and then click OK.

16.	The Reset Verification Code is displayed in the Microsoft Surface UEFI Configurator, as shown in Figure 13.

   ![Display of the reset verification code](images\surface-semm-unenroll-fig13.png "Display of the reset verification code")

   *Figure 13. The Microsoft Surface UEFI Configurator showing the Reset Verification Code*

   * Click the Share button to send the Reset Verification Code by email.

17.	Enter the Reset Verification Code in the provided field on the Surface device, shown in Figure 8, and then click or press Verify to reset the device and unenroll the device from SEMM.
18.	Click or press Restart Now on the SEMM Reset Successful page to complete the unenrollment from SEMM, as shown in Figure 14.

   ![Example display of successful unenrollment from SEMM](images\surface-semm-unenroll-fig14.png "Example display of successful unenrollment from SEMM")

   *Figure 14. A successful unenrollment from SEMM*

19.	Click End in Microsoft Surface UEFI Configurator to complete the Recovery Request process and close Microsoft Surface UEFI Configurator.


