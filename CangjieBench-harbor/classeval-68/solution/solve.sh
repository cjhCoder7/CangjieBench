#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_CLASSEVAL_SOLUTION__'
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

    let data: ArrayList<Int64>
    let page_size: Int64
    let total_items: Int64
    let total_pages: Int64

    public init(data: ArrayList<Int64>, page_size: Int64) {
        this.data = data
        this.page_size = page_size
        this.total_items = data.size
        this.total_pages = (this.total_items + page_size - 1) / page_size
    }

    public func get_page(page_number: Int64): ArrayList<Int64> {
        if (page_number < 1 || page_number > this.total_pages) {
            return ArrayList<Int64>()
        }
        let start_index = (page_number - 1) * this.page_size
        var end_index = start_index + this.page_size
        if (end_index > this.total_items) {
            end_index = this.total_items
        }
        return this.data[start_index..end_index]
    }

    public func get_page_info(page_number: Int64): Option<PageInfo> {
        if (page_number < 1 || page_number > this.total_pages) {
            return None
        }
        
        let start_index = (page_number - 1) * this.page_size
        var end_index = start_index + this.page_size
        if (this.total_items < end_index) {
            end_index = this.total_items
        }
        let page_data = this.data[start_index..end_index]

        let page_info = PageInfo(page_number, this.page_size, this.total_pages, this.total_items, page_number > 1, page_number < this.total_pages, page_data)
        return page_info
    }

    public func search(keyword: String): SearchInfo {
        let results = ArrayList<Int64>()
        for (item in this.data) {
            if (item.toString().contains(keyword)) {
                results.add(item)
            }
        }
        let num_results = results.size
        let num_pages = (num_results + this.page_size - 1) / this.page_size

        let search_info = SearchInfo(keyword, num_results, num_pages, results)
        return search_info
    }
}
__CANGJIEBENCH_CLASSEVAL_SOLUTION__
