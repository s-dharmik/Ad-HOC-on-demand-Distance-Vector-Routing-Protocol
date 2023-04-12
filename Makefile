ifndef CONTIKI
  ${error CONTIKI not defined! Do not forget to source /upb/groups/fg-ccs/public/share/nes/env.sh}
endif

ifndef TARGET
TARGET=sky
endif

all: unicast-example.sky

upload: unicast-example.upload

sim: unicast-example.csc unicast-example.c
	java -jar $(CONTIKI)/tools/cooja/dist/cooja.jar -quickstart=unicast-example.csc -contiki=$(CONTIKI)
simulation:
	java -jar $(CONTIKI)/tools/cooja/dist/cooja.jar -contiki=$(CONTIKI)

CONTIKI_WITH_IPV4 = 1
CONTIKI_WITH_RIME = 1
include $(CONTIKI)/Makefile.include
