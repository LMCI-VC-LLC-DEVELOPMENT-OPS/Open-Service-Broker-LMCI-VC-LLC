CREATE TABLE service_instance (instance_id varchar(255) not null, name varchar(255), iam_id varchar(255), plan_id varchar(255), service_id varchar(255), status varchar(255), region varchar(255), context varchar(1024), parameters varchar(255), create_date timestamp not null,  update_date timestamp not null, version bigint,  primary key (instance_id));

CREATE TABLE workflow (id int generated by default as identity,  iam_id varchar(255), instance_id varchar(255), operation varchar(255), status varchar(255), request varchar(1024), response varchar(1024), create_date TIMESTAMP not null, update_date timestamp not null, version bigint, primary key (id));

CREATE TABLE monitor_component (id int generated by default as identity, name varchar(255) not null, url varchar(255), auth varchar(255),version bigint, primary key (id));