# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   German Cancio <German.Cancio@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # grub, 13.9.0, 1, 20130911-1927
      #

unique template components/grub/config-xml;

include { 'components/grub/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/grub';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/grub/grub.pm'); 
