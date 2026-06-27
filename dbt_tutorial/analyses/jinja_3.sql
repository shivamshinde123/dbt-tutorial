
{# incremental load flag #}
{% set inc_flag = 1 %} 

{# last load date #}
{% set last_load = 3 %} 

{# selecting specific columns #}
{% set cols_list = ['sales_id', 'date_sk', 'gross_amount'] %}

{# Selecting the dates after the last load date #}
SELECT 

{% for col in cols_list %}
    {{col}} 
    {% if not loop.last %},{% endif %}  
{% endfor %}

FROM 

{{ ref('bronze_sales')}}

{% if inc_flag == 1 %}
    WHERE date_sk >  {{ last_load }}
{% endif  %}