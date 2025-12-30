import urllib.parse

class UrlPath:
    """
    The  class is a utility for encapsulating and manipulating the path component of a URL, including adding nodes, parsing path strings, and building path strings with optional encoding.
    """

    def __init__(self):
        """
        Initializes the UrlPath object with an empty list of segments and a flag indicating the presence of an end tag.
        """
        self.segments = []
        self.with_end_tag = False

    def add(self, segment):
        """
        Adds a segment to the list of segments in the UrlPath.
        :param segment: str, the segment to add.
        >>> url_path = UrlPath()
        >>> url_path.add('foo')
        >>> url_path.add('bar')

        url_path.segments = ['foo', 'bar']
        """


    def parse(self, path, charset):
        """
        Parses a given path string and populates the list of segments in the UrlPath.
        :param path: str, the path string to parse.
        :param charset: str, the character encoding of the path string.
        >>> url_path = UrlPath()
        >>> url_path.parse('/foo/bar/', 'utf-8')

        url_path.segments = ['foo', 'bar']
        """


    @staticmethod
    def fix_path(path):
        """
        Fixes the given path string by removing leading and trailing slashes.
        :param path: str, the path string to fix.
        :return: str, the fixed path string.
        >>> url_path = UrlPath()
        >>> url_path.fix_path('/foo/bar/')
        'foo/bar'

        """