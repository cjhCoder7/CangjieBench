#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_CLASSEVAL_SOLUTION__'
import std.random.Random
import std.collection.ArrayList

class MusicPlayer {

    var playlist: ArrayList<String>
    var current_song: Option<String>
    var volume: Int64

    public init() {
        this.playlist = ArrayList<String>()
        this.current_song = None
        this.volume = 50
    }

    public func add_song(song: String): Unit {
        this.playlist.add(song)
    }

    public func remove_song(song: String): Unit {
        if (this.playlist.contains(song)) {
            this.playlist.removeIf({s: String => s == song})
            if (this.current_song == song) {
                this.stop()
            }
        }
    }
    
    public func play(): Option<String> {
        if (this.playlist.size > 0 && this.current_song != None) {
            return this.playlist[0]
        } else if (this.playlist.size > 0) {
            return "False"
        } else {
            return None
        }
    }

    public func stop(): Bool {
        if (this.current_song != None) {
            this.current_song = None
            return true
        } else {
            return false
        }
    }

    public func switch_song(): Bool {
        if (this.current_song != None) {
            var current_index = -1
            for (i in 0..this.playlist.size) {
                if (this.playlist[i] == (this.current_song ?? "")) {
                    current_index = i
                    break
                }
            }
            if (current_index < this.playlist.size - 1) {
                this.current_song = this.playlist[current_index + 1]
                return true
            } else {
                return false
            }
        } else {
            return false
        }
    }

    public func previous_song(): Bool {
        if (this.current_song != None) {
            var current_index = -1
            for (i in 0..this.playlist.size) {
                if (this.playlist[i] == (this.current_song ?? "")) {
                    current_index = i
                    break
                }
            }
            if (current_index > 0) {
                this.current_song = this.playlist[current_index - 1]
                return true
            } else {
                return false
            }
        } else {
            return false
        }
    }

    public func set_volume(volume: Int64): Bool {
        if (0 <= volume && volume <= 100) {
            this.volume = volume
            return true
        } else {
            return false
        }
    }

    public func shuffle(): Bool {
        if (this.playlist.size > 0) {
            let r = Random()
            let new_playlist = ArrayList<String>()
            while (new_playlist.size == this.playlist.size) {
                let index = r.nextInt64(this.playlist.size)
                if (new_playlist.contains(this.playlist[index])) {
                    continue
                } else {
                    new_playlist.add(this.playlist[index])
                }
            }
            this.playlist = new_playlist
            return true
        } else {
            return false
        }
    }
}
__CANGJIEBENCH_CLASSEVAL_SOLUTION__
