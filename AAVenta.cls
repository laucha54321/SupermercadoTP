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

cliente
	^cliente!

cliente: anObject
	cliente := anObject!

colArticulos
	^colArticulos!

colArticulos: anObject
	colArticulos := anObject!

distribuidor
	^distribuidor!

distribuidor: anObject
	distribuidor := anObject!

fecha
	^fecha!

fecha: anObject
	fecha := anObject!

inicio
	""

	colArticulos := OrderedCollection new!

listar
""
colArticulos do:  [:i | MessageBox notify:  'id', i id ].  !

showTranscript
	Transcript show:'	';cr;cr;show: '_________________________________________________________________';cr; show: '_________________________________________________________________';cr.
	Transcript show: 'Cliente: ', '		Distribuidor: ', '		Fecha'; cr . 
	Transcript show:((cliente)nombre),'	',(distribuidor)nombre,'		',(fecha shortString);cr.
	Transcript show: '_________________________________________________________________';cr.
	Transcript show: 'Articulos: ';cr.
	(colArticulos) do: [ :e |Transcript  show: (e id printString),'.  ',(e descripcion),'		', (e precio printString);cr. ].
	Transcript show:''; cr; show:'TOTAL:		',(self calculaPrecio)printString. 
	Transcript show:'	';cr;cr;show: '_________________________________________________________________';cr; show: '_________________________________________________________________';cr.! !
!AAVenta categoriesForMethods!
asignaArt:!public! !
calculaPrecio!public! !
cliente!public! !
cliente:!accessing!public! !
colArticulos!accessing!public! !
colArticulos:!accessing!public! !
distribuidor!public! !
distribuidor:!accessing!public! !
fecha!public! !
fecha:!accessing!public! !
inicio!public! !
listar!public! !
showTranscript!public! !
!

