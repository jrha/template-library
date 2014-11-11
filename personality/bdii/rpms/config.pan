unique template personality/bdii/rpms/config;

'/software/packages' = {
    if (BDII_TYPE == 'site' || BDII_TYPE == 'combined') {
      pkg_repl('emi-bdii-site');
    } else if (BDII_TYPE == 'top') {
      pkg_repl('emi-bdii-top');
    } else {
      pkg_repl('bdii');
    };
    SELF;
};
