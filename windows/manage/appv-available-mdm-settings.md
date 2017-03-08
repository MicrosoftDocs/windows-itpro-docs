---
title: Available Mobile Data Management (MDM) settings for App-V (Windows 10)
description: A list of the available MDM settings for App-V on Windows 10.
author: eross-msft
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
---

# Available Mobile Data Management (MDM) settings for App-V
If you manage your policies using Microsoft Intune, you'll want to use these MDM policy settings. You can see the full list of available policies, on the [Policy CSP]() page.

<table>
    <tr>
        <th>Policy name</th>
        <th>Supported versions</th>
        <th>Details</th>
    </tr>
    <tr>
        <td>Name</td>
        <td>Windows 10, Version 1703</td>
        <td>
            <ul>
                <li><strong>URI full path.</strong> ./Vendor/MSFT/EnterpriseAppVManagement/AppVPackageManagement/<em>&lt;enterprise_id&gt;</em>/<em>&lt;package_family_name&gt;</em>/<em>&lt;package_full_name&gt;</em>/Name</li>
                <li><strong>Data type.</strong> String</li>
                <li><strong>Value.</strong> Read-only data, provided by your App-V packages.</li>
            </ul>
        </td>
    </tr>
    <tr>
        <td>Version</td>
        <td>Windows 10, Version 1703</td>
        <td>
            <ul>
                <li><strong>URI full path.</strong> ./Vendor/MSFT/EnterpriseAppVManagement/AppVPackageManagement/<em>&lt;enterprise_id&gt;</em>/<em>&lt;package_family_name&gt;</em>/<em>&lt;package_full_name&gt;</em>/Version</li>
                <li><strong>Data type.</strong> String</li>
                <li><strong>Value.</strong> Read-only data, provided by your App-V packages.</li>
            </ul>
        </td>
    </tr>
    <tr>
        <td>Publisher</td>
        <td>Windows 10, Version 1703</td>
        <td>
            <ul>
                <li><strong>URI full path.</strong> ./Vendor/MSFT/EnterpriseAppVManagement/AppVPackageManagement/<em>&lt;enterprise_id&gt;</em>/<em>&lt;package_family_name&gt;</em>/<em>&lt;package_full_name&gt;</em>/Publisher</li>
                <li><strong>Data type.</strong> String</li>
                <li><strong>Value.</strong> Read-only data, provided by your App-V packages.</li>
            </ul>
        </td>
    </tr>
    <tr>
        <td>InstallLocation</td>
        <td>Windows 10, Version 1703</td>
        <td>
            <ul>
                <li><strong>URI full path.</strong> ./Vendor/MSFT/EnterpriseAppVManagement/AppVPackageManagement/<em>&lt;enterprise_id&gt;</em>/<em>&lt;package_family_name&gt;</em>/<em>&lt;package_full_name&gt;</em>/InstallLocation</li>
                <li><strong>Data type.</strong> String</li>
                <li><strong>Value.</strong> Read-only data, provided by your App-V packages.</li>
            </ul>
        </td>
    </tr>
    <tr>
        <td>InstallDate</td>
        <td>Windows 10, Version 1703</td>
        <td>
            <ul>
                <li><strong>URI full path.</strong> ./Vendor/MSFT/EnterpriseAppVManagement/AppVPackageManagement/<em>&lt;enterprise_id&gt;</em>/<em>&lt;package_family_name&gt;</em>/<em>&lt;package_full_name&gt;</em>/InstallDate</li>
                <li><strong>Data type.</strong> String</li>
                <li><strong>Value.</strong> Read-only data, provided by your App-V packages.</li>
            </ul>
        </td>
    </tr>
    <tr>
        <td>Users</td>
        <td>Windows 10, Version 1703</td>
        <td>
            <ul>
                <li><strong>URI full path.</strong> ./Vendor/MSFT/EnterpriseAppVManagement/AppVPackageManagement/<em>&lt;enterprise_id&gt;</em>/<em>&lt;package_family_name&gt;</em>/<em>&lt;package_full_name&gt;</em>/Users</li>
                <li><strong>Data type.</strong> String</li>
                <li><strong>Value.</strong> Read-only data, provided by your App-V packages.</li>
            </ul>
        </td>
    </tr>
    <tr>
        <td>AppVPackageID</td>
        <td>Windows 10, Version 1703</td>
        <td>
            <ul>
                <li><strong>URI full path.</strong> ./Vendor/MSFT/EnterpriseAppVManagement/AppVPackageManagement/<em>&lt;enterprise_id&gt;</em>/<em>&lt;package_family_name&gt;</em>/<em>&lt;package_full_name&gt;</em>/AppVPackageID</li>
                <li><strong>Data type.</strong> String</li>
                <li><strong>Value.</strong> Read-only data, provided by your App-V packages.</li>
            </ul>
        </td>
    </tr>
    <tr>
        <td>AppVVersionID</td>
        <td>Windows 10, Version 1703</td>
        <td>
            <ul>
                <li><strong>URI full path.</strong> ./Vendor/MSFT/EnterpriseAppVManagement/AppVPackageManagement/<em>&lt;enterprise_id&gt;</em>/<em>&lt;package_family_name&gt;</em>/<em>&lt;package_full_name&gt;</em>/AppVVersionID</li>
                <li><strong>Data type.</strong> String</li>
                <li><strong>Value.</strong> Read-only data, provided by your App-V packages.</li>
            </ul>
        </td>
    </tr>
    <tr>
        <td>AppVPackageUri</td>
        <td>Windows 10, Version 1703</td>
        <td>
            <ul>
                <li><strong>URI full path.</strong> ./Vendor/MSFT/EnterpriseAppVManagement/AppVPackageManagement/<em>&lt;enterprise_id&gt;</em>/<em>&lt;package_family_name&gt;</em>/<em>&lt;package_full_name&gt;</em>/AppVPackageUri</li>
                <li><strong>Data type.</strong> String</li>
                <li><strong>Value.</strong> Read-only data, provided by your App-V packages.</li>
            </ul>
        </td>
    </tr>
    <tr>
        <td>LastError</td>
        <td>Windows 10, Version 1703</td>
        <td>
            <ul>
                <li><strong>URI full path.</strong> ./Vendor/MSFT/EnterpriseAppVManagement/AppVPublishing/LastSync/LastError</li>
                <li><strong>Data type.</strong> String</li>
                <li><strong>Value.</strong> Read-only data, provided by your App-V client.</li>
            </ul>
        </td>
    </tr>
    <tr>
        <td>LastErrorDescription</td>
        <td>Windows 10, Version 1703</td>
        <td>
            <ul>
                <li><strong>URI full path.</strong> ./Vendor/MSFT/EnterpriseAppVManagement/AppVPublishing/LastSync/LastErrorDescription</li>
                <li><strong>Data type.</strong> String</li>
                <li><strong>Values.</strong>
                    <ul>
                        <li><strong>0.</strong> No errors returned during publish.</li>
                        <li><strong>1.</strong> Unpublish groups failed during publish.</li>
                        <li><strong>2.</strong> Publish no-group packages failed during publish.</li>
                        <li><strong>3.</strong> Publish group packages failed during publish.</li>
                        <li><strong>4.</strong> Unpublish packages failed during publish.</li>
                        <li><strong>5.</strong> New policy write failed during publish.</li>
                        <li><strong>6.</strong> Multiple non-fatal errors occurred during publish.</li>
                    </ul>
                </li>
            </ul>                                                                                                                     
        </td>
    </tr>
    <tr>
        <td>SyncStatusDescription</td>
        <td>Windows 10, Version 1703</td>
        <td>
            <ul>
                <li><strong>URI full path.</strong> ./Vendor/MSFT/EnterpriseAppVManagement/AppVPublishing/LastSync/SyncStatusDescription</li>
                <li><strong>Data type.</strong> String</li>
                <li><strong>Values.</strong>
                    <ul>
                        <li><strong>0.</strong> App-V publishing is idle.</li>
                        <li><strong>1.</strong> App-V connection groups publish in progress.</li>
                        <li><strong>2.</strong> App-V packages (non-connection group) publish in progress.</li>
                        <li><strong>3.</strong> App-V packages (connection group) publish in progress.</li>
                        <li><strong>4.</strong> App-V packages unpublish in progress.</li>
                    </ul>
                </li>
            </ul>                                                                                             
        </td>
    </tr>
    <tr>
        <td>SyncProgress</td>
        <td>Windows 10, Version 1703</td>
        <td>
            <ul>
                <li><strong>URI full path.</strong> ./Vendor/MSFT/EnterpriseAppVManagement/AppVPublishing/LastSync/SyncProgress</li>
                <li><strong>Data type.</strong> String</li>
                <li><strong>Values.</strong>
                    <ul>
                        <li><strong>0.</strong> App-V Sync is idle.</li>
                        <li><strong>1.</strong> App-V Sync is initializing.</li>
                        <li><strong>2.</strong> App-V Sync is in progress.</li>
                        <li><strong>3.</strong> App-V Sync is complete.</li>
                        <li><strong>4.</strong> App-V Sync requires device reboot.</li>
                    </ul>
                </li>
            </ul>                                                                                    
        </td>
    </tr>
    <tr>
        <td>PublishXML</td>
        <td>Windows 10, Version 1703</td>
        <td>
            <ul>
                <li><strong>URI full path.</strong> ./Vendor/MSFT/EnterpriseAppVManagement/AppVPublishing/Sync/PublishXML</li>
                <li><strong>Data type.</strong> String</li>
                <li><strong>Value.</strong> Custom value, entered by admin.</li>
            </ul>
        </td>
    </tr>
    <tr>
        <td>Policy</td>
        <td>Windows 10, Version 1703</td>
        <td>
            <ul>
                <li><strong>URI full path.</strong> ./Vendor/MSFT/EnterpriseAppVManagement/AppVDynamicPolicy/configurationid/Policy</li>
                <li><strong>Data type.</strong> String</li>
                <li><strong>Value.</strong> Custom value, entered by admin.</li>
            </ul>
        </td>
    </tr>
</table>