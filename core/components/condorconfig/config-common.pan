# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Charles Loomis <charles.loomis@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
# condorconfig, 17.8.0-rc1, rc1_1, Fri Sep 22 2017
#

unique template components/condorconfig/config-common;

include 'components/condorconfig/schema';

# Set prefix to root of component configuration.
prefix '/software/components/condorconfig';

'version' = '17.8.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
