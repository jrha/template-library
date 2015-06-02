# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Charles Loomis <charles.loomis@cern.ch>
#

# 
# #
# ldconf, 15.4.0-rc11, rc11_1, 2015-06-02T11:14:46Z
#

unique template components/ldconf/config-common;

include { 'components/ldconf/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/ldconf';

#'version' = '15.4.0-rc11';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
