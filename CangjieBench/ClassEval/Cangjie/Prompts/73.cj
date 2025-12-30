class RPGCharacter {

    /*
    The class represents a role-playing game character, which allows to attack other characters, heal, gain experience, level up, and check if the character is alive.
    */

    let name: String
    var hp: Int64
    var attack_power: Int64
    var defense: Int64
    var level: Int64
    var exp: Int64

    public init(name: String, hp: Int64, attack_power: Int64, defense: Int64, level!: Int64 = 1) {
        /*
        Initialize an RPG character object.
        :param name: String, the name of the character.
        :param hp: Int64, The health points of the character.
        :param attack_power: Int64, the attack power of the character.
        :param defense: Int64, the defense points of the character.
        :param level: Int64, the level of the character. Default is 1.
        */
        this.name = name
        this.hp = hp
        this.attack_power = attack_power
        this.defense = defense
        this.level = level
        this.exp = 0
    }

    public func attack(other_character: RPGCharacter): Unit {
        /*
        Attack another character. The damage caused needs to offset the defense value.
        :param other_character: String, The character being attacked.
        >>> player_1 = RPGCharacter('player 1', 100, 10, 3)
        >>> player_2 = RPGCharacter('player 2', 100, 7, 2)
        >>> player_1.attack(player_2)
        >>> player_2.hp
        92
        */
        
    }

    public func heal(): Int64 {
        /*
        Heal the character with 10 hp and the max hp is 100.
        :return: Int64, the current health points after healing.
        >>> player_1 = RPGCharacter('player 1', 93, 10, 3)
        >>> player_1.heal()
        100
        */
        
    }

    public func gain_exp(amount: Int64): Unit {
        /*
        Gain experience points for the character and level_up when the exp has reached the values that is 100 times the current level
        The experience that overflows should be used to calculate the next leve up untill exhausts
        :param amount: Int64, the amount of experience points to gain.
        >>> player_1 = RPGCharacter('player 1', 100, 10, 3)
        >>> player_1.gain_exp(1100)
        >>> player_1.exp
        100
        >>> player_1.level
        5
        */
        
    }

    public func level_up(): (Int64, Int64, Int64, Int64) {
        /*
        Level up the character and return to zero experience points, increase hp by 20 points, attack power and defense points by 5 points.
        max level is 100
        :return: (Int64, Int64, Int64, Int64), the new level, health points, attack power, and defense points after leveling up.
        >>> player_1 = RPGCharacter('player 1', 100, 10, 3)
        >>> player_1.level_up()
        (2, 120, 15, 8)
        */
        
    }

    public func is_alive(): Bool {
        /*
        Check if player is alive.
        :return: true if the hp is larger than 0, or false otherwise.
        >>> player_1 = RPGCharacter('player 1', 100, 10, 3)
        >>> player_1.is_alive()
        true
        */
        
    }
}

