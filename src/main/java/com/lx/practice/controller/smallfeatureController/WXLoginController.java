package  com.lx.practice.controller.smallfeatureController;


import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lx.practice.util.WXUnitl;
import com.lx.practice.util.WeiXinUnitl;
import com.lx.practice.util.WinXinEntity;


//分享功能控制
@Controller
@RequestMapping("/wx")
public class WXLoginController {
    @RequestMapping("/sgture")
    @ResponseBody
    public Map<String, Object> sgture(HttpServletRequest request) {
        String strUrl = request.getParameter("url");//通过request作用域获取前台传过来的url值
        System.out.println("url---------"+strUrl);
        WinXinEntity wx = WeiXinUnitl.getWinXinEntity(strUrl);
        // 
        Map<String, Object> map = new HashMap<String, Object>();
        String sgture = WXUnitl.getSignature(wx.getTicket(), wx.getNoncestr(), wx.getTimestamp(), strUrl);
        map.put("sgture", sgture.trim());//
        map.put("timestamp", wx.getTimestamp().trim());//
        map.put("noncestr", wx.getNoncestr().trim());
        map.put("appid", "appID");//
        return map;
    }

}
