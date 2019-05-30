---
title: Unenroll Surface devices from SEMM (Surface)
description: Learn how to unenroll a device from SEMM by using a Surface UEFI reset package or the Recovery Request option.
keywords: surface enterprise management
ms.prod: w10
ms.mktglfcycl: manage
ms.pagetype: surface, devices, security
ms.sitesec: library
author: dansimp
ms.author: dansimp
ms.topic: article
ms.date: 01/06/2017
ms.reviewer: 
manager: dansimp
---

# Unenroll Surface devices from SEMM

When a Surface device is enrolled in Surface Enterprise Management Mode (SEMM), a certificate is stored in the firmware of that device. The presence of that certificate and the enrollment in SEMM prevent any unauthorized changes to Surface UEFI settings or options while the device is enrolled in SEMM. To restore control of Surface UEFI settings to the user, the Surface device must be unenrolled from SEMM, a process sometimes described as reset or recovery. There are two methods you can use to unenroll a device from SEMM—a Surface UEFI reset package and a Recovery Request.

>[!WARNING]
>To unenroll a device from SEMM and restore user control of Surface UEFI settings, you must have the SEMM certificate that was used to enroll the device in SEMM. If this certificate becomes lost or corrupted, it is not possible to unenroll from SEMM. Back up and protect your SEMM certificate accordingly.

