package com.kh.spring.mail;
import java.io.UnsupportedEncodingException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class MailSender {
	private String fromEmail;
	private String password;
	
	public MailSender() {
		this.fromEmail = "tlstmdghks4@gmail.com";
		this.password = "ssh!1082416"; // 비밀번호 입력해야 정상가동 ㅎ
	}
	
	public void sendMail(String toEmail, String toName, String subject, String content) {
		try {
			Properties props = new Properties();
			props.put("mail.smtp.starttls.enable", "true");
			props.put("mail.transport.protocol", "smtp");
			props.put("mail.smtp.host", "smtp.gmail.com");
			props.put("mail.smtp.port", "465");
			props.put("mail.smtp.auth", "true");
			props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory"); 
			
			MyAuth auth = new MyAuth(fromEmail, password);
			Session session = Session.getDefaultInstance(props,auth);
			
			MimeMessage msg = new MimeMessage(session);
			msg.setHeader("Content-Type", "text/plain;charset=utf-8");
			msg.addRecipient(Message.RecipientType.TO, 
					new InternetAddress(toEmail, toName, "utf-8"));
			msg.setSubject(subject);
			msg.setContent(content, "text/plain;charset=utf-8");
			msg.setSentDate(new java.util.Date());
			
			Transport.send(msg);
			
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}
}
