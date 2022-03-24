--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5
-- Dumped by pg_dump version 11.8

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: ast_bool_values; Type: TYPE; Schema: public; Owner: asterisk
--

CREATE TYPE public.ast_bool_values AS ENUM (
    '0',
    '1',
    'off',
    'on',
    'false',
    'true',
    'no',
    'yes'
);


ALTER TYPE public.ast_bool_values OWNER TO asterisk;

--
-- Name: iax_encryption_values; Type: TYPE; Schema: public; Owner: asterisk
--

CREATE TYPE public.iax_encryption_values AS ENUM (
    'yes',
    'no',
    'aes128'
);


ALTER TYPE public.iax_encryption_values OWNER TO asterisk;

--
-- Name: iax_requirecalltoken_values; Type: TYPE; Schema: public; Owner: asterisk
--

CREATE TYPE public.iax_requirecalltoken_values AS ENUM (
    'yes',
    'no',
    'auto'
);


ALTER TYPE public.iax_requirecalltoken_values OWNER TO asterisk;

--
-- Name: iax_transfer_values; Type: TYPE; Schema: public; Owner: asterisk
--

CREATE TYPE public.iax_transfer_values AS ENUM (
    'yes',
    'no',
    'mediaonly'
);


ALTER TYPE public.iax_transfer_values OWNER TO asterisk;

--
-- Name: moh_mode_values; Type: TYPE; Schema: public; Owner: asterisk
--

CREATE TYPE public.moh_mode_values AS ENUM (
    'custom',
    'files',
    'mp3nb',
    'quietmp3nb',
    'quietmp3',
    'playlist'
);


ALTER TYPE public.moh_mode_values OWNER TO asterisk;

--
-- Name: pjsip_100rel_values; Type: TYPE; Schema: public; Owner: asterisk
--

CREATE TYPE public.pjsip_100rel_values AS ENUM (
    'no',
    'required',
    'yes'
);


ALTER TYPE public.pjsip_100rel_values OWNER TO asterisk;

--
-- Name: pjsip_auth_type_values_v2; Type: TYPE; Schema: public; Owner: asterisk
--

CREATE TYPE public.pjsip_auth_type_values_v2 AS ENUM (
    'md5',
    'userpass',
    'google_oauth'
);


ALTER TYPE public.pjsip_auth_type_values_v2 OWNER TO asterisk;

--
-- Name: pjsip_cid_privacy_values; Type: TYPE; Schema: public; Owner: asterisk
--

CREATE TYPE public.pjsip_cid_privacy_values AS ENUM (
    'allowed_not_screened',
    'allowed_passed_screened',
    'allowed_failed_screened',
    'allowed',
    'prohib_not_screened',
    'prohib_passed_screened',
    'prohib_failed_screened',
    'prohib',
    'unavailable'
);


ALTER TYPE public.pjsip_cid_privacy_values OWNER TO asterisk;

--
-- Name: pjsip_connected_line_method_values; Type: TYPE; Schema: public; Owner: asterisk
--

CREATE TYPE public.pjsip_connected_line_method_values AS ENUM (
    'invite',
    'reinvite',
    'update'
);


ALTER TYPE public.pjsip_connected_line_method_values OWNER TO asterisk;

--
-- Name: pjsip_direct_media_glare_mitigation_values; Type: TYPE; Schema: public; Owner: asterisk
--

CREATE TYPE public.pjsip_direct_media_glare_mitigation_values AS ENUM (
    'none',
    'outgoing',
    'incoming'
);


ALTER TYPE public.pjsip_direct_media_glare_mitigation_values OWNER TO asterisk;

--
-- Name: pjsip_dtls_setup_values; Type: TYPE; Schema: public; Owner: asterisk
--

CREATE TYPE public.pjsip_dtls_setup_values AS ENUM (
    'active',
    'passive',
    'actpass'
);


ALTER TYPE public.pjsip_dtls_setup_values OWNER TO asterisk;

--
-- Name: pjsip_dtmf_mode_values_v3; Type: TYPE; Schema: public; Owner: asterisk
--

CREATE TYPE public.pjsip_dtmf_mode_values_v3 AS ENUM (
    'rfc4733',
    'inband',
    'info',
    'auto',
    'auto_info'
);


ALTER TYPE public.pjsip_dtmf_mode_values_v3 OWNER TO asterisk;

--
-- Name: pjsip_media_encryption_values; Type: TYPE; Schema: public; Owner: asterisk
--

CREATE TYPE public.pjsip_media_encryption_values AS ENUM (
    'no',
    'sdes',
    'dtls'
);


ALTER TYPE public.pjsip_media_encryption_values OWNER TO asterisk;

--
-- Name: pjsip_redirect_method_values; Type: TYPE; Schema: public; Owner: asterisk
--

CREATE TYPE public.pjsip_redirect_method_values AS ENUM (
    'user',
    'uri_core',
    'uri_pjsip'
);


