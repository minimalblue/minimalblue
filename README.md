# minimalblue &nbsp; [![build-ublue](https://github.com/minimalblue/minimalblue/actions/workflows/build.yml/badge.svg)](https://github.com/minimalblue/minimalblue/actions/workflows/build.yml)

### Nothing fancy, just minimal.



This repo uses the [BlueBuild](https://blue-build.org/) template and builds minimal images based on ublue-os base-main image.

- lxqt-base is the ublue-os base-main image with LXQt and little else.
- lxqt-hardened is the lxqt-base with some basic hardening without user namespace.
- lxqt-main-userns-hardened is the lxqt-base with user namespace and some basic hardening.

While you can rebase from any Fedora Atomic based image, the images are meant to be use with [BlueBuild](https://blue-build.org/how-to/setup/) as your `base-image`. Ex: ```base-image: ghcr.io/minimal/lxqt-base:latest```.

#### Hardening

Minimal hardening is applied from a fork of [secureblue](https://github.com/secureblue/secureblue), and from [GrapheneOS](https://github.com/GrapheneOS/infrastructure) and [Securing Debian Manual](https://www.debian.org/doc/manuals/securing-debian-manual/index.en.html).  These measures are evolving to fit a specific threat model, risk assessment, and usage pain points. The end goal is to match a reasonable threat model and not add pointless friction. Any hardening should not give a false sense of security, and all care should be taken to match your individual threat model. Security is not a fixed problem space, there is no one size fits all model.

See the [BlueBuild docs](https://blue-build.org/how-to/setup/) for quick setup instructions for setting up your own repository based on this template.

> **Warning**  
> [This is an experimental feature](https://www.fedoraproject.org/wiki/Changes/OstreeNativeContainerStable), try at your own discretion.

#### ISO

If build on Fedora Atomic, you can generate an offline ISO with the instructions available [here](https://blue-build.org/learn/universal-blue/#fresh-install-from-an-iso). These ISOs cannot unfortunately be distributed on GitHub for free due to large sizes.

#### Verification

These images are signed with [Sigstore](https://www.sigstore.dev/)'s [cosign](https://github.com/sigstore/cosign). You can verify the signature by downloading the `cosign.pub` file from this repo and running the following command:

```bash
cosign verify --key cosign.pub ghcr.io/minimalblue/minimalblue
```

#### Credit:

[Universal Blue](https://universal-blue.org/)

[secureblue](https://github.com/secureblue/secureblue)

[GrapheneOS](https://github.com/GrapheneOS/infrastructure)

[ArchWiki](https://wiki.archlinux.org/title/Main_page)

[Securing Debian Manual](https://www.debian.org/doc/manuals/securing-debian-manual/index.en.html)
