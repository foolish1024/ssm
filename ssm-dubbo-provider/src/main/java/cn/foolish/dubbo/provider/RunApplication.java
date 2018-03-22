package cn.foolish.dubbo.provider;

import java.io.IOException;

import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Hello world!
 *
 */
public class RunApplication {
	public static void main(String[] args) throws IOException {
		@SuppressWarnings("resource")
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("dubbo/dubbo-provider.xml");
		System.out.println(context.getDisplayName() + ": here");
		context.start();
		System.out.println("服务已经启动...");
		System.in.read();
	}
}
