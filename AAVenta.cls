"Filed out from Dolphin Smalltalk 7"!

Object subclass: #AAVenta
	instanceVariableNames: 'fecha cliente distribuidor colArticulos'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
AAVenta guid: (GUID fromString: '{54523E07-2406-4CD3-BC10-9BE98BB7A9A8}')!
AAVenta comment: ''!
!AAVenta categoriesForClass!Kernel-Objects! !
!AAVenta methodsFor!

asignaArt: arti
	colArticulos := arti!

cargaDatos: clie and: dist
	cliente := clie.
	distribuidor := dist.
	fecha := Date today!

inicio
	""

	colArticulos := OrderedCollection new!

listar
""
articulos do:  [:i | MessageBox notify:  'id' i id ].  !

oDistribuidor
	^distribuidor!

oFecha
	^fecha!

oZona
	^cliente! !
!AAVenta categoriesFor: #asignaArt:!public! !
!AAVenta categoriesFor: #cargaDatos:and:!public! !
!AAVenta categoriesFor: #inicio!public! !
!AAVenta categoriesFor: #listar!public! !
!AAVenta categoriesFor: #oDistribuidor!public! !
!AAVenta categoriesFor: #oFecha!public! !
!AAVenta categoriesFor: #oZona!public! !

