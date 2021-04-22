# Microsoft Developer Studio Generated NMAKE File, Format Version 4.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

!IF "$(CFG)" == ""
CFG=Metodo_Iterativo - Win32 Debug
!MESSAGE No configuration specified.  Defaulting to Metodo_Iterativo - Win32\
 Debug.
!ENDIF 

!IF "$(CFG)" != "Metodo_Iterativo - Win32 Release" && "$(CFG)" !=\
 "Metodo_Iterativo - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE on this makefile
!MESSAGE by defining the macro CFG on the command line.  For example:
!MESSAGE 
!MESSAGE NMAKE /f "Metodo_Iterativo.mak" CFG="Metodo_Iterativo - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "Metodo_Iterativo - Win32 Release" (based on\
 "Win32 (x86) Console Application")
!MESSAGE "Metodo_Iterativo - Win32 Debug" (based on\
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
F90=fl32.exe
RSC=rc.exe

!IF  "$(CFG)" == "Metodo_Iterativo - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
OUTDIR=.
INTDIR=.

ALL : "$(OUTDIR)\Metodo_Iterativo.exe"

CLEAN : 
	-@erase ".\Metodo_Iterativo.exe"
	-@erase ".\Metodo_Iterativo.obj"

# ADD BASE F90 /Ox /c /nologo
# ADD F90 /Ox /c /nologo
F90_PROJ=/Ox /c /nologo 
# ADD BASE RSC /l 0x410 /d "NDEBUG"
# ADD RSC /l 0x410 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/Metodo_Iterativo.bsc" 
BSC32_SBRS=
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib /nologo /subsystem:console /machine:I386
# ADD LINK32 kernel32.lib /nologo /subsystem:console /machine:I386
LINK32_FLAGS=kernel32.lib /nologo /subsystem:console /incremental:no\
 /pdb:"$(OUTDIR)/Metodo_Iterativo.pdb" /machine:I386\
 /out:"$(OUTDIR)/Metodo_Iterativo.exe" 
LINK32_OBJS= \
	"$(INTDIR)/Metodo_Iterativo.obj"

"$(OUTDIR)\Metodo_Iterativo.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "Metodo_Iterativo - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
OUTDIR=.
INTDIR=.

ALL : "$(OUTDIR)\Metodo_Iterativo.exe"

CLEAN : 
	-@erase ".\Metodo_Iterativo.exe"
	-@erase ".\Metodo_Iterativo.obj"
	-@erase ".\Metodo_Iterativo.ilk"
	-@erase ".\Metodo_Iterativo.pdb"

# ADD BASE F90 /Zi /c /nologo
# ADD F90 /Zi /c /nologo
F90_PROJ=/Zi /c /nologo /Fd"Metodo_Iterativo.pdb" 
# ADD BASE RSC /l 0x410 /d "_DEBUG"
# ADD RSC /l 0x410 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/Metodo_Iterativo.bsc" 
BSC32_SBRS=
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib /nologo /subsystem:console /debug /machine:I386
# ADD LINK32 kernel32.lib /nologo /subsystem:console /debug /machine:I386
LINK32_FLAGS=kernel32.lib /nologo /subsystem:console /incremental:yes\
 /pdb:"$(OUTDIR)/Metodo_Iterativo.pdb" /debug /machine:I386\
 /out:"$(OUTDIR)/Metodo_Iterativo.exe" 
LINK32_OBJS= \
	"$(INTDIR)/Metodo_Iterativo.obj"

"$(OUTDIR)\Metodo_Iterativo.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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

# Name "Metodo_Iterativo - Win32 Release"
# Name "Metodo_Iterativo - Win32 Debug"

!IF  "$(CFG)" == "Metodo_Iterativo - Win32 Release"

!ELSEIF  "$(CFG)" == "Metodo_Iterativo - Win32 Debug"

!ENDIF 

################################################################################
# Begin Source File

SOURCE=.\Metodo_Iterativo.f

"$(INTDIR)\Metodo_Iterativo.obj" : $(SOURCE) "$(INTDIR)"


# End Source File
# End Target
# End Project
################################################################################
