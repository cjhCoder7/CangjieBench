import std.collection.ArrayList
import std.math.abs

class MetricsCalculator2 {

    public init() {}

    public static func mrr(data: Any): (Float64, ArrayList<Float64>) {
        if (!(data is ArrayList<(ArrayList<Int64>, Int64)>) && !(data is (ArrayList<Int64>, Int64))) {
            throw Exception("the input must be a tuple([0,...,1,...],Int64) or a iteration of list of tuple")
        }

        if (data is (ArrayList<Int64>, Int64)) {
            let data_ = (data as (ArrayList<Int64>, Int64)) ?? (ArrayList<Int64>(), 0)
            let (sub_list, total_num) = data_
            if (total_num == 0) {
                return (0.0, ArrayList<Float64>([0.0]))
            } else {
                let mr_np = ArrayList<Float64>()
                for (i in 0..sub_list.size) {
                    mr_np.add(Float64(sub_list[i]) / Float64(i + 1))
                }
                
                var mr = 0.0
                for (team in mr_np) {
                    if (team > 0.0) {
                        mr = team
                        break
                    }
                }
                return (mr, ArrayList<Float64>([mr]))
            }
        }

        if (data is ArrayList<(ArrayList<Int64>, Int64)>) {
            let data_ = (data as ArrayList<(ArrayList<Int64>, Int64)>) ?? ArrayList<(ArrayList<Int64>, Int64)>()
            if (data_.size == 0) {
                return (0.0, ArrayList<Float64>([0.0]))
            }

            let separate_result = ArrayList<Float64>()
            for ((sub_list, total_num) in data_) {
                var mr = 0.0
                if (total_num == 0) {
                    mr = 0.0
                } else {
                    let mr_np = ArrayList<Float64>()
                    for (i in 0..sub_list.size) {
                        mr_np.add(Float64(sub_list[i]) / Float64(i + 1))
                    }
                    for (team in mr_np) {
                        if (team > 0.0) {
                            mr = team
                            break
                        }
                    }
                }
                separate_result.add(mr)
            }
            var mean = 0.0
            for (mr in separate_result) {
                mean += mr
            }
            mean /= Float64(separate_result.size)
            return (mean, separate_result)
        }        

        return (0.0, ArrayList<Float64>([0.0]))
    }

    public static func map(data: Any): (Float64, ArrayList<Float64>) {
        if (!(data is ArrayList<(ArrayList<Int64>, Int64)>) && !(data is (ArrayList<Int64>, Int64))) {
            throw Exception("the input must be a tuple([0,...,1,...],Int64) or a iteration of list of tuple")
        }

        if (data is (ArrayList<Int64>, Int64)) {
            let data_ = (data as (ArrayList<Int64>, Int64)) ?? (ArrayList<Int64>(), 0)
            let (sub_list, total_num) = data_
            if (total_num == 0) {
                return (0.0, ArrayList<Float64>([0.0]))
            } else {
                let ranking_array = ArrayList<Float64>()
                for (i in 0..sub_list.size) {
                    ranking_array.add(1.0 / Float64(i + 1))
                }

                let right_ranking_list = ArrayList<Int64>()
                var count = 1
                for (t in sub_list) {
                    if (t == 0) {
                        right_ranking_list.add(0)
                    } else {
                        right_ranking_list.add(count)
                        count += 1
                    }
                }

                var ap = 0.0
                for (i in 0..sub_list.size) {
                    ap += Float64(right_ranking_list[i]) * ranking_array[i]
                }
                ap /= Float64(total_num)
                return (ap, ArrayList<Float64>([ap]))
            }
        }

        if (data is ArrayList<(ArrayList<Int64>, Int64)>) {
            let data_ = (data as ArrayList<(ArrayList<Int64>, Int64)>) ?? ArrayList<(ArrayList<Int64>, Int64)>()
            if (data_.size == 0) {
                return (0.0, ArrayList<Float64>([0.0]))
            }

            let separate_result = ArrayList<Float64>()
            for ((sub_list, total_num) in data_) {
                var ap = 0.0

                if (total_num == 0) {
                    ap = 0.0
                } else {
                    let ranking_array = ArrayList<Float64>()
                    for (i in 0..sub_list.size) {
                        ranking_array.add(1.0 / Float64(i + 1))
                    }

                    let right_ranking_list = ArrayList<Int64>()
                    var count = 1
                    for (t in sub_list) {
                        if (t == 0) {
                            right_ranking_list.add(0)
                        } else {
                            right_ranking_list.add(count)
                            count += 1
                        }
                    }

                    for (i in 0..sub_list.size) {
                        ap += Float64(right_ranking_list[i]) * ranking_array[i]
                    }
                    ap /= Float64(total_num)
                }

                separate_result.add(ap)
            }
            var mean = 0.0
            for (ap in separate_result) {
                mean += ap
            }
            mean /= Float64(separate_result.size)
            return (mean, separate_result)
        }

        return (0.0, ArrayList<Float64>([0.0]))
    }
}

