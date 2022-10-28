"Filed out from Dolphin Smalltalk"!

Object subclass: #Negocio
	instanceVariableNames: 'articulos'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Negocio guid: (GUID fromString: '{54523e07-2406-4cd3-bc10-9be98bb7a9a8}')!
Negocio comment: ''!
!Negocio categoriesForClass!Kernel-Objects! !
!Negocio methodsFor!

addArticulos
""
|aux|
aux := Nacional new.
aux inicializar.
aux id: (Prompter prompt: 'Ingresar ID: ' asNumber).
aux descripcion: (Prompter prompt: 'Ingresar Descripcion').
aux precioBasico: (Prompter prompt:'Ingresar PrecioBasico'). 
articulos add: aux.!

inicializar
""
articulos:= OrderedCollection new.
Nacional dto:10.
Importado precioDolar: 400.
!

listar
""
articulos do:  [:i | MessageBox notify:  'id' i id ].  ! !
!Negocio categoriesForMethods!
addArticulos!public! !
inicializar!public! !
listar!public! !
!

