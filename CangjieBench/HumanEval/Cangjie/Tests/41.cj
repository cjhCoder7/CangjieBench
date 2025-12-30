
main(){
    if (car_race_collision(2) != 4) {
        throw Exception("Test Failed!")
    }
    if (car_race_collision(3) != 9) {
        throw Exception("Test Failed!")
    }
    if (car_race_collision(4) != 16) {
        throw Exception("Test Failed!")
    }
    if (car_race_collision(8) != 64) {
        throw Exception("Test Failed!")
    }
    if (car_race_collision(10) != 100) {
        throw Exception("Test Failed!")
    }
}