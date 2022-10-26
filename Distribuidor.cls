"Filed out from Dolphin Smalltalk"!

Persona subclass: #Distribuidor
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
id:=Prompter prompt: 'Ingrese id: '.
valorEntrega:=Prompter prompt: 'Ingrese Clave: '.!

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
id!accessing!private! !
id:!accessing!private! !
valorEntrega!accessing!private! !
valorEntrega:!accessing!private! !
!

!Distribuidor class methodsFor!

generarId
(Contador) ifNil: [ 
	Contador:=0.
].
(Contador) ifNotNil: [
	Contador:=Contador+1.
].
^Contador! !
!Distribuidor class categoriesForMethods!
generarId!public! !
!

