"Filed out from Dolphin Smalltalk"!

Object subclass: #AAPersona
	instanceVariableNames: 'nombre zona'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
AAPersona guid: (GUID fromString: '{0120f0c3-a0f4-4604-a7af-2db88f2647e6}')!
AAPersona comment: ''!
!AAPersona categoriesForClass!Kernel-Objects! !
!AAPersona methodsFor!

cargaDatos
nombre:=Prompter prompt: 'Ingrese Nombre: '.
zona:=Prompter prompt: 'Ingrese Zona '.!

nombre
	^nombre!

nombre: anObject
	nombre := anObject!

zona
	^zona!

zona: anObject
	zona := anObject! !
!AAPersona categoriesForMethods!
cargaDatos!public! !
nombre!public! !
nombre:!public! !
zona!public! !
zona:!public! !
!

