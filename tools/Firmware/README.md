# Firmware Build Tools

This directory contains tools and scripts needed to build FFU images containing Windows Desktop.

These scripts can be edited to suit your needs, they currently build FFU files for every device out of a file named:

```%USERPROFILE%\Downloads\X23-81973_26100.1742.240906-0331.ge_release_svc_refresh_CLIENT_CONSUMER_A64FRE_en-us.iso```

Using index 3 in above file (Windows 11 Pro).

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