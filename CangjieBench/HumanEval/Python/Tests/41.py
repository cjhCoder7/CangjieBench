

METADATA = {}


def check(car_race_collision):
    assert car_race_collision(2) == 4
    assert car_race_collision(3) == 9
    assert car_race_collision(4) == 16
    assert car_race_collision(8) == 64
    assert car_race_collision(10) == 100



if __name__ == "__main__":
    check(car_race_collision)