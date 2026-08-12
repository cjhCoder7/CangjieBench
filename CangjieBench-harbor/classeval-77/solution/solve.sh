#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_CLASSEVAL_SOLUTION__'
import std.collection.ArrayList
import std.random.Random

class Snake {

    var length: Int64
    let SCREEN_WIDTH: Int64
    let SCREEN_HEIGHT: Int64
    let BLOCK_SIZE: Int64
    var positions: ArrayList<ArrayList<Int64>>
    var score: Int64
    var food_position: ArrayList<Int64>

    public init(SCREEN_WIDTH: Int64, SCREEN_HEIGHT: Int64, BLOCK_SIZE: Int64, food_position: ArrayList<Int64>) {
        this.length = 1
        this.SCREEN_WIDTH = SCREEN_WIDTH
        this.SCREEN_HEIGHT = SCREEN_HEIGHT
        this.BLOCK_SIZE = BLOCK_SIZE
        this.positions = ArrayList<ArrayList<Int64>>([ArrayList<Int64>([SCREEN_WIDTH / 2, SCREEN_HEIGHT / 2])])
        this.score = 0
        this.food_position = food_position
    }
    
    public func move(direction: ArrayList<Int64>): Unit {
        let cur = this.positions[0]
        let x = direction[0]
        let y = direction[1]

        let new = ArrayList<Int64>([((cur[0] + (x * this.BLOCK_SIZE)) % this.SCREEN_WIDTH), (cur[1] + (y * this.BLOCK_SIZE)) % this.SCREEN_HEIGHT])

        if (new == this.food_position) {
            this.eat_food()
        }

        if (this.positions.size > 2 && this.positions[2..].contains(new)) {
            this.reset()
        } else {
            this.positions.add(new, at: 0)
            if (this.positions.size > this.length) {
                this.positions.remove(at: this.positions.size - 1)
            }
        }
    }

    public func random_food_position(): Unit {
        let r = Random()
        while (this.positions.contains(this.food_position)) {
            this.food_position = ArrayList<Int64>([r.nextInt64(this.SCREEN_WIDTH / this.BLOCK_SIZE) * this.BLOCK_SIZE, r.nextInt64(this.SCREEN_HEIGHT / this.BLOCK_SIZE) * this.BLOCK_SIZE])
        }
    }

    public func reset(): Unit {
        this.length = 1
        this.positions = ArrayList<ArrayList<Int64>>([ArrayList<Int64>([this.SCREEN_WIDTH / 2, this.SCREEN_HEIGHT / 2])])
        this.score = 0
        this.random_food_position()
    }

    public func eat_food(): Unit {
        this.length += 1
        this.score += 100
        this.random_food_position()
    }
}
__CANGJIEBENCH_CLASSEVAL_SOLUTION__
