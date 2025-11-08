CREATE VIEW empty_values AS
    SELECT
        SUM(CASE WHEN "company" IS NULL OR "company" = '' THEN 1 ELSE 0 END) AS empty_company,
        SUM(CASE WHEN "state" IS NULL OR "state" = '' THEN 1 ELSE 0 END) AS empty_state,
        SUM(CASE WHEN "product" IS NULL OR "product" = '' THEN 1 ELSE 0 END) AS empty_product,
        SUM(CASE WHEN "type" IS NULL OR "type" = '' THEN 1 ELSE 0 END) AS empty_type,
        SUM(CASE WHEN "certification" IS NULL OR "certification" = '' THEN 1 ELSE 0 END) AS empty_certification,
        SUM(CASE WHEN "category" IS NULL OR "category" = '' THEN 1 ELSE 0 END) AS empty_category
    FROM temp;

INSERT INTO coffee ("company", "state", "product", "type", "category")
SELECT "company", "state", "product", "type", "category" FROM temp;

CREATE VIEW special AS
    SELECT * FROM coffee
    WHERE "category" LIKE 'Especial';

CREATE VIEW gourmet AS
    SELECT * FROM coffee
    WHERE "category" LIKE 'Gourmet';

CREATE VIEW superior AS
    SELECT * FROM coffee
    WHERE "category" LIKE 'Superior';

CREATE VIEW traditional AS
    SELECT * FROM coffee
    WHERE "category" LIKE 'Tradicional';

CREATE VIEW strong AS
    SELECT * FROM coffee
    WHERE "category" LIKE 'Extraforte';

