import std.collection.ArrayList

class PushBoxGame {

    /*
    This class implements a functionality of a sokoban game, where the player needs to move boxes to designated targets in order to win.
    */

    let map: ArrayList<ArrayList<String>>
    var player_row: Int64
    var player_col: Int64
    let targets: ArrayList<ArrayList<Int64>>
    let boxes: ArrayList<ArrayList<Int64>>
    var target_count: Int64
    var is_game_over: Bool

    public init(map: ArrayList<ArrayList<String>>) {
        /*
        Initialize the push box game with the map and various attributes.
        :param map: ArrayList<ArrayList<String>>, the map of the push box game, represented as a list of strings. 
            Each character on the map represents a different element, including the following:
            - '#' represents a wall that neither the player nor the box can pass through;
            - 'O' represents the initial position of the player;
            - 'G' represents the target position;
            - 'X' represents the initial position of the box.
        >>> map = ArrayList<ArrayList<String>>([ArrayList<String>(["#", "#", "#", "#", "#"]), ArrayList<String>(["#", "O", " ", " ", "#"]), ArrayList<String>(["#", " ", "X", " ", "#"]), ArrayList<String>(["#", " ", " ", "G", "#"]), ArrayList<String>(["#", "#", "#", "#", "#"])])
        >>> game = PushBoxGame(map) 
        */
        this.map = map
        this.player_row = 0
        this.player_col = 0
        this.targets = ArrayList<ArrayList<Int64>>()
        this.boxes = ArrayList<ArrayList<Int64>>()
        this.target_count = 0
        this.is_game_over = false

        func init_game() {
            /*
            Initialize the game by setting the positions of the player, targets, and boxes based on the map.
            >>> game = PushBoxGame(ArrayList<ArrayList<String>>([ArrayList<String>(["#", "#", "#", "#", "#"]), ArrayList<String>(["#", "O", " ", " ", "#"]), ArrayList<String>(["#", " ", "X", " ", "#"]), ArrayList<String>(["#", " ", " ", "G", "#"]), ArrayList<String>(["#", "#", "#", "#", "#"])])) 
            >>> game.targets
            [[3, 3]]
            >>> game.boxes
            [[2, 2]]
            >>> game.player_row
            1
            >>> game.player_col
            1
            */
            
        }
        init_game()
    }

    public func check_win(): Bool {
        /*
        Check if the game is won. The game is won when all the boxes are placed on target positions.
        And update the value of this.is_game_over.
        :return this.is_game_over: true if all the boxes are placed on target positions, or false otherwise.
        >>> game = PushBoxGame(ArrayList<ArrayList<String>>([ArrayList<String>(["#", "#", "#", "#", "#"]), ArrayList<String>(["#", "O", " ", " ", "#"]), ArrayList<String>(["#", " ", "X", " ", "#"]), ArrayList<String>(["#", " ", " ", "G", "#"]), ArrayList<String>(["#", "#", "#", "#", "#"])])) 
        >>> game.check_win()
        false
        */
        
    }

    public func move(direction: String): Bool {
        /*
        Move the player based on the specified direction and check if the game is won.
        :param direction: String, the direction of the player's movement. 
            It can be 'w', 's', 'a', or 'd' representing up, down, left, or right respectively.

        :return: true if the game is won, false otherwise.
        >>> game = PushBoxGame(ArrayList<ArrayList<String>>([ArrayList<String>(["#", "#", "#", "#", "#"]), ArrayList<String>(["#", "O", " ", " ", "#"]), ArrayList<String>(["#", " ", "X", " ", "#"]), ArrayList<String>(["#", " ", " ", "G", "#"]), ArrayList<String>(["#", "#", "#", "#", "#"])]))       
        >>> game.print_map()
        # # # # # 
        # O     #
        #   X   #
        #     G #
        # # # # #
        >>> game.move('d')
        false
        >>> game.move('s')   
        false
        >>> game.move('a')   
        false
        >>> game.move('s') 
        false
        >>> game.move('d') 
        true
        */
        
    }
}

