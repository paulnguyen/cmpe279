

-- Roller 3.0 schema changes

-- add new column which holds the list of custom models for a weblog
alter table website add column pagemodels varchar(512) default null;

-- add new columns which hold the multi-lang settings for a weblog

-- add new column which holds the locale for a weblog entry
-- then set the values and make column not null
alter table weblogentry add column locale varchar(20) default null;
create index we_locale_idx on weblogentry(locale);

-- add new column which holds the hidden status for a page, default is false

-- add new column which holds the hidden status for a page, default is false
update webpage set navbar=1;
update webpage set navbar=0 where name like '\_%';

-- add new column which holds the template language used for a page
-- then set template language to velocity for all templates
alter table webpage add column templatelang varchar(20) default null;
update webpage set templatelang = 'velocity';

-- add new column which holds the decorator for a page
-- then set value to _decorator for all templates except decorators
alter table webpage add column decorator varchar(255) default null;
update webpage set decorator = '_decorator' where name <> '_decorator';