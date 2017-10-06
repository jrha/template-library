#
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

#
# Current developer(s):
#   Ronald Starink <ronalds@nikhef.nl>
#



unique template components/gmond/config;

include 'components/gmond/schema';

bind '/software/components/gmond' = gmond_component;

'/software/packages' = pkg_repl('ncm-gmond', '17.8.0-rc1_1', 'noarch');

include if_exists('components/gmond/site-config.pan');

prefix '/software/components/gmond';
'active' ?= true;
'dispatch' ?= true;
'version' ?= '17.8.0';
"dependencies/pre" ?=  list("spma", "accounts");
