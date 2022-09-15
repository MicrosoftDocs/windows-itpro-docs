---
title: Provision and deploy Microsoft Connected Cache for ISP
manager: dougeby
description: Provision and deploy Microsoft Connected Cache for ISP on Azure portal
keywords: updates, downloads, network, bandwidth
ms.prod: w10
ms.mktglfcycl: deploy
audience: itpro
author: nidos
ms.localizationpriority: medium
ms.author: nidos
ms.collection: M365-modern-desktop
ms.topic: article
---


# Provisioning and deploying Microsoft Connected Cache for ISP

**Applies to**

- Windows 10
- Windows 11

<br/>


> [!IMPORTANT]  
> Before you can provision and deploy your cache node, you will need to complete the sign up process [here](windows\deployment\do\mcc-isp-signup.md) and create a cache node [here](windows\deployment\do\mcc-isp-create.md).

<br/>

## Provisioning cache node

1. Click on the cache node you want to provision and deploy.  
<br/> 
:::image type="content" source="images/cachenodecreated.png" alt-text="cachenodecreated":::
<br/>
<br/>

1. Enter the max allowable egress that your hardware can support.  
<br/> 
:::image type="content" source="images/cachenodeconfig.png" alt-text="cachenodeconfig":::
<br/>
<br/>

3. Under Cache storage, specify the location of the cache drives to store content along with the size of the cache drives in Gigabytes.  
You can add upto nine cache drives.  
<br/>
:::image type="content" source="images/cachenodeconfig.png" alt-text="cachenodeconfig":::
<br/>
<br/>
4. Under Routing information, select the routing source you would like to use. For more information see client routing [here](windows\deployment\do\mcc-isp-client-routing.md).  
<br/>
    - If you choose Manual routing, enter Address range/CIDR blocks and the number of IP space.  
<br/>
:::image type="content" source="images/cachenodeconfig.png" alt-text="cachenodeconfig":::
<br/>
<br/>
    - If you choose BGP routing, enter the ASN and IP addresses of the neighborship.  
<br/>
:::image type="content" source="images/bgp.png" alt-text="bgp":::
<br/>
<br/>
 
5. Under Server provisioning, you will see a provisioning script for your cache node.  
Download this script to your server.
<br/>
:::image type="content" source="images/cachenodeprovisioning.png" alt-text="cachenodeprovision":::

<br/>

6. Open a terminal window and run the following command to change the access permission to the Bash script.  
<br/>

    ```bash
    sudo chmod +x installmcc.sh
    ```
<br/>
<br/>

7. Run the provisioning script that is shown for your cache node.  
<br/>
:::image type="content" source="images/cachenodeprovisioning.png" alt-text="cachenodeprovision":::
<br/>
<br/>

8. If there were no errors, you have set up your cache node. To verify the server is set up correctly, follow the steps verification steps [here](windows\deployment\do\mcc-isp-verify-cache-node.md).

