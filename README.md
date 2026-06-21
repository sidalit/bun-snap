<!--
SPDX-FileCopyrightText: 2026 Canonical Ltd.
SPDX-License-Identifier: MIT
-->

# bun snap

This repository contains snap packaging for
[Bun](https://github.com/oven-sh/bun).

It packages the pre-built Bun binary for Linux (x64 and arm64). Bun is an
incredibly fast JavaScript runtime, bundler, test runner, and package manager
all in one.

## Building

```sh
snapcraft pack
```

## Updating the version

The version is determined by the Bun release URL in `snap/snapcraft.yaml`.
To update to a new upstream release, change the version in the download URLs
and commit.

## Testing with spread

Tests in this repository use [spread](https://github.com/snapcore/spread), the
multi-machine test runner from the snap core team. To run the tests locally you
need a spread environment backed by a LXD image.

Install the `image-garden` snap, which provides the image management tooling
spread depends on:

```sh
sudo snap install image-garden
```

The `image-garden` snap ships a `image-garden.spread` binary that acts as a
spread backend. Use it to run the tests:

```sh
image-garden.spread
```

This will pull the necessary virtual machine base images, and execute the test
cases defined under `tests/`.
