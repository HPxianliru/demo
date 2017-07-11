/**
 * 
 */
package com.xlr.util.mq;

import org.apache.activemq.command.ActiveMQQueue;
import org.springframework.jms.connection.CachingConnectionFactory;
import org.springframework.jms.listener.DefaultMessageListenerContainer;

/**
 * <p>Title:ListenerContainer</p>
 * @author xlr
 * @date 2017年6月10日
 */
public class ListenerContainer extends DefaultMessageListenerContainer {
	
	CachingConnectionFactory cachingConnectionFactory;
	
	ActiveMQQueue activeMQQueue;
	
	String  concurrency;
	
	public CachingConnectionFactory getCachingConnectionFactory() {
		return cachingConnectionFactory;
	}

	public void setCachingConnectionFactory(CachingConnectionFactory cachingConnectionFactory) {
		this.cachingConnectionFactory = cachingConnectionFactory;
	}

	public ActiveMQQueue getActiveMQQueue() {
		return activeMQQueue;
	}

	public void setActiveMQQueue(ActiveMQQueue activeMQQueue) {
		this.activeMQQueue = activeMQQueue;
	}

	public String getConcurrency() {
		return concurrency;
	}

	@Override
	public void setConcurrency(String concurrency) {
		try {
			int separatorIndex = concurrency.indexOf('-');
			if (separatorIndex != -1) {
				setConcurrentConsumers(Integer.parseInt(concurrency.substring(0, separatorIndex)));
				setMaxConcurrentConsumers(Integer.parseInt(concurrency.substring(separatorIndex + 1, concurrency.length())));
			}
			else {
				setConcurrentConsumers(1);
				setMaxConcurrentConsumers(Integer.parseInt(concurrency));
			}
		}
		catch (NumberFormatException ex) {
			throw new IllegalArgumentException("Invalid concurrency value [" + concurrency + "]: only " +
					"single maximum integer (e.g. \"5\") and minimum-maximum combo (e.g. \"3-5\") supported.");
		}
	}
}
