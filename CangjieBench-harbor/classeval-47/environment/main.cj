import std.convert.Parsable
import std.convert.Formattable
import std.collection.ArrayList

class IPAddress {

    /*
    This is a class to process IP Address, including validating, getting the octets and obtaining the binary representation of a valid IP address.
    */

    let ip_address: String

    public init(ip_address: String) {
        /*
        Initialize the IP address to the specified address
        :param ip_address:String
        */
        this.ip_address = ip_address
    }

    public func is_valid(): Bool {
        /*
        Judge whether the IP address is valid, that is, whether the IP address is composed of four Decimal digits separated by '.'. Each digit is greater than or equal to 0 and less than or equal to 255
        :return: Bool
        >>> ipaddress = IPAddress("10.10.10.10")
        >>> ipaddress.is_valid()
        true
        */
        
    }

    public func get_octets(): ArrayList<String> {
        /*
        If the IP address is valid, the list of four decimal numbers separated by "." constituting the IP address is returned; otherwise, an empty list is returned
        :return: ArrayList<String>
        >>> ipaddress = IPAddress("10.10.10.10")
        >>> ipaddress.get_octets()
        ["10", "10", "10", "10"]
        */
        
    }

    public func get_binary(): String {
        /*
        If the IP address is valid, return the binary form of the IP address; otherwise, return ''
        :return: String
        >>> ipaddress = IPAddress("10.10.10.10")
        >>> ipaddress.get_binary()
        "00001010.00001010.00001010.00001010"
        */
        
    }
}

