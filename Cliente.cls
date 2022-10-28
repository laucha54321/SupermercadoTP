"Filed out from Dolphin Smalltalk"!

Persona subclass: #Cliente
	instanceVariableNames: 'id domicilio'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Cliente guid: (GUID fromString: '{eb69b218-a06d-4675-8893-5120f943f110}')!
Cliente comment: ''!
!Cliente categoriesForClass!Kernel-Objects! !
!Cliente methodsFor!

cargaDatos
super cargaDatos.
id:=(Prompter prompt: 'Ingrese Clave: ')asNumber asInteger.
domicilio:=Prompter prompt: 'Ingrese Domicilio: '.!

domicilio
	^domicilio!

domicilio: anObject
	domicilio := anObject!

id
	^id!

id: anObject
	id := anObject! !
!Cliente categoriesForMethods!
cargaDatos!public! !
domicilio!accessing!private! !
domicilio:!accessing!private! !
id!accessing!private! !
id:!accessing!private! !
!

