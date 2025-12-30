import std.collection.ArrayList

class PageInfo <: Equatable<PageInfo> {

    let current_page: Int64
    let per_page: Int64
    let total_pages: Int64
    let total_items: Int64
    let has_previous: Bool
    let has_next: Bool
    let data: ArrayList<Int64>

    public init(current_page: Int64, per_page: Int64, total_pages: Int64, total_items: Int64, has_previous: Bool, has_next: Bool, data: ArrayList<Int64>) {
        this.current_page = current_page
        this.per_page = per_page
        this.total_pages = total_pages
        this.total_items = total_items
        this.has_previous = has_previous
        this.has_next = has_next
        this.data = data
    }

    public override operator func != (that: PageInfo): Bool {
        return this.current_page != that.current_page || this.per_page != that.per_page || this.total_pages != that.total_pages || this.total_items != that.total_items || this.has_previous != that.has_previous || this.has_next != that.has_next || this.data != that.data
    }

    public override operator func == (that: PageInfo): Bool {
        return this.current_page == that.current_page && this.per_page == that.per_page && this.total_pages == that.total_pages && this.total_items == that.total_items && this.has_previous == that.has_previous && this.has_next == that.has_next && this.data == that.data
    }
}

class SearchInfo <: Equatable<SearchInfo> {

    let keyword: String
    let total_results: Int64
    let total_pages: Int64
    let results: ArrayList<Int64>

    public init(keyword: String, total_results: Int64, total_pages: Int64, results: ArrayList<Int64>) {
        this.keyword = keyword
        this.total_results = total_results
        this.total_pages = total_pages
        this.results = results
    }

    public override operator func != (that: SearchInfo): Bool {
        return this.keyword != that.keyword || this.total_results != that.total_results || this.total_pages != that.total_pages || this.results != that.results
    }

    public override operator func == (that: SearchInfo): Bool {
        return this.keyword == that.keyword && this.total_results == that.total_results && this.total_pages == that.total_pages && this.results == that.results
    }
}

class PageUtil {

    /*
    PageUtil class is a versatile utility for handling pagination and search functionalities in an efficient and convenient manner.
    */

    let data: ArrayList<Int64>
    let page_size: Int64
    let total_items: Int64
    let total_pages: Int64

    public init(data: ArrayList<Int64>, page_size: Int64) {
        /*
        Initialize the PageUtil object with the given data and page size.
        :param data: ArrayList<Int64>, the data to be paginated
        :param page_size: Int64, the number of items per page
        */
        this.data = data
        this.page_size = page_size
        this.total_items = data.size
        this.total_pages = (this.total_items + page_size - 1) / page_size
    }

    public func get_page(page_number: Int64): ArrayList<Int64> {
        /*
        Retrieve a specific page of data.
        :param page_number: Int64, the page number to fetch
        :return: ArrayList<Int64>, the data on the specified page
        >>> page_util = PageUtil(ArrayList<Int64>([1, 2, 3, 4]), 1)
        >>> page_util.get_page(1)
        [1]

        */
        
    }

    public func get_page_info(page_number: Int64): Option<PageInfo> {
        /*
        Retrieve information about a specific page.
        :param page_number: Int64, the page number to fetch information about
        :return: Option<PageInfo>, containing page information such as current page number, total pages, etc.
        >>> page_util = PageUtil(ArrayList<Int64>([1, 2, 3, 4]), 1)
        >>> page_util.get_page_info(1)
        >>> PageInfo(1, 1, 4, 4, false, true, ArrayList<Int64>([1]))

        */
        
    }

    public func search(keyword: String): SearchInfo {
        /*
        Search for items in the data that contain the given keyword.
        :param keyword: String, the keyword to search for
        :return: SearchInfo, containing search information such as total results and matching items
        >>> page_util = PageUtil(ArrayList<Int64>([1, 2, 3, 4]), 1)
        >>> page_util.search("1")
        >>> SearchInfo("1", 1, 1, ArrayList<Int64>([1]))

        */
        
    }
}

