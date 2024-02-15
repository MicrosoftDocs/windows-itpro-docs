---
author: paolomatarazzo
ms.author: paoloma
ms.date: 02/05/2024
ms.topic: include
ms.prod: windows-client
---

```powershell
$assignedAccessConfiguration = @"
<?xml version="1.0" encoding="utf-8" ?>
<AssignedAccessConfiguration
    xmlns="http://schemas.microsoft.com/AssignedAccess/2017/config"
    xmlns:rs5="http://schemas.microsoft.com/AssignedAccess/201810/config"
    xmlns:v4="http://schemas.microsoft.com/AssignedAccess/2021/config"
    >
    <Profiles>
        <Profile Id="{EDB3036B-780D-487D-A375-69369D8A8F78}">
            <KioskModeApp v4:ClassicAppPath="%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" v4:ClassicAppArguments="--kiosk https://maps.cltairport.com/ --edge-kiosk-type=fullscreen --kiosk-idle-timeout-minutes=2" />
            <v4:BreakoutSequence Key="Ctrl+A"/>
        </Profile>
    </Profiles>
    <Configs>
        <Config>
            <AutoLogonAccount rs5:DisplayName="Airport Kiosk"/>
            <DefaultProfile Id="{EDB3036B-780D-487D-A375-69369D8A8F78}"/>
        </Config>
    </Configs>
</AssignedAccessConfiguration>
"@

$eventLogFilterHashTable = @{
    ProviderName = "Microsoft-Windows-AssignedAccess";
    StartTime    = Get-Date -Millisecond 0
}

$namespaceName="root\cimv2\mdm\dmmap"
$className="MDM_AssignedAccess"
$obj = Get-CimInstance -Namespace $namespaceName -ClassName $className
$obj.Configuration = [System.Net.WebUtility]::HtmlEncode($assignedAccessConfiguration)
$obj = Set-CimInstance -CimInstance $obj -ErrorVariable cimSetError -ErrorAction SilentlyContinue
if($cimSetError) {
    Write-Output "An ERROR occurred. Displaying error record and attempting to retrieve error logs...`n"
    Write-Error -ErrorRecord $cimSetError[0]

    $timeout = New-TimeSpan -Seconds 30
    $stopwatch = [System.Diagnostics.Stopwatch]::StartNew()
    do{
        $events = Get-WinEvent -FilterHashtable $eventLogFilterHashTable -ErrorAction Ignore
    } until ($events.Count -or $stopwatch.Elapsed -gt $timeout) # wait for the log to be available

    if($events.Count) {
        $events | ForEach-Object {
            Write-Output "$($_.TimeCreated) [$($_.LevelDisplayName.ToUpper())] $($_.Message -replace "`n|`r")"
        }
    } else {
        Write-Warning "Timed-out attempting to retrieve event logs..."
    }

    Exit 1
}

Write-Output "Successfully applied Assigned Access configuration"
```