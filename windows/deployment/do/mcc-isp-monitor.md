# Monitor cache node health and performance

## Metrics 
Within Azure portal, there are a number of metrics that are available to monitor cache node health and performance.


### Available Metrics

Within Azure portal, you are able to build your custom metrics using the following available metrics: 

| Metric name | Description |
| -- |  ---- |  
| **Cache Efficiency** |  Cache efficiency is defined as the total cache hit bytes divided by all bytes requested. The higher this value (0 - 100%), the more efficient the cache node is. | 
| **Healthy nodes** |  The number of cache nodes that are reporting as healthy| 
| **Unhealthy nodes**| The number of cache nodes that are reporting as unhealthy| 
| **Maximum in**| The maximum egress (in Gbps) of inbound traffic| 
| **Maximum out**| The maximum egress (in Gbps) of outbound traffic| 
|  **Average in**|  The average egress (in Gbps) of inbound traffic| 
| **Average out**| The average egress (in Gbps) of outbound traffic| 

To learn more about how to build your custom metrics, visit [Azure Monitor](https://docs.microsoft.com/en-us/azure/azure-monitor/essentials/data-platform-metrics) for details.
