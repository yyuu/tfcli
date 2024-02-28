# tfcli

Command-line interface to interact with [Terraform Cloud](https://app.terraform.io/) APIs

## Setup

1. Go to https://app.terraform.io/app/settings/tokens, and issue a Terraform Cloud User token
    * Then, store the token in the environment variable or `TF_CLOUD_TOKEN`
1. Set Terraform Cloud organization name in the environment variable of `TF_CLOUD_ORGANIZATION`
1. (optional) Setup command line completion for your bash or zsh

### Install via Homebrew (recommended)

You can install via [Homebrew](https://brew.sh/) like follows.

```sh
% brew tap yyuu/json2sqlite3 https://github.com/yyuu/json2sqlite3
% brew tap yyuu/tfcli https://github.com/yyuu/tfcli
% brew install yyuu/tfcli/tfcli
```

### Install manually

1. Add `./bin` into your `$PATH`

### Setup command-line completion (optional)

This tool supports command line completion for `bash` and `zsh`.
Please add following configurations in your preferred shell configuration file.

```sh
if command -v tfc 1>/dev/null 2>&1; then
  eval "$(tfc init)"
fi
```

Once you have invoked `tfc list-*` commands, they will store API responses in `~/.cache/tfcli/tfcli.sqlite` then use for completion.
