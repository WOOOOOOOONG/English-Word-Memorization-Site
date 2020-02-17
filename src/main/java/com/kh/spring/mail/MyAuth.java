package com.kh.spring.mail;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class MyAuth extends Authenticator {
	private String fromEmail;
	private String password;
	
	public MyAuth(String fe, String pwd) {
		this.fromEmail = fe;
		this.password = pwd;
		
	}
	@Override
	protected PasswordAuthentication getPasswordAuthentication() {
		return new PasswordAuthentication(fromEmail, password);
		
	}
}
