# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Jaroslaw Polok <jaroslaw.polok@cern.ch>
#

# 
# #
# afsclt, 15.4.0-rc11, rc11_1, 2015-06-02T11:14:46Z
#

unique template components/afsclt/config-xml;

include { 'components/afsclt/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/afsclt';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/afsclt/afsclt.pm'); 
