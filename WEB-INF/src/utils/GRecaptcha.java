package utils;

import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.HttpURLConnection;
import javax.json.Json;
import javax.json.JsonReader;
import javax.json.JsonObject;


public class GRecaptcha {
    public static boolean verifyRecaptchaResponse(String responseToken) throws IOException { 
        
        //recaptcha verification...
        String recaptchaURL = "https://www.google.com/recaptcha/api/siteverify";

        String secretKey = "6LeggfIiAAAAALzkOz9C_5hGRkt3kDwEeeTdaykH";

        URL url = new URL(recaptchaURL+"?secret="+secretKey+"&response="+responseToken);

        HttpURLConnection con = (HttpURLConnection)url.openConnection();

        con.setRequestMethod("POST");
        con.setDoOutput(true);

        DataOutputStream dos = new DataOutputStream(con.getOutputStream());

        dos.flush();
        dos.close();

        InputStream is = null;

        int statusCode = con.getResponseCode();
        if(statusCode == HttpURLConnection.HTTP_OK) {
            is = con.getInputStream();
        } else {
            is = con.getErrorStream();
        }

        JsonReader reader = Json.createReader(is);

        JsonObject object = reader.readObject();

        boolean flag = object.getBoolean("success");

        return flag;
    }
}