# Dev Container Templates

> https://github.com/devcontainers/template-starter

## Distributing Templates

### Versioning

Templates are individually versioned by the `version` attribute in a Template's `devcontainer-template.json`. Templates are versioned according to the semver specification. More details can be found in [the Dev Container Template specification](https://containers.dev/implementors/templates-distribution/#versioning).

### Publishing

The Templates in this repository can be referenced by an [implementing tool](https://containers.dev/supporting#tools) with:

```
ghcr.io/lhyzf/devcontainers-template/centos7-rust:latest
```

### Testing Templates

This repo contains a GitHub Action [workflow](.github/workflows/test-pr.yaml) for testing the Templates. Similar to the [`devcontainers/templates`](https://github.com/devcontainers/templates) repo, this repository has a `test` folder.  Each Template has its own sub-folder, containing at least a `test.sh`.

For running the tests locally, you would need to execute the following commands -

```
./.github/actions/smoke-test/build.sh ${TEMPLATE-ID} 
./.github/actions/smoke-test/test.sh ${TEMPLATE-ID} 
```

### Updating Documentation

This repo contains a GitHub Action [workflow](.github/workflows/release.yaml) that will automatically generate documentation (ie. `README.md`) for each Template. This file will be auto-generated from the `devcontainer-template.json` and `NOTES.md`.
