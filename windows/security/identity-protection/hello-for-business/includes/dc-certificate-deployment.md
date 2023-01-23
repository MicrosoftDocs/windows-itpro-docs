---
ms.date: 12/28/2022
ms.topic: include
---

### Configure automatic certificate enrollment for the domain controllers

Domain controllers automatically request a certificate from the *Domain controller certificate* template. However, domain controllers are unaware of newer certificate templates or superseded configurations on certificate templates. For domain controllers to automatically enroll and renew of certificates, configure a GPO for automatic certificate enrollment, and link it to the *Domain Controllers* OU.

1. Open the **Group Policy Management Console** (gpmc.msc)
1. Expand the domain and select the **Group Policy Object** node in the navigation pane
1. Right-click **Group Policy object** and select **New**
1. Type *Domain Controller Auto Certificate Enrollment* in the name box and select **OK**
1. Right-click the **Domain Controller Auto Certificate Enrollment** Group Policy object and select **Edit**
1. In the navigation pane, expand **Policies** under **Computer Configuration**
1. Expand **Windows Settings > Security Settings > Public Key Policies**
1. In the details pane, right-click **Certificate Services Client - Auto-Enrollment** and select **Properties**
1. Select **Enabled** from the **Configuration Model** list
1. Select the **Renew expired certificates, update pending certificates, and remove revoked certificates** check box
1. Select the **Update certificates that use certificate templates** check box
1. Select **OK**
1. Close the **Group Policy Management Editor**

### Deploy the domain controller auto certificate enrollment GPO

Sign in to domain controller or management workstations with *Domain Administrator* equivalent credentials.

1. Start the **Group Policy Management Console** (gpmc.msc)
1. In the navigation pane, expand the domain and expand the node with the Active Directory domain name. Right-click the **Domain Controllers** organizational unit and select **Link an existing GPO…**
1. In the **Select GPO** dialog box, select *Domain Controller Auto Certificate Enrollment* or the name of the domain controller certificate enrollment Group Policy object you previously created
1. Select **OK**

