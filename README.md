# Automation Scripts Repository

This repository contains a collection of scripts designed to automate the installation and configuration of various tools.

## Installation

Clone this repository to your local system.
## Tmux
### Usage

Each script in the repository is standalone and can be executed independently to set up a specific tool.
tmux_setup.sh

This script automates the setup of Tmux, a terminal multiplexer, by installing Tmux Plugin Manager (tpm) and configuring various plugins and themes.
Features

* Installs tpm (Tmux Plugin Manager)
* Configures mouse mode
* Applies the Catppuccin theme
* Adds useful plugins to enhance the Tmux experience

### Execution

To run the tmux_setup.sh script, use the following command:
```bash
./tmux_setup.sh
```

**Important Note**: After executing the script, you will need to press ctrl+b then I to initialize and install the Tmux plugins.
