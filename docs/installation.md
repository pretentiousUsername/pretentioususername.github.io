# Installation
> How to setup this project locally


## Install system dependencies

Follow the [Install Hugo](https://gohugo.io/getting-started/installing/) doc to install Hugo globally.

### Note

The approach recommended there is download and install Hugo globally. It is a single binary so can be in your `bin` directory.

Some projects include Hugo version as a binary in a repo `bin` directory, but this needs to be done for 3 operating systems and needs to be updated manually if a newer version is needed.

Though, it means a cloned repo that is updated will always get the exact version needed, regardless of a global version installed.


## Clone

Clone the repo and its theme submodule.

```sh
$ git clone git@github.com:MichaelCurrin/hugo-quickstart.git --recurse-submodules
```

You don't have to install any dependencies, as the theme was included with the submodule above.

For more help, see [Git Submodules][] cheatsheet.

[Git Submodules]: https://michaelcurrin.github.io/dev-resources/resources/version-control/git/submodules.html
