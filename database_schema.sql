create table if not exists airdrop_log
(
    id       bigserial not null,
    tx_id    varchar(66),
    air_time timestamp with time zone,
    amount   numeric,
    wallet   varchar(64),
    status   smallint,
    log      text
);

create unique index if not exists airdrop_log_tx_id_uindex
    on airdrop_log (tx_id);

 
 

create table if not exists airdrop_log_states
(
    id          smallserial  not null,
    state_code  varchar(255) not null,
    description text,
    semantic    varchar(50)
);

create unique index if not exists airdrop_log_states_state_code_uindex
    on airdrop_log_states (state_code);
    
INSERT INTO airdrop_log_states (id, state_code, description, semantic) VALUES (1, 'success', 'Successful make airdrop sending', 'end');
INSERT INTO airdrop_log_states (id, state_code, description, semantic) VALUES (2, 'check_balance_error', 'Error while check switcheo balance', 'err');
INSERT INTO airdrop_log_states (id, state_code, description, semantic) VALUES (3, 'airdrop_fail', 'Failure make airdrop sending', 'err');
INSERT INTO airdrop_log_states (id, state_code, description, semantic) VALUES (4, 'high_balance', 'High balance', 'end');    
    
    
    
    
create table if not exists airdrop_vars
(
    code             varchar(10)
        constraint airdrop_vars_code_key
            unique,
    eth_api_key      varchar(255),
    last_check_block bigint default 0,
    last_check timestamptz
);    

INSERT INTO airdrop_vars (code, last_check_block) VALUES ('test', 0);
