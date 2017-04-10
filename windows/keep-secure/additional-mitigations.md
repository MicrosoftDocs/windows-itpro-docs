---
title: Scripts for Certificate Issuance Policies in Credential Guard (Windows 10)
description: Scripts listed in this topic for obtaining the available issuance policies on the certificate authority for Credential Guard on Windows 10.
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
localizationpriority: high
author: brianlic-msft
---

## Additional mitigations

Credential Guard can provide mitigations against attacks on derived credentials and prevent the use of stolen credentials elsewhere. However, PCs can still be vulnerable to certain attacks, even if the derived credentials are protected by Credential Guard. These attacks can include abusing privileges and use of derived credentials directly from a compromised device, reusing previously stolen credentials prior to Device Guard, and abuse of management tools and weak application configurations. Because of this, additional mitigations also must be deployed to make the domain environment more robust.

### Restricting domain users to specific domain-joined devices

Credential theft attacks allow the attacker to steal secrets from one device and use them from another device. If a user can sign on to multiple devices then any device could be used to steal credentials. How do you ensure that users only sign on using devices that have Credential Guard enabled? By deploying authentication policies that restrict them to specific domain-joined devices that have been configured with Credential Guard. For the domain controller to know what device a user is signing on from, Kerberos armoring must be used.

#### Kerberos armoring

Kerberos armoring is part of RFC 6113. When a device supports Kerberos armoring, its TGT is used to protect the user's proof of possession which can mitigate offline dictionary attacks. Kerberos armoring also provides the additional benefit of signed KDC errors this mitigates tampering which can result in things such as downgrade attacks. 

**To enable Kerberos armoring for restricting domain users to specific domain-joined devices**

-   Users need to be in domains that are running Windows Server 2012 R2 or higher
-   All the domain controllers in these domains must be configured to support Kerberos armoring. Set the **KDC support for claims, compound authentication, and Kerberos armoring** Group Policy setting to either **Supported** or **Always provide claims**.
-   All the devices with Credential Guard that the users will be restricted to must be configured to support Kerberos armoring. Enable the **Kerberos client support for claims, compound authentication and Kerberos armoring** Group Policy settings under **Computer Configuration** -&gt; **Administrative Templates** -&gt; **System** -&gt; **Kerberos**.

#### Protecting domain-joined device secrets

Since domain-joined devices also use shared secrets for authentication, attackers can steal those secrets as well. By deploying device certificates with Credential Guard, the private key can be protected. Then authentication policies can require that users sign on devices that authenticate using those certificates. This prevents shared secrets stolen from the device to be used with stolen user credentials to sign on as the user.

Domain-joined device certificate authentication has the following requirements:
-   Devices' accounts are in Windows Server 2012 domain functional level or higher.
-   All domain controllers in those domains have KDC certificates which satisfy strict KDC validation certificate requirements:
    -   KDC EKU present
    -   DNS domain name matches the DNSName field of the SubjectAltName (SAN) extension
-   Windows 10 devices have the CA issuing the domain controller certificates in the enterprise store.
-   A process is established to ensure the identity and trustworthiness of the device in a similar manner as you would establish the identity and trustworthiness of a user before issuing them a smartcard.

##### Deploying domain-joined device certificates

To guarantee that certificates with the required issuance policy are only installed on the devices these users must use, they must be deployed manually on each device. The same security procedures used for issuing smart cards to users should be applied to device certificates.

For example, let's say you wanted to use the High Assurance policy only on these devices. Using a Windows Server Enterprise certificate authority, you would create a new template.

**Creating a new certificate template**

1.  From the Certificate Manager console, right-click **Certificate Templates**, and then click **Manage.**
2.  Right-click **Workstation Authentication**, and then click **Duplicate Template**.
3.  Right-click the new template, and then click **Properties**.
4.  On the **Extensions** tab, click **Application Policies**, and then click **Edit**.
5.  Click **Client Authentication**, and then click **Remove**.
6.  Add the ID-PKInit-KPClientAuth EKU. Click **Add**, click **New**, and then specify the following values:
    -   Name: Kerberos Client Auth
    -   Object Identifier: 1.3.6.1.5.2.3.4
7.  On the **Extensions** tab, click **Issuance Policies**, and then click **Edit**.
8.  Under **Issuance Policies**, click**High Assurance**.
9.  On the **Subject name** tab, clear the **DNS name** check box, and then select the **User Principal Name (UPN)** check box.

