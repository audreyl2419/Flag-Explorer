package cmu.audreyl;

/**
 * Author: Audrey Liu
 * Last Modified: Sep 15, 2019
 *
 * This file is the Model component of the MVC, and it models the business
 * logic for the web application.  In this case, the business logic involves
 * making a request to www.cia.gov/ and then screen scraping the HTML that is
 * returned in order to fabricate an image URL for the flag, the description of
 * the country to which the flag belongs.
 */

// imports required for UDP/IP
import javax.net.ssl.*;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.X509Certificate;

public class WorldFlagModel {

    /**
     * Arguments.
     *
     * @param tag The tag of the photo to be searched for
     * The function return a List of string that contains the image URL of
     * the flag, the URL of the country, the description of the country,
     * and the name of the country.
     */

    public String[] search(String tag)
            throws UnsupportedEncodingException {
        /*
         * URL encode the searchTag, e.g. to encode spaces as %20
         */
        tag = URLEncoder.encode(tag, "UTF-8");


        String response;

        // Create a URL for the page to be screen scraped
        String flagURL =
                "https://www.cia.gov/library/publications/resources/the-world-factbook/"
                        + tag;

        // Fetch the page
        response = fetch(flagURL);


        // If no country is selected, but user clicked submit.
        // Return null and result.jsp knows how to handle such case
        if(response == null){
            return (String[]) null;
        }

        /*
         * Search the page to find the flag URL, country description
         * and country name. These three values are stored in buffer1
         * buffer2, and buffer3 respectively.
         */
        String buffer1 = "with the description'>              <img src=\"..";
        String buffer2 = "\"field-background\">      <div class='category_data subfield text'>";
        String buffer3 = "\"region_name1 countryName\">";

        int cutLeft = response.indexOf(buffer1);
        int cutLeft2 = response.indexOf(buffer2);
        int cutLeft3 = response.indexOf(buffer3);

        // If not found, then no such country is available.
        if (cutLeft == -1 || cutLeft2 ==-1 || cutLeft3 == -1) {
            return (String[])null;
        }

        // Skip past this string.
        cutLeft += buffer1.length();
        cutLeft2 += buffer2.length();
        cutLeft3 += buffer3.length();


        // Look for the closing characters
        int cutRight = response.indexOf("\"", cutLeft);
        int cutRight2 = response.indexOf("</div>", cutLeft2);
        int cutRight3 = response.indexOf("</span>", cutLeft3);


        // Snip out the parts from positions cutLeft to cutRight
        // and prepend the protocol (i.e. https).
        String pictureURL = "https://www.cia.gov/library/publications/resources/the-world-factbook"
                + response.substring(cutLeft, cutRight);
        String description = response.substring(cutLeft2, cutRight2);
        String countryname = response.substring(cutLeft3, cutRight3);

        return new String[]{flagURL, pictureURL, description, countryname};
    }


    /*
     * Make an HTTP request to a given URL
     *
     * @param urlString The URL of the request
     * @return A string of the response from the HTTP GET.
     */

    private String fetch(String urlString) {
        try {
            // Create trust manager, which lets you ignore SSLHandshakeExceptions
            createTrustManager();
        } catch (KeyManagementException ex) {
            ex.printStackTrace();
        } catch (NoSuchAlgorithmException ex) {
            ex.printStackTrace();
        }

        String response = "";
        try {
            URL url = new URL(urlString);
            HttpURLConnection connection = (HttpURLConnection) url.openConnection();

            // Read all the text returned by the server
            BufferedReader in = new BufferedReader(new InputStreamReader(connection.getInputStream(), "UTF-8"));
            String str;
            // Read each line of "in" until done, adding each to "response"
            while ((str = in.readLine()) != null) {
                // str is one line of text readLine() strips newline characters
                response += str;
            }
            in.close();
        } catch (IOException e) {
            return null;
        }
        return response;
    }

    /*
     * create a Trust Manager
     */

    private void createTrustManager() throws KeyManagementException, NoSuchAlgorithmException {

        TrustManager[] trustAllCerts = new TrustManager[] {new X509TrustManager() {
            public java.security.cert.X509Certificate[] getAcceptedIssuers() {
                return null;
            }
            public void checkClientTrusted(X509Certificate[] certs, String authType) {
            }
            public void checkServerTrusted(X509Certificate[] certs, String authType) {
            }
        }
        };

        // Install the all-trusting trust manager
        SSLContext sc = SSLContext.getInstance("SSL");
        sc.init(null, trustAllCerts, new java.security.SecureRandom());
        HttpsURLConnection.setDefaultSSLSocketFactory(sc.getSocketFactory());

        // Create all-trusting host name verifier
        HostnameVerifier allHostsValid = new HostnameVerifier() {
            public boolean verify(String hostname, SSLSession session) {
                return true;
            }
        };

        // Install the all-trusting host verifier
        HttpsURLConnection.setDefaultHostnameVerifier(allHostsValid);
    }
}
