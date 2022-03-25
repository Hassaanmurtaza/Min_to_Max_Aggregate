\echo Use "CREATE EXTENSION min_to_max" to load this file. \quit
CREATE OR REPLACE FUNCTION min_to_max_und(numeric[]) RETURNS varchar AS $$
DECLARE 
answer varchar;
BEGIN
 select MIN(elements::numeric) || '->' ||  max(elements::numeric) FROM unnest($1) elements into answer;
RETURN answer;
END;
$$ LANGUAGE plpgsql ;

CREATE  OR replace AGGREGATE min_to_max(numeric)
(
sfunc = array_append,
stype = numeric[],
finalfunc = min_to_max_und,
initCond = '{}'
);

CREATE OR REPLACE FUNCTION min_to_max_und(varchar[]) RETURNS varchar AS $$
DECLARE 
answer varchar;
BEGIN
 select MIN(elements::numeric) || '->' ||  max(elements::numeric) FROM unnest($1) elements into answer;
RETURN answer;
END;
$$ LANGUAGE plpgsql ;

CREATE  OR replace AGGREGATE min_to_max(varchar)
(
sfunc = array_append,
stype = varchar[],
finalfunc = min_to_max_und,
initCond = '{}'
);