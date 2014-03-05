unique template config/core/base;

variable USE_OFED ?= false;

variable OS_BASE_OPTIONAL_PACKAGES ?= false;

# Default if not properly defined elsewhere, using the standard mechanism
variable OS_VERSION_PARAMS ?= nlist(
    "distribution", "sl",
    "major", "sl6",
    "majorversion", "6",
    "minor", "x",
    "version", "sl6x",
    "arch", "x86_64"
);

variable RPM_BASE_FLAVOUR = '6';
variable RPM_BASE_FLAVOUR_VERSIONID = 6;
variable RPM_BASE_FLAVOUR_NAME = format('el%s',RPM_BASE_FLAVOUR_VERSIONID);


variable OS_BASE_CONFIG_SITE ?= null;

variable KERNEL_VARIANT ?= "";

variable KERNEL_FIRMWARE_ARCH ?= "noarch";
#
# Kernel version and CPU architecture
#
include { 'os/kernel_version_arch' };
## new kernel naming
"/system/kernel/version" = KERNEL_VERSION+'.'+PKG_ARCH_DEFAULT;

# Default architecture to use for gLite, if several architectures are
# supported for a service.
# This variable can be overriden at a site level or in a profile to
# force a specific architecture (e.g. i386 on 64-bit machine)
variable PKG_ARCH_BASE ?= PKG_ARCH_DEFAULT;

# Minimum list of packages
variable OS_BASE_RPMS_TEMPLATE ?= if ( OS_BASE_OPTIONAL_PACKAGES ) {
                                    'rpms/base';
                                  } else {
                                    'rpms/core';
                                  };
include { OS_BASE_RPMS_TEMPLATE };

# core extras
include {'config/core/daemons'};
include { 'config/core/boot'};


# Local site OS configuration
variable OS_BASE_CONFIG_SITE_INCLUDE = if ( exists(OS_BASE_CONFIG_SITE) && is_defined(OS_BASE_CONFIG_SITE) ) {
    return(OS_BASE_CONFIG_SITE);
} else {
    return(null);
};
include { return(OS_BASE_CONFIG_SITE_INCLUDE) };

