"Filed out from Dolphin Smalltalk"!

Persona subclass: #Cliente
	instanceVariableNames: 'clave domicilio'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Cliente guid: (GUID fromString: '{eb69b218-a06d-4675-8893-5120f943f110}')!
Cliente comment: ''!
!Cliente categoriesForClass!Kernel-Objects! !
!Cliente methodsFor!

cargaDatos
super cargaDatos.
clave:=Prompter prompt: 'Ingrese Clave: '.
domicilio:=Prompter prompt: 'Ingrese Domicilio: '.!

clave
	^clave!

clave: anObject
	clave := anObject!

domicilio
	^domicilio!

domicilio: anObject
	domicilio := anObject! !
!Cliente categoriesForMethods!
cargaDatos!public! !
clave!accessing!private! !
clave:!accessing!private! !
domicilio!accessing!private! !
domicilio:!accessing!private! !
!

