
package insert;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the insert package. 
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

    private final static QName _InsertDB_QNAME = new QName("http://insert/", "insertDB");
    private final static QName _InsertDBResponse_QNAME = new QName("http://insert/", "insertDBResponse");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: insert
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link InsertDBResponse }
     * 
     */
    public InsertDBResponse createInsertDBResponse() {
        return new InsertDBResponse();
    }

    /**
     * Create an instance of {@link InsertDB }
     * 
     */
    public InsertDB createInsertDB() {
        return new InsertDB();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link InsertDB }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://insert/", name = "insertDB")
    public JAXBElement<InsertDB> createInsertDB(InsertDB value) {
        return new JAXBElement<InsertDB>(_InsertDB_QNAME, InsertDB.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link InsertDBResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://insert/", name = "insertDBResponse")
    public JAXBElement<InsertDBResponse> createInsertDBResponse(InsertDBResponse value) {
        return new JAXBElement<InsertDBResponse>(_InsertDBResponse_QNAME, InsertDBResponse.class, null, value);
    }

}
