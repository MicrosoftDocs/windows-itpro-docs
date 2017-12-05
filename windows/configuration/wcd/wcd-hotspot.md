---
title: HotSpot (Windows 10)
description: This section describes the HotSpot settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: jdeckerMS
ms.localizationpriority: medium
ms.author: jdecker
ms.date: 10/17/2017
---

# HotSpot (Windows Configuration Designer reference)

Use HotSpot settings to configure Internet sharing.

## Applies to

| Setting groups | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: | :---: |
| All settings |  |  X  |  |  |  |

>[!NOTE]
>Although the HotSpot settings are available in advanced editing for multiple editions, the settings are only supported on devices running Windows 10 Mobile.

## DedicatedConnections

(Optional) Set DedicatedConnections to a semicolon-separated list of connections. 

Specifies the list of Connection Manager cellular connections that Internet sharing will use as public connections.

By default, any available connection will be used as a public connection. However, this node allows a mobile operator to specify one or more connection names to use as public connections.

Specified connections will be mapped, by policy, to the Internet sharing service. All attempts to enumerate Connection Manager connections for the Internet sharing service will return only the mapped connections.

The mapping policy will also include the connection specified in the TetheringNAIConnection value as well. 

 If the specified connections do not exist, Internet sharing will not start because it will not have any cellular connections available to share.



## Enabled

Specify **True** to enable Internet sharing on the device or **False** to disable Internet sharing.

If Enabled is initially set to **True**, the feature is turned off and the internet sharing screen is removed from Settings so that the user cannot access it. Configuration changes or connection sharing state changes will not be possible.

When Enabled is set to **False**, the internet sharing screen is added to Settings, although sharing is turned off by default until the user turns it on. 


## MaxBluetoothUsers

(Optional) Specify the maximum number of simultaneous Bluetooth users that can be connected to a device while sharing over Bluetooth. Set MaxBluetoothUsers to an integer value between 1 and 7 inclusive. The default value is 7.


## MaxUsers

(Optional) Specify the maximum number of simultaneous users that can be connected to a device while sharing. Set MaxUsers to an integer value between 1 and 8 inclusive. The default value is 5.


## MOAppLink

(Optional) Enter an application link that points to a pre-installed application, provided by the mobile operator. that will help a user to subscribe to the mobile operator's Internet sharing service when Internet sharing is not provisioned or entitlement fails.

Set MOAppLink to a valid app ID. The general format for the link is *app://MOappGUID*. For example, if your app ID is `12345678-9012-3456-7890-123456789012`, you must set the value to `app://12345678-9012-3456-7890-123456789012`. 


## MOHelpMessage

(Optional) Enter a reference to a localized string, provided by the mobile operator, that is displayed when Internet sharing is not enabled due to entitlement failure. The node takes a language-neutral registry value string, which has the following form:

```
@<res_dll>,-<str_id>
```

Where `<res_dll>` is the resource dll that contains the string and `<str_id>` is the string identifier. For more information on language-neutral string resource registry values, see [Using Registry String Redirection](https://msdn.microsoft.com/library/windows/desktop/dd374120.aspx).

## MOHelpNumber

(Optional) Enter a mobile operator–specified phone number that is displayed to the user when the Internet sharing service fails to start. The user interface displays a message informing the user that they can call the specified number for help.



## MOInfoLink

(Optional) Enter a mobile operator–specified HTTP link that is displayed to the user when Internet sharing is disabled or the device is not entitled. The user interface displays a message informing the user that they can visit the specified link for more information about how to enable the feature. 

## PeerlessTimeout

(Optional) Enter the time-out period, in minutes, after which Internet sharing should automatically turn off if there are no active clients. 

Set PeerlessTimeout to any value between 1 and 120 inclusive. A value of 0 is not supported. The default value is 5 minutes.

## PublicConnectionTimeout

(Optional) Enter the time-out value, in minutes, after which Internet sharing is automatically turned off if a cellular connection is not available.

Set PublicConnectionTimeout to any value between 1 and 60 inclusive. The default value is 20 minutes. A value of 0 is not supported.


## TetheringNAIConnection

(Optional) Specify the CDMA TetheringNAI Connection Manager cellular connection that Internet sharing will use as a public connection. Set TetheringNAIConnection to the CDMA TetheringNAI Connection Manager cellular connection.

If a CDMA mobile operator requires using a Tethering NAI during Internet sharing, they must configure a TetheringNAI connection and then specify the connection in this node.

Specified connections will be mapped, by policy, to the Internet sharing service. All attempts to enumerate Connection Manager connections for the Internet sharing service will return only the mapped connections.The mapping policy will also include the connection specified in the TetheringNAIConnection value as well. 

If the specified connections do not exist, Internet sharing will not start because it will not have any cellular connections available to share.

>[!NOTE]
>CDMA phones are limited to one active data connection at a time. This means any application or service (such as e-mail or MMS) that is bound to another connection may not work while Internet sharing is turned on.




