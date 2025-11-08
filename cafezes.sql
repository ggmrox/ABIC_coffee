SELECT
    SUM(CASE WHEN empresa IS NULL OR empresa = '' THEN 1 ELSE 0 END) AS empresa_vazios,
    SUM(CASE WHEN estado IS NULL OR estado = '' THEN 1 ELSE 0 END) AS estado_vazios,
    SUM(CASE WHEN produto IS NULL OR produto = '' THEN 1 ELSE 0 END) AS produto_vazios,
    SUM(CASE WHEN tipo IS NULL OR tipo = '' THEN 1 ELSE 0 END) AS tipo_vazios,
    SUM(CASE WHEN certificacao IS NULL OR certificacao = '' THEN 1 ELSE 0 END) AS certificacao_vazios,
    SUM(CASE WHEN categoria IS NULL OR categoria = '' THEN 1 ELSE 0 END) AS categoria_vazios
FROM temp;