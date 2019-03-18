
package stars;

import java.net.MalformedURLException;
import java.net.URL;
import javax.xml.namespace.QName;
import javax.xml.ws.Service;
import javax.xml.ws.WebEndpoint;
import javax.xml.ws.WebServiceClient;
import javax.xml.ws.WebServiceException;
import javax.xml.ws.WebServiceFeature;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.2.6b21 
 * Generated source version: 2.2
 * 
 */
@WebServiceClient(name = "Stars", targetNamespace = "http://Stars/", wsdlLocation = "http://localhost:8080/perdoWS/Stars?WSDL")
public class Stars_Service
    extends Service
{

    private final static URL STARS_WSDL_LOCATION;
    private final static WebServiceException STARS_EXCEPTION;
    private final static QName STARS_QNAME = new QName("http://Stars/", "Stars");

    static {
        URL url = null;
        WebServiceException e = null;
        try {
            url = new URL("http://localhost:8080/perdoWS/Stars?WSDL");
        } catch (MalformedURLException ex) {
            e = new WebServiceException(ex);
        }
        STARS_WSDL_LOCATION = url;
        STARS_EXCEPTION = e;
    }

    public Stars_Service() {
        super(__getWsdlLocation(), STARS_QNAME);
    }

    public Stars_Service(WebServiceFeature... features) {
        super(__getWsdlLocation(), STARS_QNAME, features);
    }

    public Stars_Service(URL wsdlLocation) {
        super(wsdlLocation, STARS_QNAME);
    }

    public Stars_Service(URL wsdlLocation, WebServiceFeature... features) {
        super(wsdlLocation, STARS_QNAME, features);
    }

    public Stars_Service(URL wsdlLocation, QName serviceName) {
        super(wsdlLocation, serviceName);
    }

    public Stars_Service(URL wsdlLocation, QName serviceName, WebServiceFeature... features) {
        super(wsdlLocation, serviceName, features);
    }

    /**
     * 
     * @return
     *     returns Stars
     */
    @WebEndpoint(name = "StarsPort")
    public Stars getStarsPort() {
        return super.getPort(new QName("http://Stars/", "StarsPort"), Stars.class);
    }

    /**
     * 
     * @param features
     *     A list of {@link javax.xml.ws.WebServiceFeature} to configure on the proxy.  Supported features not in the <code>features</code> parameter will have their default values.
     * @return
     *     returns Stars
     */
    @WebEndpoint(name = "StarsPort")
    public Stars getStarsPort(WebServiceFeature... features) {
        return super.getPort(new QName("http://Stars/", "StarsPort"), Stars.class, features);
    }

    private static URL __getWsdlLocation() {
        if (STARS_EXCEPTION!= null) {
            throw STARS_EXCEPTION;
        }
        return STARS_WSDL_LOCATION;
    }

}