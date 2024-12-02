# ViaRézo ZSH Theme

[![WTFPLv2 License](https://img.shields.io/badge/license-WTFPLv2-blue.svg)](http://www.wtfpl.net)

This is a theme for ZSH which mainly forks the historical theme used on VIA Centrale Réseaux servers. It can
be used with ZSH frameworks such as [Oh-My-ZSH](https://github.com/robbyrussell/oh-my-zsh).

![General preview](https://cloud.githubusercontent.com/assets/19719047/21297526/3658ab04-c582-11e6-811d-f316d26996b3.png "Oh-My-VIA theme preview")

## VCS caption

| Color  |           State            |             Variable              |
| :----: | :------------------------: | :-------------------------------: |
|  red   |  there are unstaged files  | `OHMYVIAREZO_VCS_COLOR_UNSTAGED`  |
| yellow |   there are staged files   |  `OHMYVIAREZO_VCS_COLOR_STAGED`   |
|  blue  | there are untracked files  | `OHMYVIAREZO_VCS_COLOR_UNTRACKED` |
|  cyan  |  stash stack is not empty  |   `OHMYVIAREZO_VCS_COLOR_STASH`   |
| green  | working directory is clean |   `OHMYVIAREZO_VCS_COLOR_CLEAN`   |

## Install for Oh-My-ZSH

In order to use this theme, you have to clone this repository in your Oh-My-ZSH `custom/themes` directory
(usually `~/.oh-my-zsh/custom/themes`):

```shell
git clone https://gitlab.viarezo.fr/ViaRezo/oh-my-viarezo.git $ZSH/custom/themes/oh-my-viarezo
```

You then need to select this theme in your `~/.zshrc` :

```shell
ZSH_THEME="oh-my-viarezo/viarezo"
```

## Customization

Time format defaults to `%D{%H:%M}`, but can be overwritten by setting the variable `OHMYVIAREZO_TIME_FORMAT`
in your `~/.zshrc`.

Hostname may be printed up to the first `.` or hidden with the variable `OHMYVIAREZO_CONTEXT_HOSTNAME`.

VCS theme can be set through the variable `OHMYVIAREZO_VCS_THEME`.

## Unit testing

Oh-My-VIA uses [ZUnit](https://github.com/molovo/zunit) as unit testing framework.

To run the tests, just run:

```shell
zunit test
```

## License

Unless explicitly stated to the contrary, all contents licensed under the [WTFPL](LICENSE).
