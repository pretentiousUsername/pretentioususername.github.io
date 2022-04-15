# Deploy
> How setup and deploy on a remote server

## Host on Netlify

This project can be setup easily to build and host a static site on [Netlify](https://netlify.com).

Add the repo to you Netlify apps. The [netlify.toml](/netlify.toml) file will be used. You can delete it if not using Netlify.

Netlify will build on pushes to your `main` branch.

If you configure deploy previews, then other branches will get deployed too with a temporary preview URL.

See [Hosting on Netlify][] in the Hugo docs.

[Hosting on Netlify]: https://gohugo.io/hosting-and-deployment/hosting-on-netlify/


## GitHub CI

You can deploy using [GitHub Actions](https://github.com/actions) and serve with [GitHub Pages](https://pages.github.com/).

See workflow:

- [main.yml](/.github/workflows/main.yml)

The project has been configured to run CI steps to setup and build on commits to `main` and PRs against `main`.

The last step of the workflow will commit the build output to the `gh-pages` branch - this step will be skipped if not on the `main` branch, so that PRs do not actually get deployed.

Set up steps:

1. The `gh-pages` branch will be created with the first workflow run.
1. Go to repo _Settings_.
1. Go to _Pages_.
1. Enable GitHub Pages on the root of `gh-pages` branch.

See content on [gh-pages][].

For more info, see:

- [Setup Hugo Action](https://github.com/marketplace/actions/hugo-setup)
- [Deploy GH Pages](https://michaelcurrin.github.io/code-cookbook/recipes/ci-cd/github-actions/workflows/deploy-gh-pages/) recipes.
- [Hosting on GitHub][] in the Hugo docs.

[Hosting on GitHub]: https://gohugo.io/hosting-and-deployment/hosting-on-github/
[gh-pages]: https://github.com/MichaelCurrin/hugo-quickstart/tree/gh-pages
