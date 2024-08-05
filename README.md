# minimalblue &nbsp; [![build-ublue](https://github.com/minimalblue/minimalblue/actions/workflows/build.yml/badge.svg)](https://github.com/minimalblue/minimalblue/actions/workflows/build.yml)

This repo uses the [BlueBuild](https://blue-build.org/) template and builds minimal images based on ublue-os base-main image.


  - lxqt-base is the ublue-os base-main image with LXQt and little else.
  - lxqt-hardened is the lxqt-base with some basic hardening.
  - lxqt-main-userns-hardened is the lxqt-base with user namespace and some basic hardening.


While you can rebase from any Fedora Atomic based image, the images are meant to be use with [BlueBuild](https://blue-build.org/how-to/setup/) as your `base-image`. Ex: ```base-image: ghcr.io/minimal/lxqt-base:latest```.


See the [BlueBuild docs](https://blue-build.org/how-to/setup/) for quick setup instructions for setting up your own repository based on this template.



> **Warning**  
> [This is an experimental feature](https://www.fedoraproject.org/wiki/Changes/OstreeNativeContainerStable), try at your own discretion.


#### Credit:

[Universal Blue](https://universal-blue.org/)

[secureblue](https://github.com/secureblue/secureblue)


## ISO

If build on Fedora Atomic, you can generate an offline ISO with the instructions available [here](https://blue-build.org/learn/universal-blue/#fresh-install-from-an-iso). These ISOs cannot unfortunately be distributed on GitHub for free due to large sizes, so for public projects something else has to be used for hosting.


## Verification

These images are signed with [Sigstore](https://www.sigstore.dev/)'s [cosign](https://github.com/sigstore/cosign). You can verify the signature by downloading the `cosign.pub` file from this repo and running the following command:

```bash
cosign verify --key cosign.pub ghcr.io/toothytoad/minimalblue
```