ALTER TYPE public.pjsip_redirect_method_values OWNER TO asterisk;

--
-- Name: pjsip_t38udptl_ec_values; Type: TYPE; Schema: public; Owner: asterisk
--

CREATE TYPE public.pjsip_t38udptl_ec_values AS ENUM (
    'none',
    'fec',
    'redundancy'
);


ALTER TYPE public.pjsip_t38udptl_ec_values OWNER TO asterisk;

--
-- Name: pjsip_taskprocessor_overload_trigger_values; Type: TYPE; Schema: public; Owner: asterisk
--

CREATE TYPE public.pjsip_taskprocessor_overload_trigger_values AS ENUM (
    'none',
    'global',
    'pjsip_only'
);


ALTER TYPE public.pjsip_taskprocessor_overload_trigger_values OWNER TO asterisk;

--
-- Name: pjsip_timer_values; Type: TYPE; Schema: public; Owner: asterisk
--

CREATE TYPE public.pjsip_timer_values AS ENUM (
    'forced',
    'no',
    'required',
    'yes'
);


ALTER TYPE public.pjsip_timer_values OWNER TO asterisk;

--
-- Name: pjsip_transport_method_values; Type: TYPE; Schema: public; Owner: asterisk
--

CREATE TYPE public.pjsip_transport_method_values AS ENUM (
    'default',
    'unspecified',
    'tlsv1',
    'sslv2',
    'sslv3',
    'sslv23'
);


ALTER TYPE public.pjsip_transport_method_values OWNER TO asterisk;

--
-- Name: pjsip_transport_protocol_values_v2; Type: TYPE; Schema: public; Owner: asterisk
--

CREATE TYPE public.pjsip_transport_protocol_values_v2 AS ENUM (
    'udp',
    'tcp',
    'tls',
    'ws',
    'wss',
    'flow'
);


ALTER TYPE public.pjsip_transport_protocol_values_v2 OWNER TO asterisk;

--
-- Name: queue_autopause_values; Type: TYPE; Schema: public; Owner: asterisk
--

CREATE TYPE public.queue_autopause_values AS ENUM (
    'yes',
    'no',
    'all'
);


ALTER TYPE public.queue_autopause_values OWNER TO asterisk;

--
-- Name: queue_strategy_values; Type: TYPE; Schema: public; Owner: asterisk
--

CREATE TYPE public.queue_strategy_values AS ENUM (
    'ringall',
    'leastrecent',
    'fewestcalls',
    'random',
    'rrmemory',
    'linear',
    'wrandom',
    'rrordered'
);


ALTER TYPE public.queue_strategy_values OWNER TO asterisk;

--
-- Name: sha_hash_values; Type: TYPE; Schema: public; Owner: asterisk
--

CREATE TYPE public.sha_hash_values AS ENUM (
    'SHA-1',
    'SHA-256'
);


ALTER TYPE public.sha_hash_values OWNER TO asterisk;

--
-- Name: sip_callingpres_values; Type: TYPE; Schema: public; Owner: asterisk
--

CREATE TYPE public.sip_callingpres_values AS ENUM (
    'allowed_not_screened',
    'allowed_passed_screen',
    'allowed_failed_screen',
    'allowed',
    'prohib_not_screened',
    'prohib_passed_screen',
    'prohib_failed_screen',
    'prohib'
);


ALTER TYPE public.sip_callingpres_values OWNER TO asterisk;

--
-- Name: sip_directmedia_values_v2; Type: TYPE; Schema: public; Owner: asterisk
--

CREATE TYPE public.sip_directmedia_values_v2 AS ENUM (
    'yes',
    'no',
    'nonat',
    'update',
    'outgoing'
);


ALTER TYPE public.sip_directmedia_values_v2 OWNER TO asterisk;

--
-- Name: sip_dtmfmode_values; Type: TYPE; Schema: public; Owner: asterisk
--

CREATE TYPE public.sip_dtmfmode_values AS ENUM (
    'rfc2833',
    'info',
    'shortinfo',
    'inband',
    'auto'
);


ALTER TYPE public.sip_dtmfmode_values OWNER TO asterisk;

--
-- Name: sip_progressinband_values; Type: TYPE; Schema: public; Owner: asterisk
--

CREATE TYPE public.sip_progressinband_values AS ENUM (
    'yes',
    'no',
    'never'
);


ALTER TYPE public.sip_progressinband_values OWNER TO asterisk;

--
-- Name: sip_session_refresher_values; Type: TYPE; Schema: public; Owner: asterisk
--

CREATE TYPE public.sip_session_refresher_values AS ENUM (
    'uac',
    'uas'
);


ALTER TYPE public.sip_session_refresher_values OWNER TO asterisk;

--
-- Name: sip_session_timers_values; Type: TYPE; Schema: public; Owner: asterisk
--

