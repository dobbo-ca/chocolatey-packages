# Chocolatey Packages

This repository contains Chocolatey packages for dobbo-ca tools.

## Packages

- **editorlint**: A fast EditorConfig checker and auto-fixer

## Installation

To install packages from this repository:

```powershell
# Install editorlint
choco install editorlint -s https://github.com/dobbo-ca/chocolatey-packages
```

## Development

Each package is organized in its own directory with the standard Chocolatey package structure:

```
package-name/
├── package-name.nuspec
├── tools/
│   ├── chocolateyinstall.ps1
│   └── chocolateyuninstall.ps1
└── legal/
    ├── LICENSE.txt
    └── VERIFICATION.txt
```

## Automation

Package updates are automated through GitHub Actions workflows that respond to releases in the source repositories.

