package com.atguigu.springcloud;

import com.atguigu.myrule.MySelfRule;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.cloud.netflix.ribbon.RibbonClient;

@SpringBootApplication
@EnableEurekaClient
//在启动该微服务的时候就能去加载我们的自定义Ribbon配置类，从而使配置生效
//@RibbonClient(name="MICROSERVICECLOUD-DEPT",configuration=MySelfRule.class), Ribbon默认是轮询机制
//Ribbon在工作时分成两步
//第一步：先选择EurekaServer,它优先选择在同一个区域内负载较少的server.
//第二步：再根据用户指定的策略，在从server取到的服务注册列表中选择一个地址。
//其中Ribbon提供了多种策略：比如轮询、随机和根据响应时间加权。
@RibbonClient(name="MICROSERVICECLOUD-DEPT",configuration= MySelfRule.class)
public class DeptConsumer80_App
{
	public static void main(String[] args)
	{
		SpringApplication.run(DeptConsumer80_App.class, args);
	}
}

//Ribbon负载均衡springcloud设置7种算法：
//RoundRobinRule 轮询
//RandomRule 随机
//AvailabilityFilteringRule 会先过滤掉由于多次访问故障而处于断路器跳闸状态的服务，还有并发的连接数量超过阀值的服务，然后对剩余服务列表按照轮询策略进行访问
//WeightedResponseTimeRule:根据平均响应时间计算所有服务的权重，响应时间越快服务权重越大被选中的概率越高。刚启动时如果统计信息不足，
//                         则使用RoundRobinRule策略，等统计信息足够，会切换到WeightResponseTimeRule
//RetryRule 先按照RoundRobinRule的策略获取服务，如果获取服务失败则在指定时间内会进行重试，获取可用的服务
//BestAvailableRule 会先过滤掉由于多次访问故障而处于断路跳闸状态的服务，然后选择一个并发量小的服务
//ZoneAvoidanceRule 默认规则，复合判断server所在区域的性能和server的可用选择服务器