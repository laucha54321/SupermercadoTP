"Filed out from Dolphin Smalltalk"!

Object subclass: #AASupermercado
	instanceVariableNames: 'colArticulos colClientes colDistribuidores colVentas'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
AASupermercado guid: (GUID fromString: '{bc0e356d-dfaf-45ad-accd-b469e2b68be3}')!
AASupermercado comment: ''!
!AASupermercado categoriesForClass!Kernel-Objects! !
!AASupermercado methodsFor!

buscaArticulo
	| art cod |
	cod := (Prompter prompt: 'Ingrese codigo del articulo') asNumber.
	art := colArticulos detect: [:i | i id = cod] ifNone: [MessageBox notify: 'Articulo no encontrado'].
	^art!

buscaCli: cod
	| aux |
	aux := colClientes detect: [:i | i id = cod]
				ifNone: 
					[aux := nil].
	^aux!

buscaDistri: cod
	| dist |
	dist := colDistribuidores detect: [:i | i id = cod]
				ifNone: [MessageBox notify: 'Distribuidor no encontrado'].
	^dist!

cargaArticulos
	"Inicio la coleccion solo si no esta inciada. Si esta iniciada este ifNil NO HACE NADA."
	| art op |
	op := 1.
	[op = 0] whileFalse: 
			[art := MessageBox confirm: 'Es un articulo frio?'.
			art ifFalse: [art := AAArticulo new] ifTrue: [art := ArtFrio new].
			art cargaDatos.
			colArticulos add: art.
			op := (Prompter prompt: '1_Cargar otro articulo 0_Salir') asNumber
	
].
self menu.	!

cargaCliente
	"Inicio la coleccion solo si no esta inciada. Si esta iniciada este ifNil NO HACE NADA."
	| cli clave aux |
	clave := (Prompter prompt: 'Ingrese su clave de usuario').
	aux := self buscaCli: clave.
	aux isNil
		ifTrue: 
			[cli := Cliente new.
			cli cargaDatos: clave.
			colClientes add: cli]
		ifFalse: 
			[MessageBox notify: 'Cliente Encontrado.'.
			aux := self menu]!

cargaDistribuidor
|aux|
"Inicio la coleccion solo si no esta inciada. Si esta iniciada este ifNil NO HACE NADA."

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
aux id: AAArticulo generarId.
aux descripcion: 'Tomate'.
aux precio: 12.
aux peso: 2.
colArticulos add: aux.

"Atun"
aux:= ArtFrio new.
aux id: AAArticulo generarId.
aux descripcion: 'Atun'.
aux precio: 25.
aux peso: 1.
colArticulos add: aux.

"Helado"
aux:= ArtFrio new.
aux id: AAArticulo generarId.
aux descripcion: 'Helado'.
aux precio: 18.
aux peso: 3.
colArticulos add: aux.

"Bicicleta"
aux:= AAArticulo new.
aux id: AAArticulo generarId.
aux descripcion: 'Bicicleta'.
aux precio: 1800.
colArticulos add: aux.

"Heladera"
aux:= AAArticulo new.
aux id: AAArticulo generarId.
aux descripcion: 'Heladera'.
aux precio: 2500.
colArticulos add: aux.

"Yerba"
aux:= AAArticulo new.
aux id: AAArticulo generarId.
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
aux id: '1'.
aux domicilio: 'Balcarce 21'.
colClientes add: aux.

"Pedro Picapiedra"
aux:=Cliente new.
aux nombre: 'Pedro Picapiedra'.
aux zona:'Fisherton'.
aux id: '2'.
aux domicilio: 'Av. San Martin 12'.
colClientes add: aux.

"Martin Martinez"
aux:=Cliente new.
aux nombre: 'Martin Martinez'.
aux zona:'Uriquiza'.
aux id: '3'.
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
aux id: 1.
aux valorEntrega: 12.
colDistribuidores add: aux.

"Marta Tarta"
aux:=Distribuidor new.
aux nombre: 'Marta Tarta'.
aux zona:'Centro 1'.
aux id: 2.
aux valorEntrega: 15.
colDistribuidores add: aux.
"
Ventas_____________________________________________________________
(colVentas)ifNil:[
	colVentas:=OrderedCollection new.
]."

!

inicia

