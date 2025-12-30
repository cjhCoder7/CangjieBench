import std.collection.ArrayList
import std.collection.HashMap

class SQLGenerator {

    let table_name: String

    public init(table_name: String) {
        this.table_name = table_name
    }

    public func select(fields!: Option<ArrayList<String>> = None, condition!: Option<String> = None): String {
        var fields_str = ""
        if (fields == None) {
            fields_str = "*"
        } else {
            fields_str = String.join((fields??ArrayList<String>()).toArray(), delimiter: ", ")
        }
        var sql = "SELECT ${fields_str} FROM ${this.table_name}"
        if (condition != None) {
            let condition_str = condition??""
            sql += " WHERE ${condition_str}"
        }
        return sql + ";"
    }

    public func insert(data: HashMap<String, String>): String {
        let fields = String.join(data.keys().toArray(), delimiter: ", ")
        let data_values = ArrayList<String>(data.values().toArray())
        for (i in 0..data_values.size) {
            data_values[i] = "'${data_values[i]}'"
        }
        let values = String.join(data_values.toArray(), delimiter: ", ")
        let sql = "INSERT INTO ${this.table_name} (${fields}) VALUES (${values})"
        return sql + ";"
    }

    public func update(data: HashMap<String, String>, condition: String): String {
        let set_clause_arr = ArrayList<String>()
        for ((field, value) in data) {
            set_clause_arr.add("${field} = '${value}'")
        }
        let set_clause = String.join(set_clause_arr.toArray(), delimiter: ", ")
        let sql = "UPDATE ${this.table_name} SET ${set_clause} WHERE ${condition}"
        return sql + ";"
    }

    public func delete(condition: String): String {
        let sql = "DELETE FROM ${this.table_name} WHERE ${condition}"
        return sql + ";"
    }

    public func select_female_under_age(age: Int64): String {
        let condition = "age < ${age} AND gender = 'female'"
        return this.select(condition: condition)
    }

    public func select_by_age_range(min_age: Int64, max_age: Int64): String {
        let condition = "age BETWEEN ${min_age} AND ${max_age}"
        return this.select(condition: condition)
    }
}

