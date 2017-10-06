unique template metaconfig/devicemapper/multipath;

include 'metaconfig/devicemapper/schema';

bind "/software/components/metaconfig/services/{/etc/multipath.conf}/contents" = multipath_config;

prefix "/software/components/metaconfig/services/{/etc/multipath.conf}";
"daemons/multipathd" = "restart";
"module" = "devicemapper/multipath";