CREATE TYPE public.sip_session_timers_values AS ENUM (
    'accept',
    'refuse',
    'originate'
);


ALTER TYPE public.sip_session_timers_values OWNER TO asterisk;

--
-- Name: sip_transport_values; Type: TYPE; Schema: public; Owner: asterisk
--

CREATE TYPE public.sip_transport_values AS ENUM (
    'udp',
    'tcp',
    'tls',
    'ws',
    'wss',
    'udp,tcp',
    'tcp,udp'
);


ALTER TYPE public.sip_transport_values OWNER TO asterisk;

--
-- Name: type_values; Type: TYPE; Schema: public; Owner: asterisk
--

CREATE TYPE public.type_values AS ENUM (
    'friend',
    'user',
    'peer'
);


ALTER TYPE public.type_values OWNER TO asterisk;

--
-- Name: yes_no_values; Type: TYPE; Schema: public; Owner: asterisk
--

CREATE TYPE public.yes_no_values AS ENUM (
    'yes',
    'no'
);


ALTER TYPE public.yes_no_values OWNER TO asterisk;

--
-- Name: yesno_values; Type: TYPE; Schema: public; Owner: asterisk
--

CREATE TYPE public.yesno_values AS ENUM (
    'yes',
    'no'
);


ALTER TYPE public.yesno_values OWNER TO asterisk;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: alembic_version_config; Type: TABLE; Schema: public; Owner: asterisk
--

CREATE TABLE public.alembic_version_config (
    version_num character varying(32) NOT NULL
);


ALTER TABLE public.alembic_version_config OWNER TO asterisk;

--
-- Name: extensions; Type: TABLE; Schema: public; Owner: asterisk
--

CREATE TABLE public.extensions (
    id bigint NOT NULL,
    context character varying(40) NOT NULL,
    exten character varying(40) NOT NULL,
    priority integer NOT NULL,
    app character varying(40) NOT NULL,
    appdata character varying(256) NOT NULL
);


ALTER TABLE public.extensions OWNER TO asterisk;

--
-- Name: extensions_id_seq; Type: SEQUENCE; Schema: public; Owner: asterisk
--

CREATE SEQUENCE public.extensions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.extensions_id_seq OWNER TO asterisk;

--
-- Name: extensions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: asterisk
--

ALTER SEQUENCE public.extensions_id_seq OWNED BY public.extensions.id;


--
-- Name: iaxfriends; Type: TABLE; Schema: public; Owner: asterisk
--

CREATE TABLE public.iaxfriends (
    id integer NOT NULL,
    name character varying(40) NOT NULL,
    type public.type_values,
    username character varying(40),
    mailbox character varying(40),
    secret character varying(40),
    dbsecret character varying(40),
    context character varying(40),
    regcontext character varying(40),
    host character varying(40),
    ipaddr character varying(40),
    port integer,
    defaultip character varying(20),
    sourceaddress character varying(20),
    mask character varying(20),
    regexten character varying(40),
    regseconds integer,
    accountcode character varying(80),
    mohinterpret character varying(20),
    mohsuggest character varying(20),
    inkeys character varying(40),
    outkeys character varying(40),
    language character varying(10),
    callerid character varying(100),
    cid_number character varying(40),
    sendani public.yes_no_values,
    fullname character varying(40),
    trunk public.yes_no_values,
    auth character varying(20),
    maxauthreq integer,
    requirecalltoken public.iax_requirecalltoken_values,
    encryption public.iax_encryption_values,
    transfer public.iax_transfer_values,
    jitterbuffer public.yes_no_values,
    forcejitterbuffer public.yes_no_values,
    disallow character varying(200),
    allow character varying(200),
    codecpriority character varying(40),
    qualify character varying(10),
    qualifysmoothing public.yes_no_values,
    qualifyfreqok character varying(10),
    qualifyfreqnotok character varying(10),
    timezone character varying(20),
    adsi public.yes_no_values,
    amaflags character varying(20),
    setvar character varying(200)
);


ALTER TABLE public.iaxfriends OWNER TO asterisk;

--
-- Name: iaxfriends_id_seq; Type: SEQUENCE; Schema: public; Owner: asterisk
--

CREATE SEQUENCE public.iaxfriends_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.iaxfriends_id_seq OWNER TO asterisk;

--
-- Name: iaxfriends_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: asterisk
--

ALTER SEQUENCE public.iaxfriends_id_seq OWNED BY public.iaxfriends.id;


--
-- Name: meetme; Type: TABLE; Schema: public; Owner: asterisk
--

CREATE TABLE public.meetme (
    bookid integer NOT NULL,
    confno character varying(80) NOT NULL,
    starttime timestamp without time zone,
    endtime timestamp without time zone,
    pin character varying(20),
    adminpin character varying(20),
    opts character varying(20),
    adminopts character varying(20),
    recordingfilename character varying(80),
    recordingformat character varying(10),
    maxusers integer,
    members integer NOT NULL
);


