

METADATA = {
    'author': 'jt',
    'dataset': 'test'
}


def check(flip_case):
    assert flip_case('') == ''
    assert flip_case('Hello!') == 'hELLO!'
    assert flip_case('These violent delights have violent ends') == 'tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS'


if __name__ == "__main__":
    check(flip_case)