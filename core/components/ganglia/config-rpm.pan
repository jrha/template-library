# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Guillaume PHILIPPON <guillaume.philippon@lal.in2p3.fr>
#

# #
# Author(s): Guillaume PHILIPPON
#

# #
# ganglia, 17.8.0-rc1, rc1_1, Fri Sep 22 2017
#

unique template components/ganglia/config-rpm;

include 'components/ganglia/config-common';

# Set prefix to root of component configuration.
prefix '/software/components/ganglia';

# Install Quattor configuration module via RPM package.
'/software/packages' = pkg_repl('ncm-ganglia','17.8.0-rc1_1','noarch');
'dependencies/pre' ?= list('spma');

