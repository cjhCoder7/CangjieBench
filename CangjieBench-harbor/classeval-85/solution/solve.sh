#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_CLASSEVAL_SOLUTION__'
import std.math.abs

class Thermostat {
    
    var current_temperature: Float64
    var target_temperature: Float64
    var mode: String

    public init(current_temperature: Float64, target_temperature: Float64, mode: String) {
        this.current_temperature = current_temperature
        this.target_temperature = target_temperature
        this.mode = mode
    }

    public func get_target_temperature(): Float64 {
        return this.target_temperature
    }

    public func set_target_temperature(temperature: Float64): Unit {
        this.target_temperature = temperature
    }

    public func get_mode(): String {
        return this.mode
    }

    public func set_mode(mode: String): Bool {
        if (['heat', 'cool'].contains(mode)) {
            this.mode = mode
            return true
        } else {
            return false
        }
    }

    public func auto_set_mode(): Unit {
        if (this.current_temperature < this.target_temperature) {
            this.mode = 'heat'
        } else {
            this.mode = 'cool'
        }
    }

    public func auto_check_conflict(): Bool {
        if (this.current_temperature > this.target_temperature) {
            if (this.mode == 'cool') {
                return true
            } else {
                this.auto_set_mode()
                return false
            }
        } else {
            if (this.mode == 'heat') {
                return true
            } else {
                this.auto_set_mode()
                return false
            }
        }
    }

    public func simulate_operation(): Int64 {
        this.auto_set_mode()
        var use_time = 0
        if (this.mode == 'heat') {
            while (this.current_temperature < this.target_temperature) {
                this.current_temperature += 1.0
                use_time += 1
            }
        } else {
            while (this.current_temperature > this.target_temperature) {
                this.current_temperature -= 1.0
                use_time += 1
            }
        }
        return use_time
    }
}
__CANGJIEBENCH_CLASSEVAL_SOLUTION__
