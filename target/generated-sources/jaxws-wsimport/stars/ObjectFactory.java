
package stars;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the stars package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _Hello_QNAME = new QName("http://Stars/", "hello");
    private final static QName _GiveStars_QNAME = new QName("http://Stars/", "giveStars");
    private final static QName _GiveStarsResponse_QNAME = new QName("http://Stars/", "giveStarsResponse");
    private final static QName _HelloResponse_QNAME = new QName("http://Stars/", "helloResponse");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: stars
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link GiveStars }
     * 
     */
    public GiveStars createGiveStars() {
        return new GiveStars();
    }

    /**
     * Create an instance of {@link GiveStarsResponse }
     * 
     */
    public GiveStarsResponse createGiveStarsResponse() {
        return new GiveStarsResponse();
    }

    /**
     * Create an instance of {@link HelloResponse }
     * 
     */
    public HelloResponse createHelloResponse() {
        return new HelloResponse();
    }

    /**
     * Create an instance of {@link Hello }
     * 
     */
    public Hello createHello() {
        return new Hello();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Hello }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Stars/", name = "hello")
    public JAXBElement<Hello> createHello(Hello value) {
        return new JAXBElement<Hello>(_Hello_QNAME, Hello.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GiveStars }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Stars/", name = "giveStars")
    public JAXBElement<GiveStars> createGiveStars(GiveStars value) {
        return new JAXBElement<GiveStars>(_GiveStars_QNAME, GiveStars.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GiveStarsResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Stars/", name = "giveStarsResponse")
    public JAXBElement<GiveStarsResponse> createGiveStarsResponse(GiveStarsResponse value) {
        return new JAXBElement<GiveStarsResponse>(_GiveStarsResponse_QNAME, GiveStarsResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link HelloResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Stars/", name = "helloResponse")
    public JAXBElement<HelloResponse> createHelloResponse(HelloResponse value) {
        return new JAXBElement<HelloResponse>(_HelloResponse_QNAME, HelloResponse.class, null, value);
    }

}
