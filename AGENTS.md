# Repo Agent Notes

This repository contains the Homebrew Formula tap for `s7s` and other `ular.io` tools.

## Critical Rules

- **Security and Privacy**: Since this is a public project, strictly ensure that personal local development environment settings (absolute paths, local folder names, etc.), security settings (API keys, tokens, etc.), or sensitive personal information are not hard-coded or committed in the code and documentation.
- **Language Guidelines**: All files to be committed to the repository (code, documentation, formula files, etc.) and git commit messages must be written exclusively in English. Non-English content (including Korean) is not allowed in commit messages or repository files.
- **Homebrew Formula Versioning**:
  - Always specify the explicit `version` field in the formula file (e.g., `version "0.1.1"` in `Formula/s7s.rb`) instead of relying on Homebrew's automatic parsing from binary filenames. This prevents Homebrew from misinterpreting suffixes like `64` in `s7s-mac-arm64.tar.gz` as version numbers.
  - When updating a formula, ensure download URLs and SHA256 checksums are updated in tandem for both ARM64 and AMD64 architectures.
