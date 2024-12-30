# Input 插件
## tail 插件
tail插件从指定的文件当中读取事件。

1. @type 必须参数，指定输入时间的类型。
2. tag 增加日志输出的类型
3. path 日志读取路径
4. pos_file 记录上次读取位置，也是下次日志读取位置。
5. <parse></parse> 需要支持parse，解析输出的日志。
6. read_from_head 从头开始读取文件或者上次pos_file 文件记录位置。
``` example
<source>
  @type tail
  path /var/log/*.log
  pos_file /var/log/fluentd-input.log.pos_file
  read_from_head true
  tag file_output
  <parse>
    @type json
  </parse>
</source>
```

## forward 插件
forward插件用来支持从其他fluentd获取时间。
暂时不补充

## syslog 插件
syslog插件用来支持从UDP或者TCP检索数据

# filter 插件
## record_transformer 插件
通过多种方式改变传入的事件流。可以增加，删除，修改事件。
功能列表
1：插入新值。可以从环境变量，内置变量，字符串等获取。可计算，重新拼接。可配合ruby的使用方式。
2：根据field删除值。

# inject section 模块
1：使用在<match> <filter> 模块当中，
2：支持功能比较少，支持根据改写hostname字段。改写tag字段。改写time字段。注入worker_id字段。
3：对于time字段，支持修改格式。