ALTER TABLE public.meetme OWNER TO asterisk;

--
-- Name: meetme_bookid_seq; Type: SEQUENCE; Schema: public; Owner: asterisk
--

CREATE SEQUENCE public.meetme_bookid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meetme_bookid_seq OWNER TO asterisk;

--
-- Name: meetme_bookid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: asterisk
--

ALTER SEQUENCE public.meetme_bookid_seq OWNED BY public.meetme.bookid;


--
-- Name: musiconhold; Type: TABLE; Schema: public; Owner: asterisk
--

CREATE TABLE public.musiconhold (
    name character varying(80) NOT NULL,
    mode public.moh_mode_values,
    directory character varying(255),
    application character varying(255),
    digit character varying(1),
    sort character varying(10),
    format character varying(10),
    stamp timestamp without time zone
);


ALTER TABLE public.musiconhold OWNER TO asterisk;

--
-- Name: musiconhold_entry; Type: TABLE; Schema: public; Owner: asterisk
--

CREATE TABLE public.musiconhold_entry (
    name character varying(80) NOT NULL,
    "position" integer NOT NULL,
    entry character varying(1024) NOT NULL
);


ALTER TABLE public.musiconhold_entry OWNER TO asterisk;


--
-- Name: ps_aors; Type: TABLE; Schema: public; Owner: asterisk
--

CREATE TABLE public.ps_aors (
    id character varying(40) NOT NULL,
    contact character varying(255),
    default_expiration integer,
    mailboxes character varying(80),
    max_contacts integer,
    minimum_expiration integer,
    remove_existing public.yesno_values,
    qualify_frequency integer,
    authenticate_qualify public.yesno_values,
    maximum_expiration integer,
    outbound_proxy character varying(40),
    support_path public.yesno_values,
    qualify_timeout double precision,
    voicemail_extension character varying(40)
);


--
-- Name: ps_asterisk_publications; Type: TABLE; Schema: public; Owner: asterisk
--

CREATE TABLE public.ps_asterisk_publications (
    id character varying(40) NOT NULL,
    devicestate_publish character varying(40),
    mailboxstate_publish character varying(40),
    device_state public.yesno_values,
    device_state_filter character varying(256),
    mailbox_state public.yesno_values,
    mailbox_state_filter character varying(256)
);


ALTER TABLE public.ps_asterisk_publications OWNER TO asterisk;

--
-- Name: ps_auths; Type: TABLE; Schema: public; Owner: asterisk
--

CREATE TABLE public.ps_auths (
    id character varying(40) NOT NULL,
    auth_type public.pjsip_auth_type_values_v2,
    nonce_lifetime integer,
    md5_cred character varying(40),
    password character varying(80),
    realm character varying(40),
    username character varying(40),
    refresh_token character varying(255),
    oauth_clientid character varying(255),
    oauth_secret character varying(255)
);


ALTER TABLE public.ps_auths OWNER TO asterisk;

--
-- Name: ps_contacts; Type: TABLE; Schema: public; Owner: asterisk
--

CREATE TABLE public.ps_contacts (
    id character varying(255) NOT NULL,
    uri character varying(511),
    expiration_time character varying,
    qualify_frequency character varying,
    outbound_proxy character varying(40),
    path text,
    user_agent character varying(255),
    qualify_timeout character varying,
    reg_server character varying(20),
    authenticate_qualify character varying,
    via_addr character varying(40),
    via_port character varying,
    call_id character varying(255),
    endpoint character varying(40),
    prune_on_boot character varying
);


ALTER TABLE public.ps_contacts OWNER TO asterisk;

--
-- Name: ps_domain_aliases; Type: TABLE; Schema: public; Owner: asterisk
--

CREATE TABLE public.ps_domain_aliases (
    id character varying(40) NOT NULL,
    domain character varying(80)
);


ALTER TABLE public.ps_domain_aliases OWNER TO asterisk;

--
-- Name: ps_endpoint_id_ips; Type: TABLE; Schema: public; Owner: asterisk
--

CREATE TABLE public.ps_endpoint_id_ips (
    id character varying(40) NOT NULL,
    endpoint character varying(40),
    match character varying(80),
    srv_lookups public.yesno_values,
    match_header character varying(255)
);


ALTER TABLE public.ps_endpoint_id_ips OWNER TO asterisk;

--
-- Name: ps_endpoints; Type: TABLE; Schema: public; Owner: asterisk
--

