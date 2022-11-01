"Filed out from Dolphin Smalltalk"!

Object subclass: #AAVenta
	instanceVariableNames: 'fecha cliente distribuidor colArticulos'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
AAVenta guid: (GUID fromString: '{54523e07-2406-4cd3-bc10-9be98bb7a9a8}')!
AAVenta comment: ''!
!AAVenta categoriesForClass!Kernel-Objects! !
!AAVenta methodsFor!

asignaArt: arti
	colArticulos add: arti.!

calculaPrecio
|acum|
acum:=0.
colArticulos do:[
	:i|acum := acum+(i precio).
].
^acum!

cargaDatos: clie and: dist and: fecha1
	cliente := clie.
	distribuidor := dist.
	fecha:=fecha1.!

cliente
	^cliente!

colArticulos
	^colArticulos!

colArticulos: anObject
	colArticulos := anObject!

distribuidor
	^distribuidor!

fecha
	^fecha!

inicio
	""

	colArticulos := OrderedCollection new!

listar
""
colArticulos do:  [:i | MessageBox notify:  'id', i id ].  ! !
!AAVenta categoriesForMethods!
asignaArt:!public! !
calculaPrecio!public! !
cargaDatos:and:and:!public! !
cliente!public! !
colArticulos!accessing!public! !
colArticulos:!accessing!public! !
distribuidor!public! !
fecha!public! !
inicio!public! !
listar!public! !
!

