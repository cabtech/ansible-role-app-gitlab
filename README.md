----
# ansible-role-app-gitlab

## Purpose
Work In Progress
Installs Gitlab

## Required variables
| name | purpose |
| ---- | ------- |
| gitlab_endpoint | FQDN of the server hosting Gitlab |

## Optional variables
None

## Defaulted variables
| name | value | purpose |
| ---- | ----- | ------- |
| gitlab_dependencies | list | packages to install first |
| gitlab_edition | gitlab-ee | Choose the community (ce) or enterprise (ee) edition | 
| gitlab_gpg_key_url | https://packages.gitlab.com/gitlab/gitlab-ee/gpgkey | where to get the repository key |
| gitlab_smtp_enabled | false | do you want to set up SMTP email from Gitlab using SMTP |
| gitlab_state | present | ...or absent |

## Supported Distros
Ubuntu 16+
****
