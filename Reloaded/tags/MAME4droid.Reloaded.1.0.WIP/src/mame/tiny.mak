###########################################################################
#
#   tiny.mak
#
#   Small driver-specific example makefile
#	Use make SUBTARGET=tiny to build
#
#   Copyright Nicola Salmoria and the MAME Team.
#   Visit  http://mamedev.org for licensing and usage restrictions.
#
###########################################################################

MAMESRC = $(SRC)/mame
MAMEOBJ = $(OBJ)/mame

AUDIO = $(MAMEOBJ)/audio
DRIVERS = $(MAMEOBJ)/drivers
LAYOUT = $(MAMEOBJ)/layout
MACHINE = $(MAMEOBJ)/machine
VIDEO = $(MAMEOBJ)/video

OBJDIRS += \
	$(AUDIO) \
	$(DRIVERS) \
	$(LAYOUT) \
	$(MACHINE) \
	$(VIDEO) \



#-------------------------------------------------
# Specify all the CPU cores necessary for the
# drivers referenced in tiny.c.
#-------------------------------------------------

CPUS += Z80
CPUS += M6502
CPUS += MCS48
CPUS += MCS51
CPUS += M6800
CPUS += M6809
CPUS += M680X0
CPUS += PIC16C5X


#-------------------------------------------------
# Specify all the sound cores necessary for the
# drivers referenced in tiny.c.
#-------------------------------------------------

SOUNDS += CUSTOM
SOUNDS += SAMPLES
SOUNDS += DAC
SOUNDS += DISCRETE
SOUNDS += AY8910
SOUNDS += YM2151
SOUNDS += ASTROCADE
SOUNDS += TMS5220
SOUNDS += OKIM6295
SOUNDS += HC55516
SOUNDS += YM3812
SOUNDS += CDDA
SOUNDS += SN76496
SOUNDS += MSM5205
SOUNDS += QSOUND
SOUNDS += UPD7759
SOUNDS += SEGAPCM
SOUNDS += SEGAPCM
SOUNDS += YM2612
SOUNDS += RF5C68


#-------------------------------------------------
# This is the list of files that are necessary
# for building all of the drivers referenced
# in tiny.c
#-------------------------------------------------

DRVLIBS = \
	$(MAMEOBJ)/tiny.o \
	$(MACHINE)/ticket.o \
	$(DRIVERS)/carpolo.o $(MACHINE)/carpolo.o $(VIDEO)/carpolo.o \
	$(DRIVERS)/circus.o $(AUDIO)/circus.o $(VIDEO)/circus.o \
	$(DRIVERS)/exidy.o $(AUDIO)/exidy.o $(VIDEO)/exidy.o \
	$(DRIVERS)/starfire.o $(VIDEO)/starfire.o \
	$(DRIVERS)/victory.o $(VIDEO)/victory.o \
	$(AUDIO)/targ.o \
	$(DRIVERS)/astrocde.o $(VIDEO)/astrocde.o \
	$(DRIVERS)/gridlee.o $(AUDIO)/gridlee.o $(VIDEO)/gridlee.o \
	$(DRIVERS)/williams.o $(MACHINE)/williams.o $(AUDIO)/williams.o $(VIDEO)/williams.o \
	$(AUDIO)/gorf.o \
	$(AUDIO)/wow.o \
	$(DRIVERS)/gaelco.o $(VIDEO)/gaelco.o $(MACHINE)/gaelcrpt.o \
	$(DRIVERS)/wrally.o $(MACHINE)/wrally.o $(VIDEO)/wrally.o \
	$(MACHINE)/pckeybrd.o \
	$(DRIVERS)/senjyo.o $(VIDEO)/senjyo.o $(AUDIO)/senjyo.o $(MACHINE)/segacrpt.o \
	$(DRIVERS)/cps1.o $(DRIVERS)/cps2.o $(MACHINE)/cps2crpt.o $(VIDEO)/cps1.o $(MACHINE)/kabuki.o \
	$(DRIVERS)/system16.o  $(VIDEO)/system16.o $(VIDEO)/sys16spr.o $(VIDEO)/genesis.o $(VIDEO)/segasyse.o $(MACHINE)/system16.o \
	$(DRIVERS)/segaorun.o $(VIDEO)/segaorun.o $(MACHINE)/segaic16.o $(VIDEO)/segaic16.o $(MACHINE)/s16fd.o  $(MACHINE)/fd1089.o $(MACHINE)/fd1094.o $(MACHINE)/fddebug.o \

#-------------------------------------------------
# layout dependencies
#-------------------------------------------------

$(DRIVERS)/astrocde.o:	$(LAYOUT)/gorf.lh \
						$(LAYOUT)/tenpindx.lh
$(DRIVERS)/circus.o:	$(LAYOUT)/circus.lh \
						$(LAYOUT)/crash.lh
$(DRIVERS)/segaorun.o:	$(LAYOUT)/outrun.lh