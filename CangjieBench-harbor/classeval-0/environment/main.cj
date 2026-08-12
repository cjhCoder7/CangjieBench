import std.collection.HashMap
import std.time.DateTime

class AccessGatewayFilter {
    /*
    This class is a filter used for accessing gateway filtering, primarily for authentication and access log recording.
    */

    public init() {
    }

    public func filter(request: HashMap<String, Any>): Bool {
        /*
        Filter the incoming request based on certain rules and conditions.
        :param request: HashMap<String, Any>, the incoming request details
        :return: Bool, true if the request is allowed, false otherwise
        >>> filter = AccessGatewayFilter()
        >>> filter.filter(HashMap<String, Any>([('path', '/login'), ('method', 'POST')]))
        true

        */
    }

    public func is_start_with(request_uri: String): Bool {
        /*
        Check if the request URI starts with certain prefixes.
        Currently, the prefixes being checked are "/api" and "/login".
        :param request_uri: String, the URI of the request
        :return: Bool, true if the URI starts with certain prefixes, false otherwise
        >>> filter = AccessGatewayFilter()
        >>> filter.is_start_with('/api/data')
        true

        */
    }

    public func get_jwt_user(request: HashMap<String, Any>): Option<HashMap<String, Any>> {
        /*
        Get the user information from the JWT token in the request.
        :param request: HashMap<String, Any>, the incoming request details
        :return: HashMap<String, Any> or None, the user information if the token is valid, None otherwise
        >>> filter = AccessGatewayFilter()
        >>> filter.get_jwt_user(HashMap<String, Any>([('headers', HashMap<String, Any>([('Authorization', HashMap<String, Any>([('user', HashMap<String, Any>([('name', 'user1')])), ('jwt', 'user1'+DateTime.now().format("yyyy-MM-dd"))]))]))]))
        {'user': {'name': 'user1'}

        */
    }

    public func set_current_user_info_and_log(user: HashMap<String, Any>): Unit {
        /*
        Set the current user information and log the access.
        :param user: HashMap<String, Any>, the user information
        :return: Unit
        >>> filter = AccessGatewayFilter()
        >>> user = HashMap<String, Any>([('name', 'user1'), ('address', '127.0.0.1')])
        >>> filter.set_current_user_info_and_log(user)
        
        */
    }
}
