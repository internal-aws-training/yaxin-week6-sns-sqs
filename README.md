##SNS & SQS
#### **Basic**
1. SNS 是什么服务？解决什么问题？

2. SQS 是什么服务？解决什么问题？
   https://aws.amazon.com/sns/

   https://aws.amazon.com/sqs/

#### **Practice**
Event schedule 定时触发 SNS。SNS 会发邮件，同时向 SQS 中更新消息，SQS 触发Lambda。
**Acceptance Criterias**

1. 每 5 mins 自动触发SNS的Topic

2. SNS 自动发送邮件，邮件内容包含所有 event 的内容

3. SNS 向订阅的 SQS中发送消息

4. SQS要有retention(7days) / timeout(5mins)

5. SQS自动触发Lambda运行，Lambda将event的所有内容输出到CloudWatch log中
   https://docs.aws.amazon.com/sns/latest/dg/welcome.html

   https://docs.aws.amazon.com/lambda/latest/dg/with-sns.html

   https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html

   https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html

   https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/Create-CloudWatch-Events-Scheduled-Rule.html

#### **In Action**
1. SNS要有 logging / encryption / retry / permission

2. Email Subscription 要有 DLQ

3. SQS要有 DLQ / encryption

4. tagging

5. As Code: CFN
   https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/AWS_SNS.html

   https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/AWS_SQS.html

   https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-rule.html

   https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/parameters-section-structure.html

#### **Nice to Have**
1. 能够随时部署及删除Project（使用Docker部署）

2. 最小权限

3. 消息发送失败报警
   https://docs.aws.amazon.com/cli/latest/reference/cloudformation/index.html

   https://aws.amazon.com/sns/faqs/

   https://aws.amazon.com/sqs/faqs/