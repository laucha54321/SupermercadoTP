"Filed out from Dolphin Smalltalk"!

Object subclass: #AAArticulo
	instanceVariableNames: 'descripcion precio id'
	classVariableNames: 'Contador'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
AAArticulo guid: (GUID fromString: '{c930734f-4d43-408c-a2d8-336b1692c2d5}')!
AAArticulo comment: ''!
!AAArticulo categoriesForClass!Kernel-Objects! !
!AAArticulo methodsFor!

cargaDatos
	descripcion := Prompter prompt: 'Ingrese Descripcion:'.
	precio := (Prompter prompt: 'Ingrese Precio') asNumber asFloat.
	id := AAArticulo generarId.
	MessageBox notify: 'El id del articulo es: ' , id printString!

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
!AAArticulo categoriesForMethods!
cargaDatos!public! !
descripcion!public! !
descripcion:!public! !
id!public! !
id:!public! !
precio!public! !
precio:!public! !
!

!AAArticulo class methodsFor!

generarId
	Contador:=Contador+1.
	^ Contador.

!

inicio
Contador:=0.! !
!AAArticulo class categoriesForMethods!
generarId!public! !
inicio!public! !
!

