# ============================================================================
#  Dockerfile — Recipe for Building the Course Container Image
# ============================================================================
#  A Dockerfile is a text configuration script containing sequential, step-by-
#  step instructions that Docker (or GitHub Codespaces) processes from top to 
#  bottom to compile a reusable "image." 
#
#  Think of an image as a frozen, read-only blueprint of a Linux operating 
#  system. Every time you initialize a Codespace, a runtime environment 
#  called a "container" is spun up using this blueprint.
#
#  Analogy: The image is the BLUEPRINT; the container is the actual HOUSE. 
#  You can deploy multiple identical houses from a single blueprint. If you 
#  demolish a house, the blueprint remains completely unaltered.
#
#  Every Docker command (FROM, ENV, RUN...) generates an image layer. 
#  Docker caches these layers efficiently: if the initial lines remain 
#  unchanged, Docker skips rebuilding them, making subsequent builds 
#  nearly instantaneous. Changing an early layer invalidates the cache and 
#  forces a rebuild of all subsequent layers.
#  (Reference: Black Hat Bash Ch.3 - Container images are composed of 
#  multiple stacked layers.)
# ============================================================================

# FROM: Base Image Initialization
# Instead of bootstrapping an operating system from scratch, we inherit from 
# the official Kali Linux "rolling" distribution (a rolling-release model 
# that ensures all packages are natively up-to-date). All custom tools and 
# configurations defined below will be layered on top of this foundation.
#
# (Reference: Black Hat Bash Ch.3 - Development environments and labs are 
# constructed utilizing reusable base images.)
FROM kalilinux/kali-rolling:latest

# ENV: Persistent Container Environment Variables
# Environment variables act as global configuration settings accessible by any 
# system process. By standard convention, they are declared in UPPERCASE.
#
#   DEBIAN_FRONTEND=noninteractive
#     Instructs the Debian package manager (apt) to suppress all interactive 
#     prompts and accept default settings. Without this, certain software 
#     installations would hang indefinitely waiting for user confirmation.
#
#   LANG / LC_ALL=es_ES.UTF-8
#     Configures the system's locale and character encoding. UTF-8 support 
#     is essential to properly render accents, special symbols, and emojis.
#
#   TERM=xterm-256color
#     Signals to CLI utilities (such as vim, nvim, htop) that the terminal 
#     supports a 256-color palette, ensuring appropriate syntax highlighting.
#
# Note: The backslash "\" acts as a line-continuation character to improve 
# code readability.
#
# (Reference: Black Hat Bash Ch.1 - Environment variables heavily influence 
# shell behavior and command execution.)
ENV DEBIAN_FRONTEND=noninteractive \
    LANG=es_ES.UTF-8 \
    LC_ALL=es_ES.UTF-8 \
    TERM=xterm-256color

# Pre-seeding Automation for Interactive Package Prompts
# During installation, Wireshark/tshark prompts whether non-root users should 
# be granted packet-capturing privileges. Since this laboratory environment 
# runs natively under the root user, we use debconf-set-selections to pre-seed 
# the database with a "false" response, preventing build blocks.
#
# The pipeline operator (|) streams the standard output of echo directly into 
# the standard input of the configuration database manager.
#
# (Reference: Black Hat Bash Ch.1 - Pipelines connect the stdout of one 
# command to the stdin of the next.)
RUN echo "wireshark-common wireshark-common/install-setuid boolean false" \
    | debconf-set-selections

