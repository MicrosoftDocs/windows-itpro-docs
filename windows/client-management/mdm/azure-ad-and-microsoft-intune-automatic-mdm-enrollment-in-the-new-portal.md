# Azure AD and Microsoft Intune: Automatic MDM enrollment in the new Portal


Hi all, I was Just looking for the Automatic enrollment Process, in this case I realized that the Old Azure Portal redirects you to the new Azure Portal (Ibiza) and there is no more any setting possible in the Old Portal.
The steps to integrate the automatic AAD-Join and bring your device up and running in Microsoft Intune as a MDM Managed Device you have to add the following steps:
In the Old portal it was simple, have a look here: (https://cloudblogs.microsoft.com/enterprisemobility/2015/08/14/windows-10-azure-ad-and-microsoft-intune-automatic-mdm-enrollment-powered-by-the-cloud/)

But where those steps in the new Portal:

Go to your Azure AD Blade, select the Mobility (MDM and MAM) and there should be the Microsoft Intune "App" Visible, select the Microsoft Intune and configure the Blade
![How to get to the Blade](Images/automaticMDM1.png)


Configure the Blade                                                                     
![Configure the Blade](Images/automaticMDM2.png)


Select all for allow all users to enroll a Device and make it Intune ready, or Some, then you can add a Group of Users.

That's it, hot to save you some searching time, and gives you some time to have a beer instead.

If you like to read more details about the Enrollment Process, here is a Very good read from Niall: https://www.windows-noob.com/forums/topic/15773-how-can-i-enable-mdm-auto-enrollment-for-microsoft-intune-in-azure/
(Thanks for Sharing)
