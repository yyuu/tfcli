# tfcli

Command-line interface to interact with [Terraform Cloud](https://app.terraform.io/) APIs

## Setup

1. Go to https://app.terraform.io/app/settings/tokens, and issue a Terraform Cloud User token
1. Setup environment variables to specify your Terraform Cloud settings (naming conventions are based on https://www.terraform.io/cli/cloud/settings#environment-variables)
    * `TF_CLOUD_TOKEN`
    * `TF_CLOUD_ORGANIZATION`
    * `TF_CLOUD_HOSTNAME` (optional)
    * `TF_CLOUD_PROJECT` (optional)
    * `TF_WORKSPACE` (optional)
1. (optional) Setup command line completion for your bash or zsh

### Install manually

1. Add `./bin` into your `$PATH`

#### optional: command line completion

This tool supports command line completion for `bash` and `zsh`.
Please add following configurations in your preferred shell configuration file.

```sh
if command -v tfc 1>/dev/null 2>&1; then
  eval "$(tfc init)"
fi
```

## Examples

TBD
