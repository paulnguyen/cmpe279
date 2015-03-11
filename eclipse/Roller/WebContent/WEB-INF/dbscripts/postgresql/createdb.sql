

-- Run this script to create the Roller database tables in your database.

-- *****************************************************
-- Create the tables and indices

create table rolleruser (
    id              varchar(48) not null primary key,
    username        varchar(255) not null,
    passphrase      varchar(255) not null,
    fullname        varchar(255) not null,
    emailaddress    varchar(255) not null,
    datecreated     timestamp with time zone not null,
    locale          varchar(20),  
    timezone        varchar(50),    
    isenabled       boolean default true not null
);
alter table rolleruser add constraint ru_username_uq unique ( username );

create table userrole (
    id               varchar(48) not null primary key,
    rolename         varchar(255) not null,
    username         varchar(255) not null,
    userid           varchar(48) not null
);
create index ur_userid_idx on userrole( userid );
create index ur_username_idx on userrole( username );

-- User permissions within a website
-- permission_mask: bitmask 000 limited, 001 author, 011 admin
-- pending: pending user acceptance of invitation to join website
create table roller_user_permissions (
    id              varchar(48) not null primary key,
    website_id      varchar(48) not null,
    user_id         varchar(48) not null,
    permission_mask integer not null, 
    pending         boolean default true not null
);

-- Audit log records time and comment about change
-- user_id: user that made change
-- object_id: id of associated object, if any
-- object_class: name of associated object class (e.g. WeblogEntryData)
-- comment: description of change
-- change_time: time that change was made
create table roller_audit_log (
    id              varchar(48) not null primary key,
    user_id         varchar(48) not null,  
    object_id       varchar(48),           
    object_class    varchar(255),          
    comment_text    varchar(255) not null, 
    change_time     timestamp with time zone              
);

create table usercookie (
    id              varchar(48) not null primary key,
    username        varchar(255) not null,
    cookieid        varchar(100) not null,
    datecreated     timestamp with time zone not null
);
create index uc_username_idx on usercookie( username );
create index uc_cookieid_idx on usercookie( cookieid );

create table webpage (
    id              varchar(48)  not null primary key,
    name            varchar(255)  not null,
    description     varchar(255),
    link            varchar(255),
    websiteid       varchar(48) not null,
    template        text not null,
    updatetime      timestamp with time zone not null,
    hidden          boolean default false not null,
    navbar          boolean default false not null,
    templatelang    varchar(20) not null,
    decorator       varchar(255) default null
);
create index wp_name_idx on webpage( name );
create index wp_link_idx on webpage( link );
create index wp_id_idx on webpage( websiteid );

create table website (
    id                varchar(48) not null primary key,
    name              varchar(255) not null,
    handle            varchar(255) not null,
    description       varchar(255) not null,
    userid            varchar(48) not null,
    defaultpageid     varchar(48) default '',
    weblogdayid       varchar(48) not null,
    ignorewords       text,
    enablebloggerapi  boolean default false not null,
    editorpage        varchar(255),
    bloggercatid      varchar(48),
    defaultcatid      varchar(48),
    allowcomments     boolean default true not null,
    emailcomments     boolean default false not null,
    emailfromaddress  varchar(255),
    emailaddress      varchar(255) not null,
    editortheme       varchar(255),
    locale            varchar(20), 
    timezone          varchar(50),  
    defaultplugins    varchar(255),
    isenabled         boolean default true not null,
    isactive          boolean default true not null,
    datecreated          timestamp with time zone not null,
    blacklist            text,
    defaultallowcomments boolean default true not null,
    defaultcommentdays   integer default 7 not null,
    commentmod           boolean default false not null,
    displaycnt           integer default 15 not null,
    lastmodified         timestamp with time zone,
    pagemodels           varchar(255) default null,
    enablemultilang   boolean default false not null,
    showalllangs      boolean default true not null
);
create index ws_userid_idx    on website(userid);
create index ws_isenabled_idx on website(isenabled);
alter table website add constraint ws_handle_uq unique (handle);

-- This index is not necessary because of handle is already a primary key.
-- create index ws_handle_idx    on website(handle);

create table folder (
    id               varchar(48) not null primary key,
    name             varchar(255) not null,
    description      varchar(255),
    websiteid        varchar(48) not null,
    parentid        varchar(48)
);
create index fo_websiteid_idx on folder( websiteid );

