require("WKWebView, UIScreen, UIScreen, NSURL, NSURLRequest");

defineClass("JSTestWebViewController", {
            initUI: function() {
            
            var webView = WKWebView.alloc().initWithFrame({x:0, y:0, width:418, height:900})
            
            var u = NSURL.URLWithString("https://www.baidu.com/");
            var request = NSURLRequest.requestWithURL(u);
            webView.loadRequest(request);
            self.view().addSubview(webView);
            }
            }, {});
