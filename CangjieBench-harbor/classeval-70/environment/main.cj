class PersonRequest {

    /*
    This class validates input personal information data and sets invalid fields to None based to specific rules.
    */

    let name: Option<String>
    let sex: Option<String>
    let phoneNumber: Option<String>

    public init(name: String, sex: String, phoneNumber: String) {
        /*
        Initialize PersonRequest object with the provided information.
        :param name: Option<String>, the name of the person
        :param sex: Option<String>, the sex of the person
        :param phoneNumber: Option<String>, the phone number of the person
        */
        this.name = _validate_name(name) 
        this.sex = _validate_sex(sex)
        this.phoneNumber = _validate_phoneNumber(phoneNumber)
    }

    public static func _validate_name(name: String): Option<String> {
        /*
        Validate the name and return it. If name is empty or exceeds 33 characters in length, set to None.
        :param name: String, the name to validate
        :return: Option<String>, the validated name or None if invalid
        */
        
    }

    public static func _validate_sex(sex: String): Option<String> {
        /*
        Validate the sex and return it. If sex is not Man, Woman, or UGM, set to None.
        :param sex: String, the sex to validate
        :return: Option<String>, the validated sex or None if invalid
        */
        
    }

    public static func _validate_phoneNumber(phoneNumber: String): Option<String> {
        /*
        Validate the phone number and return it. If phoneNumber is empty or not an 11 digit number, set to None.
        :param phoneNumber: String, the phone number to validate
        :return: Option<String>, the validated phone number or None if invalid
        */
        
    }
}

