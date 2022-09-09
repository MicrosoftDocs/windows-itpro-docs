# Monitor cache node health and performance

## Metrics 
Within Azure portal, there are a number of metrics that are available to monitor cache node health and performance.

### Available Metrics
    - **Cache Efficiency**: Cache efficiency is defined as the total cache hit bytes divided by all bytes requested. The higher this value (0 - 100%), the more efficient the cache node is. 

    - **Healthy nodes**: The number of cache nodes that are reporting as healthy
    - **Unhealthy nodes**: The number of cache nodes that are reporting as unhealthy
    - **Maximum in**: The maximum egress (in Gbps) of inbound traffic
    - **Maximum out**: The maximum egress (in Gbps) of outbound traffic
    - **Average in**: The average egress (in Gbps) of inbound traffic
    - **Average out**: The average egress (in Gbps) of outbound traffic

### Viewing your metrics
To view the metrics associated with your cache nodes, navigate to the **Overview** >> **Monitoring** tab within Azure portal.

[[ include screenshot of an example view]]

You can choose to monitor the health and performance of all cache nodes or one by one by using the dropdown menu. The **Egress bits per second** graph shows your inbound and outbound traffic of your cache nodes over time. You can change the time range (1 hour, 12 hours, 1 day, 7 days, 14 days, and 30 days) by selecting the time range of choice on the top bar.

If you are unable to view metrics for your cache node, it may be that your cache node is unhealthy, inactive, or hasn't been fully configured. 
