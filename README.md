# ziadulhuq/tap

Homebrew formulae for [macadmin](https://github.com/ziadulhuq/macadmin-releases), a desktop app
(with a terminal mode) that lists your Mac's apps, services, Homebrew packages, local AI models, network and system details,
with update checks.

```bash
brew install ziadulhuq/tap/macadmin   # install
macadmin init                         # once: checks, settings, security; adds macadmin.app (Spotlight, Finder)
macadmin                              # the terminal app; macadmin --gui (or macadmin.app) opens the window
brew upgrade macadmin                 # update (or: macadmin update)
brew uninstall macadmin               # remove (settings stay in ~/.macadmin)
```

Needs macOS 27 or newer on Apple Silicon. The formula installs the prebuilt program from the
release; no source code is published.
