"Filed out from Dolphin Smalltalk"!

Object subclass: #Supermercado
	instanceVariableNames: 'colArticulos colClientes colDistribuidores colVentas'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Supermercado guid: (GUID fromString: '{bc0e356d-dfaf-45ad-accd-b469e2b68be3}')!
Supermercado comment: ''!
!Supermercado categoriesForClass!Kernel-Objects! !
!Supermercado methodsFor!

cargaArticulos
	| art op |
	"Inicio la coleccion solo si no esta inciada. Si esta iniciada este ifNil NO HACE NADA."
	(colArticulos)ifNil:[
		colArticulos:=OrderedCollection new.
	].
	op := 1.
	[op = 0] whileFalse: 
			[art := MessageBox confirm: 'Es un articulo frio?'.
			art ifFalse: [art := Articulo new] ifTrue: [art := ArtFrio new].
			art cargaDatos.
			colArticulos add: art.
			op := (Prompter prompt: '1_Cargar otro articulo 0_Salir') asNumber]!

cargaDistribuidor
|aux|
"Inicio la coleccion solo si no esta inciada. Si esta iniciada este ifNil NO HACE NADA."
(colDistribuidores )ifNil:[
	colDistribuidores :=OrderedCollection new.
].

aux :=Distribuidor new.
aux cargaDatos.
colDistribuidores add: aux.

MessageBox notify: 'Distribuidor Agregado.'

!

inicia
colVentas:= OrderedCollection new.!

menu
	| op |
	op := 1.
	[op = 0] whileFalse: 
			[op := (Prompter
						prompt: '1. Carga Articulo 2. Registrar Cliente 3.Registrar Venta 4.Listado Ventas 0.Salir')
							asNumber asInteger.
			op = 1 ifTrue: [self cargaArticulos].
			op = 2 ifTrue: [self registrarCliente].]
			"(op := 3) ifTrue: [self registrarVenta].
			op = 4 ifTrue: [self listadoVentas]]"!

mostrarColArticulos

Transcript clear.
Transcript show: 'id: ', '	Descripcion: ', '	Precio: ', '		Peso:'; cr .
colArticulos do: [
	:i | Transcript show:(i id printString),'	', (i descripcion),'		', (i precio printString),'		'.
	 (i isMemberOf: ArtFrio)ifTrue: [ Transcript show: (i peso printString). ] .
	Transcript cr.
].!

registrarCliente
|cli clave aux|
"Inicio la coleccion solo si no esta inciada. Si esta iniciada este ifNil NO HACE NADA."
(colClientes)ifNil:[
	colClientes:=OrderedCollection new.
].
clave:=(Prompter prompt: 'Ingrese su clave de usuario') asNumber asInteger.
aux := colClientes detect:[:i | i id = clave ] ifNone:[
	MessageBox notify:'Cliente no Encontrado. Se lo va a ingresar.'.
	aux:=nil.
].
aux isNil ifTrue:[
	cli:=Cliente new.
	cli cargaDatos.
	colClientes add: cli.
]ifFalse:[
	MessageBox notify:'Cliente Encontrado.'
]! !
!Supermercado categoriesForMethods!
cargaArticulos!public! !
cargaDistribuidor!public! !
inicia!public! !
menu!public! !
mostrarColArticulos!public! !
registrarCliente!public! !
!

