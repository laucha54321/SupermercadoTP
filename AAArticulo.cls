"Filed out from Dolphin Smalltalk 7"!

Object subclass: #AAArticulo
	instanceVariableNames: 'descripcion precio id'
	classVariableNames: 'Contador'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
AAArticulo guid: (GUID fromString: '{C930734F-4D43-408C-A2D8-336B1692C2D5}')!
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
!AAArticulo categoriesFor: #cargaDatos!public! !
!AAArticulo categoriesFor: #descripcion!public! !
!AAArticulo categoriesFor: #descripcion:!public! !
!AAArticulo categoriesFor: #id!public! !
!AAArticulo categoriesFor: #id:!public! !
!AAArticulo categoriesFor: #precio!public! !
!AAArticulo categoriesFor: #precio:!public! !

!AAArticulo class methodsFor!

generarId
	Contador := 1.
	Contador := Contador + 1! !
!AAArticulo class categoriesFor: #generarId!public! !

