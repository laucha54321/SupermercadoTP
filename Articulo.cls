"Filed out from Dolphin Smalltalk"!

Object subclass: #Articulo
	instanceVariableNames: 'descripcion precio id'
	classVariableNames: 'Contador'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Articulo guid: (GUID fromString: '{c930734f-4d43-408c-a2d8-336b1692c2d5}')!
Articulo comment: ''!
!Articulo categoriesForClass!Kernel-Objects! !
!Articulo methodsFor!

cargaDatos

descripcion:=(Prompter prompt: 'Ingrese Descripcion:').
precio:=(Prompter prompt:'Ingrese Precio')asNumber asFloat.
id:=Articulo generarId.
MessageBox notify: ('El id del articulo es: ', id printString).
!

descripcion
	^descripcion!

descripcion: anObject
	descripcion := anObject!

id
	^id!

id: anObject
	id := anObject!

precio
	^precio!

precio: anObject
	precio := anObject! !
!Articulo categoriesForMethods!
cargaDatos!public! !
descripcion!accessing!private! !
descripcion:!accessing!private! !
id!accessing!private! !
id:!accessing!private! !
precio!accessing!private! !
precio:!accessing!private! !
!

!Articulo class methodsFor!

generarId
(Contador isNil) 
ifTrue: [ 
	Contador:=0.
]
ifFalse: [
	Contador:=Contador+1.
].
^Contador! !
!Articulo class categoriesForMethods!
generarId!public! !
!

