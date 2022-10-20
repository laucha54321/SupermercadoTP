"Filed out from Dolphin Smalltalk"!

Persona subclass: #Distribuidor
	instanceVariableNames: 'id valorEntrega'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Distribuidor guid: (GUID fromString: '{402f4abf-ecde-45de-adc7-de599e9bde3d}')!
Distribuidor comment: ''!
!Distribuidor categoriesForClass!Kernel-Objects! !
!Distribuidor methodsFor!

cargaDatos
super cargaDatos.
id:=Prompter prompt: 'Ingrese id: '.
valorEntrega:=Prompter prompt: 'Ingrese Clave: '.!

codigo
	^codigo!

codigo: anObject
	codigo := anObject!

valorEntrega
	^valorEntrega!

valorEntrega: anObject
	valorEntrega := anObject! !
!Distribuidor categoriesForMethods!
cargaDatos!public! !
codigo!accessing!private! !
codigo:!accessing!private! !
valorEntrega!accessing!private! !
valorEntrega:!accessing!private! !
!

