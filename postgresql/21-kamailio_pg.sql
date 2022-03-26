CREATE TABLE public.mohqcalls (
    id integer NOT NULL,
    mohq_id integer NOT NULL,
    call_id character varying(100) NOT NULL,
    call_status integer NOT NULL,
    call_from character varying(100) NOT NULL,
    call_contact character varying(100),
    call_time timestamp without time zone NOT NULL
);

ALTER TABLE public.mohqcalls OWNER TO postgres;

CREATE SEQUENCE public.mohqcalls_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mohqcalls_id_seq OWNER TO postgres;

ALTER SEQUENCE public.mohqcalls_id_seq OWNED BY public.mohqcalls.id;

CREATE TABLE public.mohqueues (
    id integer NOT NULL,
    name character varying(25) NOT NULL,
    uri character varying(100) NOT NULL,
    mohdir character varying(100),
    mohfile character varying(100) NOT NULL,
    debug integer NOT NULL
);


ALTER TABLE public.mohqueues OWNER TO postgres;

CREATE SEQUENCE public.mohqueues_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mohqueues_id_seq OWNER TO postgres;

ALTER SEQUENCE public.mohqueues_id_seq OWNED BY public.mohqueues.id;

CREATE TABLE public.mtree (
    id integer NOT NULL,
    tprefix character varying(32) DEFAULT ''::character varying NOT NULL,
    tvalue character varying(128) DEFAULT ''::character varying NOT NULL
);


ALTER TABLE public.mtree OWNER TO postgres;

CREATE SEQUENCE public.mtree_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mtree_id_seq OWNER TO postgres;

ALTER SEQUENCE public.mtree_id_seq OWNED BY public.mtree.id;

CREATE TABLE public.mtrees (
    id integer NOT NULL,
    tname character varying(128) DEFAULT ''::character varying NOT NULL,
    tprefix character varying(32) DEFAULT ''::character varying NOT NULL,
    tvalue character varying(128) DEFAULT ''::character varying NOT NULL
);


ALTER TABLE public.mtrees OWNER TO postgres;

CREATE SEQUENCE public.mtrees_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mtrees_id_seq OWNER TO postgres;


ALTER SEQUENCE public.mtrees_id_seq OWNED BY public.mtrees.id;

CREATE TABLE public.pdt (
    id integer NOT NULL,
    sdomain character varying(255) NOT NULL,
    prefix character varying(32) NOT NULL,
    domain character varying(255) DEFAULT ''::character varying NOT NULL
);


ALTER TABLE public.pdt OWNER TO postgres;

CREATE SEQUENCE public.pdt_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pdt_id_seq OWNER TO postgres;

ALTER SEQUENCE public.pdt_id_seq OWNED BY public.pdt.id;

