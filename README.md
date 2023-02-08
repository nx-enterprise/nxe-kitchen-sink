# Sample Devcontainer

Briefly read over https://github.com/nx-enterprise/nxe-packages/blob/main/README.md

After you clone this repo, run:

```sh
# bring in our `nxe-packages` repo since we don't yet publish on npmjs
git submodule update --recursive
```

then

```sh
# build the docker images on your local system
make nxe.images.build
```

Make sure you install the recommended VS Code plugins.

Launch `Dev Containers: Reopen in Container` in the command palette

## Cross-Platform Support

This repo works on Windows via WSL2. We'll post a guide on that soon.

Otherwise, works OOTB with macOS and linux.

## Install time

- Initial build time of the devcontainer might take 10 minutes.
- Subsequent rebuilds take just a few seconds thanks to docker's caching.

## Known Issues

We're anxiously waiting for this to close to speed up builds: [Incrementally copy features near the layer they're installed #382](https://github.com/devcontainers/cli/pull/382)