CREATE TABLE public.ps_endpoints (
    id character varying(40) NOT NULL,
    transport character varying(40),
    aors character varying(200),
    auth character varying(40),
    context character varying(40),
    disallow character varying(200),
    allow character varying(200),
    direct_media public.yesno_values,
    connected_line_method public.pjsip_connected_line_method_values,
    direct_media_method public.pjsip_connected_line_method_values,
    direct_media_glare_mitigation public.pjsip_direct_media_glare_mitigation_values,
    disable_direct_media_on_nat public.yesno_values,
    dtmf_mode public.pjsip_dtmf_mode_values_v3,
    external_media_address character varying(40),
    force_rport public.yesno_values,
    ice_support public.yesno_values,
    identify_by character varying(80),
    mailboxes character varying(40),
    moh_suggest character varying(40),
    outbound_auth character varying(40),
    outbound_proxy character varying(40),
    rewrite_contact public.yesno_values,
    rtp_ipv6 public.yesno_values,
    rtp_symmetric public.yesno_values,
    send_diversion public.yesno_values,
    send_pai public.yesno_values,
    send_rpid public.yesno_values,
    timers_min_se integer,
    timers public.pjsip_timer_values,
    timers_sess_expires integer,
    callerid character varying(40),
    callerid_privacy public.pjsip_cid_privacy_values,
    callerid_tag character varying(40),
    "100rel" public.pjsip_100rel_values,
    aggregate_mwi public.yesno_values,
    trust_id_inbound public.yesno_values,
    trust_id_outbound public.yesno_values,
    use_ptime public.yesno_values,
    use_avpf public.yesno_values,
    media_encryption public.pjsip_media_encryption_values,
    inband_progress public.yesno_values,
    call_group character varying(40),
    pickup_group character varying(40),
    named_call_group character varying(40),
    named_pickup_group character varying(40),
    device_state_busy_at integer,
    fax_detect public.yesno_values,
    t38_udptl public.yesno_values,
    t38_udptl_ec public.pjsip_t38udptl_ec_values,
    t38_udptl_maxdatagram integer,
    t38_udptl_nat public.yesno_values,
    t38_udptl_ipv6 public.yesno_values,
    tone_zone character varying(40),
    language character varying(40),
    one_touch_recording public.yesno_values,
    record_on_feature character varying(40),
    record_off_feature character varying(40),
    rtp_engine character varying(40),
    allow_transfer public.yesno_values,
    allow_subscribe public.yesno_values,
    sdp_owner character varying(40),
    sdp_session character varying(40),
    tos_audio character varying(10),
    tos_video character varying(10),
    sub_min_expiry integer,
    from_domain character varying(40),
    from_user character varying(40),
    mwi_from_user character varying(40),
    dtls_verify character varying(40),
    dtls_rekey character varying(40),
    dtls_cert_file character varying(200),
    dtls_private_key character varying(200),
    dtls_cipher character varying(200),
    dtls_ca_file character varying(200),
    dtls_ca_path character varying(200),
    dtls_setup public.pjsip_dtls_setup_values,
    srtp_tag_32 public.yesno_values,
    media_address character varying(40),
    redirect_method public.pjsip_redirect_method_values,
    set_var text,
    cos_audio integer,
    cos_video integer,
    message_context character varying(40),
    force_avp public.yesno_values,
    media_use_received_transport public.yesno_values,
    accountcode character varying(80),
    user_eq_phone public.yesno_values,
    moh_passthrough public.yesno_values,
    media_encryption_optimistic public.yesno_values,
    rpid_immediate public.yesno_values,
    g726_non_standard public.yesno_values,
    rtp_keepalive integer,
    rtp_timeout integer,
    rtp_timeout_hold integer,
    bind_rtp_to_media_address public.yesno_values,
    voicemail_extension character varying(40),
    mwi_subscribe_replaces_unsolicited public.ast_bool_values,
    deny character varying(95),
    permit character varying(95),
    acl character varying(40),
    contact_deny character varying(95),
    contact_permit character varying(95),
    contact_acl character varying(40),
    subscribe_context character varying(40),
    fax_detect_timeout integer,
    contact_user character varying(80),
    preferred_codec_only public.yesno_values,
    asymmetric_rtp_codec public.yesno_values,
    rtcp_mux public.yesno_values,
    allow_overlap public.yesno_values,
    refer_blind_progress public.yesno_values,
    notify_early_inuse_ringing public.yesno_values,
    max_audio_streams integer,
    max_video_streams integer,
    webrtc public.yesno_values,
    dtls_fingerprint public.sha_hash_values,
    incoming_mwi_mailbox character varying(40),
    bundle public.yesno_values,
    dtls_auto_generate_cert public.yesno_values,
    follow_early_media_fork public.yesno_values,
    accept_multiple_sdp_answers public.yesno_values,
    suppress_q850_reason_headers public.yesno_values,
    trust_connected_line public.ast_bool_values,
    send_connected_line public.ast_bool_values,
    ignore_183_without_sdp public.ast_bool_values
);


ALTER TABLE public.ps_endpoints OWNER TO asterisk;

--
-- Name: ps_globals; Type: TABLE; Schema: public; Owner: asterisk
--

