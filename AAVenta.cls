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

cargaDatos: clie and: dist
	cliente := clie.
	distribuidor := dist.
	fecha:=Date fromString: (Prompter prompt: 'DD/MM/AAAA').!

cliente
	^cliente!

inicio
	""

	colArticulos := OrderedCollection new!

listar
""
colArticulos do:  [:i | MessageBox notify:  'id', i id ].  !

oDistribuidor
	^distribuidor!

oFecha
	^fecha! !
!AAVenta categoriesForMethods!
asignaArt:!public! !
cargaDatos:and:!public! !
cliente!public! !
inicio!public! !
listar!public! !
oDistribuidor!public! !
oFecha!public! !
!

