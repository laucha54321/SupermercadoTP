"Filed out from Dolphin Smalltalk"!

Persona subclass: #Cliente
	instanceVariableNames: 'id domicilio'
	classVariableNames: 'Contador'
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

clave
	^clave!

clave: anObject
	clave := anObject!

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
clave!accessing!private! !
clave:!accessing!private! !
domicilio!accessing!private! !
domicilio:!accessing!private! !
id!accessing!private! !
id:!accessing!private! !
!

!Cliente class methodsFor!

generarId
(Contador) ifNil: [ 
	Contador:=0.
].
(Contador) ifNotNil: [
	Contador:=Contador+1.
].
^Contador! !
!Cliente class categoriesForMethods!
generarId!public! !
!

