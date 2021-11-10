---
title: Get seats assigned to a user
description: The Get seats assigned to a user operation retrieves information about assigned seats in the Micosoft Store for Business.
ms.assetid: CB963E44-8C7C-46F9-A979-89BBB376172B
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 09/18/2017
---

# Get seats assigned to a user

The **Get seats assigned to a user** operation retrieves information about assigned seats in the Micosoft Store for Business.

## Request

**GET:**

```http
https:<span></span>//bspmts.mp.microsoft.com/V1/Users/{username}/Seats?continuationToken={ContinuationToken}&amp;maxResults={MaxResults}
```

### URI parameters

The following parameters may be specified in the request URI.

|Parameter|Type|Description|
|--- |--- |--- |
|useName|string|Requires UserPrincipalName (UPN). User name of the target user account.|
|continuationToken|string|Optional.|
|maxResults|inteter-32|Optional. Default = 25, Maximum = 100|

 
## Response

### Response body

The response body contain [SeatDetailsResultSet](data-structures-windows-store-for-business.md#seatdetailsresultset).

|Error code|Description|Retry|Data field|
|--- |--- |--- |--- |
|400|Invalid parameters|No|Parameter name<br>Reason: Invalid parameter<br>Details: String|
|404|Not found||Item type: User
Values: UserName|

 

 





