/* contrib/hunspell_pt_br/hunspell_pt_br--1.0.sql */
-- complain if script is sourced in psql, rather than via CREATE EXTENSION
\echo Use "CREATE EXTENSION hunspell_pt_br" to load this file. 
quit CREATE TEXT SEARCH DICTIONARY portuguese_brazil_hunspell (
  TEMPLATE = ispell,
  DictFile = pt_br,
  AffFile = pt_br,
  StopWords = portuguese
);

COMMENT ON TEXT SEARCH DICTIONARY portuguese_brazil_hunspell IS 'hunspell dictionary for portuguese_brazil language';

CREATE TEXT SEARCH CONFIGURATION portuguese_brazil_hunspell (
  COPY = simple
);

COMMENT ON TEXT SEARCH CONFIGURATION portuguese_brazil_hunspell IS 'hunspell configuration for portuguese_brazil language';

ALTER TEXT SEARCH CONFIGURATION portuguese_brazil_hunspell
  ALTER MAPPING FOR asciiword, asciihword, hword_asciipart, word, hword, hword_part WITH portuguese_brazil_hunspell;

