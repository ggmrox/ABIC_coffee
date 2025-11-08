CREATE TABLE cafes (
    "id" INTEGER PRIMARY KEY,
    "empresa" TEXT,
    "estado" TEXT,
    "produto" TEXT UNIQUE,
    "tipo" TEXT,
    "categoria" TEXT
);

CREATE TABLE temp (
    "empresa" TEXT,
    "estado" TEXT,
    "produto" TEXT,
    "tipo" TEXT,
    "certificacao" TEXT,
    "categoria" TEXT
);