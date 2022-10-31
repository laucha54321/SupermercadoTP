"Filed out from Dolphin Smalltalk 7"!

Object subclass: #AAPersona
	instanceVariableNames: 'nombre zona'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
AAPersona guid: (GUID fromString: '{0120F0C3-A0F4-4604-A7AF-2DB88F2647E6}')!
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
!AAPersona categoriesFor: #cargaDatos!public! !
!AAPersona categoriesFor: #nombre!public! !
!AAPersona categoriesFor: #nombre:!public! !
!AAPersona categoriesFor: #zona!public! !
!AAPersona categoriesFor: #zona:!public! !