AAArticulo inicio.
ArtFrio porcentajeAsignar.

colArticulos := OrderedCollection new.
colDistribuidores :=OrderedCollection new.
colClientes := OrderedCollection new.
colVentas:= OrderedCollection new.

self cargarDatosPrueba.!

listadoVentas
	| fecha distruiduidor ventas |
	distruiduidor := Prompter prompt: 'Ingrese nombre del distribuidor'.
	fecha := (Prompter prompt: 'Ingrese fecha') asDate.
	ventas := colVentas select: [:i | i oFecha = fecha and: [i oDistribuidor = distruiduidor]].
	ventas do: 
			[:i |
			Transcript show: i oFecha , '	' , i oDistribuidor , '		' , i nombre , '		' , i domicilio.
			(i isMemberOf: ArtFrio) ifTrue: [Transcript show: i peso printString].
			Transcript cr]!

menu
	| op |
	op := 1.
	[op = 0] whileFalse: 
			[op := (Prompter
						prompt: '1. Carga Articulo 2. Registrar Cliente 3.Registrar Venta 4.Listado Ventas 0.Salir')
							asNumber asInteger.
			op = 1 ifTrue: [self cargaArticulos].
			op = 2 ifTrue: [self cargaCliente].
			op = 3 ifTrue: [self registrarVenta].
			op = 4 ifTrue: [self listadoVentas].
			].
			MessageBox notify: 'Hasta Luego'.!

mostrarColArticulos

Transcript show: 'id: ', '	Descripcion: ', '	Precio: ', '		Peso:'; cr .
colArticulos do: [
	:i | i showTranscript. Transcript cr. 
].!

mostrarColPersonas

Transcript show: 'DISTRIBUIDORES ______________________________'; cr.
Transcript show: 'id: ', '	Nombre: ', '		Zona: ', '		Valor Entrega:'; cr .
colDistribuidores do: [
	:i |Transcript show:(i id printString),'	', (i nombre),'		', (i zona),'		',(i valorEntrega printString );cr.
].
Transcript show: '	';cr .
Transcript show: 'CLIENTES __________________________________'; cr.
Transcript show: 'id: ', '	Nombre: ', '		Zona: ', '		Domicilio: '; cr .
colClientes do: [
	:i | Transcript show:(i id printString),'	', (i nombre),'		', (i zona),'		',(i domicilio);cr.
].!

mostrarColVenta

Transcript show: '	';cr .
Transcript show: 'Ventas __________________________________'; cr.
Transcript show: 'Cliente: ', '	Distribuidor: ', '		Fecha: ','		PrecioTotal: '; cr .
colVentas do: [
	:i | Transcript show:((i cliente)nombre),'		',(i distribuidor)nombre,'	', (i calculaPrecio)printString ;cr.
	Transcript show: 'Articulos: ';cr.
	(i colArticulos) do: [ :e |Transcript  show: (e id printString),'	',(e descripcion),'	', (e precio printString);cr. ].
].!

registrarVenta
	|cli dist venta art fecha1|
	cli := self buscaCli: (Prompter prompt: 'Ingrese clave del Cliente').
	(cli isNil)ifTrue:[
		MessageBox notify: 'Cliente no Encontrado. Se lo va a ingresar.'.
	]
	ifFalse:[
	dist := self buscaDistri: (Prompter prompt: 'Ingrese codigo del distribuidor') asNumber.
	venta := AAVenta new.
	venta inicio.
	fecha1:=Date fromString: (Prompter prompt: 'DD/MM/AAAA').
	[MessageBox confirm: 'Quiere seguir comprando?' ]whileTrue:[
	art := self buscaArticulo.
	venta
		cargaDatos: cli and: dist and: fecha1;
		asignaArt: art.
	].
	colVentas add: venta.
	]! !
!AASupermercado categoriesForMethods!
buscaArticulo!public! !
buscaCli:!public! !
buscaDistri:!public! !
cargaArticulos!public! !
cargaCliente!public! !
cargaDistribuidor!public! !
cargarDatosPrueba!public! !
inicia!public! !
listadoVentas!public! !
menu!public! !
mostrarColArticulos!public! !
mostrarColPersonas!public! !
mostrarColVenta!public! !
registrarVenta!public! !
!