CREATE TABLE public.pl_pipes (
    id integer NOT NULL,
    pipeid character varying(64) DEFAULT ''::character varying NOT NULL,
    algorithm character varying(32) DEFAULT ''::character varying NOT NULL,
    plimit integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.pl_pipes OWNER TO postgres;

CREATE SEQUENCE public.pl_pipes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pl_pipes_id_seq OWNER TO postgres;

ALTER SEQUENCE public.pl_pipes_id_seq OWNED BY public.pl_pipes.id;

CREATE TABLE public.presentity (
    id integer NOT NULL,
    username character varying(64) NOT NULL,
    domain character varying(64) NOT NULL,
    event character varying(64) NOT NULL,
    etag character varying(128) NOT NULL,
    expires integer NOT NULL,
    received_time integer NOT NULL,
    body bytea NOT NULL,
    sender character varying(255) NOT NULL,
    priority integer DEFAULT 0 NOT NULL,
    ruid character varying(64)
);


ALTER TABLE public.presentity OWNER TO postgres;

CREATE SEQUENCE public.presentity_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.presentity_id_seq OWNER TO postgres;

ALTER SEQUENCE public.presentity_id_seq OWNED BY public.presentity.id;

CREATE TABLE public.pua (
    id integer NOT NULL,
    pres_uri character varying(255) NOT NULL,
    pres_id character varying(255) NOT NULL,
    event integer NOT NULL,
    expires integer NOT NULL,
    desired_expires integer NOT NULL,
    flag integer NOT NULL,
    etag character varying(128) NOT NULL,
    tuple_id character varying(64),
    watcher_uri character varying(255) NOT NULL,
    call_id character varying(255) NOT NULL,
    to_tag character varying(128) NOT NULL,
    from_tag character varying(128) NOT NULL,
    cseq integer NOT NULL,
    record_route text,
    contact character varying(255) NOT NULL,
    remote_contact character varying(255) NOT NULL,
    version integer NOT NULL,
    extra_headers text NOT NULL
);


ALTER TABLE public.pua OWNER TO postgres;

CREATE SEQUENCE public.pua_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pua_id_seq OWNER TO postgres;

ALTER SEQUENCE public.pua_id_seq OWNED BY public.pua.id;

CREATE TABLE public.purplemap (
    id integer NOT NULL,
    sip_user character varying(255) NOT NULL,
    ext_user character varying(255) NOT NULL,
    ext_prot character varying(16) NOT NULL,
    ext_pass character varying(64)
);


ALTER TABLE public.purplemap OWNER TO postgres;

CREATE SEQUENCE public.purplemap_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.purplemap_id_seq OWNER TO postgres;

ALTER SEQUENCE public.purplemap_id_seq OWNED BY public.purplemap.id;

CREATE TABLE public.re_grp (
    id integer NOT NULL,
    reg_exp character varying(128) DEFAULT ''::character varying NOT NULL,
    group_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.re_grp OWNER TO postgres;

CREATE SEQUENCE public.re_grp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.re_grp_id_seq OWNER TO postgres;

ALTER SEQUENCE public.re_grp_id_seq OWNED BY public.re_grp.id;

CREATE TABLE public.rls_presentity (
    id integer NOT NULL,
    rlsubs_did character varying(255) NOT NULL,
    resource_uri character varying(255) NOT NULL,
    content_type character varying(255) NOT NULL,
    presence_state bytea NOT NULL,
    expires integer NOT NULL,
    updated integer NOT NULL,
    auth_state integer NOT NULL,
    reason character varying(64) NOT NULL
);


ALTER TABLE public.rls_presentity OWNER TO postgres;

CREATE SEQUENCE public.rls_presentity_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rls_presentity_id_seq OWNER TO postgres;

ALTER SEQUENCE public.rls_presentity_id_seq OWNED BY public.rls_presentity.id;

CREATE TABLE public.rls_watchers (
    id integer NOT NULL,
    presentity_uri character varying(255) NOT NULL,
    to_user character varying(64) NOT NULL,
    to_domain character varying(64) NOT NULL,
    watcher_username character varying(64) NOT NULL,
    watcher_domain character varying(64) NOT NULL,
    event character varying(64) DEFAULT 'presence'::character varying NOT NULL,
    event_id character varying(64),
    to_tag character varying(128) NOT NULL,
    from_tag character varying(128) NOT NULL,
    callid character varying(255) NOT NULL,
    local_cseq integer NOT NULL,
    remote_cseq integer NOT NULL,
    contact character varying(255) NOT NULL,
    record_route text,
    expires integer NOT NULL,
    status integer DEFAULT 2 NOT NULL,
    reason character varying(64) NOT NULL,
    version integer DEFAULT 0 NOT NULL,
    socket_info character varying(64) NOT NULL,
    local_contact character varying(255) NOT NULL,
    from_user character varying(64) NOT NULL,
    from_domain character varying(64) NOT NULL,
    updated integer NOT NULL
);


ALTER TABLE public.rls_watchers OWNER TO postgres;

CREATE SEQUENCE public.rls_watchers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rls_watchers_id_seq OWNER TO postgres;

ALTER SEQUENCE public.rls_watchers_id_seq OWNED BY public.rls_watchers.id;

CREATE TABLE public.rtpengine (
    id integer NOT NULL,
    setid integer DEFAULT 0 NOT NULL,
    url character varying(64) NOT NULL,
    weight integer DEFAULT 1 NOT NULL,
    disabled integer DEFAULT 0 NOT NULL,
    stamp timestamp without time zone DEFAULT '1900-01-01 00:00:01'::timestamp without time zone NOT NULL
);


ALTER TABLE public.rtpengine OWNER TO postgres;

CREATE SEQUENCE public.rtpengine_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rtpengine_id_seq OWNER TO postgres;

ALTER SEQUENCE public.rtpengine_id_seq OWNED BY public.rtpengine.id;

CREATE TABLE public.rtpproxy (
    id integer NOT NULL,
    setid character varying(32) DEFAULT 0 NOT NULL,
    url character varying(64) DEFAULT ''::character varying NOT NULL,
    flags integer DEFAULT 0 NOT NULL,
    weight integer DEFAULT 1 NOT NULL,
    description character varying(64) DEFAULT ''::character varying NOT NULL
);


ALTER TABLE public.rtpproxy OWNER TO postgres;

CREATE SEQUENCE public.rtpproxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rtpproxy_id_seq OWNER TO postgres;

ALTER SEQUENCE public.rtpproxy_id_seq OWNED BY public.rtpproxy.id;

CREATE TABLE public.sca_subscriptions (
    id integer NOT NULL,
    subscriber character varying(255) NOT NULL,
    aor character varying(255) NOT NULL,
    event integer DEFAULT 0 NOT NULL,
    expires integer DEFAULT 0 NOT NULL,
    state integer DEFAULT 0 NOT NULL,
    app_idx integer DEFAULT 0 NOT NULL,
    call_id character varying(255) NOT NULL,
    from_tag character varying(128) NOT NULL,
    to_tag character varying(128) NOT NULL,
    record_route text,
    notify_cseq integer NOT NULL,
    subscribe_cseq integer NOT NULL,
    server_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.sca_subscriptions OWNER TO postgres;

CREATE SEQUENCE public.sca_subscriptions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sca_subscriptions_id_seq OWNER TO postgres;

ALTER SEQUENCE public.sca_subscriptions_id_seq OWNED BY public.sca_subscriptions.id;

CREATE TABLE public.secfilter (
    id integer NOT NULL,
    action smallint DEFAULT 0 NOT NULL,
    type smallint DEFAULT 0 NOT NULL,
    data character varying(64) DEFAULT ''::character varying NOT NULL
);


ALTER TABLE public.secfilter OWNER TO postgres;

CREATE SEQUENCE public.secfilter_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.secfilter_id_seq OWNER TO postgres;

ALTER SEQUENCE public.secfilter_id_seq OWNED BY public.secfilter.id;

CREATE TABLE public.silo (
    id integer NOT NULL,
    src_addr character varying(255) DEFAULT ''::character varying NOT NULL,
    dst_addr character varying(255) DEFAULT ''::character varying NOT NULL,
    username character varying(64) DEFAULT ''::character varying NOT NULL,
    domain character varying(64) DEFAULT ''::character varying NOT NULL,
    inc_time integer DEFAULT 0 NOT NULL,
    exp_time integer DEFAULT 0 NOT NULL,
    snd_time integer DEFAULT 0 NOT NULL,
    ctype character varying(32) DEFAULT 'text/plain'::character varying NOT NULL,
    body bytea,
    extra_hdrs text,
    callid character varying(128) DEFAULT ''::character varying NOT NULL,
    status integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.silo OWNER TO postgres;

CREATE SEQUENCE public.silo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.silo_id_seq OWNER TO postgres;

ALTER SEQUENCE public.silo_id_seq OWNED BY public.silo.id;

CREATE TABLE public.sip_trace (
    id integer NOT NULL,
    time_stamp timestamp without time zone DEFAULT '2000-01-01 00:00:01'::timestamp without time zone NOT NULL,
    time_us integer DEFAULT 0 NOT NULL,
    callid character varying(255) DEFAULT ''::character varying NOT NULL,
    traced_user character varying(255) DEFAULT ''::character varying NOT NULL,
    msg text NOT NULL,
    method character varying(50) DEFAULT ''::character varying NOT NULL,
    status character varying(255) DEFAULT ''::character varying NOT NULL,
    fromip character varying(50) DEFAULT ''::character varying NOT NULL,
    toip character varying(50) DEFAULT ''::character varying NOT NULL,
    fromtag character varying(128) DEFAULT ''::character varying NOT NULL,
    totag character varying(128) DEFAULT ''::character varying NOT NULL,
    direction character varying(4) DEFAULT ''::character varying NOT NULL
);


ALTER TABLE public.sip_trace OWNER TO postgres;

CREATE SEQUENCE public.sip_trace_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sip_trace_id_seq OWNER TO postgres;

ALTER SEQUENCE public.sip_trace_id_seq OWNED BY public.sip_trace.id;

CREATE TABLE public.speed_dial (
    id integer NOT NULL,
    username character varying(64) DEFAULT ''::character varying NOT NULL,
    domain character varying(64) DEFAULT ''::character varying NOT NULL,
    sd_username character varying(64) DEFAULT ''::character varying NOT NULL,
    sd_domain character varying(64) DEFAULT ''::character varying NOT NULL,
    new_uri character varying(255) DEFAULT ''::character varying NOT NULL,
    fname character varying(64) DEFAULT ''::character varying NOT NULL,
    lname character varying(64) DEFAULT ''::character varying NOT NULL,
    description character varying(64) DEFAULT ''::character varying NOT NULL
);


ALTER TABLE public.speed_dial OWNER TO postgres;

CREATE SEQUENCE public.speed_dial_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.speed_dial_id_seq OWNER TO postgres;


ALTER SEQUENCE public.speed_dial_id_seq OWNED BY public.speed_dial.id;

CREATE TABLE public.subscriber (
    id serial NOT NULL,
    username character varying(64) DEFAULT ''::character varying NOT NULL,
    domain character varying(64) DEFAULT ''::character varying NOT NULL,
    password character varying(64) DEFAULT ''::character varying NOT NULL,
    ha1 character varying(128) DEFAULT ''::character varying NOT NULL,
    ha1b character varying(128) DEFAULT ''::character varying NOT NULL
);


ALTER TABLE public.subscriber OWNER TO postgres;

CREATE SEQUENCE IF NOT EXISTS public.subscriber_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.subscriber_id_seq OWNER TO postgres;

ALTER SEQUENCE public.subscriber_id_seq OWNED BY public.subscriber.id;

CREATE TABLE public.topos_d (
    id integer NOT NULL,
    rectime timestamp without time zone NOT NULL,
    s_method character varying(64) DEFAULT ''::character varying NOT NULL,
    s_cseq character varying(64) DEFAULT ''::character varying NOT NULL,
    a_callid character varying(255) DEFAULT ''::character varying NOT NULL,
    a_uuid character varying(255) DEFAULT ''::character varying NOT NULL,
    b_uuid character varying(255) DEFAULT ''::character varying NOT NULL,
    a_contact character varying(512) DEFAULT ''::character varying NOT NULL,
    b_contact character varying(512) DEFAULT ''::character varying NOT NULL,
    as_contact character varying(512) DEFAULT ''::character varying NOT NULL,
    bs_contact character varying(512) DEFAULT ''::character varying NOT NULL,
    a_tag character varying(255) DEFAULT ''::character varying NOT NULL,
    b_tag character varying(255) DEFAULT ''::character varying NOT NULL,
    a_rr text,
    b_rr text,
    s_rr text,
    iflags integer DEFAULT 0 NOT NULL,
    a_uri character varying(255) DEFAULT ''::character varying NOT NULL,
    b_uri character varying(255) DEFAULT ''::character varying NOT NULL,
    r_uri character varying(255) DEFAULT ''::character varying NOT NULL,
    a_srcaddr character varying(128) DEFAULT ''::character varying NOT NULL,
    b_srcaddr character varying(128) DEFAULT ''::character varying NOT NULL,
    a_socket character varying(128) DEFAULT ''::character varying NOT NULL,
    b_socket character varying(128) DEFAULT ''::character varying NOT NULL
);


ALTER TABLE public.topos_d OWNER TO postgres;

CREATE SEQUENCE public.topos_d_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.topos_d_id_seq OWNER TO postgres;

ALTER SEQUENCE public.topos_d_id_seq OWNED BY public.topos_d.id;

CREATE TABLE public.topos_t (
    id integer NOT NULL,
    rectime timestamp without time zone NOT NULL,
    s_method character varying(64) DEFAULT ''::character varying NOT NULL,
    s_cseq character varying(64) DEFAULT ''::character varying NOT NULL,
    a_callid character varying(255) DEFAULT ''::character varying NOT NULL,
    a_uuid character varying(255) DEFAULT ''::character varying NOT NULL,
    b_uuid character varying(255) DEFAULT ''::character varying NOT NULL,
    direction integer DEFAULT 0 NOT NULL,
    x_via text,
    x_vbranch character varying(255) DEFAULT ''::character varying NOT NULL,
    x_rr text,
    y_rr text,
    s_rr text,
    x_uri character varying(255) DEFAULT ''::character varying NOT NULL,
    a_contact character varying(512) DEFAULT ''::character varying NOT NULL,
    b_contact character varying(512) DEFAULT ''::character varying NOT NULL,
    as_contact character varying(512) DEFAULT ''::character varying NOT NULL,
    bs_contact character varying(512) DEFAULT ''::character varying NOT NULL,
    x_tag character varying(255) DEFAULT ''::character varying NOT NULL,
    a_tag character varying(255) DEFAULT ''::character varying NOT NULL,
    b_tag character varying(255) DEFAULT ''::character varying NOT NULL,
    a_srcaddr character varying(255) DEFAULT ''::character varying NOT NULL,
    b_srcaddr character varying(255) DEFAULT ''::character varying NOT NULL,
    a_socket character varying(128) DEFAULT ''::character varying NOT NULL,
    b_socket character varying(128) DEFAULT ''::character varying NOT NULL
);


ALTER TABLE public.topos_t OWNER TO postgres;

CREATE SEQUENCE public.topos_t_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.topos_t_id_seq OWNER TO postgres;

ALTER SEQUENCE public.topos_t_id_seq OWNED BY public.topos_t.id;

CREATE TABLE public.trusted (
    id integer NOT NULL,
    src_ip character varying(50) NOT NULL,
    proto character varying(4) NOT NULL,
    from_pattern character varying(64) DEFAULT NULL::character varying,
    ruri_pattern character varying(64) DEFAULT NULL::character varying,
    tag character varying(64),
    priority integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.trusted OWNER TO postgres;

CREATE SEQUENCE public.trusted_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.trusted_id_seq OWNER TO postgres;

ALTER SEQUENCE public.trusted_id_seq OWNED BY public.trusted.id;

CREATE TABLE public.uacreg (
    id integer NOT NULL,
    l_uuid character varying(64) DEFAULT ''::character varying NOT NULL,
    l_username character varying(64) DEFAULT ''::character varying NOT NULL,
    l_domain character varying(64) DEFAULT ''::character varying NOT NULL,
    r_username character varying(64) DEFAULT ''::character varying NOT NULL,
    r_domain character varying(64) DEFAULT ''::character varying NOT NULL,
    realm character varying(64) DEFAULT ''::character varying NOT NULL,
    auth_username character varying(64) DEFAULT ''::character varying NOT NULL,
    auth_password character varying(64) DEFAULT ''::character varying NOT NULL,
    auth_ha1 character varying(128) DEFAULT ''::character varying NOT NULL,
    auth_proxy character varying(255) DEFAULT ''::character varying NOT NULL,
    expires integer DEFAULT 0 NOT NULL,
    flags integer DEFAULT 0 NOT NULL,
    reg_delay integer DEFAULT 0 NOT NULL,
    socket character varying(128) DEFAULT ''::character varying NOT NULL
);


ALTER TABLE public.uacreg OWNER TO postgres;

CREATE SEQUENCE public.uacreg_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.uacreg_id_seq OWNER TO postgres;

ALTER SEQUENCE public.uacreg_id_seq OWNED BY public.uacreg.id;

CREATE TABLE public.uri (
    id integer NOT NULL,
    username character varying(64) DEFAULT ''::character varying NOT NULL,
    domain character varying(64) DEFAULT ''::character varying NOT NULL,
    uri_user character varying(64) DEFAULT ''::character varying NOT NULL,
    last_modified timestamp without time zone DEFAULT '2000-01-01 00:00:01'::timestamp without time zone NOT NULL
);


ALTER TABLE public.uri OWNER TO postgres;

CREATE SEQUENCE public.uri_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.uri_id_seq OWNER TO postgres;

ALTER SEQUENCE public.uri_id_seq OWNED BY public.uri.id;

CREATE TABLE public.userblacklist (
    id integer NOT NULL,
    username character varying(64) DEFAULT ''::character varying NOT NULL,
    domain character varying(64) DEFAULT ''::character varying NOT NULL,
    prefix character varying(64) DEFAULT ''::character varying NOT NULL,
    whitelist smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.userblacklist OWNER TO postgres;

CREATE SEQUENCE public.userblacklist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.userblacklist_id_seq OWNER TO postgres;

ALTER SEQUENCE public.userblacklist_id_seq OWNED BY public.userblacklist.id;

CREATE TABLE public.usr_preferences (
    id integer NOT NULL,
    uuid character varying(64) DEFAULT ''::character varying NOT NULL,
    username character varying(255) DEFAULT 0 NOT NULL,
    domain character varying(64) DEFAULT ''::character varying NOT NULL,
    attribute character varying(32) DEFAULT ''::character varying NOT NULL,
    type integer DEFAULT 0 NOT NULL,
    value character varying(128) DEFAULT ''::character varying NOT NULL,
    last_modified timestamp without time zone DEFAULT '2000-01-01 00:00:01'::timestamp without time zone NOT NULL
);


ALTER TABLE public.usr_preferences OWNER TO postgres;

CREATE SEQUENCE public.usr_preferences_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usr_preferences_id_seq OWNER TO postgres;

ALTER SEQUENCE public.usr_preferences_id_seq OWNED BY public.usr_preferences.id;

CREATE TABLE public.version (
    id integer NOT NULL,
    table_name character varying(32) NOT NULL,
    table_version integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.version OWNER TO postgres;

CREATE SEQUENCE public.version_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.version_id_seq OWNER TO postgres;

ALTER SEQUENCE public.version_id_seq OWNED BY public.version.id;

CREATE TABLE public.watchers (
    id integer NOT NULL,
    presentity_uri character varying(255) NOT NULL,
    watcher_username character varying(64) NOT NULL,
    watcher_domain character varying(64) NOT NULL,
    event character varying(64) DEFAULT 'presence'::character varying NOT NULL,
    status integer NOT NULL,
    reason character varying(64),
    inserted_time integer NOT NULL
);


ALTER TABLE public.watchers OWNER TO postgres;

CREATE SEQUENCE public.watchers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.watchers_id_seq OWNER TO postgres;

ALTER SEQUENCE public.watchers_id_seq OWNED BY public.watchers.id;

CREATE TABLE public.xcap (
    id integer NOT NULL,
    username character varying(64) NOT NULL,
    domain character varying(64) NOT NULL,
    doc bytea NOT NULL,
    doc_type integer NOT NULL,
    etag character varying(128) NOT NULL,
    source integer NOT NULL,
    doc_uri character varying(255) NOT NULL,
    port integer NOT NULL
);


ALTER TABLE public.xcap OWNER TO postgres;

CREATE SEQUENCE public.xcap_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE location (
    id SERIAL PRIMARY KEY NOT NULL,
    ruid VARCHAR(64) DEFAULT '' NOT NULL,
    username VARCHAR(64) DEFAULT '' NOT NULL,
    domain VARCHAR(64) DEFAULT NULL,
    contact VARCHAR(512) DEFAULT '' NOT NULL,
    received VARCHAR(128) DEFAULT NULL,
    path VARCHAR(512) DEFAULT NULL,
    expires TIMESTAMP WITHOUT TIME ZONE DEFAULT '2030-05-28 21:32:15' NOT NULL,
    q REAL DEFAULT 1.0 NOT NULL,
    callid VARCHAR(255) DEFAULT 'Default-Call-ID' NOT NULL,
    cseq INTEGER DEFAULT 1 NOT NULL,
    last_modified TIMESTAMP WITHOUT TIME ZONE DEFAULT '2000-01-01 00:00:01' NOT NULL,
    flags INTEGER DEFAULT 0 NOT NULL,
    cflags INTEGER DEFAULT 0 NOT NULL,
    user_agent VARCHAR(255) DEFAULT '' NOT NULL,
    socket VARCHAR(64) DEFAULT NULL,
    methods INTEGER DEFAULT NULL,
    instance VARCHAR(255) DEFAULT NULL,
    reg_id INTEGER DEFAULT 0 NOT NULL,
    server_id INTEGER DEFAULT 0 NOT NULL,
    connection_id INTEGER DEFAULT 0 NOT NULL,
    keepalive INTEGER DEFAULT 0 NOT NULL,
    partition INTEGER DEFAULT 0 NOT NULL,
    CONSTRAINT location_ruid_idx UNIQUE (ruid)
);
CREATE INDEX location_account_contact_idx ON location (username, domain, contact);
CREATE INDEX location_expires_idx ON location (expires);
CREATE INDEX location_tcpcon_idx ON location (connection_id);
CREATE INDEX location_connection_idx ON location (server_id, connection_id);



CREATE TABLE location_attrs (
    id SERIAL PRIMARY KEY NOT NULL,
    ruid VARCHAR(64) DEFAULT '' NOT NULL,
    username VARCHAR(64) DEFAULT '' NOT NULL,
    domain VARCHAR(64) DEFAULT NULL,
    aname VARCHAR(64) DEFAULT '' NOT NULL,
    atype INTEGER DEFAULT 0 NOT NULL,
    avalue VARCHAR(512) DEFAULT '' NOT NULL,
    last_modified TIMESTAMP WITHOUT TIME ZONE DEFAULT '2000-01-01 00:00:01' NOT NULL
);

CREATE INDEX location_attrs_account_record_idx ON location_attrs (username, domain, ruid);
CREATE INDEX location_attrs_last_modified_idx ON location_attrs (last_modified);

INSERT INTO version (id, table_name, table_version) values (1, 'location_attrs','1');

INSERT INTO version (id, table_name, table_version) values (2, 'location','9');

INSERT INTO version (id, table_name, table_version) values (3, 'uacreg','4');

INSERT INTO uacreg VALUES (1,'kamailio','kamailio','192.168.168.3','kamailio','192.168.168.2','asterisk','kamailio','kamailio','','sip:192.168.168.2:5061',60,0,0);