create table folderassoc (
    id               varchar(48) not null primary key,
    folderid         varchar(48) not null,
    ancestorid       varchar(40),
    relation         varchar(20) not null
);
create index fa_folderid_idx on folderassoc( folderid );
create index fa_ancestorid_idx on folderassoc( ancestorid );
create index fa_relation_idx on folderassoc( relation );

create table bookmark (
    id               varchar(48) not null primary key,
    folderid         varchar(48) not null,
    name             varchar(255) not null,
    description      varchar(255),
    url              varchar(255) not null,
    weight           integer default 0 not null,
    priority         integer default 100 not null,
    image            varchar(255),
    feedurl          varchar(255)
);
create index bm_folderid_idx on bookmark( folderid );

create table weblogcategory (
    id               varchar(48)  not null primary key,
    name             varchar(255) not null,
    description      varchar(255),
    websiteid        varchar(48)  not null,
    image            varchar(255)
);
create index wc_websiteid_idx on weblogcategory( websiteid );
-- alter table weblogcategory add unique category_nameparentid_uq (parentid, name(20));

create table weblogcategoryassoc (
    id               varchar(48) not null primary key,
    categoryid       varchar(48) not null,
    ancestorid       varchar(40),
    relation         varchar(20) not null
);
create index wca_categoryid_idx on weblogcategoryassoc( categoryid );
create index wca_ancestorid_idx on weblogcategoryassoc( ancestorid );
create index wca_relation_idx on weblogcategoryassoc( relation );

create table weblogentry (
    id              varchar(48)  not null primary key,
    userid          varchar(48) not null,
    anchor          varchar(255)  not null,
    title           varchar(255)  not null,
    text            text not null,
    pubtime         timestamp with time zone null,
    updatetime      timestamp with time zone     not null,
    websiteid       varchar(48)  not null,
    categoryid      varchar(48)  not null,
    publishentry    boolean default true not null,
    link            varchar(255),
    plugins         varchar(255),
    allowcomments   boolean default false not null, 
    commentdays     integer default 7 not null,
    rightToLeft     boolean default false not null,
    pinnedtomain    boolean default false not null,
    locale          varchar(20),
    status          varchar(20) not null,
    summary         text default null, 
    content_type    varchar(48) default null, 
    content_src     varchar(255) default null
);
create index we_websiteid_idx on weblogentry( websiteid );
create index we_categoryid_idx on weblogentry( categoryid );
create index we_pubtime_idx on weblogentry( pubtime,publishentry,websiteid );
create index we_pinnedtom_idx on weblogentry(pinnedtomain);
create index we_pubentry_idx on weblogentry(publishentry);
create index we_userid_idx on weblogentry(userid);
create index we_status_idx on weblogentry(status);
create index we_locale_idx on weblogentry(locale);

create table newsfeed (
    id              varchar(48) not null primary key,
    name            varchar(255) not null,
    description     varchar(255) not null,
    link            varchar(255) not null,
    websiteid       varchar(48) not null
);
create index nf_websiteid_idx on newsfeed( websiteid );


create table roller_comment (
    id      varchar(48) not null primary key,
    entryid varchar(48) not null,
    name    varchar(255),
    email   varchar(255),
    url     varchar(255),
    content text,
    posttime timestamp with time zone   not null,
    spam    boolean default false not null,
    notify  boolean default false not null,
    remotehost varchar(128),
    pending  boolean default true not null,
    approved  boolean default false not null
);
create index co_entryid_idx on roller_comment( entryid );
create index co_pending_idx on roller_comment( pending );
create index co_approved_idx on roller_comment( approved );

-- Ping Feature Tables
-- name: short descriptive name of the ping target
-- pingurl: URL to receive the ping
-- websiteid:  if not null, this is a custom target defined by the associated website
-- conditioncode:
-- lastsuccess:
create table pingtarget (
    id           varchar(48) not null primary key,
    name         varchar(255) not null,
    pingurl      varchar(255) not null,
    websiteid    varchar(48),
    conditioncode    integer default 0 not null,
    lastsuccess  timestamp with time zone,
    autoenabled  boolean default false not null
);
create index pt_websiteid_idx on pingtarget( websiteid );

