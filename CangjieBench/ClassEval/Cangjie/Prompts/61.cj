import std.random.Random
import std.collection.ArrayList

class MusicPlayer {

    /*
    This is a class as a music player that provides to play, stop, add songs, remove songs, set volume, shuffle, and switch to the next or previous song.
    */

    var playlist: ArrayList<String>
    var current_song: Option<String>
    var volume: Int64

    public init() {
        /*
        Initializes the music player with an empty playlist, no current song, and a default volume of 50.
        */
        this.playlist = ArrayList<String>()
        this.current_song = None
        this.volume = 50
    }

    public func add_song(song: String): Unit {
        /*
        Adds a song to the playlist.
        :param song: The song to add to the playlist, String.
        >>> musicPlayer = MusicPlayer()
        >>> musicPlayer.add_song("song1")
        >>> musicPlayer.playlist
        ['song1']

        */
        
    }

    public func remove_song(song: String): Unit {
        /*
        Removes a song from the playlist.
        :param song: The song to remove from the playlist, String.
        >>> musicPlayer = MusicPlayer()
        >>> musicPlayer.playlist = ArrayList<String>(["song1", "song2"])
        >>> musicPlayer.remove_song("song1")
        >>> musicPlayer.playlist
        ['song2']

        */
        
    }
    
    public func play(): Option<String> {
        /*
        Plays the current song in the playlist.
        :return: The current song in the playlist, or "False" if there is no current song, or None if the playlist is empty, Option<String>.
        >>> musicPlayer = MusicPlayer()
        >>> musicPlayer.playlist = ArrayList<String>(["song1", "song2"])
        >>> musicPlayer.current_song = "song1"
        >>> musicPlayer.play()
        'song1'

        */
        
    }

    public func stop(): Bool {
        /*
        Stops the current song in the playlist.
        :return: true if the current song was stopped, false if there was no current song.
        >>> musicPlayer = MusicPlayer()
        >>> musicPlayer.playlist = ArrayList<String>(["song1", "song2"])
        >>> musicPlayer.current_song = "song1"
        >>> musicPlayer.stop()
        true

        */
        
    }

    public func switch_song(): Bool {
        /*
        Switches to the next song in the playlist.
        :return: true if the next song was switched to, false if there was no next song.
        >>> musicPlayer = MusicPlayer()
        >>> musicPlayer.playlist = ArrayList<String>(["song1", "song2"])
        >>> musicPlayer.current_song = "song1"
        >>> musicPlayer.switch_song()
        true

        */
        
    }

    public func previous_song(): Bool {
        /*
        Switches to the previous song in the playlist.
        :return: true if the previous song was switched to, false if there was no previous song.
        >>> musicPlayer = MusicPlayer()
        >>> musicPlayer.playlist = ArrayList<String>(["song1", "song2"])
        >>> musicPlayer.current_song = "song2"
        >>> musicPlayer.previous_song()
        true

        */
        
    }

    public func set_volume(volume: Int64): Bool {
        /*
        Sets the volume of the music player,ifthe volume is between 0 and 100 is valid.
        :param volume: The volume to set the music player to,Int64.
        :return: true if the volume was set, false if the volume was invalid.
        >>> musicPlayer = MusicPlayer()
        >>> musicPlayer.set_volume(50)
        true
        >>> musicPlayer.volume
        50

        */
        
    }

    public func shuffle(): Bool {
        /*
        Shuffles the playlist.
        :return: true if the playlist was shuffled, false if the playlist was empty.
        >>> musicPlayer = MusicPlayer()
        >>> musicPlayer.playlist = ArrayList<String>(["song1", "song2"])
        >>> musicPlayer.shuffle()
        true

        */
        
    }
}

