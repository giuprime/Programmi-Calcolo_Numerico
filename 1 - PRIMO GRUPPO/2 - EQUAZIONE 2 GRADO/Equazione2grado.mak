# Microsoft Developer Studio Generated NMAKE File, Format Version 4.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

!IF "$(CFG)" == ""
CFG=Equazione2grado - Win32 Debug
!MESSAGE No configuration specified.  Defaulting to Equazione2grado - Win32\
 Debug.
!ENDIF 

!IF "$(CFG)" != "Equazione2grado - Win32 Release" && "$(CFG)" !=\
 "Equazione2grado - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE on this makefile
!MESSAGE by defining the macro CFG on the command line.  For example:
!MESSAGE 
!MESSAGE NMAKE /f "Equazione2grado.mak" CFG="Equazione2grado - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "Equazione2grado - Win32 Release" (based on\
 "Win32 (x86) Console Application")
!MESSAGE "Equazione2grado - Win32 Debug" (based on\
 "Win32 (x86) Console Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 
################################################################################
# Begin Project
RSC=rc.exe
F90=fl32.exe

!IF  "$(CFG)" == "Equazione2grado - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
OUTDIR=.
INTDIR=.

ALL : "$(OUTDIR)\Equazione2grado.exe"

CLEAN : 
	-@erase ".\Equazione2grado.exe"
	-@erase ".\Equazione2grado.obj"

# ADD BASE F90 /Ox /c /nologo
# ADD F90 /Ox /c /nologo
F90_PROJ=/Ox /c /nologo 
# ADD BASE RSC /l 0x410 /d "NDEBUG"
# ADD RSC /l 0x410 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/Equazione2grado.bsc" 
BSC32_SBRS=
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib /nologo /subsystem:console /machine:I386
# ADD LINK32 kernel32.lib /nologo /subsystem:console /machine:I386
LINK32_FLAGS=kernel32.lib /nologo /subsystem:console /incremental:no\
 /pdb:"$(OUTDIR)/Equazione2grado.pdb" /machine:I386\
 /out:"$(OUTDIR)/Equazione2grado.exe" 
LINK32_OBJS= \
	"$(INTDIR)/Equazione2grado.obj"

"$(OUTDIR)\Equazione2grado.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "Equazione2grado - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
OUTDIR=.
INTDIR=.

ALL : "$(OUTDIR)\Equazione2grado.exe"

CLEAN : 
	-@erase ".\Equazione2grado.exe"
	-@erase ".\Equazione2grado.obj"
	-@erase ".\Equazione2grado.ilk"
	-@erase ".\Equazione2grado.pdb"

# ADD BASE F90 /Zi /c /nologo
# ADD F90 /Zi /c /nologo
F90_PROJ=/Zi /c /nologo /Fd"Equazione2grado.pdb" 
# ADD BASE RSC /l 0x410 /d "_DEBUG"
# ADD RSC /l 0x410 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/Equazione2grado.bsc" 
BSC32_SBRS=
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib /nologo /subsystem:console /debug /machine:I386
# ADD LINK32 kernel32.lib /nologo /subsystem:console /debug /machine:I386
LINK32_FLAGS=kernel32.lib /nologo /subsystem:console /incremental:yes\
 /pdb:"$(OUTDIR)/Equazione2grado.pdb" /debug /machine:I386\
 /out:"$(OUTDIR)/Equazione2grado.exe" 
LINK32_OBJS= \
	"$(INTDIR)/Equazione2grado.obj"

"$(OUTDIR)\Equazione2grado.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 

.for.obj:
   $(F90) $(F90_PROJ) $<  

.f.obj:
   $(F90) $(F90_PROJ) $<  

.f90.obj:
   $(F90) $(F90_PROJ) $<  

################################################################################
# Begin Target

# Name "Equazione2grado - Win32 Release"
# Name "Equazione2grado - Win32 Debug"

!IF  "$(CFG)" == "Equazione2grado - Win32 Release"

!ELSEIF  "$(CFG)" == "Equazione2grado - Win32 Debug"

!ENDIF 

################################################################################
# Begin Source File

SOURCE=.\Equazione2grado.f

"$(INTDIR)\Equazione2grado.obj" : $(SOURCE) "$(INTDIR)"


# End Source File
# End Target
# End Project
################################################################################
