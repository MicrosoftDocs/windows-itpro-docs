<hr/>

<!--Policies-->
## Location policies  

<dl>
  <dd>
    <a href="#location-enablelocation">Location/EnableLocation</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="location-enablelocation"></a>**Location/EnableLocation**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting turns off the Windows Location Provider feature for this computer.

If you enable this policy setting, the Windows Location Provider feature will be turned off, and all programs on this computer will not be able to use the Windows Location Provider feature.

If you disable or do not configure this policy setting, all programs on this computer can use the Windows Location Provider feature.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Turn off Windows Location Provider*
-   GP name: *EnableLocation*
-   GP path: *Windows Components/Location and Sensors/Windows Location Provider*
-   GP ADMX file name: *microsoft-windows-geolocation-wlpadm.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default, not configured) - Allow Windows Location Provider feature
-   1 - Disallow Windows Location Provider feature

<!--/SupportedValues-->
<!--/Policy-->
<hr/>

<!--/Policies-->