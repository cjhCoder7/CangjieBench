import std.collection.HashMap
import std.collection.ArrayList

class SQLQueryBuilder {

    /*
    This class provides to build SQL queries, including SELECT, INSERT, UPDATE, and DELETE statements. 
    */

    public static func select(table: String, columns!: ArrayList<String> = ArrayList<String>(['*']), where_condition!: Option<HashMap<String, String>> = None): String {
        /*
        Generate the SELECT SQL statement from the given parameters.
        :param table: String, the query table in database.
        :param columns: ArrayList of String, ['col1', 'col2'].
        :param where_condition: Option<HashMap<String, String>>, {key1: value1, key2: value2 ...}. The query condition.
        return query: String, the SQL query statement.
        >>> SQLQueryBuilder.select('table1', columns: ArrayList<String>(["col1","col2"]), where_condition: HashMap<String,String>([("age", "15")]))
        "SELECT col1, col2 FROM table1 WHERE age='15'"
        */
        
    }

    public static func insert(table: String, data: HashMap<String, String>): String {
        /*
        Generate the INSERT SQL statement from the given parameters.
        :param table: String, the table to be inserted in database.
        :param data: HashMap<String, String>, the key and value in SQL insert statement
        :return query: String, the SQL insert statement.
        >>> SQLQueryBuilder.insert('table1', HashMap<String,String>([("name", "Test"), ("age", "14")]))
        "INSERT INTO table1 (name, age) VALUES ('Test', '14')"
        */
        
    }

    public static func delete(table: String, where_condition!: Option<HashMap<String, String>> = None): String {
        /*
        Generate the DELETE SQL statement from the given parameters.
        :param table: String, the table that will be excuted with DELETE operation in database
        :param where_condition: Option<HashMap<String, String>>, {key1: value1, key2: value2 ...}. The query condition.
        :return query: String, the SQL delete statement.
        >>> SQLQueryBuilder.delete('table1', where_condition: HashMap<String,String>([("name", "Test"), ("age", "14")]))
        "DELETE FROM table1 WHERE name='Test' AND age='14'"
        */
        
    }

    public static func update(table: String, data: HashMap<String, String>, where_condition!: Option<HashMap<String, String>> = None): String {
        /*
        Generate the UPDATE SQL statement from the given parameters.
        :param table: String, the table that will be excuted with UPDATE operation in database
        :param data: HashMap<String, String>, the key and value in SQL update statement
        :param where_condition: Option<HashMap<String, String>>, {key1: value1, key2: value2 ...}. The query condition.
        :return query: String, the SQL update statement.
        >>> SQLQueryBuilder.update('table1', HashMap<String,String>([("name", "Test2"), ("age", "15")]), where_condition: HashMap<String,String>([("name", "Test")]))
        "UPDATE table1 SET name='Test2', age='15' WHERE name='Test'"
        */
        
    }
}

