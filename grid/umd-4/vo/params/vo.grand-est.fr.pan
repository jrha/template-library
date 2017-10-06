structure template vo/params/vo.grand-est.fr;

'name' ?= 'vo.grand-est.fr';
'account_prefix' ?= 'gratcc';

'voms_servers' ?= list(
    dict('name', 'grid12.lal.in2p3.fr',
          'host', 'grid12.lal.in2p3.fr',
          'port', 20018,
          'adminport', 8443,
         ),
);

'voms_mappings' ?= list(
    dict('description', 'IPHC users',
          'fqan', '/vo.grand-est.fr/IPHC',
          'suffix', 'ltcc',
          'suffix2', 'tlnldt',
         ),
    dict('description', 'LSIIT users',
          'fqan', '/vo.grand-est.fr/LSIIT',
          'suffix', 'mtcc',
          'suffix2', 'ufzhbtc',
         ),
    dict('description', 'ARN users',
          'fqan', '/vo.grand-est.fr/ARN',
          'suffix', 'ktcc',
          'suffix2', 'tvzew',
         ),
    dict('description', 'IBMP users',
          'fqan', '/vo.grand-est.fr/IBMP',
          'suffix', 'uhtcc',
          'suffix2', 'tlnrmt',
         ),
    dict('description', 'ICS users',
          'fqan', '/vo.grand-est.fr/ICS',
          'suffix', 'ugtcc',
          'suffix2', 'tvkww',
         ),
    dict('description', 'LIT users',
          'fqan', '/vo.grand-est.fr/LIT',
          'suffix', 'yctcc',
          'suffix2', 'tvoky',
         ),
    dict('description', 'IGL users',
          'fqan', '/vo.grand-est.fr/IGL',
          'suffix', 'cytcc',
          'suffix2', 'tvkaj',
         ),
    dict('description', 'LIFC users',
          'fqan', '/vo.grand-est.fr/LIFC',
          'suffix', 'ydtcc',
          'suffix2', 'tmsdhb',
         ),
    dict('description', 'SW manager',
          'fqan', '/vo.grand-est.fr/Role=SoftwareManager',
          'suffix', 's',
          'suffix2', 's',
         ),
    dict('description', 'Software manager in ARN',
          'fqan', '/vo.grand-est.fr/ARN/Role=Software',
          'suffix', 'rytcc',
          'suffix2', 'tbfkdop',
         ),
    dict('description', 'LIMH users',
          'fqan', '/vo.grand-est.fr/LIMH',
          'suffix', 'cztcc',
          'suffix2', 'tmsdpp',
         ),
    dict('description', 'LIVE users',
          'fqan', '/vo.grand-est.fr/LIVE',
          'suffix', 'gvtcc',
          'suffix2', 'tmseaf',
         ),
    dict('description', 'EOST users',
          'fqan', '/vo.grand-est.fr/EOST',
          'suffix', 'krtcc',
          'suffix2', 'tlhqyi',
         ),
    dict('description', 'GMGM users',
          'fqan', '/vo.grand-est.fr/GMGM',
          'suffix', 'nntcc',
          'suffix2', 'tlkxrl',
         ),
);

'base_uid' ?= 2352000;
