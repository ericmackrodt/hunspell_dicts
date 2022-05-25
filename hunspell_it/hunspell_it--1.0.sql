/* contrib/hunspell_it/hunspell_it--1.0.sql */

-- complain if script is sourced in psql, rather than via CREATE EXTENSION
\echo Use "CREATE EXTENSION hunspell_it" to load this file. \quit

CREATE TEXT SEARCH DICTIONARY italian_hunspell (
    TEMPLATE = ispell,
    DictFile = it,
    AffFile = it,
    StopWords = italian
);

COMMENT ON TEXT SEARCH DICTIONARY italian_hunspell IS 'hunspell dictionary for italian language';

CREATE TEXT SEARCH CONFIGURATION italian_hunspell (
    COPY = simple
);

COMMENT ON TEXT SEARCH CONFIGURATION italian_hunspell IS 'hunspell configuration for italian language';

ALTER TEXT SEARCH CONFIGURATION italian_hunspell
    ALTER MAPPING FOR asciiword, asciihword, hword_asciipart,
        word, hword, hword_part
    WITH italian_hunspell;
