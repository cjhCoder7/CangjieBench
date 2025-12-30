import std.net.IPAddress
import std.posix.gethostname

class IpUtil {

    public static func is_valid_ipv4(ip_address: String): Bool {
        let ip = IPAddress.tryParse(ip_address)
        if (ip == None) {
            return false
        }
        let ip_ = ip ?? IPAddress.parse("")
        if (ip_.isIPv4()) {
            return true
        } else {
            return false
        }
    }

    public static func is_valid_ipv6(ip_address: String): Bool {
        let ip = IPAddress.tryParse(ip_address)
        if (ip == None) {
            return false
        }
        let ip_ = ip ?? IPAddress.parse("")
        if (ip_.isIPv6()) {
            return true
        } else {
            return false
        }
    }

    public static func get_hostname(ip_address: String): Option<String> {
        let ip = IPAddress.tryParse(ip_address)
        if (ip == None) {
            return None
        }
        let ip_ = ip ?? IPAddress.parse("")
        if (ip_.toString() == '0.0.0.0') {
            return gethostname()
        } else {
            return None
        }
    }
}

