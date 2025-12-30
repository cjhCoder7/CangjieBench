import std.collection.ArrayList

class AvgPartition {

    let lst: ArrayList<Int64>
    let limit: Int64

    public init(lst: ArrayList<Int64>, limit: Int64) {
        this.lst = lst
        this.limit = limit
    }

    public func setNum(): (Int64, Int64) {
        let size = lst.size / limit
        let remainder = lst.size % limit
        return (size, remainder)
    }

    public func get(index: Int64): ArrayList<Int64> {
        let set_num_res = this.setNum()
        let size = set_num_res[0]
        let remainder = set_num_res[1]
        let start = index * size + min(index, remainder)
        var end = start + size
        if (index + 1 <= remainder) {
            end++
        }
        return lst[start..end]
    }
}