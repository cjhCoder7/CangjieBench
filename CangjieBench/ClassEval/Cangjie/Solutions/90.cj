import std.collection.HashMap

class URLHandler {

    let url: String

    public init(url: String) {
        this.url = url
    }

    public func get_scheme(): Option<String> {
        let scheme_end = this.url.indexOf("://")
        if (scheme_end != None) {
            return this.url[0..(scheme_end ?? -1)]
        }
        return None
    }

    public func get_host(): Option<String> {
        let scheme_end = this.url.indexOf("://")
        if (scheme_end != None) {
            let url_without_scheme = this.url[(scheme_end ?? -1) + 3..]
            let host_end = url_without_scheme.indexOf("/")
            if (host_end != None) {
                return url_without_scheme[0..(host_end ?? -1)]
            }
            return url_without_scheme
        }
        return None
    }

    public func get_path(): Option<String> {
        let scheme_end = this.url.indexOf("://")
        if (scheme_end != None) {
            let url_without_scheme = this.url[(scheme_end ?? -1) + 3..]
            let host_end = url_without_scheme.indexOf("/")
            if (host_end != None) {
                return url_without_scheme[(host_end ?? -1)..]
            }
        }
        return None
    }

    public func get_query_params(): Option<HashMap<String, String>> {
        let query_start = this.url.indexOf("?")
        let fragment_start = this.url.indexOf("#")
        if (query_start != None) {
            let query_string = this.url[(query_start ?? -1) + 1..(fragment_start ?? -1)]
            let params = HashMap<String, String>()
            if (query_string.size > 0) {
                let param_pairs = query_string.split("&")
                for (pair in param_pairs) { 
                    let key_value = pair.split("=")
                    if (key_value.size == 2) {
                        let key = key_value[0]
                        let value = key_value[1]
                        params[key] = value
                    }
                }
            }
            return params
        }
        return None
    }

    public func get_fragment(): Option<String> {
        let fragment_start = this.url.indexOf("#")
        if (fragment_start != None) {
            return this.url[(fragment_start ?? -1) + 1..]
        }
        return None
    }
}

