# Debian live without GUI

## Philosophy

Since Debian 7 (Wheezy) 2013, the live image is distributed with a desktop environment.

In some context, you might need to run it without desktop environment.

This project aims at building the Debian live CD with as little difference as possible from the [official repository](https://cdimage.debian.org/debian-cd/current-live/amd64/iso-hybrid/).

## Usage

```
$ ./build.sh
```

The resulting image is usually located in `dist/live-image-amd64.hybrid.iso`

## Notes

- I'm building `bookworm` for `amd64`, if you need another context, clone this and change it.
- If you add parameterization for other debian versions/platforms, please PR this.
