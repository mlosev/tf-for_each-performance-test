#!./venv/bin/python

import random
import yaml


def main():
    users = {}

    default_groups = [
        'DefaultGroup-1',
        'DefaultGroup-2',
    ]

    max_users = 1050

    for i in range(max_users):
        name = f"user{i+1}"
        groups = default_groups[:]

        n = random.randint(1, max_users)
        if n <= i:
            groups.append(f"UserGroup{i+1}")

        users[name] = groups

    with open('users.yaml', 'w+') as fp:
        yaml.dump(users, fp)


if __name__ == '__main__':
    main()