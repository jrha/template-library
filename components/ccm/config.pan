# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Luis Fernando Muñoz Mejías <Luis.Munoz@UGent.be>
#

# 
# #
# ccm, 16.2.0-rc2, rc2_1, 2016-02-17T15:40:39Z
#

unique template components/ccm/config;

include 'components/ccm/schema';

bind '/software/components/ccm' = component_ccm;

'/software/packages' = pkg_repl('ncm-ccm','16.2.0-rc2_1','noarch');

prefix '/software/components/ccm';
'dependencies/pre' ?= list('spma');
'active' ?= true;
'dispatch' ?= true;
'version' ?= '16.2.0';
