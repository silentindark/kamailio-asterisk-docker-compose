insert into ps_endpoints (id, aors, auth, context, disallow, allow, direct_media, rtp_symmetric, bind_rtp_to_media_address) values (101, '101', '101', 'from-internal', 'all', 'ulaw', 'no', 'yes', 'yes');
insert into ps_auths (id, auth_type, password, username) values (101, 'userpass', 'password', 101);
insert into ps_aors (id, max_contacts, remove_existing) values (101, 3, 'yes');

insert into ps_endpoints (id, aors, auth, context, disallow, allow, direct_media, rtp_symmetric, bind_rtp_to_media_address) values (100, '100', '100', 'from-internal', 'all', 'ulaw', 'no', 'yes', 'yes');
insert into ps_auths (id, auth_type, password, username) values (100, 'userpass', 'password', 100);
insert into ps_aors (id, max_contacts, remove_existing) values (100, 3, 'yes');