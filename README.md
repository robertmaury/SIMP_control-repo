Simple control repo for the NSA's SIMP project v6.0.

To test, edit hieradata/common.yaml to reflect your environment. Namely:

simp_options::puppet::ca : 
simp_options::puppet::ca_port :
simp_options::puppet::server : 
simp_options::trusted_nets :
simp_options::dns::search :
simp_options::dns::servers :

TODO:

 1. Create a profile for a management server.
   - Configure rsync and stunnel to enable Clamav
   - Configure OpenLDAP
