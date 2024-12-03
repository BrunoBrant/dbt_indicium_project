with
    fonte_clientes as (
        select 
          cast(ID as varchar) pk_cliente 
        , cast(CATEGORYNAME as varchar) as nm_empresa_cliente
        , cast(CITY as varchar) as cidade_cliente
        , cast(REGION as varchar) as regiao_cliente
        , cast(COUNTRY as varchar) as pais_cliente
        from {{ source('erp_northwind', 'customer') }}
    )
select *
from fonte_clientes    