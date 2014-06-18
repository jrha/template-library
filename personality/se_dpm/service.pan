unique template personality/se_dpm/service;

# SEDPM_CONFIG_SITE is the legacy name of the variable.
variable SEDPM_CONFIG_SITE ?= null;
variable DPM_CONFIG_SITE ?= SEDPM_CONFIG_SITE;


# Ensure that the host certificates have the correct permissions.
include { 'features/security/host_certs' };

# Modify the loadable library path. 
include { 'features/ldconf/config' };

# EDG, LCG, and Globus sysconfig files and environment variables
include { 'features/globus/sysconfig' };
include { 'features/grid/env' };


# Add accepted CAs certificates
include { 'security/cas' };

# Update the certificate revocation lists.
include { 'features/fetch-crl/config' };


# Authorization via grid mapfile. 
include { 'features/mkgridmap/standard' };
include { 'features/mkgridmap/lcgdm' };


# Configure DPM services.
# Must be done before doing specific configuration for the node type.
include { 'personality/se_dpm/config' };


# Add RPMs (needs variables defined by glite/se_dpm/config
include { 'personality/se_dpm/rpms/config' };


# DPM node type specific configuration
variable SEDPM_MACHINE_CONFIG = {
    if ( SEDPM_IS_HEAD_NODE ) {
        "personality/se_dpm/server/service";
    } else {
        "personality/se_dpm/disk/service";
    };
};
include { SEDPM_MACHINE_CONFIG };


# Configure dmlite
variable DEBUG = debug(OBJECT+': DMLITE_ENABLED='+to_string(DMLITE_ENABLED));
include { if ( DMLITE_ENABLED ) 'personality/se_dpm/config_dmlite'};


# Configure Xrootd services if needed
# Must be done AFTER the DPM configuration is complete
include { if ( XROOT_ENABLED ) 'personality/xrootd/service' };