CREATE TABLE public.ps_globals (
    id character varying(40) NOT NULL,
    max_forwards integer,
    user_agent character varying(255),
    default_outbound_endpoint character varying(40),
    debug character varying(40),
    endpoint_identifier_order character varying(40),
    max_initial_qualify_time integer,
    default_from_user character varying(80),
    keep_alive_interval integer,
    regcontext character varying(80),
    contact_expiration_check_interval integer,
    default_voicemail_extension character varying(40),
    disable_multi_domain public.yesno_values,
    unidentified_request_count integer,
    unidentified_request_period integer,
    unidentified_request_prune_interval integer,
    default_realm character varying(40),
    mwi_tps_queue_high integer,
    mwi_tps_queue_low integer,
    mwi_disable_initial_unsolicited public.yesno_values,
    ignore_uri_user_options public.yesno_values,
    use_callerid_contact public.ast_bool_values,
    send_contact_status_on_update_registration public.ast_bool_values,
    taskprocessor_overload_trigger public.pjsip_taskprocessor_overload_trigger_values,
    norefersub public.ast_bool_values
);


ALTER TABLE public.ps_globals OWNER TO asterisk;

--
-- Name: ps_inbound_publications; Type: TABLE; Schema: public; Owner: asterisk
--

CREATE TABLE public.ps_inbound_publications (
    id character varying(40) NOT NULL,
    endpoint character varying(40),
    "event_asterisk-devicestate" character varying(40),
    "event_asterisk-mwi" character varying(40)
);


ALTER TABLE public.ps_inbound_publications OWNER TO asterisk;

--
-- Name: ps_outbound_publishes; Type: TABLE; Schema: public; Owner: asterisk
--

CREATE TABLE public.ps_outbound_publishes (
    id character varying(40) NOT NULL,
    expiration integer,
    outbound_auth character varying(40),
    outbound_proxy character varying(256),
    server_uri character varying(256),
    from_uri character varying(256),
    to_uri character varying(256),
    event character varying(40),
    max_auth_attempts integer,
    transport character varying(40),
    multi_user public.yesno_values,
    "@body" character varying(40),
    "@context" character varying(256),
    "@exten" character varying(256)
);


ALTER TABLE public.ps_outbound_publishes OWNER TO asterisk;

--
-- Name: ps_registrations; Type: TABLE; Schema: public; Owner: asterisk
--

CREATE TABLE public.ps_registrations (
    id character varying(40) NOT NULL,
    auth_rejection_permanent public.yesno_values,
    client_uri character varying(255),
    contact_user character varying(40),
    expiration integer,
    max_retries integer,
    outbound_auth character varying(40),
    outbound_proxy character varying(40),
    retry_interval integer,
    forbidden_retry_interval integer,
    server_uri character varying(255),
    transport character varying(40),
    support_path public.yesno_values,
    fatal_retry_interval integer,
    line public.yesno_values,
    endpoint character varying(40),
    support_outbound public.ast_bool_values,
    contact_header_params character varying(255)
);


ALTER TABLE public.ps_registrations OWNER TO asterisk;

--
-- Name: ps_resource_list; Type: TABLE; Schema: public; Owner: asterisk
--

CREATE TABLE public.ps_resource_list (
    id character varying(40) NOT NULL,
    list_item character varying(2048),
    event character varying(40),
    full_state public.yesno_values,
    notification_batch_interval integer
);


ALTER TABLE public.ps_resource_list OWNER TO asterisk;

--
-- Name: ps_subscription_persistence; Type: TABLE; Schema: public; Owner: asterisk
--

CREATE TABLE public.ps_subscription_persistence (
    id character varying(40) NOT NULL,
    packet character varying(2048),
    src_name character varying(128),
    src_port integer,
    transport_key character varying(64),
    local_name character varying(128),
    local_port integer,
    cseq integer,
    tag character varying(128),
    endpoint character varying(40),
    expires integer,
    contact_uri character varying(256),
    prune_on_boot public.yesno_values
);


ALTER TABLE public.ps_subscription_persistence OWNER TO asterisk;

--
-- Name: ps_systems; Type: TABLE; Schema: public; Owner: asterisk
--

CREATE TABLE public.ps_systems (
    id character varying(40) NOT NULL,
    timer_t1 integer,
    timer_b integer,
    compact_headers public.yesno_values,
    threadpool_initial_size integer,
    threadpool_auto_increment integer,
    threadpool_idle_timeout integer,
    threadpool_max_size integer,
    disable_tcp_switch public.yesno_values,
    follow_early_media_fork public.yesno_values,
    accept_multiple_sdp_answers public.yesno_values
);


ALTER TABLE public.ps_systems OWNER TO asterisk;

--
-- Name: ps_transports; Type: TABLE; Schema: public; Owner: asterisk
--

