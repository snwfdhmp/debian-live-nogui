# Debian Live without GUI - [download](https://github.com/snwfdhmp/debian-live-nogui/releases/latest)

[List of pre-built ISO](https://github.com/snwfdhmp/debian-live-nogui/releases)

## Philosophy

Since Debian 7 (Wheezy) 2013, Debian stopped distributing Debian Live without a Desktop Environment.

In some context, you might need to run it without desktop environment.

This project aims at :

- providing tools to build Debian Live CD Image as close as possible to the [official repository](https://cdimage.debian.org/debian-cd/current-live/amd64/iso-hybrid/).
- providing [pre-built ISOs](https://github.com/snwfdhmp/debian-live-nogui/releases) for common use cases.

Images are built using the official [live-build](https://live-team.pages.debian.net/live-manual/html/live-manual/index.en.html) tool from the Debian team.


## Option 1: Download pre-built ISO, ready to use (recommended)

You can find pre-built ISO on the [release page](https://github.com/snwfdhmp/debian-live-nogui/releases)

Profiles are defined in [profiles/](profiles/).

## Option 2: Build your own ISO

Build the default profile :

```
$ ./build.sh
```

The resulting image is usually located in `dist/live-image-amd64.hybrid.iso`

## Option 3 : Custom profiles

Instead of building the default profile, you can pick a custom profile in `profiles/` or make yours.

```
$ ./build.sh [path/to/profile.sh]
```

The resulting image is usually located in `dist/live-image-amd64.hybrid.iso`

## Contributing

- Leave a star ⭐ if you like it
- PR are welcome
