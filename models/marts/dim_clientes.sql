with
    clientes as (
        select
        PK_CLIENTE
        ,NM_CLIENTE
        ,CIDADE_CLIENTE
        ,REGIAO_CLIENTE
        ,PAIS_CLIENTE
        from {{ ref('stg_erp__clientes') }}
    )
select *
from clientes