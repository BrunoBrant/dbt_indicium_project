with
    font_categories as (
        select * from 
        {{ source('erp_fea_2411', 'category') }}
    ),

    renomeado as (
        select
          cast(ID as int) as pk_categoria
        , cast(CATEGORYNAME as string) as nome_categoria    
        , cast(DESCRIPTION as string) as descricao_categoria
        from font_categories
    )

select * from renomeado