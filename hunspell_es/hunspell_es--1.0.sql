/* contrib/hunspell_es/hunspell_es--1.0.sql */

-- complain if script is sourced in psql, rather than via CREATE EXTENSION
\echo Use "CREATE EXTENSION hunspell_es" to load this file. \quit

CREATE TEXT SEARCH DICTIONARY spanish_hunspell (
    TEMPLATE = ispell,
    DictFile = es,
    AffFile = es,
    StopWords = spanish
);

COMMENT ON TEXT SEARCH DICTIONARY spanish_hunspell IS 'hunspell dictionary for spanish language';

CREATE TEXT SEARCH CONFIGURATION spanish_hunspell (
    COPY = simple
);

COMMENT ON TEXT SEARCH CONFIGURATION spanish_hunspell IS 'hunspell configuration for spanish language';

ALTER TEXT SEARCH CONFIGURATION spanish_hunspell
    ALTER MAPPING FOR asciiword, asciihword, hword_asciipart,
        word, hword, hword_part
    WITH spanish_hunspell;
