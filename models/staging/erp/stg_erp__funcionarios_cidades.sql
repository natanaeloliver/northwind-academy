with
    fonte_funcionarios_cidades as (
        select
            cast(EMPLOYEEID as int) as fk_funcionario
            , cast(TERRITORYID as int) as fk_cidade
        from {{ source('erp', 'employeeterritory') }}
    )
select *
from fonte_funcionarios_cidades