# RUN: Provisioning Software Layers During Image Construction
# To optimize build efficiency, all required course software is provisioned 
# within a single, unified RUN instruction block.
#
#   apt-get update           -> Synchronizes local package index repositories.
#   apt-get install          -> Downloads and installs target software packages.
#     -y                     -> Automatically answers affirmative to prompts.
#     --no-install-recommends-> Excludes optional or suggested dependencies, 
#                               saving hundreds of megabytes of disk space.
#
# Design Pattern: Bundling commands into a single RUN layer prevents image 
# bloat. Fewer layers translate into lighter, faster, and highly portable images.
#
# The logical AND operator "&&" chains commands sequentially; a command runs 
# only if its predecessor terminates with a successful exit status (0).
#
# Core Utilities Overview:
# - Text Editors & Shells: neovim, vim, zsh, bash-completion.
# - Core UNIX & Processing Utilities: grep, sed, gawk, jq, coreutils, tree.
# - Network Analysis & Cybersecurity: nmap, masscan, tcpdump, tshark, tor.
#
# (Reference: Black Hat Bash Ch.1 - Commands, pipelines, and environment.
# Black Hat Bash Ch.2 - Advanced text processing with grep, sed, and awk.
# Black Hat Bash Ch.3 - Engineering secure lab architectures with containers.)
RUN apt-get update && apt-get install -y --no-install-recommends \
    \
    # === Text Editors & Shell Environments ===
    neovim \
    vim \
    zsh \
    bash-completion \
    \
    # === Core Text Processing Engines ===
    # Dominant tools for automation and data extraction in Units 2, 3, and 4:
    perl \
    make \
    gawk \
    sed \
    grep \
    \
    # === Essential UNIX System Utilities ===
    # coreutils: Provides standard tools (cat, ls, head, tail, sort, cut, tr).
    # findutils: Provides file-searching features (find, xargs).
    # procps: System process management utilities (ps, top, kill).
    # less / tree / jq: Pagers, folder mapping, and JSON parsing.
    coreutils \
    findutils \
    procps \
    less \
    tree \
    jq \
    \
    # === System Manual Documentation (man) ===
    # The default Kali base image strips documentation to optimize size. 
    # We explicitly reinstall man-db for essential terminal documentation.
    man-db \
    manpages \
    manpages-posix \
    \
    # === Network Utilities & Version Control ===
    curl \
    wget \
    git \
    git-lfs \
    ca-certificates \
    locales \
    \
    # === Bash Script Static Code Analysis (Linter) ===
    shellcheck \
    \
    # === Network Reconnaissance & Port Scanning ===
    nmap \
    masscan \
    \
    # === Packet Inspection & Traffic Capture ===
    tcpdump \
    tshark \
    \
    # === Network Protocol & Diagnostic Utilities ===
    netcat-traditional \
    socat \
    dnsutils \
    whois \
    traceroute \
    mtr-tiny \
    iproute2 \
    net-tools \
    iputils-ping \
    \
    # === Privacy, Anonymization & Tor Routing ===
    tor \
    torsocks \
    proxychains4 \
    obfs4proxy \
    \
    # === Human-Readable HTTP Client Execution ===
    httpie \
 \
 # --- Locale Optimization (Spanish Localization) ---
 # Modifies /etc/locale.gen in-place using sed to uncomment the Spanish 
 # UTF-8 configuration, followed by locale-gen execution to compile system locales.
 && sed -i 's/# es_ES.UTF-8/es_ES.UTF-8/' /etc/locale.gen \
 && locale-gen \
 \
 # --- Storage Optimization and Layer Cleanup ---
 # Package managers leave temporary cache databases post-installation. Cleaning 
 # these caches within the same RUN block guarantees they are stripped out before 
 # the image layer is committed, dramatically shrinking the final file size.
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# SHELL: Configuring the Build Execution Interpreter
# Overrides Docker's default shell implementation (/bin/sh) to enforce standard 
# Bash interpretation for all subsequent scripting execution during the build phase.
SHELL ["/bin/bash", "-c"]

# WORKDIR: Defining the Runtime Working Directory
# GitHub Codespaces automatically maps project repositories to the /workspaces 
# path. Setting this as the default working directory ensures any interactive 
# terminal sessions open directly in front of the course source files.
WORKDIR /workspaces

# Global Git Environment Customization
# Standardizing Git behavior across the entire containerized subsystem:
# - safe.directory *: Mitigates UID/GID ownership mismatches when mounting paths.
# - init.defaultBranch: Enforces 'main' as the standard development branch.
# - pull.rebase false: Assumes explicit merge commits on downstream pulls.
# - git lfs install: Activates Large File Storage systems globally.
RUN git config --system --add safe.directory '*' \
 && git config --system init.defaultBranch main \
 && git config --system pull.rebase false \
 && git lfs install --system

# Root User Shell Migration
# Upgrades the default root login environment shell from Bash to Zsh to 
# guarantee prompt uniformity and autocomplete stability right out of the box.
RUN chsh -s /usr/bin/zsh root

# Institutional Interactive Shell Prompt Customization
# Appends custom interface configuration directly into the root configuration 
# profile using an inline Here-Document (heredoc) redirection block.
#
# The customized PROMPT variable configures ANSI terminal color sequences, 
# displays working directory paths, and evaluates exit codes dynamically.
#
# (Reference: Black Hat Bash Ch.1 - Input and output stream redirections.)
RUN cat >> /root/.zshrc <<'EOF'

# ===== Evaluates whether the previous execution returned a successful exit status =====
PROMPT='%F{cyan}[Analista-kevin-almache]%f %F{yellow}%1~%f %(?.%F{green}✓.%F{red}✗ %?)%f %# '
EOF

# CMD: Runtime Default Container Command Entrypoint
# Defines the execution entrypoint that runs when spawning the container. 
# While advanced IDE systems like GitHub Codespaces override this setting with 
# their integrated workspace terminal pipelines, keeping it configured provides 
# cross-compatibility when executing the image natively in pure Docker environments.
#
# (Reference: Black Hat Bash Ch.3 - RUN executes tasks during the compilation 
# phase; CMD specifies runtime actions when initializing a container.)
CMD ["/usr/bin/zsh"]