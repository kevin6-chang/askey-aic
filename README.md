askey-aic Repo README
=====================

This repository is created for hosting the AIC software for tasks and projects in the following categories:

- CBU single-module bottom-up builds
- CBU unit test sandbox
  + Module unit test bottom-up build logic
  + LTEM stub logic
  + Bug fixes for the existing Unity C test framework hosted in the following Git repositories:
    * git@gitlab.spectrumflow.net:ese/scpfirmware/scpcom/packages/coss/package.git
    * git@10.1.6.85:7999/purtwd/scp-wifi7ask-device.git
  + OpenWrt make infrastructure files for converting unit-testless modules into unit-test-enabled modules under vendor/askey/src/

- Third-party licensed code for group discussions regarding defects and bug fixes

- CBU monolithic build prerequisites
  + Makefile modifications
  + Missing software packages
  + Step-by-step build tutorial documents covering known pitfalls and common issues

The folder and path design goal of this repository follows the original directory hierarchy to allow easier correlation between this repository and the main code repository.




 
