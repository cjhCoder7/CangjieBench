import std.collection.HashMap
import std.collection.ArrayList

class SignInSystem {

    /*
    This is a class as sigin in system, including adding users, signing in/out, checking sign-in status, and retrieving signed-in/not signed-in users.
    */

    let users: HashMap<String, Bool>

    public init() {
        /*
        Initialize the sign-in system.
        */
        users = HashMap<String, Bool>()
    }

    public func add_user(username: String): Bool {
        /*
        Add a user to the sign-in system if the user wasn't in the this.users.
        And the initial state is false.
        :param username: String, the username to be added.
        :return: Bool, true if the user is added successfully, false if the user already exists.
        >>> signInSystem.add_user("mike")
        true
        >>> signInSystem.add_user("mike")
        false
        */
        
    }

    public func sign_in(username: String): Bool {
        /*
        Sign in a user if the user was in the this.users and change the state to true.
        :param username: String, the username to be signed in.
        :return: Bool, true if the user is signed in successfully, false if the user does not exist.
        >>> signInSystem.sign_in("mike")
        true
        >>> signInSystem.sign_in("mik")
        false
        */
        
    }

    public func check_sign_in(username: String): Bool {
        /*
        Check if a user is signed in.
        :param username: String, the username to be checked.
        :return: Bool, true if the user is signed in, false if the user does not exist or is not signed in.
        >>> signInSystem.check_sign_in("jack")
        false
        >>> signInSystem.add_user("jack")
        >>> signInSystem.check_sign_in("jack")
        >>> signInSystem.sign_in("jack")
        >>> signInSystem.check_sign_in("jack")
        true
        */
        
    }

    public func all_signed_in(): Bool {
        /*
        Check if all users are signed in.
        :return: Bool, true if all users are signed in, false otherwise.
        >>> signInSystem.add_user("jack")
        true
        >>> signInSystem.sign_in("jack")
        >>> signInSystem.all_signed_in()
        true
        */
        
    }

    public func all_not_signed_in(): ArrayList<String> {
        /*
        Get a list of usernames that are not signed in.
        :return: ArrayList<String>, a list of usernames that are not signed in.
        >>> signInSystem = SignInSystem()
        >>> signInSystem.add_user("a")
        true
        >>> signInSystem.add_user("b")
        true
        >>> signInSystem.all_not_signed_in()
        ['a', 'b']
        */
        
    }
}

