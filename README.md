# WJWebViewAlertDemo
WebViewAlert:自定义网页中的alert和confirm提示框风格; UIWebView、JavaScript 、Alert

##说明
 JavaScript中有Alert、confirm 和promopt三种提示框，类似ios本地的UIAlertview，但是在ios native的app中弹出的话alert的title是url的地址，比较丑。为了美观，我们需要自定义网页弹出框。

##使用
  直接将WebViewAlert文件夹拖入工程，在下面函数中定义弹出框：
  
       -(void)webView:(UIWebView *)sender runJavaScriptAlertPanelWithMessage:(NSString *)message initiatedByFrame:(CGRect)frame；
     
      -(BOOL)webView:(UIWebView *)sender runJavaScriptConfirmPanelWithMessage:(NSString *)message initiatedByFrame:(CGRect)frame；
     
       -(void) webView:(UIWebView *)sender runJavaScriptTextInputPanelWithPrompt:(NSString *)prompt defaultText:(NSString *)text initiatedByFrame:(CGRect )frame；
     

##效果图

###修改前：
   
   ![WJWebViewAlertDemo](https://github.com/WinJayQ/WJWebViewAlertDemo/raw/master/wj1.png) 
   
   
###修改后：
   
   ![WJWebViewAlertDemo](https://github.com/WinJayQ/WJWebViewAlertDemo/raw/master/wj2.png) 
   
   
   
   ![WJWebViewAlertDemo](https://github.com/WinJayQ/WJWebViewAlertDemo/raw/master/wj3.png) 
