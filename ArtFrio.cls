"Filed out from Dolphin Smalltalk"!

AAArticulo subclass: #ArtFrio
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

cargaDatos
super cargaDatos.
peso:=(Prompter prompt: 'Ingrese el Peso: ') asNumber asFloat.!

peso
	^peso!

peso: anObject
	peso := anObject!

precio
Porcentaje:=0.4.
^(precio + (peso * Porcentaje)).!

showTranscript
super showTranscript.
Transcript show:(peso printString).! !
!ArtFrio categoriesForMethods!
cargaArticulo!public! !
cargaDatos!public! !
peso!public! !
peso:!public! !
precio!public! !
showTranscript!public! !
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

