

METADATA = {
    'author': 'jt',
    'dataset': 'test'
}


def check(concatenate):
    assert concatenate([]) == ''
    assert concatenate(['x', 'y', 'z']) == 'xyz'
    assert concatenate(['x', 'y', 'z', 'w', 'k']) == 'xyzwk'


if __name__ == "__main__":
    check(concatenate)