#if you want in GB add one more division at line 4
SELECT 
    table_schema 'DB Name',
    ROUND(SUM(data_length + index_length) / 1024 / 1024,
            1) 'DB Size in MB'
FROM
    information_schema.tables
GROUP BY table_schema
