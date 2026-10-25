# homebrew-vulnly

The Homebrew tap for [Vulnly](https://github.com/fullstackspectrum/Vulnly), a tool that turns Cloudsmith, Trivy, Grype and Snyk scan output into self-contained HTML vulnerability reports.

## Install

```bash
brew install fullstackspectrum/vulnly/vulnly
```

Or tap first, then install by name:

```bash
brew tap fullstackspectrum/vulnly
brew install vulnly
```

This works on macOS and Linux.

## Upgrade

```bash
brew update
brew upgrade vulnly
```

## Uninstall

```bash
brew uninstall vulnly
brew untap fullstackspectrum/vulnly
```

## Usage

```bash
vulnly scan-output.json
```

See the [Vulnly README](https://github.com/fullstackspectrum/Vulnly#readme) for the full set of options.

## About this tap

The formula builds Vulnly from its release on [PyPI](https://pypi.org/project/vulnly/). Only stable releases are published here; betas are available through `pip install --pre vulnly`.

`Formula/vulnly.rb` is updated automatically when a new version is released, so changes made to it directly in this repository will be overwritten. Report problems with the formula or with Vulnly itself on the [Vulnly issue tracker](https://github.com/fullstackspectrum/Vulnly/issues).
