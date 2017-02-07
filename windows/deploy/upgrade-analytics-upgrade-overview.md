---
title: Upgrade Analytics - Upgrade Overview (Windows 10)
description: Displays the total count of computers sharing data and upgraded.
ms.prod: w10
author: greg-lindsay
---

# Upgrade Analytics - Upgrade overview

The first blade in the Upgrade Analytics solution is the upgrade overview blade. This blade displays the total count of computers sharing data with Microsoft, and the count of computers upgraded. As you successfully upgrade computers, the count of computers upgraded increases.

The upgrade overivew blade displays data refresh status, including the date and time of the most recent data update and whether user changes are reflected. The following status changes are reflected on the upgrade overview blade:

- Computers with incomplete data:
    - Less than 4% = count is displayed in green.
    - 4% - 10% = Count is displayed in amber.
    - Greater than 10%  = Count is displayed in red.
- Delay processing device inventory data = The "Last updated" banner is displayed in amber.
- Pending user changes = User changes count displays "Data refresh pending" in amber.
- No pending user changes = User changes count displays "Up to date" in green.

<!-- PRESERVING ORIGINAL IMAGE CODING JUST IN CASE
<img src="media/image3.png" width="214" height="345" />
-->

If data processing is delayed, you can continue using your workspace as normal. However, any changes or additional information that is added might not be displayed. Data is typically refreshed and the display will return to normal again within 24 hours.

Select **Total computers** for a list of computers and details about them, including:

-   Computer ID and computer name
-   Computer manufacturer
-   Computer model
-   Operating system version and build
-   Count of system requirement, application, and driver issues per computer
-   Upgrade assessment based on analysis of computer telemetry data
-   Upgrade decision status

Select **Total applications** for a list of applications discovered on user computers and details about them, including:

-   Application vendor
-   Application version
-   Count of computers the application is installed on
-   Count of computers that opened the application at least once in the past 30 days
-   Percentage of computers in your total computer inventory that opened the application in the past 30 days
-   Issues detected, if any
-   Upgrade assessment based on analysis of application data
-   Rollup level