CREATE TABLE public.ps_transports (
    id character varying(40) NOT NULL,
    async_operations integer,
    bind character varying(40),
    ca_list_file character varying(200),
    cert_file character varying(200),
    cipher character varying(200),
    domain character varying(40),
    external_media_address character varying(40),
    external_signaling_address character varying(40),
    external_signaling_port integer,
    method public.pjsip_transport_method_values,
    local_net character varying(40),
    password character varying(40),
    priv_key_file character varying(200),
    protocol public.pjsip_transport_protocol_values_v2,
    require_client_cert public.yesno_values,
    verify_client public.yesno_values,
    verify_server public.yesno_values,
    tos character varying(10),
    cos integer,
    allow_reload public.yesno_values,
    symmetric_transport public.yesno_values
);


ALTER TABLE public.ps_transports OWNER TO asterisk;

--
-- Name: queue_members; Type: TABLE; Schema: public; Owner: asterisk
--

CREATE TABLE public.queue_members (
    queue_name character varying,
    interface character varying,
    uniqueid character varying,
    realuid character varying NOT NULL,
    membername character varying
);


ALTER TABLE public.queue_members OWNER TO asterisk;

--
-- Name: queue_rules; Type: TABLE; Schema: public; Owner: asterisk
--

CREATE TABLE public.queue_rules (
    rule_name character varying(80) NOT NULL,
    "time" character varying(32) NOT NULL,
    min_penalty character varying(32) NOT NULL,
    max_penalty character varying(32) NOT NULL
);


ALTER TABLE public.queue_rules OWNER TO asterisk;

--
-- Name: queues; Type: TABLE; Schema: public; Owner: asterisk
--

CREATE TABLE public.queues (
    name character varying(128) NOT NULL,
    musiconhold character varying(128),
    announce character varying(128),
    context character varying(128),
    timeout integer,
    ringinuse public.yesno_values,
    setinterfacevar public.yesno_values,
    setqueuevar public.yesno_values,
    setqueueentryvar public.yesno_values,
    monitor_format character varying(8),
    membermacro character varying(512),
    membergosub character varying(512),
    queue_youarenext character varying(128),
    queue_thereare character varying(128),
    queue_callswaiting character varying(128),
    queue_quantity1 character varying(128),
    queue_quantity2 character varying(128),
    queue_holdtime character varying(128),
    queue_minutes character varying(128),
    queue_minute character varying(128),
    queue_seconds character varying(128),
    queue_thankyou character varying(128),
    queue_callerannounce character varying(128),
    queue_reporthold character varying(128),
    announce_frequency integer,
    announce_to_first_user public.yesno_values,
    min_announce_frequency integer,
    announce_round_seconds integer,
    announce_holdtime character varying(128),
    announce_position character varying(128),
    announce_position_limit integer,
    periodic_announce character varying(50),
    periodic_announce_frequency integer,
    relative_periodic_announce public.yesno_values,
    random_periodic_announce public.yesno_values,
    retry integer,
    wrapuptime integer,
    penaltymemberslimit integer,
    autofill public.yesno_values,
    monitor_type character varying(128),
    autopause public.queue_autopause_values,
    autopausedelay integer,
    autopausebusy public.yesno_values,
    autopauseunavail public.yesno_values,
    maxlen integer,
    servicelevel integer,
    strategy public.queue_strategy_values,
    joinempty character varying(128),
    leavewhenempty character varying(128),
    reportholdtime public.yesno_values,
    memberdelay integer,
    weight integer,
    timeoutrestart public.yesno_values,
    defaultrule character varying(128),
    timeoutpriority character varying(128)
);


ALTER TABLE public.queues OWNER TO asterisk;

--
-- Name: sippeers; Type: TABLE; Schema: public; Owner: asterisk
--