-- auto ping configurations
-- websiteid:  fk reference to website for which this auto ping configuration applies
-- pingtargetid: fk reference to the ping target to be pinged when the website changes
create table autoping (
    id            varchar(48) not null primary key,
    websiteid     varchar(48) not null,
    pingtargetid  varchar(48) not null 
);
create index ap_websiteid_idx on autoping( websiteid );
create index ap_pingtid_idx on autoping( pingtargetid );

-- autopingid: fk reference to ping configuration
-- categoryid: fk reference to category
create table pingcategory (
    id            varchar(48) not null primary key,
    autopingid  varchar(48) not null, 
    categoryid    varchar(48) not null 
);
create index pc_autopingid_idx on pingcategory( autopingid );
create index pc_categoryid_idx on pingcategory( categoryid );

-- entrytime: timestamp of original entry onto the ping queue
-- pingtargetid: weak fk reference to ping target (not constrained)
-- websiteid: weak fk reference to website originating the ping (not constrained)
-- attempts:  number of ping attempts that have been made for this entry
create table pingqueueentry (
    id             varchar(48) not null primary key,
    entrytime      timestamp with time zone not null, 
    pingtargetid   varchar(48) not null,  
    websiteid      varchar(48) not null,  
    attempts       integer not null
);
create index pqe_entrytime_idx on pingqueueentry( entrytime );
create index pqe_pingtid_idx on pingqueueentry( pingtargetid );
create index pqe_websiteid_idx on pingqueueentry( websiteid );


-- Referer tracks URLs that refer to websites and entries
create table referer (
    id        varchar(48) not null primary key,
    websiteid varchar(48) not null,
    entryid   varchar(48),
    datestr   varchar(10),
    refurl    varchar(255) not null,
    refpermalink varchar(255),
    reftime   timestamp with time zone,
    requrl    varchar(255),
    title     varchar(255),
    excerpt   text,
    dayhits   integer default 0 not null,
    totalhits integer default 0 not null,
    visible   boolean default false not null,
    duplicate boolean default false not null
);
create index ref_websiteid_idx on referer( websiteid );
create index ref_entryid_idx on referer( entryid );
create index ref_refurl_idx on referer( refurl );
create index ref_requrl_idx on referer( requrl );
create index ref_datestr_idx on referer( datestr );
create index ref_refpermlnk_idx on referer( refpermalink );
create index ref_duplicate_idx on referer( duplicate );

-- Configuration options for Roller, should only ever be one row
-- Deprecated in 1.2: configuration now stored in roller_properties table
create table rollerconfig (
    id              varchar(48) not null primary key,
    sitedescription varchar(255),
    sitename        varchar(255),
    emailaddress    varchar(255),
    absoluteurl     varchar(255),
    adminusers      varchar(255),
    encryptpasswords boolean default true not null,
    algorithm       varchar(10),
    newuserallowed  boolean default false not null,
    editorpages     varchar(255),
    userthemes      varchar(255) not null,
    indexdir        varchar(255),
    memdebug        boolean default false not null,
    autoformatcomments boolean default false not null,
    escapecommenthtml boolean default true not null,
    emailcomments   boolean default false not null,
    enableaggregator boolean default false not null,
    enablelinkback  boolean default false not null,
    rsscachetime    integer default 3000 not null,
    rssusecache     boolean default true not null,
    uploadallow     varchar(255),
    uploadforbid    varchar(255),
    uploadenabled   boolean default true not null,
    uploaddir       varchar(255) not null,
    uploadpath      varchar(255) not null,
    uploadmaxdirmb  decimal(5,2) default 4.0 not null,
    uploadmaxfilemb decimal(5,2) default 1.5 not null,
    dbversion       varchar(10),
    refspamwords    text
);

create table roller_properties (
    name     varchar(255) not null primary key,
    value    text
);

-- Entry attribute: metadata for weblog entries
create table entryattribute (
    id       varchar(48) not null primary key,
    entryid  varchar(48) not null,
    name     varchar(255) not null,
    value    text not null
);
create index ea_entryid_idx on entryattribute( entryid );
alter table entryattribute add constraint ea_name_uq unique ( entryid, name );

create table rag_group_subscription (
    id               varchar(48) not null primary key,
    group_id         varchar(48) not null,
    subscription_id  varchar(48) not null
);
create index raggs_gid_idx on rag_group_subscription(group_id); 
create index raggs_sid_idx on rag_group_subscription(subscription_id); 

