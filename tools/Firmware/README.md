# Firmware Build Tools

This directory contains tools and scripts needed to build FFU images containing Windows Desktop.

These scripts can be edited to suit your needs, they currently build FFU files for every device out of a file named:

```%USERPROFILE%\Downloads\X23-81973_26100.1742.240906-0331.ge_release_svc_refresh_CLIENT_CONSUMER_A64FRE_en-us.iso```

Using index 3 in above file (Windows 11 Pro).

## Tooling system requirements

- Windows 10 version 1703 or higher
- .NET 8.0.X Runtime ([X86](https://dotnet.microsoft.com/en-us/download/dotnet/thank-you/runtime-8.0.10-windows-x86-installer), [X64](https://dotnet.microsoft.com/en-us/download/dotnet/thank-you/runtime-8.0.10-windows-x64-installer) or [ARM64](https://dotnet.microsoft.com/en-us/download/dotnet/thank-you/runtime-8.0.10-windows-arm64-installer))
- X86, AMD64 or ARM64 Processor
- At least 40GB of free space

## Scripts

### build_now.cmd

Builds FFU images for every FFU Device Profile, using ```%USERPROFILE%\Downloads\X23-81973_26100.1742.240906-0331.ge_release_svc_refresh_CLIENT_CONSUMER_A64FRE_en-us.iso```'s Index 3, and signs them using ```sign.cmd```

### build_now_unsigned.cmd

Builds FFU images for every FFU Device Profile, using ```%USERPROFILE%\Downloads\X23-81973_26100.1742.240906-0331.ge_release_svc_refresh_CLIENT_CONSUMER_A64FRE_en-us.iso```'s Index 3, and keeps them unsigned.

### build_now_OEMZE_ZetaMaximizedForWindows.cmd

Builds OEMZE_ZetaMaximizedForWindows.ffu using ```%USERPROFILE%\Downloads\X23-81973_26100.1742.240906-0331.ge_release_svc_refresh_CLIENT_CONSUMER_A64FRE_en-us.iso```'s Index 3, and signs it using ```sign.cmd```

### resign_ffu.cmd

Requirement: WSK i386 folder under ```.\i386```, patched imageutility to not check for certificate origin.

Argument 1: Path to FFU File

Resigns a FFU file using the certificate hardcoded in the batch file.