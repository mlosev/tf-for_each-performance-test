This repository contains some test cases to demonstrate some performance issues resulting from use of `for_each` in Terraform 0.12/0.13

## Prerequisites
- Python 3.6+ (to generate `users.yaml`)
- Make
- Curl

## Test cases

Test cases rely on `users.yaml` in the root of the repo.
The file is originally generated with `make users.yaml` command.

### TF 0.12: fast

```
make users-0.12-fast
```

### TF 0.12: slow

```
make users-0.12-slow
```

### TF 0.13: fast

```
make users-0.13-fast
```

### TF 0.13: slow

```
make users-0.13-slow
```