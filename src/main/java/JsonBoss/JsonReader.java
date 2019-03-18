/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package JsonBoss;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;


/**
 *
 * @author Apergot
 */
public class JsonReader {
    
    /**
     * @param url
     * @return
     * @throws IOException
     */
    public String getJson(URL url) throws IOException{
        URLConnection tc = url.openConnection();
        BufferedReader in = new BufferedReader(new InputStreamReader(tc.getInputStream()));
        String result = "";
        String line = "";
        while((line = in.readLine()) != null){result += line;}
        in.close();
        return result;
    }
}
