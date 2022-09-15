---
title: FAQs on Microsoft Connected Cache for ISP
manager: dougeby
description: FAQs on Microsoft Connected Cache (MCC) for ISP
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

# Microsoft Connected Cache for ISP (public preview)

**Applies to**

- Windows 10
- Windows 11

<br/>

 **1. Is this a free service?**  
Yes. Microsoft Connected Cache is a free service.  

<br/>
	
**2. What will Microsoft Connected Cache do for me? How will it impact our customers?**  
As an ISP, your network can benefit from reduced load on your backbone and improve customer download experience for supported Microsoft static content. It will also help you save on CDN costs.  

<br/>
	
**3. Is there an NDA to sign?**  
	No NDA is required.

<br/>

**4. What are the prerequisites and hardware requirements?**  
- Azure subscription  
- Hardware to host Microsoft Connected Cache - The recommended configuration below will serve approximately 35,000 consumer devices downloading a 2GB payload in 24-hour timeframe at a sustained rate of 6.5 Gbps.  
We have 1 customer who is able to achieve 40 Gbps egress rate using the following hardware specification:  
    - Dell PowerEdge R330  
	- 2 x Intel(R) Xeon(R) CPU E5-2630 v3 @ 2.40GHz , total 32core  
	- 48GB, Micron Technology 18ASF1G72PDZ-2G1A1, Speed: 2133 MT/s  
	- 4 - Transcend SSD230s 1TB SATA Drives  
Intel Corporation Ethernet 10G 2P X520 Adapter (Link Aggregated)

<br/>

| Taffic Estimate | Hardware/VM Recommendation |  
|-----------|:-----------:|  
| <5G Peak | 8 Cores<br/>16 GB Memory<br/>1 SSD Drive 500 GB |  
| 10 - 20G Peak | 16 Cores<br/>32 GB Memory<br/>2 - 3 SSD Drives 1 TB |  
| 20 - 40G Peak | 32 Cores<br/>64 GB Memory<br/>4 - 6 SSDs 1 TB |  

<br/>
<br/>
	
**5. Will I need to provide hardware BareMetal server or VM?**  
	Microsoft Connected Cache is a software-only caching solution and will require you to provide your own server to host the software.
	
<br/>

**6. Can we use hard drives instead of SSDs?**  
We highly recommend using SSDs as Microsoft Connected Cache is a read intensive application. We also recommend using multiple drives to improve performance.

<br/>

**7. Will I need to manually enter the CIDR blocks? If I have multiple cache nodes, should I configure a subset of CIDR blocks to each cache node?**  
You have the option to route your traffic using manual CIDR blocks or BGP. If you have multiple Microsoft Connected Cache(s), you can allocate subsets of CIDR blocks to each cache node if you wish. However, since Microsoft Connected Cache has automatic load balancing, we recommend adding all of your traffic to all of your cache nodes.
	
<br/>

**8. Should I add any load balancing mechanism?**  
You do not need to add any load balancing. Our service will take care of routing traffic if you have multiple cache nodes serving the same CIDR blocks based on the reported health of the cache node.

<br/>

**9. How many Microsoft Connected Cache instances will I need? How do we setup if we support multiple countries?**  
As stated in the table above, the recommended configuration will achieve near the maximum possible egress of 20Gbps with a two-port link aggregated NIC and four cache drives. If you provide us with your ASN numbers, we can give a rough estimate of how many Microsoft Connected Cache instances may be needed. If your ISP spans multiple countries, you can set up separate cache nodes per country.

<br/>

**10. Where should we install Microsoft Connected Cache?**  
You are in control of your hardware and you can pick the location based on your traffic and end customers. You can choose the location where you have your routers or where you have dense traffic or any other parameters.

<br/>
	
**11. How long would a piece of content live within the Microsoft Connected Cache? Is content purged from the cache?**  
A request for said content is made, and NGINX looks at the cache control headers from the original acquisition, and if that content has expired, NGINX will continue to serve the stale content while it is downloading the new content.  We are caching the content for 30 days.  The content will be in the hot cache path (open handles and such) for 24 hrs, but will reside on disk for 30 days.  
The drive fills up and nginx will start to delete content based on its own algorithm, probably some combination of least recently used.
	
<br/>

**12. What content is cached by Microsoft Connected Cache?**  
See [Delivery Optimization and Microsoft Connected Cache content endpoints - Windows Deployment](delivery-optimization-endpoints.md) for more information.

<br/>
	
**13. Does Microsoft Connected Cache support Xbox or Teams content?**  
Currently, Microsoft Connected Cache does not support Xbox or Teams content. However, supporting Xbox content is of high priority, and we expect this feature in the near future. We'll let you know as soon as it becomes available!

<br/>
	
**14. Is IPV6 supported?**  
No, we do not currently support IPV6. We plan to support it in the future. 
		
<br/>

**15. Is Microsoft Connected Cache stable and reliable?**  
We have already successfully onboarded ISPs in many countries around the world and have received positive feedback! However, you can always start off with a portion of your CIDR blocks to test out the performance of MCC before expanding to more customers.

<br/>

**16.How does Microsoft Connected Cache populate its content?**  
Microsoft Connected Cache is a cold cache warmed by client requests. The client requests content and that is what fills up the cache. There is no off-peak cache fill necessary.  
Microsoft Connected Cache will reach out to different CDN providers just like a client device would. The traffic flow from Microsoft Connected Cache will vary depending on how you currently transit to each of these CDN providers. The content can come from 3rd party CDNs or from AFD.
	
<br/>
	
**17. What do I do if I need more support and have more questions even after reading this FAQ page?**  
You can find more information or post your questions on MCC Community Forum.  
<link to community forum>  

For further support for your Microsoft Connected Cache you can find solutions to common problems here. <link to common issues>

<br/>

**18. What CDNs will Microsoft Connected Cache pull content from?**  
	Microsoft relies on a dynamic mix of 1st and 3rd party CDN providers to ensure enough capacity, redundancy, and performance for the delivery of Microsoft served content.  Though we do not provide lists of the CDN vendors we utilize as they can change without notice, our endpoints are public knowledge.  If someone were to perform a series of DNS lookups against our endpoints (tlu.dl.delivery.mp.microsoft.com for example), they would be able to determine which CDN or CDNs were in rotation at a given point in time:
	 
		$ dig +noall +answer tlu.dl.delivery.mp.microsoft.com | grep -P "IN\tA"
		c-0001.c-msedge.net.    20      IN      A       13.107.4.50
		 
		$ whois 13.107.4.50|grep "Organization:"
		Organization:   Microsoft Corporation (MSFT)
