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
# ganglia, 15.4.0-rc11, rc11_1, 2015-06-02T11:14:46Z
#

unique template components/ganglia/config-rpm;

include { 'components/ganglia/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/ganglia';

# Install Quattor configuration module via RPM package.
'/software/packages' = pkg_repl('ncm-ganglia','15.4.0-rc11_1','noarch');
'dependencies/pre' ?= list('spma');

