CREATE TABLE imports (
    id bigint NOT NULL auto_increment,
    original_filename varchar(255),
    stored_filename varchar(255),
    filesize bigint comment 'in kB',
    row_count bigint default 0,
    type char(12),
    status tinyint (1) default 2 comment '1 = completed, 2 = pending, 3 = processing, 4 = failed',
    created_at timestamp,
    updated_at timestamp,
    queue_start_at timestamp,
    queue_end_at timestamp,
    PRIMARY KEY (id)
);