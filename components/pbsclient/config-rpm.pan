# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   David Groep <davidg@nikhef.nl>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
# pbsclient, 17.7.0-rc3, rc3_1, Wed Aug 09 2017
#

unique template components/pbsclient/config-rpm;

include 'components/pbsclient/config-common';

# Set prefix to root of component configuration.
prefix '/software/components/pbsclient';

# Install Quattor configuration module via RPM package.
'/software/packages' = pkg_repl('ncm-pbsclient', '17.7.0-rc3_1', 'noarch');
'dependencies/pre' ?= list('spma');

