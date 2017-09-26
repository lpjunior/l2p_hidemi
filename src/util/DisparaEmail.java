package util;

import java.util.Properties;

import javax.mail.Address;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class DisparaEmail {
	public static boolean envia(String email) {

		Properties props = new Properties();
		/** Parâmetros de conexão com servidor Gmail */

		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", "465");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.socketFactory.port", "465");
		props.put("mail.smtp.socketFactory.fallback", "false");
		props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");

		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("aula.sendmail@gmail.com", "123qwe..");
			}
		});
		/** Ativa Debug para sessão */
		session.setDebug(true);
		try {
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress("aula.sendmail@gmail.com")); // Remetente
			Address[] toUser = InternetAddress // Destinatário(s)
					.parse(email);
			message.setRecipients(Message.RecipientType.TO, toUser);
			message.setSubject("Contato HidemiPhone");// Assunto
			message.setText("Obrigado pelo contato:\n" + "HidemiPhone conserto de iPhone iPad");
			/** Método para enviar a mensagem criada */
			Transport.send(message);
			System.out.println("Enviado!!!");
			return true;
		} catch (MessagingException e) {
			System.out.println("Falha ao enviar o email");
			// throw new RuntimeException(e);
			return false;
		}
	}
}
