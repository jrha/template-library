unique template features/htcondor/client/service;


variable CONDOR_CONFIG={
  #Define the appropriate config files
  if(!is_defined(SELF['cfgfiles'])){
    SELF['cfgfiles']=list();
  };	

  # global & security mandatory
  file_list=list('global','security');
  foreach(i;file;file_list){
    num = length( SELF['cfgfiles']);
    SELF['cfgfiles'][num] = nlist( 'name',file,'contents','features/htcondor/templ/' + file);
  };

  SELF;
};

include {
  if(index(FULL_HOSTNAME,CE_HOSTS) < 0){
    'features/htcondor/client/worker';	   	 
  }else{
    'features/htcondor/client/ce';
  };
};

include 'features/htcondor/config';

# CONDOR_HOST is mandatory for GIP configuration
variable CONDOR_HOST ?= CONDOR_CONFIG['host'];
