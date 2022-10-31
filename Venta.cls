"Filed out from Dolphin Smalltalk"!

Object subclass: #Venta
	instanceVariableNames: 'fecha cliente distribuidor colArtVendidos'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Venta guid: (GUID fromString: '{1b5cad2c-f179-4e70-bfd6-6df0b5970641}')!
Venta comment: ''!
!Venta categoriesForClass!Kernel-Objects! !
!Venta methodsFor!

asignaArticulos: anArticulo
(colArtVendidos isNil )ifTrue: [
colArtVendidos:=OrderedCollection new.
].
colArtVendidos add: anArticulo.


!

calculaPrecio
|acum|
acum:= 0.
colArtVendidos do: [:each | acum:= acum + each precio ].
^acum!

cargaVenta
|codCliente|
codCliente := (Prompter prompt: 'Ingrese el codigo de cliente')!

cliente
	^cliente!

cliente: anObject
	cliente := anObject!

colArtVendidos
	^colArtVendidos!

colArtVendidos: anObject
	colArtVendidos := anObject!

distribuidor
	^distribuidor!

distribuidor: anObject
	distribuidor := anObject!

fecha
	^fecha!

fecha: anObject
	fecha := anObject! !
!Venta categoriesForMethods!
asignaArticulos:!public! !
calculaPrecio!public! !
cargaVenta!public! !
cliente!accessing!public! !
cliente:!accessing!public! !
colArtVendidos!accessing!public! !
colArtVendidos:!accessing!public! !
distribuidor!accessing!public! !
distribuidor:!accessing!public! !
fecha!accessing!public! !
fecha:!accessing!public! !
!

