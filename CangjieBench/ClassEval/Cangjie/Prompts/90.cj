import std.collection.HashMap

class URLHandler {

    /*
    The class supports to handle URLs, including extracting the scheme, host, path, query parameters, and fragment.
    */

    let url: String

    public init(url: String) {
        /*
        Initialize URLHandler's URL
        */
        this.url = url
    }

    public func get_scheme(): Option<String> {
        /*
        get the scheme of the URL
        :return: Option<String>, If successful, return the scheme of the URL
        >>> urlhandler = URLHandler("https://www.baidu.com/s?wd=aaa&rsv_spt=1#page")
        >>> urlhandler.get_scheme()
        "https"
        */
        
    }

    public func get_host(): Option<String> {
        /*
        Get the second part of the URL, which is the host domain name
        :return: Option<String>, If successful, return the host domain name of the URL
        >>> urlhandler = URLHandler("https://www.baidu.com/s?wd=aaa&rsv_spt=1#page")
        >>> urlhandler.get_host()
        "www.baidu.com"
        */
        
    }

    public func get_path(): Option<String> {
        /*
        Get the third part of the URL, which is the address of the resource
        :return: Option<String>, If successful, return the address of the resource of the URL
        >>> urlhandler = URLHandler("https://www.baidu.com/s?wd=aaa&rsv_spt=1#page")
        >>> urlhandler.get_path()
        "/s?wd=aaa&rsv_spt=1#page"
        */
        
    }

    public func get_query_params(): Option<HashMap<String, String>> {
        /*
        Get the request parameters for the URL
        :return: Option<HashMap<String, String>>, If successful, return the request parameters of the URL
        >>> urlhandler = URLHandler("https://www.baidu.com/s?wd=aaa&rsv_spt=1#page")
        >>> urlhandler.get_query_params()
        {"wd": "aaa", "rsv_spt": "1"}
        */
        
    }

    public func get_fragment(): Option<String> {
        /*
        Get the fragment after '#' in the URL
        :return: Option<String>, If successful, return the fragment after '#' of the URL
        >>> urlhandler = URLHandler("https://www.baidu.com/s?wd=aaa&rsv_spt=1#page")
        >>> urlhandler.get_fragment()
        "page"
        */
        
    }
}

