# Description

Fetch a hash for a pin.

```bash
fetch-hash [-p <pin_file_path> | --pin-path <pin_file_path>]
    <github_repository_owner_name>
    <local_git_repository_path>
```

## Features

- to insert current revision hash
from a <local_git_repository_path> git repository
into a <github_repository_owner_name>, <local_git_repository_path> pin
in the git repository the command is executed from

## Hints

- This tool makes sense only
when it is passed
into the [`traverse`](https://github.com/monadosquito/traverse) command.

# Installation flow

Follow the [`unpath` tool installation flow](https://github.com/monadosquito/unpath#installation-flow).

# Usage flow

1. Clone a git repository into a <local_git_repository_path> path.
2. Enter the git repository whose pin is to be replaced.
3. Pass this command invocation
into the [`traverse`](https://github.com/monadosquito/traverse) command invocation.

# Convention

This tool follows the [convention](https://github.com/monadosquito/bem#convention)
followed by the [`bem` library](https://github.com/monadosquito/bem).

---

## Table 1

the flag and option descriptions

|Flag or option    |Default value|Description                         |
|------------------|-------------|------------------------------------|
|`-p`, `--pin-path`|`chr/pin.nix`|a path to a file containing nix pins|
