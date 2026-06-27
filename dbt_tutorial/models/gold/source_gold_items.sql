
WITH dedup_query AS 
(
    SELECT 
        *,
        ROW_NUMBER() OVER (PARTITION BY id ORDER BY updateTime DESC) as deduplication_id
    FROM 
        {{ source('dbt-tutorial', 'items') }}
)

SELECT 
    id,
    name,
    category,
    updateTime
FROM
    dedup_query
WHERE
    deduplication_id = 1