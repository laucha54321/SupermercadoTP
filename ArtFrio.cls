"Filed out from Dolphin Smalltalk"!

Articulo subclass: #ArtFrio
	instanceVariableNames: 'peso'
	classVariableNames: 'Porcentaje'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ArtFrio guid: (GUID fromString: '{6b9a1eb6-ef3a-424b-a4ed-a05de3b2544d}')!
ArtFrio comment: ''!
!ArtFrio categoriesForClass!Kernel-Objects! !
!ArtFrio methodsFor!

cargaArticulo
super cargaArticulo.
peso:=(Prompter prompt: 'Ingrese el Peso: ') asNumber asFloat.!

peso
	^peso!

peso: anObject
	peso := anObject!

precio
^(precio + (peso * Porcentaje)).! !
!ArtFrio categoriesForMethods!
cargaArticulo!public! !
peso!accessing!private! !
peso:!accessing!private! !
precio!public! !
!

!ArtFrio class methodsFor!

porcentaje
	^Porcentaje!

porcentajeAsignar
Porcentaje:=0.4.! !
!ArtFrio class categoriesForMethods!
porcentaje!accessing!private! !
porcentajeAsignar!accessing!private! !
!

