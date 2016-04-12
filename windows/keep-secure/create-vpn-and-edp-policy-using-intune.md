---
title: Create and deploy a VPN policy for enterprise data protection (EDP) using Microsoft Intune (Windows 10)
description: After you've created and deployed your enterprise data protection (EDP) policy, you can use Microsoft Intune to create and deploy your Virtual Private Network (VPN) policy, linking it to your EDP policy.
ms.assetid: d0eaba4f-6d7d-4ae4-8044-64680a40cf6b
keywords: ["EDP", "Enterprise Data Protection"]
ms.prod: W10
ms.mktglfcycl: explore
ms.sitesec: library
author: eross-msft
---

# Create and deploy a VPN policy for enterprise data protection (EDP) using Microsoft Intune
**Applies to:**

-   Windows 10 Insider Preview
-   Windows 10 Mobile Preview

<span style="color:#ED1C24;">[Some information relates to pre-released product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here. An app that calls an API introduced in Windows 10 Anniversary SDK Preview Build 14295 cannot be ingested into the Windows Store during the Preview period.]</span>

After you've created and deployed your enterprise data protection (EDP) policy, you can use Microsoft Intune to create and deploy your Virtual Private Network (VPN) policy, linking it to your EDP policy.

## Create your VPN policy using Microsoft Intune
Follow these steps to create the VPN policy you want to use with EDP.

**To create your VPN policy**

1.  Open the Intune administration console, and go to the **Policy** node, and then click **Add Policy**.

2.  Go to **Windows**, click the **VPN Profile (Windows 10 Desktop and Mobile and later)**, click **Create and Deploy a Custom Policy**, and then click **Create Policy**.

    ![Microsoft Intune: Create a new policy using the New Policy screen](images/intune-vpn-createpolicy.png)

3.  Type *EdpModeID* into the **Name** box, along with an optional description for your policy into the **Description** box.

    ![Microsoft Intune: Fill in the required Name and optional Description for your policy](images/intune-vpn-titledescription.png)

4.  In the **VPN Settings** area, type the following info:

    -   **VPN connection name.** This name is also what appears to your employees, so it's important that it be clear and understandable.

    -   **Connection type.** Pick the connection type that matches your infrastructure. The options are **Pulse Secure**, **F5 Edge Client**, **Dell SonicWALL Mobile Connect**, or **Check Point Capsule VPN**.

    -   **VPN server description.** A descriptive name for this connection. Only you will see it, but it should be unique and readable.

    -   **Server IP address or FQDN.** The server's IP address or fully-qualified domain name (FQDN).

        ![Microsoft Intune: Fill in the VPN Settings area](images/intune-vpn-vpnsettings.png)

5.  In the **Authentication** area, choose the authentication method that matches your VPN infrastructure, either **Username and Password** or **Certificates**.<p>
It's your choice whether you check the box to **Remember the user credentials at each logon**.

    ![Microsoft Intune: Choose the Authentication Method for your VPN system](images/intune-vpn-authentication.png)

6.  You can leave the rest of the default or blank settings, and then click **Save Policy**.

## Deploy your VPN policy using Microsoft Intune
After you’ve created your VPN policy, you'll need to deploy it to the same group you deployed your enterprise data protection (EDP) policy.

**To deploy your VPN policy**

1.  On the **Configuration policies** page, locate your newly-created policy, click to select it, and then click the **Manage Deployment** button.

2.  In the left pane of the **Manage Deployment** box, click the employees or groups that should get the policy, and then click **Add**.<p>
The added people move to the **Selected Groups** list on the right-hand pane.

    ![Microsoft Intune: Pick the group of employees that should get the policy](images/intune-deploy-vpn.png)

3.  After you've picked all of the employees and groups that should get the policy, click **OK**.<p>
The policy is deployed to the selected users' devices.

## Link your EDP and VPN policies and deploy the custom configuration policy
The final step to making your VPN configuration work with EDP, is to link your two policies together. To do this, you must first create a custom configuration policy, setting it to use your **EdpModeID** setting, and then deploying the policy to the same group you deployed your EDP and VPN policies

**To link your VPN policy**

1.  Open the Intune administration console, and go to the **Policy** node, and then click **Add Policy**.

2.  Go to **Windows**, click the **Custom Configuration (Windows 10 Desktop and Mobile and later)**, click **Create and Deploy a Custom Policy**, and then click **Create Policy**.

    ![Microsoft Intune: Create a new policy from the New Policy screen](images/intune-vpn-customconfig.png)

3.  Type a name (required) and an optional description for your policy into the **Name** and **Description** boxes.

    ![Microsoft Intune: Fill in the required Name and optional Description for your policy](images/intune-vpn-edpmodeid.png)

4.  In the **OMA-URI Settings** area, click **Add** to add your **EdpModeID** info.

5.  In the **OMA-URI Settings** area, type the following info:

    -   **Setting name.** Type **EdpModeID** as the name.

    -   **Data type.** Pick the **String** data type.

    -   **OMA-URI.** Type `./Vendor/MSFT/VPNv2/<your_edp_policy_name>/EdpModeId`, replacing *&lt;your\_edp\_policy\_name&gt;* with the name you gave to your EDP policy. For example, `./Vendor/MSFT/VPNv2/W10-Checkpoint-VPN1/EdpModeId`.

    -   **Value.** Your fully-qualified domain that should be used by the OMA-URI setting.

        ![Microsoft Intune: Fill in the OMA-URI Settings for the EdpModeID setting](images/intune-vpn-omaurisettings.png)

6.  Click **OK** to save your new OMA-URI setting, and then click **Save Policy.**


 **To deploy your linked policy**

1.  On the **Configuration policies** page, locate your newly-created policy, click to select it, and then click the **Manage Deployment** button.

2.  In the left pane of the **Manage Deployment** box, click the employees or groups that should get the policy, and then click **Add**. The added people move to the **Selected Groups** list on the right-hand pane.

3.  After you've picked all of the employees and groups that should get the policy, click **OK**. The policy is deployed to the selected users' devices.

 

 