CREATE TABLE public.sippeers (
    id integer NOT NULL,
    name character varying(40) NOT NULL,
    ipaddr character varying(45),
    port integer,
    regseconds integer,
    defaultuser character varying(40),
    fullcontact character varying(80),
    regserver character varying(20),
    useragent character varying(255),
    lastms integer,
    host character varying(40),
    type public.type_values,
    context character varying(40),
    permit character varying(95),
    deny character varying(95),
    secret character varying(40),
    md5secret character varying(40),
    remotesecret character varying(40),
    transport public.sip_transport_values,
    dtmfmode public.sip_dtmfmode_values,
    directmedia public.sip_directmedia_values_v2,
    nat character varying(29),
    callgroup character varying(40),
    pickupgroup character varying(40),
    language character varying(40),
    disallow character varying(200),
    allow character varying(200),
    insecure character varying(40),
    trustrpid public.yes_no_values,
    progressinband public.sip_progressinband_values,
    promiscredir public.yes_no_values,
    useclientcode public.yes_no_values,
    accountcode character varying(80),
    setvar character varying(200),
    callerid character varying(40),
    amaflags character varying(40),
    callcounter public.yes_no_values,
    busylevel integer,
    allowoverlap public.yes_no_values,
    allowsubscribe public.yes_no_values,
    videosupport public.yes_no_values,
    maxcallbitrate integer,
    rfc2833compensate public.yes_no_values,
    mailbox character varying(40),
    "session-timers" public.sip_session_timers_values,
    "session-expires" integer,
    "session-minse" integer,
    "session-refresher" public.sip_session_refresher_values,
    t38pt_usertpsource character varying(40),
    regexten character varying(40),
    fromdomain character varying(40),
    fromuser character varying(40),
    qualify character varying(40),
    defaultip character varying(45),
    rtptimeout integer,
    rtpholdtimeout integer,
    sendrpid public.yes_no_values,
    outboundproxy character varying(40),
    callbackextension character varying(40),
    timert1 integer,
    timerb integer,
    qualifyfreq integer,
    constantssrc public.yes_no_values,
    contactpermit character varying(95),
    contactdeny character varying(95),
    usereqphone public.yes_no_values,
    textsupport public.yes_no_values,
    faxdetect public.yes_no_values,
    buggymwi public.yes_no_values,
    auth character varying(40),
    fullname character varying(40),
    trunkname character varying(40),
    cid_number character varying(40),
    callingpres public.sip_callingpres_values,
    mohinterpret character varying(40),
    mohsuggest character varying(40),
    parkinglot character varying(40),
    hasvoicemail public.yes_no_values,
    subscribemwi public.yes_no_values,
    vmexten character varying(40),
    autoframing public.yes_no_values,
    rtpkeepalive integer,
    "call-limit" integer,
    g726nonstandard public.yes_no_values,
    ignoresdpversion public.yes_no_values,
    allowtransfer public.yes_no_values,
    dynamic public.yes_no_values,
    path character varying(256),
    supportpath public.yes_no_values
);


ALTER TABLE public.sippeers OWNER TO asterisk;

--
-- Name: sippeers_id_seq; Type: SEQUENCE; Schema: public; Owner: asterisk
--

CREATE SEQUENCE public.sippeers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sippeers_id_seq OWNER TO asterisk;

--
-- Name: sippeers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: asterisk
--

ALTER SEQUENCE public.sippeers_id_seq OWNED BY public.sippeers.id;

--
-- Name: voicemail; Type: TABLE; Schema: public; Owner: asterisk
--

CREATE TABLE public.voicemail (
    uniqueid integer NOT NULL,
    context character varying(80) NOT NULL,
    mailbox character varying(80) NOT NULL,
    password character varying(80) NOT NULL,
    fullname character varying(80),
    alias character varying(80),
    email character varying(80),
    pager character varying(80),
    attach public.yes_no_values,
    attachfmt character varying(10),
    serveremail character varying(80),
    language character varying(20),
    tz character varying(30),
    deletevoicemail public.yes_no_values,
    saycid public.yes_no_values,
    sendvoicemail public.yes_no_values,
    review public.yes_no_values,
    tempgreetwarn public.yes_no_values,
    operator public.yes_no_values,
    envelope public.yes_no_values,
    sayduration integer,
    forcename public.yes_no_values,
    forcegreetings public.yes_no_values,
    callback character varying(80),
    dialout character varying(80),
    exitcontext character varying(80),
    maxmsg integer,
    volgain numeric(5,2),
    imapuser character varying(80),
    imappassword character varying(80),
    imapserver character varying(80),
    imapport character varying(8),
    imapflags character varying(80),
    stamp timestamp without time zone
);


ALTER TABLE public.voicemail OWNER TO asterisk;

--
-- Name: voicemail_uniqueid_seq; Type: SEQUENCE; Schema: public; Owner: asterisk
--

CREATE SEQUENCE public.voicemail_uniqueid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.voicemail_uniqueid_seq OWNER TO asterisk;

--
-- Name: voicemail_uniqueid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: asterisk
--

ALTER SEQUENCE public.voicemail_uniqueid_seq OWNED BY public.voicemail.uniqueid;


--
-- Name: iaxfriends id; Type: DEFAULT; Schema: public; Owner: asterisk
--

ALTER TABLE ONLY public.iaxfriends ALTER COLUMN id SET DEFAULT nextval('public.iaxfriends_id_seq'::regclass);


--
-- Name: meetme bookid; Type: DEFAULT; Schema: public; Owner: asterisk
--

ALTER TABLE ONLY public.meetme ALTER COLUMN bookid SET DEFAULT nextval('public.meetme_bookid_seq'::regclass);


--
-- Name: sippeers id; Type: DEFAULT; Schema: public; Owner: asterisk
--

ALTER TABLE ONLY public.sippeers ALTER COLUMN id SET DEFAULT nextval('public.sippeers_id_seq'::regclass);


--
-- Name: voicemail uniqueid; Type: DEFAULT; Schema: public; Owner: asterisk
--

ALTER TABLE ONLY public.voicemail ALTER COLUMN uniqueid SET DEFAULT nextval('public.voicemail_uniqueid_seq'::regclass);


