# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Teemu Sidoroff <Teemu.Sidoroff@cern.ch>
#

# 
# #
# ssh, 17.8.0-rc1, rc1_1, Fri Sep 22 2017
#

unique template components/ssh/config;

include 'components/ssh/schema';

"/software/packages" = pkg_repl("ncm-ssh", "17.8.0-rc1_1", "noarch");

prefix '/software/components/ssh';
'dependencies/pre' ?= list("spma");
'active' ?= true;
'dispatch' ?= true;
'version' ?= '17.8.0';
