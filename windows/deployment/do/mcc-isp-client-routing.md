# Client Routing (CIDR, BGP)

Before serving traffic to your customers, client routing configuration is needed. During the configuration of your cache node in Azure portal, you will be able to route your clients to your cache node.

Microsoft Connected Cache offers two ways for you to route your clients to your cache node. The first method of manual entry involves uploading a comma-separated list of CIDR blocks that represents the clients. The second method of setting BGP (Border Gateway Protocol) is more automatic and dynamic, which is set up by establishing neighborships with other ASNs. All routing methods are set up within Azure portal. 

Once client routing and other settings are configured, your cache node will be able to download content and serve traffic to your customers. 

At this time, only IPv4 addresses are supported. IPv6 addresses are not supported.

### CIDR blocks

CIDR blocks are comprised of IP prefixes (groups of IP addresses) that represent your customer base. You can manually upload a list of your CIDR blocks in Azure portal.

### BGP routing

BGP (Border Gateway Protocol) routing is another method offered for client routing. BGP dynamically retrieves CIDR ranges by exchanging information with routers to understand reachable networks. For an automatic method of routing traffic, you can choose to configure BGP routing in Azure portal.

