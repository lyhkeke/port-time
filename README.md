##              基于Java web的大学生兼职系统  
  本系统采用MVC的设计模式，主要有controller，service，mapper，entity四层，分别建立四个包存储大大小小30多个类，其中controller包中的controller类是整体业务的控制类，service包中是业务的具体实现类，mapper包中的XML文件是负责和底层数据库的映射，各层之间注入调用实现了下面多个模块的功能：  
  1. 管理员模块  本模块主要负责管理员的增删查改操作  
  2. 获取所有兼职模块：主要实现所有兼职系统增删查改      
  3. 招聘信息详情模块：获取发布的订单，订单编号查找到对应的订单对象  
  4. 兼职报名模块：本模块点击报名参加则能实现兼职报名操作  
  5. 用户发布招聘信息模块：本模块可以让用户对招聘信息进行增删改操作  
  6. 用户注册模块：模块负责完成新用户的注册功能，并能对注册信息进行检查  
  7. 已报名兼职模块：本模块可以在个人中心中获取自己的已报名兼职信息  
  8. 验证模块：本模块验证用户注册时用户名是否被占用  
  9. 用户和管理员的退出登录模块：实现登录功能  
  10. 密码修改模块：本模块主要实现了对用户密码的修改功能的实现
