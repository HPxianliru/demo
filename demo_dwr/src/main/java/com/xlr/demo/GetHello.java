/**
 * 
 */
package com.xlr.demo;

import java.util.Collection;

import org.directwebremoting.ScriptBuffer;
import org.directwebremoting.ScriptSession;
import org.directwebremoting.WebContext;
import org.directwebremoting.WebContextFactory;
import org.directwebremoting.export.Data;
import org.directwebremoting.proxy.dwr.Util;

/**
 * <p>Title:GetHello</p>
 * @author xlr
 * @date 2017年6月28日
 */
@SuppressWarnings("deprecation")
public class GetHello {
	
	@SuppressWarnings("deprecation")
	public void sayHello(String meg){
		
		WebContext webContext = WebContextFactory.get();
		Collection<ScriptSession> scSessions = webContext.getAllScriptSessions();
		System.err.println("当前用户数量："+scSessions.size());
		ScriptBuffer sb = new ScriptBuffer();
		sb.appendCall("callback",meg);
		System.err.println("SB : "+sb);
		int i=0;
		for(ScriptSession session:scSessions){
			++i;
			System.err.println("第"+i+" "+session.getId());
			session.addScript(sb);
		}
		System.out.println("执行sayHello 收到参数："+meg);
	}
	public String sayOne(){
		return "hello One!"+new Data();
	}
}
