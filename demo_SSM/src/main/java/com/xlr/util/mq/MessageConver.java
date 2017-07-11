/**
 * 
 */
package com.xlr.util.mq;

import java.util.Arrays;
import java.util.List;

import javax.jms.JMSException;
import javax.jms.Message;
import javax.jms.Session;
import javax.jms.TextMessage;

import org.springframework.jms.support.converter.MessageConversionException;
import org.springframework.jms.support.converter.MessageConverter;
import org.springframework.stereotype.Service;

/**
 * <p>Title:MessageConver</p>
 * @author xlr
 * @date 2017年6月10日
 */
@Service("messageConver")
public class MessageConver implements MessageConverter {

/*	Java.jms.TextMessage                              String

	Java.jms.MapMessage                             java.util.Map

	Java.jms.ObjectMessage                          java.io.Serializable

	Java.jms.ByteMessage                             byte[] byte*/
	
	
	
	public Message toMessage(Object object, Session session) throws JMSException, MessageConversionException {
		String string = (String) object;
		return session.createTextMessage(string);
	}

	public Object fromMessage(Message message) throws JMSException, MessageConversionException {
		List<String> list = null;
		if(message instanceof TextMessage){
			TextMessage textMessage =  (TextMessage) message;
			String content = textMessage.getText();
			String[] stringArr= content.split("｜");
			list = Arrays.asList(stringArr);
		}
		return list;
	}

}