Then on the devices that are running Credential Guard, enroll the devices using the certificate you just created.

**Enrolling devices in a certificate**

Run the following command:
``` syntax
CertReq -EnrollCredGuardCert MachineAuthentication
```

> [!NOTE]  
> You must restart the device after enrolling the machine authentication certificate.
 
##### How a certificate issuance policy can be used for access control

Beginning with the Windows Server 2008 R2 domain functional level, domain controllers support for authentication mechanism assurance provides a way to map certificate issuance policy OIDs to universal security groups. Windows Server 2012 domain controllers with claim support can map them to claims. To learn more about authentication mechanism assurance, see [Authentication Mechanism Assurance for AD DS in Windows Server 2008 R2 Step-by-Step Guide](https://technet.microsoft.com/en-us/library/dd378897(v=ws.10).aspx) on TechNet.

**To see the issuance policies available**

-   The [get-IssuancePolicy.ps1](#bkmk-getscript) shows all of the issuance policies that are available on the certificate authority.
    From a Windows PowerShell command prompt, run the following command:

    ``` syntax
    .\get-IssuancePolicy.ps1 –LinkedToGroup:All
    ```

**To link an issuance policy to a universal security group**

-   The [set-IssuancePolicyToGroupLink.ps1](#bkmk-setscript) creates a Universal security group, creates an organizational unit, and links the issuance policy to that Universal security group.
    From a Windows PowerShell command prompt, run the following command:

    ``` syntax
    .\set-IssuancePolicyToGroupLink.ps1 –IssuancePolicyName:"<name of issuance policy>" –groupOU:"<Name of OU to create>" –groupName:”<name of Universal security group to create>"
    ```

#### Restricting user sign on

So we now have completed the following:

-   Created a special certificate issuance policy to identify devices that meet the deployment criteria required for the user to be able to sign on
-   Mapped that policy to a universal security group or claim
-   Provided a way for domain controllers to get the device authorization data during user sign on using Kerberos armoring. Now what is left to do is to configure the access check on the domain controllers. This is done using authentication policies.

Authentication policies have the following requirements:
-   User accounts are in a Windows Server 2012 domain functional level or higher domain.

**Creating an authentication policy restricting users to the specific universal security group**

1.  Open Active Directory Administrative Center.
2.  Click **Authentication**, click **New**, and then click **Authentication Policy**.
3.  In the **Display name** box, enter a name for this authentication policy.
4.  Under the **Accounts** heading, click **Add**.
5.  In the **Select Users, Computers, or Service Accounts** dialog box, type the name of the user account you wish to restrict, and then click **OK**.
6.  Under the **User Sign On** heading, click the **Edit** button.
7. Click **Add a condition**.
8. In the **Edit Access Control Conditions** box, ensure that it reads **User** &gt; **Group** &gt; **Member of each** &gt; **Value**, and then click **Add items**.
9. In the **Select Users, Computers, or Service Accounts** dialog box, type the name of the universal security group that you created with the set-IssuancePolicyToGroupLink script, and then click **OK**.
10. Click **OK** to close the **Edit Access Control Conditions** box.
11. Click **OK** to create the authentication policy.
12. Close Active Directory Administrative Center.

> [!NOTE]  
> When the authentication policy enforces policy restrictions, users will not be able to sign on using devices that do not have a certificate with the appropriate issuance policy deployed. This applies to both local and remote sign on scenarios. Therefore, it is strongly recommended to first only audit policy restrictions to ensure you don't have unexpected failures.

##### Discovering authentication failures due to authentication policies

To make tracking authentication failures due to authentication policies easier, an operational log exists with just those events. To enable the logs on the domain controllers, in Event Viewer, navigate to **Applications and Services Logs\\Microsoft\\Windows\\Authentication, right-click AuthenticationPolicyFailures-DomainController**, and then click **Enable Log**.

To learn more about authentication policy events, see [Authentication Policies and Authentication Policy Silos](https://technet.microsoft.com/en-us/library/dn486813(v=ws.11).aspx).

## See also

**Deep Dive into Credential Guard: Related videos**

[Protecting privileged users with Credential Guard](https://mva.microsoft.com/en-us/training-courses/deep-dive-into-credential-guard-16651?l=JNbjYMJyC_8104300474)