create table rag_config (
    id               varchar(48) not null primary key,
    default_group_id varchar(48),
    title            varchar(255) not null,
    description      varchar(255),
    site_url         varchar(255),
    output_dir       varchar(255),
    cache_dir        varchar(255) not null,
    template_dir     varchar(255),
    main_page        varchar(255),
    admin_name       varchar(255),
    admin_email      varchar(255) not null,
    group_page       varchar(255),
    proxy_host       varchar(255),
    proxy_port       integer default -1
);

create table rag_group (
    id               varchar(48) not null primary key,
    handle           varchar(255) not null,
    title            varchar(255) not null,
    description      varchar(255),
    cat_restriction  text,
    group_page       varchar(255),
    max_page_entries integer default 30,
    max_feed_entries integer default 30
);
alter table rag_group add constraint ragg_handle_uq unique ( handle );

create table rag_subscription (
    id               varchar(48) not null primary key,
    title            varchar(255),
    feed_url         varchar(255) not null,
    site_url         varchar(255),
    author           varchar(255),
    last_updated     timestamp with time zone,
    inbound_links    integer default -1,
    inbound_blogs    integer default -1
);
alter table rag_subscription add constraint rags_feed_url_uq unique ( feed_url );

create table rag_entry (
    id               varchar(48) not null primary key,
    subscription_id  varchar(48) not null,
    handle           varchar(255),
    title            varchar(255),
    guid             varchar(255),
    permalink        text not null,
    author           varchar(255),
    content          text,
    categories       text,
    published        timestamp with time zone not null,
    updated          timestamp with time zone    
);
create index rage_sid_idx on rag_entry(subscription_id); 


-- *****************************************************
-- Now add the foreign key relationships

-- user, role and website

alter table website add constraint ws_userid_fk
    foreign key ( userid ) references rolleruser ( id )  ;

alter table userrole add constraint ur_userid_fk
    foreign key ( userid ) references rolleruser( id )  ;

-- page, entry, category, comment

alter table webpage add constraint wp_websiteid_fk
    foreign key ( websiteid ) references website( id )  ;

alter table weblogentry add constraint we_websiteid_fk
    foreign key ( websiteid ) references website( id )  ;

alter table weblogentry add constraint wc_categoryid_fk
    foreign key ( categoryid ) references weblogcategory( id )  ;

alter table weblogcategory add constraint wc_websiteid_fk
    foreign key ( websiteid ) references website( id )  ;

alter table roller_comment add constraint co_entryid_fk
    foreign key ( entryid ) references weblogentry( id )  ;

alter table entryattribute add constraint att_entryid_fk
    foreign key ( entryid ) references weblogentry( id )  ;

-- referer

alter table referer add constraint ref_entryid_fk
    foreign key ( entryid ) references weblogentry( id )  ;

alter table referer add constraint ref_websiteid_fk
    foreign key ( websiteid ) references website( id )  ;

-- folder and bookmark

alter table folder add constraint fo_websiteid_fk
    foreign key ( websiteid ) references website( id )  ;

-- alter table folder add constraint fo_parentid_fk
--     foreign key ( parentid ) references folder( id );

alter table bookmark add constraint bm_folderid_fk
    foreign key ( folderid ) references folder( id )  ;

-- newsfeed

alter table newsfeed add constraint nf_websiteid_fk
    foreign key ( websiteid ) references website( id )  ;

-- pingtarget, autoping, pingcategory

alter table pingtarget add constraint pt_websiteid_fk
    foreign key (websiteid) references website(id)  ;

alter table autoping add constraint ap_websiteid_fk
    foreign key (websiteid) references website(id)  ;

alter table autoping add constraint ap_pingtargetid_fk
    foreign key (pingtargetid) references pingtarget(id)  ;

alter table pingcategory add constraint pc_autopingid_fk
    foreign key (autopingid) references autoping(id)  ;

alter table pingcategory add constraint pc_categoryid_fk
    foreign key (categoryid) references weblogcategory(id)  ;


-- THE FOLLOWING CONSTRAINTS CAN NOT BE SUPPORTED FOR IMPORTING new-user.xml
-- alter table website add constraint website_defaultpageid_fk foreign key ( defaultpageid ) references webpage ( id );
-- alter table website add constraint website_weblogdayid_fk foreign key ( weblogdayid ) references webpage ( id );
-- alter table webpage add constraint webpage_websiteid_fk foreign key ( websiteid ) references website( id );














