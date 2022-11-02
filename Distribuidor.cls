"Filed out from Dolphin Smalltalk 7"!

AAPersona subclass: #Distribuidor
	instanceVariableNames: 'id valorEntrega'
	classVariableNames: 'Contador'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Distribuidor guid: (GUID fromString: '{402F4ABF-ECDE-45DE-ADC7-DE599E9BDE3D}')!
Distribuidor comment: ''!
!Distribuidor categoriesForClass!Kernel-Objects! !
!Distribuidor methodsFor!

cargaDatos
super cargaDatos.

id:= Distribuidor  generarId.	"Genero un id unico de Distribuidor y se lo asigno a la instancia."
valorEntrega:=Prompter prompt: 'Ingrese Valor de Entrega: '.!

id
	^id!

id: anObject
	id := anObject!

valorEntrega
	^valorEntrega!

valorEntrega: anObject
	valorEntrega := anObject! !
!Distribuidor categoriesFor: #cargaDatos!public! !
!Distribuidor categoriesFor: #id!public! !
!Distribuidor categoriesFor: #id:!public! !
!Distribuidor categoriesFor: #valorEntrega!public! !
!Distribuidor categoriesFor: #valorEntrega:!public! !

!Distribuidor class methodsFor!

generarId
	Contador:=Contador+1.
	^ Contador.!

inicio
Contador:=0.! !
!Distribuidor class categoriesFor: #generarId!public! !
!Distribuidor class categoriesFor: #inicio!public! !

