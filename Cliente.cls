"Filed out from Dolphin Smalltalk 7"!

AAPersona subclass: #Cliente
	instanceVariableNames: 'id domicilio'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Cliente guid: (GUID fromString: '{EB69B218-A06D-4675-8893-5120F943F110}')!
Cliente comment: ''!
!Cliente categoriesForClass!Kernel-Objects! !
!Cliente methodsFor!

cargaDatos
super cargaDatos.
id:=(Prompter prompt: 'Ingrese Clave: ')asNumber asInteger.
domicilio:=Prompter prompt: 'Ingrese Domicilio: '.!

cargaDatos: cod
	id := cod.
	super cargaDatos.
	domicilio := Prompter prompt: 'Ingrese Domicilio: '!

domicilio
	^domicilio!

domicilio: anObject
	domicilio := anObject!

id
	^id!

id: anObject
	id := anObject! !
!Cliente categoriesFor: #cargaDatos!public! !
!Cliente categoriesFor: #cargaDatos:!public! !
!Cliente categoriesFor: #domicilio!public! !
!Cliente categoriesFor: #domicilio:!public! !
!Cliente categoriesFor: #id!public! !
!Cliente categoriesFor: #id:!public! !

