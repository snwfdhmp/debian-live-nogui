# Debian Live without GUI ([download](https://github.com/snwfdhmp/debian-live-nogui/releases))

[List of downloadable ISO](https://github.com/snwfdhmp/debian-live-nogui/releases)

## Philosophy

As of 3 mars 2025, since Debian 7 (Wheezy) 2013, Debian does NOT distribute Debian Live without a Desktop Environment.

In some context, you might need to run it without desktop environment.

This project aims at building the Debian live CD with as little difference as possible from the [official repository](https://cdimage.debian.org/debian-cd/current-live/amd64/iso-hybrid/).

We are using the official [live-build](https://live-team.pages.debian.net/live-manual/html/live-manual/index.en.html) tool from the Debian team.

## Option 1: Download ready to use ISO (recommended)

You can find pre-built ISO on the [release page](https://github.com/snwfdhmp/debian-live-nogui/releases)

## Option 2: Build your own ISO

Build the default profile :

```
$ ./build.sh
```

The resulting image is usually located in `dist/live-image-amd64.hybrid.iso`

## Option 3 : Custom profiles

Instead of building the default profile, you can pick a custom profile in `profiles/` or make yours.

```
$ ./build.sh [path/to/profile]
```

The resulting image is usually located in `dist/live-image-amd64.hybrid.iso`

## Contributing

- Leave a star ⭐ if you like it
- PR are welcome
