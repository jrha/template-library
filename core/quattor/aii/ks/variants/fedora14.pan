# #
# Software subject to following license(s):
#   The Apache Software License, Version 2.0 (http://www.apache.org/licenses/LICENSE-2.0.txt)
#   null
#

# #
# Current developer(s):
#   Luis Fernando Muñoz Mejías <Luis.Munoz@UGent.be>
#

# #
# Author(s): Michel Jouvin, Gabor Gombas, Ben Jones
#

# #
# ks, 17.8.0-rc1, rc1_1, Fri Sep 22 2017
#

# Template containing OS configuration and default values.

template quattor/aii/ks/variants/fedora14;

# Remove deprecated options
"/system/aii/osinstall/ks/mouse" = null;
"/system/aii/osinstall/ks/langsupport" = null;
"/system/aii/osinstall/ks/packages_args" = list("--ignoremissing");
