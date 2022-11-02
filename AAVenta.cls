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

	colArticulos := SortedCollection new.
	colArticulos sortBlock: [:a :b| a id < b id].
	!

showTranscript
	Transcript show:'	';cr;cr;show: '_________________________________________________________________';cr; show: '_________________________________________________________________';cr.
	Transcript show: 'Cliente: ', '		Domicilio: ', '		Fecha'; cr . 
	Transcript show:((cliente)nombre),'	',(cliente)domicilio,'		',(fecha shortString);cr.
	Transcript show: '_________________________________________________________________';cr.
	Transcript show: 'Articulos: ';cr.
	(colArticulos) do: [ :e |Transcript  show: (e id printString),'.  ',(e descripcion),'		', (e precio printString);cr. ].
	Transcript show:''; cr; show:'TOTAL:		',(self calculaPrecio)printString. 
	Transcript show:'	';cr;cr;show: '_________________________________________________________________';cr; show: '_________________________________________________________________';cr.! !
!AAVenta categoriesFor: #asignaArt:!public! !
!AAVenta categoriesFor: #calculaPrecio!public! !
!AAVenta categoriesFor: #cliente!public! !
!AAVenta categoriesFor: #cliente:!public! !
!AAVenta categoriesFor: #colArticulos!public! !
!AAVenta categoriesFor: #colArticulos:!public! !
!AAVenta categoriesFor: #distribuidor!public! !
!AAVenta categoriesFor: #distribuidor:!public! !
!AAVenta categoriesFor: #fecha!public! !
!AAVenta categoriesFor: #fecha:!public! !
!AAVenta categoriesFor: #inicio!public! !
!AAVenta categoriesFor: #showTranscript!public! !

