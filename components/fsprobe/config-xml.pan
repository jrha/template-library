# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Tim Bell <tim.bell@cern.ch>
#

# 
# #
# fsprobe, 15.4.0-rc11, rc11_1, 2015-06-02T11:14:46Z
#

unique template components/fsprobe/config-xml;

include { 'components/fsprobe/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/fsprobe';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/fsprobe/fsprobe.pm'); 
