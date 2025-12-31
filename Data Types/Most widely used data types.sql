/*
-------------------------------------------------------------
Most SQL databases group data types into a few core families 
like numbers, text, dates/times, and booleans, and a small subset 
of these is used in the majority of real-world tables.
-------------------------------------------------------------​
*/
--Most widely used types
--Numeric types:
--Used for IDs, counts, prices, and measurements.
INT / INTEGER: Whole numbers, e.g., user IDs, order counts.​
BIGINT: Very large whole numbers, often for high-volume IDs or counters.
DECIMAL(p,s) / NUMERIC(p,s): Exact decimal numbers, ideal for money (e.g., DECIMAL(10,2) for currency).
FLOAT / REAL / DOUBLE: Approximate decimals for scientific/calculation-heavy data where tiny rounding error is acceptable.
​

--String (text) types:
--Used for names, emails, descriptions, codes, etc.
VARCHAR(n): Variable-length text up to n characters; most common choice for general text (names, emails, URLs).
CHAR(n): Fixed-length text, good for fields with constant size like country codes or status codes.
TEXT (or similar like CLOB): Large blocks of text such as descriptions, comments, or articles.​

--Date and time types:
--Used for logging when something happened.
DATE: Date only (year, month, day), e.g., birthdays, due dates.
TIME: Time of day only, e.g., daily opening time.
DATETIME / TIMESTAMP: Date plus time; most used for created_at / updated_at fields.

--Boolean / logical type:
--Used for yes/no flags.
BOOLEAN / BOOL / BIT: Stores true/false (internally often 0/1).​

--Other very common types
--These appear frequently in many systems.​
BINARY / VARBINARY / BLOB: Binary data such as images, files, or encrypted values.
UUID / UNIQUEIDENTIFIER: Universally unique identifier string; used as globally unique keys.
JSON / XML (engine-specific): Semi-structured data stored in a single column (settings, dynamic attributes).​

--All major SQL data type families
--Below are the broader families and representative types you can mention as a “full list section” in your video, stressing that exact names vary by database (MySQL, PostgreSQL, SQL Server, Oracle, etc.).

--Exact numeric types
BIT / BOOLEAN / BOOL
TINYINT, SMALLINT, MEDIUMINT (engine-specific), INT / INTEGER, BIGINT
DECIMAL(p,s), NUMERIC(p,s)
MONEY, SMALLMONEY (mainly SQL Server)​

--Approximate numeric types
FLOAT
REAL
DOUBLE / DOUBLE PRECISION​

--Character/string types
CHAR(n)
VARCHAR(n), VARCHAR(max)
NCHAR(n), NVARCHAR(n), NVARCHAR(max) (Unicode variants)
TEXT (and variants like TINYTEXT, MEDIUMTEXT, LONGTEXT in MySQL)

--Date and time types
DATE
TIME
DATETIME, DATETIME2
TIMESTAMP (may have special semantics)
SMALDATETIME
DATETIMEOFFSET (date-time with timezone offset)​

--Binary types
BINARY(n)
VARBINARY(n), VARBINARY(max)

--Identifier and structured types
UUID / UNIQUEIDENTIFIER
XML
JSON (native or text-based, depending on DB engine)

