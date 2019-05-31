---
title: How to Set the Self-Service Portal Branding and Session Time-out
description: How to Set the Self-Service Portal Branding and Session Time-out
author: dansimp
ms.assetid: 031eedfc-fade-4d2f-8771-b329e1d38c0d
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Set the Self-Service Portal Branding and Session Time-out


After you configure the Self-Service Portal, you can brand it with your company name, Help Desk URL, and "notice" text. You can also change the Session Time-out setting to make the end user’s session expire after a specified period of inactivity.

**Note**  
You can also brand the Self-Service Portal by using the **Enable-MbamWebApplication** Windows PowerShell cmdlet or the MBAM Server Configuration wizard. For instructions on using the wizard, see [How to Configure the MBAM 2.5 Web Applications](how-to-configure-the-mbam-25-web-applications.md).

 

**Note**  
In the following instructions, *SelfService* is the default virtual directory name for the Self-Service Portal. You might have used a different name when you configured the Self-Service Portal.

 

**To set the session time-out and branding for the Self-Service Portal**

1.  To set the time-out period for the end user’s session, start the **Internet Information Services Manager**, or run **inetmgr.exe**.

2.  Browse to **Sites** &gt; **Microsoft BitLocker Administration and Monitoring** &gt; **SelfService** &gt; **ASP.NET** &gt; **Session State**, and change the **Time-out** value under **Cookie Settings** to the number of minutes after which the end user’s Self-Service Portal session expires. The default value is **5**. To disable the setting so that there is no time-out, set the value to **0**.

3.  To set the branding items for the Self-Service Portal, start the **Internet Information Services Manager** or run **inetmgr.exe**.

4.  Browse to **Sites** &gt; **Microsoft BitLocker Administration and Monitoring** &gt; **SelfService** &gt; **Application Settings**.

5.  In the **Name** column, select the item that you want to change, and change the default value to reflect the name that you want to use. The following table lists the values that you can set.

    **Caution**  
    Do not change the value in the Name column (CompanyName\*), as it will cause Self-Service Portal to stop working.

     

    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">Name</th>
    <th align="left">Default value</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p>ClientValidationEnabled</p></td>
    <td align="left"><p>true</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>CompanyName</p></td>
    <td align="left"><p>Contoso IT</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>DisplayNotice</p></td>
    <td align="left"><p>true</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>HelpdeskText</p></td>
    <td align="left"><p>Contact Helpdesk or IT Department</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>HelpdeskUrl</p></td>
    <td align="left"><p>#</p>
    <div class="alert">
    <strong>Note</strong>  
    <p>In MBAM 2.5 SP1, the HelpdeskUrl default value is empty.</p>
    </div>
    <div>
     
    </div></td>
    </tr>
    <tr class="even">
    <td align="left"><p>jQueryPath</p></td>
    <td align="left"><p>[//go.microsoft.com/fwlink/?LinkID=390515](//go.microsoft.com/fwlink/?LinkID=390515)</p>
    <div class="alert">
    <strong>Note</strong>  
    <p>In MBAM 2.5 SP1, this has been changed to a local JavaScript file shipped with the product, located at ~/Scripts/jquery-1.10.2.min.js</p>
    </div>
    <div>
     
    </div></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>jQueryValidatePath</p></td>
    <td align="left"><p>[//go.microsoft.com/fwlink/?LinkID=390516](//go.microsoft.com/fwlink/?LinkID=390516)</p>
    <div class="alert">
    <strong>Note</strong>  
    <p>In MBAM 2.5 SP1, this has been changed to a local JavaScript file shipped with the product, located at ~/Scripts/jquery.validate.min.js</p>
    </div>
    <div>
     
    </div></td>
    </tr>
    <tr class="even">
    <td align="left"><p>jQueryValidateUnobtrusivePath</p></td>
    <td align="left"><p>[//go.microsoft.com/fwlink/?LinkID=390517](//go.microsoft.com/fwlink/?LinkID=390517)</p>
    <div class="alert">
    <strong>Note</strong>  
    <p>In MBAM 2.5 SP1, this has been changed to a local JavaScript file shipped with the product, located at ~/Scripts/jquery.validate.unobtrusive.min.js</p>
    </div>
    <div>
     
    </div></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>NoticeTextPath</p></td>
    <td align="left"><p>Notice.txt</p>
    <div class="alert">
    <strong>Note</strong>  
    <p>You can edit the notice text either by using the Internet Information Services (IIS) Manager or by opening and changing the Notice.txt file in the installation directory.</p>
    </div>
    <div>
     
    </div></td>
    </tr>
    <tr class="even">
    <td align="left"><p>UnobtrusiveJavaScriptEnabled</p></td>
    <td align="left"><p>true</p></td>
    </tr>
    </tbody>
    </table>

     



## Related topics


[Customizing the Self-Service Portal for Your Organization](customizing-the-self-service-portal-for-your-organization.md)

 

## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring). 
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam). 





