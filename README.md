NoProduct
在需要调用的地方调用文件：
   #import "NoProduct.h" <br>
然后在需要显示的地方调用如下代码：  
    [NoProduct showOnView:self.view];   
    [NoProduct showOnView:self.view image:[UIImage imageNamed:@"noData.png"]];    
    [NoProduct showOnView:self.view title:@"—— 当前无相关数据 ——" frame:frame];   
    [NoProduct showOnView:self.view image:[UIImage imageNamed:@"noData.png"] title:@"—— 当前无相关数据 ——" frame:frame];

需要隐藏该提示调用如下代码：
    [NoProduct hiddenOnView:self.view];
