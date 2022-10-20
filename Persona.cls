"Filed out from Dolphin Smalltalk"!

Object subclass: #Persona
	instanceVariableNames: 'nombre zona'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Persona guid: (GUID fromString: '{0120f0c3-a0f4-4604-a7af-2db88f2647e6}')!
Persona comment: ''!
!Persona categoriesForClass!Kernel-Objects! !
!Persona methodsFor!

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
!Persona categoriesForMethods!
cargaDatos!public! !
nombre!accessing!private! !
nombre:!accessing!private! !
zona!accessing!private! !
zona:!accessing!private! !
!

