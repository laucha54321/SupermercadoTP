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

agreagarArticulo
|aux|
aux := Articulo new.
aux id: (Articulo generarId).
aux descripcion: (Prompter prompt: 'Ingrese descripcion del Articulo').
aux precio:(Prompter prompt: 'Ingrese Precio del Articulo')asNumber asFloat.
colArticulos add: aux!

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

cargaCliente
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
]!

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

cargarDatosPrueba
|aux|
"Articulos___________________________________________________"
(colArticulos)ifNil:[
	colArticulos:=OrderedCollection new.
].
"Tomate"
aux:= ArtFrio new.
aux id: Articulo generarId.
aux descripcion: 'Tomate'.
aux precio: 12.
aux peso: 2.
colArticulos add: aux.

"Atun"
aux:= ArtFrio new.
aux id: Articulo generarId.
aux descripcion: 'Atun'.
aux precio: 25.
aux peso: 1.
colArticulos add: aux.

"Helado"
aux:= ArtFrio new.
aux id: Articulo generarId.
aux descripcion: 'Helado'.
aux precio: 18.
aux peso: 3.
colArticulos add: aux.

"Bicicleta"
aux:= Articulo new.
aux id: Articulo generarId.
aux descripcion: 'Bicicleta'.
aux precio: 1800.
colArticulos add: aux.

"Heladera"
aux:= Articulo new.
aux id: Articulo generarId.
aux descripcion: 'Heladera'.
aux precio: 2500.
colArticulos add: aux.

"Yerba"
aux:= Articulo new.
aux id: Articulo generarId.
aux descripcion: 'Yerba'.
aux precio: 18.
colArticulos add: aux.



"Clientes ___________________________________________________________"
(colClientes )ifNil:[
	colClientes :=OrderedCollection new.
].
"Pedro Couvier"
aux:=Cliente new.
aux nombre: 'Pedro Couvier'.
aux zona:'Centro 1'.
aux id: Cliente generarId.
aux domicilio: 'Balcarce 21'.
colClientes add: aux.

"Pedro Picapiedra"
aux:=Cliente new.
aux nombre: 'Pedro Picapiedra'.
aux zona:'Fisherton'.
aux id: Cliente generarId.
aux domicilio: 'Av. San Martin 12'.
colClientes add: aux.

"Martin Martinez"
aux:=Cliente new.
aux nombre: 'Martin Martinez'.
aux zona:'Uriquiza'.
aux id: Cliente generarId.
aux domicilio: 'Mitre 201'.
colClientes add: aux.




"Distribuidores _____________________________________________________"
(colDistribuidores)ifNil:[
	colDistribuidores :=OrderedCollection new.
].

"Pedro Perez"
aux:=Distribuidor new.
aux nombre: 'Pedro Perez'.
aux zona:'Uriquiza'.
aux id: Distribuidor generarId.
aux valorEntrega: 12.
colDistribuidores add: aux.

"Marta Tarta"
aux:=Distribuidor new.
aux nombre: 'Marta Tarta'.
aux zona:'Centro 1'.
aux id: Distribuidor generarId.
aux valorEntrega: 15.
colDistribuidores add: aux.
"
Ventas_____________________________________________________________
(colVentas)ifNil:[
	colVentas:=OrderedCollection new.
]."

!

inicia
colVentas:= OrderedCollection new.!

iniciarColeccionArticulos
colArticulos:= OrderedCollection new.
!

menu
	| op |
	op := 1.
	[op = 0] whileFalse: 
			[op := (Prompter
						prompt: '1. Carga Articulo 2. Registrar Cliente 3.Registrar Venta 4.Listado Ventas 0.Salir')
							asNumber asInteger.
			op = 1 ifTrue: [self cargaArticulos].
			op = 2 ifTrue: [self cargaCliente].]
			"(op := 3) ifTrue: [self registrarVenta].
			op = 4 ifTrue: [self listadoVentas]]"!

mostrarColecciones

Transcript show: 'Articulos _________________________________________________________________________________'; cr.
Transcript show: 'id: ', '	Descripcion: ', '	Precio: ', '		Peso:'; cr .
colArticulos do: [
	:i | Transcript show:(i id printString),'	', (i descripcion),'		', (i precio printString),'		'.
	 (i isMemberOf: ArtFrio)ifTrue: [ Transcript show: (i peso printString). ] ifFalse:[Transcript show: '-'].
	Transcript cr.
].
Transcript show: '	';cr .

"__________________________________________________________________________________________________________________________"
Transcript show: 'DISTRIBUIDORES _________________________________________________________________________________'; cr.
Transcript show: 'id: ', '	Nombre: ', '		Zona: ', '		Valor Entrega:'; cr .
colDistribuidores do: [
	:i |Transcript show:(i id printString),'	', (i nombre),'		', (i zona),'		',((i valorEntrega)printString);cr.
].
Transcript show: '	';cr .

"__________________________________________________________________________________________________________________________"
Transcript show: 'CLIENTES _________________________________________________________________________________'; cr.
Transcript show: 'id: ', '	Nombre: ', '		Zona: ', '		Domicilio: '; cr .
colClientes do: [
	:i | Transcript show:(i id printString),'	', (i nombre),'		', (i zona),'		',(i domicilio); cr.
].
!

registrarCliente
|cli clave aux|
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
agreagarArticulo!public! !
cargaArticulos!public! !
cargaCliente!public! !
cargaDistribuidor!public! !
cargarDatosPrueba!public! !
inicia!public! !
iniciarColeccionArticulos!public! !
menu!public! !
mostrarColecciones!public! !
registrarCliente!public! !
!

