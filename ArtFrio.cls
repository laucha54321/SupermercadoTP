"Filed out from Dolphin Smalltalk 7"!

AAArticulo subclass: #ArtFrio
	instanceVariableNames: 'peso'
	classVariableNames: 'Porcentaje'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ArtFrio guid: (GUID fromString: '{6B9A1EB6-EF3A-424B-A4ED-A05DE3B2544D}')!
ArtFrio comment: ''!
!ArtFrio categoriesForClass!Kernel-Objects! !
!ArtFrio methodsFor!

cargaDatos
super cargaDatos.
peso:=(Prompter prompt: 'Ingrese el Peso: ') asNumber asFloat.!

peso
	^peso!

peso: anObject
	peso := anObject!

porcentajeAsignar
Porcentaje:=0.4.!

precio

^(precio + (peso * Porcentaje)).!

showTranscript
super showTranscript.
Transcript show:(peso printString).! !
!ArtFrio categoriesFor: #cargaDatos!public! !
!ArtFrio categoriesFor: #peso!public! !
!ArtFrio categoriesFor: #peso:!public! !
!ArtFrio categoriesFor: #porcentajeAsignar!public! !
!ArtFrio categoriesFor: #precio!public! !
!ArtFrio categoriesFor: #showTranscript!public! !

!ArtFrio class methodsFor!

porcentaje
	^Porcentaje!

porcentajeAsignar
Porcentaje:=0.4.! !
!ArtFrio class categoriesFor: #porcentaje!public! !
!ArtFrio class categoriesFor: #porcentajeAsignar!public! !

