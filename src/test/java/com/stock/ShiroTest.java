package com.stock;

import java.io.File;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.config.IniSecurityManagerFactory;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.util.Factory;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.core.io.FileSystemResource;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

public class ShiroTest {
	
//	@Test
//	public void testHelloWorld() {
//		Factory<org.apache.shiro.mgt.SecurityManager> factory = new IniSecurityManagerFactory("classpath:shiro.ini");
//		org.apache.shiro.mgt.SecurityManager securityManager = factory.getInstance();
//		SecurityUtils.setSecurityManager(securityManager);
//		Subject subject = SecurityUtils.getSubject();
//		UsernamePasswordToken token = new UsernamePasswordToken("zhang", "123");
//		try {
//			subject.login(token);		
//		} catch(AuthenticationException e) {
//			
//		}
//		Assert.assertEquals(true, subject.isAuthenticated());
//		subject.logout();
//	}
	
	@Test  
	public void testUpload() throws Exception {
		Factory<org.apache.shiro.mgt.SecurityManager> factory = new IniSecurityManagerFactory("classpath:shiro.ini");
		org.apache.shiro.mgt.SecurityManager securityManager = factory.getInstance();
		SecurityUtils.setSecurityManager(securityManager);
		Subject subject = SecurityUtils.getSubject();
		UsernamePasswordToken token = new UsernamePasswordToken("zhang", "123");
		try {
			subject.login(token);		
		} catch(AuthenticationException e) {
			
		}
	    String url = "http://localhost:8080/api/img/upload";  
	    String filePath = "C:\\Users\\Administrator\\Desktop\\test.txt";  
	    RestTemplate rest = new RestTemplate();  
	    FileSystemResource resource = new FileSystemResource(new File(filePath));  
	    MultiValueMap<String, Object> param = new LinkedMultiValueMap<>();  
	    param.add("jarFile", resource);
//	    param.add("fileName", "test.txt");
	    String string = rest.postForObject(url, param, String.class);  
	    System.out.println(string);  
	}

}
