package models.services.mail;


import com.mailjet.client.ClientOptions;
import com.mailjet.client.MailjetClient;
import com.mailjet.client.MailjetRequest;
import com.mailjet.client.MailjetResponse;
import com.mailjet.client.errors.MailjetException;
import com.mailjet.client.errors.MailjetSocketTimeoutException;
import com.mailjet.client.resource.Emailv31;
import org.json.JSONArray;
import org.json.JSONObject;

public class MailJetService implements IMailJetService {
    private static MailJetService instance = null;
    public static MailJetService getInstance(){
        if(instance == null)
            instance = new MailJetService();
        return instance;
    }
    @Override
    public boolean sendMail(String name, String email, String content, String title) {
        MailjetClient client;
        MailjetRequest request;
        MailjetResponse response;
        client = new MailjetClient("0dd4df9fb4b5bfffa7cb7ee1ebc68496", "ea18a5cd31c7ded8f1207b3418361bba", new ClientOptions("v3.1"));
        request = new MailjetRequest(Emailv31.resource)
                .property(Emailv31.MESSAGES, new JSONArray()
                        .put(new JSONObject()
                                .put(Emailv31.Message.FROM, new JSONObject()
                                        .put("Email", "huongmya53@gmail.com")
                                        .put("Name", "FurSshop"))
                                .put(Emailv31.Message.TO, new JSONArray()
                                        .put(new JSONObject()
                                                .put("Email", email)
                                                .put("Name", name)))
                                .put(Emailv31.Message.SUBJECT, title)
                                .put(Emailv31.Message.HTMLPART, content)));

        try {
            response = client.post(request);
        } catch (MailjetException | MailjetSocketTimeoutException e) {
            return false;
        }
        return true;
    }
}
