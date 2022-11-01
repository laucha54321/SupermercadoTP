"Filed out from Dolphin Smalltalk"!

AAPersona subclass: #Distribuidor
	instanceVariableNames: 'id valorEntrega'
	classVariableNames: 'Contador'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Distribuidor guid: (GUID fromString: '{402f4abf-ecde-45de-adc7-de599e9bde3d}')!
Distribuidor comment: ''!
!Distribuidor categoriesForClass!Kernel-Objects! !
!Distribuidor methodsFor!

cargaDatos
super cargaDatos.

id:= Distribuidor  generarId.	"Genero un id unico de Distribuidor y se lo asigno a la instancia."
valorEntrega:=Prompter prompt: 'Ingrese Valor de Entrega: '.!

cargaDatos: cod
	id := cod.
	super cargaDatos.
	valorEntrega := (Prompter prompt: 'Ingrese valor de la entrega: ') asFloat asInteger!

id
	^id!

id: anObject
	id := anObject!

valorEntrega
	^valorEntrega!

valorEntrega: anObject
	valorEntrega := anObject! !
!Distribuidor categoriesForMethods!
cargaDatos!public! !
cargaDatos:!public! !
id!public! !
id:!public! !
valorEntrega!public! !
valorEntrega:!public! !
!

