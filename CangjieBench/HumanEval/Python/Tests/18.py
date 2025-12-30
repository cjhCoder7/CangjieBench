

METADATA = {
    'author': 'jt',
    'dataset': 'test'
}


def check(how_many_times):
    assert how_many_times('', 'x') == 0
    assert how_many_times('xyxyxyx', 'x') == 4
    assert how_many_times('cacacacac', 'cac') == 4
    assert how_many_times('john doe', 'john') == 1


if __name__ == "__main__":
    check(how_many_times)