For more information about SEMM, see [Microsoft Surface Enterprise Management Mode](https://technet.microsoft.com/itpro/surface/surface-enterprise-management-mode).

## Unenroll a Surface device from SEMM with a Surface UEFI reset package

The Surface UEFI reset package is the primary method you use to unenroll a Surface device from SEMM. Like a Surface UEFI configuration package, the reset package is a Windows Installer (.msi) file that configures SEMM on the device. Unlike the configuration package, the reset package will reset the Surface UEFI configuration on a Surface device to its default settings, remove the SEMM certificate, and unenroll the device from SEMM.

Reset packages are created specifically for an individual Surface device. To begin the process of creating a reset package, you will need the serial number of the device you want to unenroll, as well as the SEMM certificate used to enroll the device. You can find the serial number of your Surface device on the **PC information** page of Surface UEFI, as shown in Figure 1. This page is displayed even if Surface UEFI is password protected and the incorrect password is entered.

![Serial number of Surface device is displayed](images\surface-semm-unenroll-fig1.png "Serial number of Surface device is displayed")

*Figure 1. The serial number of the Surface device is displayed on the Surface UEFI PC information page*

>[!NOTE]
>To boot to Surface UEFI, press **Volume Up** and **Power** simultaneously while the device is off. Hold **Volume Up** until the Surface logo is displayed and the device begins to boot.

To create a Surface UEFI reset package, follow these steps:

1. Open Microsoft Surface UEFI Configurator from the Start menu.
2. Click **Start**.
3. Click **Reset Package**, as shown in Figure 2.

   ![Select Reset Package to create a package to unenroll Surface device from SEMM](images\surface-semm-unenroll-fig2.png "Select Reset Package to create a package to unenroll Surface device from SEMM")

   *Figure 2. Click Reset Package to create a package to unenroll a Surface device from SEMM*

4. Click **Certificate Protection** to add your SEMM certificate file with private key (.pfx), as shown in Figure 3. Browse to the location of your certificate file, select the file, and then click **OK**.

   ![Add the SEMM certificate to Surface UEFI reset package](images\surface-semm-unenroll-fig3.png "Add the SEMM certificate to Surface UEFI reset package")

   *Figure 3. Add the SEMM certificate to a Surface UEFI reset package*

5. Click **Next**.
6. Type the serial number of the device you want to unenroll from SEMM (as shown in Figure 4), and then click **Build** to generate the Surface UEFI reset package.

   ![Create a Surface UEFI reset package with serial number of Surface device](images\surface-semm-unenroll-fig4.png "Create a Surface UEFI reset package with serial number of Surface device")

   *Figure 4. Use the serial number of your Surface device to create a Surface UEFI reset package*

7. In the **Save As** dialog box, specify a name for the Surface UEFI reset package, browse to the location where you would like to save the file, and then click **Save**.
8. When the package generation has completed, the **Successful** page is displayed. Click **End** to complete package creation and close Microsoft Surface UEFI Configurator.

Run the Surface UEFI reset package Windows Installer (.msi) file on the Surface device to unenroll the device from SEMM. The reset package will require a reboot to perform the unenroll operation. After the device has been unenrolled, you can verify the successful removal by ensuring that the **Microsoft Surface Configuration Package** item in **Programs and Features** (shown in Figure 5) is no longer present.

![Screen that shows device is enrolled in SEMM](images\surface-semm-unenroll-fig5.png "Screen that shows device is enrolled in SEMM")

*Figure 5. The presence of the Microsoft Surface Configuration Package item in Programs and Features indicates that the device is enrolled in SEMM*

## Unenroll a Surface device from SEMM with a Recovery Request

In some scenarios, a Surface UEFI reset package may not be a viable option to unenroll a Surface device from SEMM (for example, where Windows has become unusable). In these scenarios you can unenroll the device by using a Recovery Request generated from within Surface UEFI. The Recovery Request process can be initiated even on devices where you do not have the Surface UEFI password.

The Recovery Request process is initiated from Surface UEFI on the Surface device, approved with Microsoft Surface UEFI Configurator on another computer, and then completed in Surface UEFI. Like the reset package, approving a Recovery Request with Microsoft Surface UEFI Configurator requires access to the SEMM certificate that was used to enroll the Surface device.

To initiate a Recovery Request, follow these steps:

1. Boot the Surface device that is to be unenrolled from SEMM to Surface UEFI.
2. Type the Surface UEFI password if you are prompted to do so.
3. Click the **Enterprise management** page, as shown in Figure 6.

   ![Enterprise Management page](images\surface-semm-unenroll-fig6.png "Enterprise Management page")

   *Figure 6. The Enterprise management page is displayed in Surface UEFI on devices enrolled in SEMM*

4. Click or press **Get Started**.
5. Click or press **Next** to begin the Recovery Request process.
   >[!NOTE]
   >A Recovery Request expires two hours after it is created. If a Recovery Request is not completed in this time, you will have to restart the Recovery Request process.
6. Select **SEMM Certificate** from the list of certificates displayed on the **Choose a SEMM reset key** page (shown in Figure 7), and then click or press **Next**.

   ![Select SEMM certificate for your Recovery Request](images\surface-semm-unenroll-fig7.png "Select SEMM certificate for your Recovery Request")

   *Figure 7. Choose SEMM Certificate for your Recovery Request (Reset Request)*

7. On the **Enter SEMM reset verification code** page you can click the **QR Code** or **Text** buttons to display your Recovery Request (Reset Request) as shown in Figure 8, or the **USB** button to save your Recovery Request (Reset Request) as a file to a USB drive, as shown in Figure 9.

   ![Recovery Request displayed as a QR Code](images\surface-semm-unenroll-fig8.png "Recovery Request displayed as a QR Code")

   *Figure 8. A Recovery Request (Reset Request) displayed as a QR Code*

   ![Save a recovery request to a USB drive](images\surface-semm-unenroll-fig9.png "Save a recovery request to a USB drive")

   *Figure 9. Save a Recovery Request (Reset Request) to a USB drive*

   * To use a QR Code Recovery Request (Reset Request), use a QR reader app on a mobile device to read the code. The QR reader app will translate the QR code into an alphanumeric string. You can then email or message that string to the administrator that will produce the reset verification code with Microsoft Surface UEFI Configurator.
   * To use a Recovery Request (Reset Request) saved to a USB drive as a file, use the USB drive to transfer the file to the computer where Microsoft Surface UEFI Configurator will be used to produce the Reset Verification Code. The file can also be copied from the USB drive on another device to be emailed or transferred over the network.
   * To use the Recovery Request (Reset Request) as text, simply type the text directly into Microsoft Surface UEFI Configurator.

8. Open Microsoft Surface UEFI Configurator from the Start menu on another computer.
    >[!NOTE]
    >Microsoft Surface UEFI Configurator must run in an environment that is able to authenticate the certificate chain for the SEMM certificate.
9. Click **Start**.
10. Click **Recovery Request**, as shown in Figure 10.

   ![Start process to approve a Recovery Request](images\surface-semm-unenroll-fig10.png "Start process to approve a Recovery Request")

   *Figure 10. Click Recovery Request to begin the process to approve a Recovery Request*

11.	Click **Certificate Protection** to authenticate the Recovery Request with the SEMM certificate.
12.	Browse to and select your SEMM certificate file, and then click **OK**.
13.	When you are prompted to enter the certificate password as shown in Figure 11, type and confirm the password for the certificate file, and then click **OK**.

   ![Type password for SEMM certificate](images\surface-semm-unenroll-fig11.png "Type password for SEMM certificate")

   *Figure 11. Type the password for the SEMM certificate*

14. Click **Next**.
15. Enter the Recovery Request (Reset Request), and then click **Generate** to create a reset verification code (as shown in Figure 12).

   ![Enter the recovery request](images\surface-semm-unenroll-fig12.png "Enter the recovery request")

   *Figure 12. Enter the Recovery Request (Reset Request)*

   * If you displayed the Recovery Request (Reset Request) as text on the Surface device being reset, use the keyboard to type the Recovery Request (Reset Request)  in the provided field.
   * If you displayed the Recovery Request (Reset Request) as a QR Code and then used a messaging or email application to send the code to the computer with Microsoft Surface UEFI Configurator, copy and paste the code into the provided field.
   * If you saved the Recovery Request (Reset Request) as a file to a USB drive, click the **Import** button, browse to and select the Recovery Request (Reset Request) file, and then click **OK**.

16.	The reset verification code is displayed in Microsoft Surface UEFI Configurator, as shown in Figure 13.

   ![Display of the reset verification code](images\surface-semm-unenroll-fig13.png "Display of the reset verification code")

   *Figure 13. The reset verification code displayed in Microsoft Surface UEFI Configurator*

   * Click the **Share** button to send the reset verification code by email.

17.	Enter the reset verification code in the provided field on the Surface device (shown in Figure 8), and then click or press **Verify** to reset the device and unenroll the device from SEMM.
18.	Click or press **Restart now** on the **SEMM reset successful** page to complete the unenrollment from SEMM, as shown in Figure 14.

   ![Example display of successful unenrollment from SEMM](images\surface-semm-unenroll-fig14.png "Example display of successful unenrollment from SEMM")

   *Figure 14. Successful unenrollment from SEMM*

19.	Click **End** in Microsoft Surface UEFI Configurator to complete the Recovery Request (Reset Request) process and close Microsoft Surface UEFI Configurator.


