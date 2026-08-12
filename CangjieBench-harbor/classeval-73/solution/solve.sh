#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_CLASSEVAL_SOLUTION__'
class RPGCharacter {

    let name: String
    var hp: Int64
    var attack_power: Int64
    var defense: Int64
    var level: Int64
    var exp: Int64

    public init(name: String, hp: Int64, attack_power: Int64, defense: Int64, level!: Int64 = 1) {
        this.name = name
        this.hp = hp
        this.attack_power = attack_power
        this.defense = defense
        this.level = level
        this.exp = 0
    }

    public func attack(other_character: RPGCharacter): Unit {
        let damage = max(this.attack_power - other_character.defense, 1)
        other_character.hp -= damage
    }

    public func heal(): Int64 {
        this.hp += 10
        if (this.hp > 100) {
            this.hp = 100
        }
        return this.hp
    }

    public func gain_exp(amount: Int64): Unit {
        var amount_ = amount
        while (amount_ != 0) {
            if (this.exp + amount_ >= this.level * 100) {
                amount_ -= (this.level * 100 - this.exp)
                this.level_up()
            } else {
                this.exp += amount_
                amount_ = 0
            }
        }
    }

    public func level_up(): (Int64, Int64, Int64, Int64) {
        if (this.level < 100) {
            this.level += 1
            this.exp = 0
            this.hp += 20
            this.attack_power += 5
            this.defense += 5
        }
        return (this.level, this.hp, this.attack_power, this.defense)
    }

    public func is_alive(): Bool {
        return this.hp > 0
    }
}
__CANGJIEBENCH_CLASSEVAL_SOLUTION__
