#
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

#
# Current developer(s):
#   Ulrich Schwickerath <ulrich.schwickerath@cern.ch>
#



unique template components/syslog/config;

include 'components/syslog/schema';

bind '/software/components/syslog' = syslog_component;

'/software/packages' = pkg_repl('ncm-syslog', '17.8.0-rc1_1', 'noarch');

include if_exists('components/syslog/site-config.pan');

prefix '/software/components/syslog';
'active' ?= true;
'dispatch' ?= true;
'version' ?= '17.8.0';
'dependencies/pre' ?= list('spma');
