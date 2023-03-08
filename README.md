----
# ansible-role-app-gitlab

## Purpose
Installs Gitlab

## Required variables
| Name | Type | Comment |
| ---- | ---- | ------- |
| gitlab_endpoint | URL | the server hosting Gitlab | must be https to allow Lets Encrypt |

## Default variables
| Name | Type | Value | Comment |
| ---- | ---- | ----- | ------- |
| gitlab_dependencies | list(string) | see `defaults/main.yml` | packages to install first |
| gitlab_edition | string | gitlab-ee | Choose the community (ce) or enterprise (ee) edition | 
| gitlab_gpg_key_url | URL | `https://packages.gitlab.com/gitlab/gitlab-ee/gpgkey` | where to get the repository key |
| gitlab_install_postfix | Boolean | false | installs Postfix you you can send emails via it |
| gitlab_letsencrypt_enabled | Boolean | false | if true, set gitlab_letsencrypt_contact_email too |
| gitlab_smtp_enabled | Boolean | false ||
| gitlab_smtp_port | integer | 465 ||
| gitlab_state | string | present | oneOf(absent, present) |

## Optional variables
| Name | Type | Comment |
| ---- | ---- | ------- |
| gitlab_letsencrypt_contact_email | email | tells Lets Encrypt who to email when a certificate is close to expiry |
| gitlan_smtp_domain | string | needed only if gitlab_smtp_enabled is true |
| gitlan_smtp_endpoint | string | ditto |
| gitlab_smtp_password | string | ditto |
| gitlab_smtp_username | string | ditto |

## Supported Distros
Ubuntu 16+

****
