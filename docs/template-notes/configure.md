# Configure

## Config file

Update the [config.toml](/config.toml) file.

Replace the domain name with your own.

If you want to serve on a subpath like on GH Pages, include that in your URL:

- `https://Username.github.io/my-repo`

For other platforms like Netlify, you can ignore the subpath:

- `https://example.com`


## CI

Choose between one of these for your CI and delete the other:

- [/.github/workflows/main.yml](/.github/workflows/main.yml)
- [netlify.toml](/netlify.toml)
