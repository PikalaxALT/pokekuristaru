The source files are assembled into a ROM using [**rgbds**](https://github.com/gbdev/rgbds).
These instructions explain how to set up the tools required to build.

If you run into trouble, ask on IRC or Discord (see (README.md)[README.md]).


# Linux (Ubuntu/Debian and derivatives, excluding Arch and Manjaro-like distros.)

```bash
sudo apt-get install make gcc bison git libpng-dev

git clone https://github.com/gbdev/rgbds
cd rgbds
git checkout v0.2.5
sudo make install
cd ..

git clone https://github.com/pret/pokecrystal
cd pokecrystal
```

To build **pokecrystal.gbc**:

```bash
make
```


# Mac

In **Terminal**, run:

```bash
xcode-select --install

git clone https://github.com/gbdev/rgbds
cd rgbds
git checkout v0.2.5
sudo make install
cd ..

git clone https://github.com/PikalaxALT/pokekuristaru
cd pokekuristaru
```

Note: You will need Xcode's command line utilities installed.

To build **pokecrystal.gbc**:

```bash
make
```


# Windows

To build on Windows 8.1 and earlier, install [**Cygwin**](http://cygwin.com/install.html) with the default settings.

In the installer, select the following packages: `make` `git` `gettext` `gcc-core`

Then get [**rgbds 0.2.5**](https://github.com/rednex/rgbds/releases/). Versions 0.3.0 and later are not compatible.
Extract the archive and put all the `exe` and `dll` files individually in `C:\cygwin64\usr\local\bin`.

In the **Cygwin terminal**:

```bash

git clone https://github.com/pret/pokecrystal
cd pokecrystal
```

To build **pokecrystal.gbc**:

```bash
make
```

To build on Windows 10 and up, install the Windows Subsystem for Linux (WSL) following the instructions [here](https://docs.microsoft.com/en-us/windows/wsl/install). (Make sure to install the Debian or Ubuntu app for WSL. Other distros may not work. (Ubuntu/Debian and derivatives, excluding Arch and Manjaro-like distros.)

Once WSL is fully setup, open the Ubuntu or Debian app and follow the [Linux instructions](#Linux-(Ubuntu/Debian-and-derivatives-excluding-Arch-and-Manjaro-like-distros.)) Then, find **pokecrystal** in `\\wsl$\pokecrystal/pokecrystal.gbc`

## Notes

- If `gettext` no longer exists, grab `libsasl2-3` and `ca-certificates`.
