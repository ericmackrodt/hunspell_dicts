EXTENSION = hunspell_pt_br
DATA = hunspell_pt_br--1.0.sql

DATA_TSEARCH = pt_br.affix pt_br.dict

ifdef USE_PGXS
PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
else
subdir = contrib/hunspell_pt_br
top_builddir = ../..
include $(top_builddir)/src/Makefile.global
include $(top_srcdir)/contrib/contrib-global.mk
endif
