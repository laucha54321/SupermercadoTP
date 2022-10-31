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

precio
Porcentaje:=0.4.
^(precio + (peso * Porcentaje)).! !
!ArtFrio categoriesFor: #cargaDatos!public! !
!ArtFrio categoriesFor: #peso!public! !
!ArtFrio categoriesFor: #peso:!public! !
!ArtFrio categoriesFor: #precio!public! !

