import std.collection.ArrayList

class UrlPath {

    /*
    The  class is a utility for encapsulating and manipulating the path component of a URL, including adding nodes, parsing path strings, and building path strings with optional encoding.
    */

    let segments: ArrayList<String>
    var with_end_tag: Bool

    public init() {
        /*
        Initializes the UrlPath object with an empty list of segments and a flag indicating the presence of an end tag.
        */
        this.segments = ArrayList<String>()
        this.with_end_tag = false
    }

    public func add(segment: String): Unit {
        /*
        Adds a segment to the list of segments in the UrlPath.
        :param segment: String, the segment to add.
        >>> url_path = UrlPath()
        >>> url_path.add('foo')
        >>> url_path.add('bar')

        url_path.segments = ['foo', 'bar']
        */
        
    }

    public func parse(path: String): Unit {
        /*
        Parses a given path string and populates the list of segments in the UrlPath.
        :param path: String, the path string to parse.
        >>> url_path = UrlPath()
        >>> url_path.parse('/foo/bar/')

        url_path.segments = ['foo', 'bar']
        */
        
    }

    public static func fix_path(path: String): String {
        /*
        Fixes the given path string by removing leading and trailing slashes.
        :param path: String, the path string to fix.
        :return: String, the fixed path string.
        >>> url_path = UrlPath()
        >>> url_path.fix_path('/foo/bar/')
        'foo/bar'

        */
        
    }
}

