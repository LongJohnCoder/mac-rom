# This makefile was missing. Here is a rudimentary reconstruction.
# Some toolbox managers were "dumped" instead of backported, to save time.

ToolboxObjs	= 						"{ObjDir}PackageMgr.a.o"						�
									"{ObjDir}SegmentLoader.a.o"						�
									"{ObjDir}ShutDownMgr.a.o"						�
									"{ObjDir}ShutDownMgr.c.o"						�
									"{ObjDir}Munger.a.o"							�
									"{ObjDir}DeskMgr.a.o"							�
									"{ObjDir}GetMgr.a.o"							�
									"{ObjDir}TextEdit.lib"							�
									"{ObjDir}ScrapMgr.a.o"							�
									"{ObjDir}Printing.a.o"							�
									"{ObjDir}SexyDate.a.o"


# Just guessing what the binaries should be called:
# *.lib for multi-file managers, *.a.o for single-file managers

"{LibDir}Toolbox.lib"				�	{ToolboxObjs}
	Lib {StdLibOpts}	{ToolboxObjs} -o "{Targ}"

"{ObjDir}PackageMgr.a.o"			�	"{ToolboxDir}PackageMgr.a"
	Asm {StdAOpts} -o "{Targ}" "{ToolboxDir}PackageMgr.a"

"{ObjDir}SegmentLoader.a.o"			�	"{ToolboxDir}SegmentLoader:SegmentLoader.a"
	Asm {StdAOpts} -o "{Targ}" "{ToolboxDir}SegmentLoader:SegmentLoader.a"

"{ObjDir}ShutDownMgr.a.o"			�	"{ToolboxDir}ShutDownMgr:ShutDownMgr.a"
	Asm {StdAOpts} -o "{Targ}" "{ToolboxDir}ShutDownMgr:ShutDownMgr.a"

"{ObjDir}Munger.a.o"				�	"{ToolboxDir}Munger:Munger.a"
	Asm {StdAOpts} -o "{Targ}" "{ToolboxDir}Munger:Munger.a"

"{ObjDir}DeskMgr.a.o"				�	"{ToolboxDir}DeskMgr:DeskMgr.a"
	Asm {StdAOpts} -o "{Targ}" "{ToolboxDir}DeskMgr:DeskMgr.a"

"{ObjDir}GetMgr.a.o"				�	"{ToolboxDir}GetMgr:GetMgr.a"
	Asm {StdAOpts} -o "{Targ}" "{ToolboxDir}GetMgr:GetMgr.a"

"{ObjDir}SexyDate.a.o"				�	"{ToolboxDir}SexyDate.a"
	Asm {StdAOpts} -o "{Targ}" "{ToolboxDir}SexyDate.a"


# The following libs are *not* part of Toolbox.lib

AliasMgrDir 				= "{ToolBoxDir}AliasMgr:"
ComponentMgrDir 			= "{ToolBoxDir}ComponentMgr:"
DataAccessDir 				= "{ToolBoxDir}DataAccessMgr:"
ExpansionBusMgrDir 			= "{ToolBoxDir}ExpansionBusMgr:"
NotificationDir 			= "{ToolBoxDir}NotificationMgr:"
ToolboxEventDir 			= "{ToolBoxDir}ToolboxEventMgr:"
ControlMgrDir 				= "{ToolBoxDir}ControlMgr:"
DisplayMgrDir 				= "{ToolBoxDir}DisplayMgr:"
WindowMgrDir 				= "{ToolBoxDir}WindowMgr:"
MenuMgrDir 					= "{ToolBoxDir}MenuMgr:"
DialogDir 					= "{ToolBoxDir}DialogMgr:"
ResourceMgrDir 				= "{ToolBoxDir}ResourceMgr:"
ScriptMgrDir 				= "{ToolBoxDir}ScriptMgr:"
FontMgrDir 					= "{ToolBoxDir}FontMgr:"
SANEDir 					= "{ToolBoxDir}SANE:"

#include "{AliasMgrDir}AliasMgr.make"
#include "{ComponentMgrDir}ComponentMgr.make"
#include "{DataAccessDir}DataAccessMgr.make"
#include "{ExpansionBusMgrDir}ExpansionBusMgr.make"
#include "{NotificationDir}NotificationMgr.make"
#include "{ToolboxEventDir}ToolboxEventMgr.make"
#include "{ControlMgrDir}ControlMgr.make"
#include "{DisplayMgrDir}DisplayMgr.make"
#include "{WindowMgrDir}WindowMgr.make"
#include "{MenuMgrDir}MenuMgr.make"
#include "{DialogDir}DialogMgr.make"
#include "{ResourceMgrDir}ResourceMgr.make"
#include "{ScriptMgrDir}ScriptMgr.make"
#include "{FontMgrDir}FontMgr.make"
#include "{SANEDir}SANE.make"
