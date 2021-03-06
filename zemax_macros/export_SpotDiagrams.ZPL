!Generates optical distortion diagram of the full field 
!at the focal plane

OPENANALYSISWINDOW "SPT"
WindowNumber = WINL()
PAUSE THREADS
FORMAT "%#03i" LIT

fnamebase$ = $PATHNAME() + "\SpotDiagrams\"
MAKEFOLDER fnamebase$

N=NCON()

FOR c, 1, N, 1
	print "Extracting spot diagrams for conf" +$STR(c)
	bmpfname$ = fnamebase$ + "SpotDiagrams_Conf" + $STR(c)
	
	SETCONFIG c
	UPDATE ALL
	PAUSE TIME, 250
	EXPORTBMP WindowNumber, bmpfname$
NEXT
	