with
    fonte_cidades as (
        select
            cast(ID as int) as pk_cidade
            , cast(REGIONID as int) as fk_regiao
            , cast(TERRITORYDESCRIPTION as varchar) as nm_cidade
        from {{ source('erp', 'territory') }}
    )
select *
from fonte_cidades