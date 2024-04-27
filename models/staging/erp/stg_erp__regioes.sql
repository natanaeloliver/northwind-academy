with
    fonte_regioes as (
        select     
            cast(ID as int) as pk_regiao
            , cast(REGIONDESCRIPTION as varchar) as nm_regiao
        from {{ source('erp', 'region') }}
    )
select *
from fonte_regioes