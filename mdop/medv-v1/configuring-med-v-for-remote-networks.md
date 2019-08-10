---
title: Configuring MED-V for Remote Networks
description: Configuring MED-V for Remote Networks
author: dansimp
ms.assetid: 4d2f0081-622f-4a6f-8d73-f8c2108036e0
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w7
ms.date: 06/16/2016
---


# Configuring MED-V for Remote Networks


You can configure MED-V to work from inside a network, remotely, or both from inside the network and remotely.

## <a href="" id="bkmk-howtoconfiguremedvtoworkfrominsideanetworkorremotely"></a>


**To configure MED-V to work from inside a network**

-   Configure a MED-V server and image distribution inside the network.

**To configure MED-V to work remotely**

1.  Configure a MED-V server and an image distribution server that are accessible from the Internet.

2.  If needed, configure a perimeter network (also called a DMZ) reverse proxy.

3.  Set the authentication method, in the *ClientSettings.xml* file, which can be found in the **Servers\\Configuration Server\\** folder.

**To configure MED-V to work both from inside a network and remotely**

1.  Configure a MED-V server and image distribution server inside the network.

2.  Ensure that the servers are accessible from the Internet.

3.  Configure the DNS resolution so that when the client attempts to connect to a server, it automatically connects to the correct server (within the network or over the Internet) based on the client location.

4.  If needed, configure a perimeter network reverse proxy.

5.  Set the authentication method, in the *ClientSettings.xml* file, which can be found in the **Servers\\Configuration Server\\** folder.

**Note**  
When applying new settings, the service must be restarted.

 

-   You can change the IIS authentication scheme to one of the following: BASIC, DIGEST, NTLM, or NEGOTIATE. The default is NEGOTIATE and uses the following entry:

    ```xml
    <ImageDistribution>
    <!-- The authentication used for image download. Basic and digest authentication should be used only under SSL.-->
       <!-- The line below can be one of the following: -->
       <!--BG_AUTH_SCHEME>BG_AUTH_SCHEME_BASIC</BG_AUTH_SCHEME-->
       <!--BG_AUTH_SCHEME>BG_AUTH_SCHEME_DIGEST</BG_AUTH_SCHEME-->
       <!--BG_AUTH_SCHEME>BG_AUTH_SCHEME_NTLM</BG_AUTH_SCHEME-->
       <!--BG_AUTH_SCHEME>BG_AUTH_SCHEME_NEGOTIATE</BG_AUTH_SCHEME-->
       <Authentication type="Kidaro.Foundation.Bits.BG_AUTH_SCHEME">
          <BG_AUTH_SCHEME>BG_AUTH_SCHEME_NEGOTIATE</BG_AUTH_SCHEME>
       </Authentication>
    </ImageDistribution>
    ```

## Related topics


[MED-V Infrastructure Planning and Design](med-v-infrastructure-planning-and-design.md)

 

 





