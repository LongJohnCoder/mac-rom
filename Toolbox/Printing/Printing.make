PrintingObjs		=			"{ObjDir}PrintGlue.a.o"								�
								"{ObjDir}PrintingExtra.a.o"


"{ObjDir}PrintGlue.a.o"				�	"{ObjDir}StandardEqu.d"						�
										"{AIncludes}PrPrivate.a"					�
										"{PrintingDir}PrintGlue.a"
	Asm {StdAOpts} -o "{Targ}" "{PrintingDir}PrintGlue.a"


"{LibDir}Printing.lib"				� 	{PrintingObjs}
	Lib {StdLibOpts} -o "{Targ}" {PrintingObjs}
