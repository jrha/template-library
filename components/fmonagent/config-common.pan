# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Miroslav Siket <dennis.waldron@cern.ch>
#

# 
# #
# fmonagent, 15.4.0-rc11, rc11_1, 2015-06-02T11:14:46Z
#

unique template components/fmonagent/config-common;

include { 'components/fmonagent/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/fmonagent';

#'version' = '15.4.0-rc11';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
