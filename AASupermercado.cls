"Filed out from Dolphin Smalltalk 7"!

Object subclass: #AASupermercado
	instanceVariableNames: 'colArticulos colClientes colDistribuidores colVentas'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
AASupermercado guid: (GUID fromString: '{BC0E356D-DFAF-45AD-ACCD-B469E2B68BE3}')!
AASupermercado comment: ''!
!AASupermercado categoriesForClass!Kernel-Objects! !
!AASupermercado methodsFor!

buscaArticulo
	| art cod valid|
	[art isNil] whileTrue: [
		cod := (Prompter prompt: 'Ingrese codigo del articulo') .
		valid := self validarNumber: cod.
		valid ifFalse:[self buscaArticulo ].
		valid ifTrue: [
		art := colArticulos detect: [:i | i id = cod asNumber asInteger ] ifNone: [
			MessageBox notify: 'Articulo no encontrado'.
			art:= nil.
		].
].
	].
^art!

buscaArticulo: cod
	| art |
	art := colArticulos detect: [:i | i id = cod asNumber asInteger]
				ifNone: 
					[MessageBox notify: 'Articulo no encontrado'.
					art := nil].
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
	ifNone: [
		MessageBox notify: 'Distribuidor no encontrado'. 
		dist:= nil.
	].
(dist isNil )ifFalse: [MessageBox notify: 'Distribuidor encontrado' ].
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
!

cargaCliente

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
aux descripcion: 'Atun   '.
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
aux descripcion: 'Yerba '.
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
aux id: 'pedroCouvier1'.
aux domicilio: 'Balcarce 21'.
colClientes add: aux.

"Pedro Picapiedra"
aux:=Cliente new.
aux nombre: 'Pedro Picapiedra'.
aux zona:'Fisherton'.
aux id: 'pedrito21'.
aux domicilio: 'Av. San Martin 12'.
colClientes add: aux.

"Martin Martinez"
aux:=Cliente new.
aux nombre: 'Martin Martinez'.
aux zona:'Uriquiza'.
aux id: 'martinmartin2'.
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

self cargarDatosPrueba.

"Hay que sacar esto del inicia despues lo pongo aca para ahorrame escribirlo en el workspace."
self mostrarColArticulos.
self mostrarColPersonas.!

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
			op = 4 ifTrue: [self mostrarVentaDistri ].
			].
			MessageBox notify: 'Hasta Luego'.!

mostrarColArticulos

Transcript show: 'ARTICULOS ______________________________'; cr.
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
Transcript show: 'id: ', '		Nombre: ', '		Zona: ', '		Domicilio: '; cr .
colClientes do: [
	:i | Transcript show:(i id printString),'	', (i nombre),'		', (i zona),'		',(i domicilio);cr.
].!

mostrarColVenta
Transcript show: '	';cr .
Transcript show: 'VENTAS __________________________________'; cr.

(colVentas isNil) ifFalse: [
colVentas do: [
	:i |	i showTranscript.].
].
(colVentas isNil) ifTrue: [
Transcript show: 'No hay ventas realizadas para este día'; cr.
]
!

mostrarVentaDistri
	"Recibe el id de un distribuidor y filtra colVentas para obtener una coleccion
con solo valores que le corresponden a ese distribuidor y llama al showTranscript
para mostrar en ventas."

	| aux aux2 aux3 valid idDist |
	Transcript clear.
	self mostrarColArticulos.
	aux2 := nil.
	aux2 = nil
		ifTrue: 
			[idDist := Prompter prompt: 'Ingrese id Distribuidor'.
			valid := self validarNumber: idDist.
			valid ifFalse: [self registrarVenta].
			valid ifTrue: [aux2 := self buscaDistri: idDist asNumber]].
	aux2 = nil
		ifFalse: 
			[aux3 := Date fromString: (Prompter prompt: 'ingrese fecha de 
	venta - DD/MM/AAAA').
			aux := colVentas
						select: [:i | i fecha shortString = aux3 shortString & (i distribuidor id = aux2 id)].
			aux do: [:i | i showTranscript]]!

registrarVenta
	"Inicio Venta"
	| cli dist venta art idCliente valid idDist compra codArt|
	venta := AAVenta new.
	venta inicio.
	venta fecha: Date today.
	"Busca el cliente"
	idCliente := Prompter prompt: 'Ingrese clave del Cliente'.
	cli := self buscaCli: idCliente.
	cli isNil
		ifTrue: 
			[| aux |
			MessageBox notify: 'Cliente no Encontrado. Procesada con la creacion de usuario.'.
			aux := Cliente new.
			aux cargaDatos: idCliente.
			colClientes add: aux]
		ifFalse: 
			[MessageBox notify: 'Cliente Encontrado. Comenzando venta.'.
			venta cliente: cli.	"Como encontro el cliente entonces se lo asigno a el auxiliar venta."

			"Necesito un distribuidor, no puede haber ventas sin distribuidor, uso un whileTrue para poner distribuidor."
			dist := nil.
			[dist isNil] whileTrue: 
					[idDist := Prompter prompt: 'Ingrese codigo del distribuidor'.
					valid := self validarNumber: idDist.
					valid ifFalse: [dist := nil ].
					valid ifTrue: [dist := self buscaDistri: idDist asNumber ]].


			"dist := self buscaDistri: (Prompter prompt: 'Ingrese codigo del distribuidor')."
			venta distribuidor: dist.
			compra:= true.
			"Ingresamos el codigo del articulo, validamos y buscamos pasando el codigo por parametro"
			[compra ] whileTrue: [
					codArt := (Prompter prompt: 'Ingrese codigo del articulo') .
					valid := self validarNumber: codArt.
					valid ifFalse:[compra:= MessageBox confirm: 'Quiere seguir comprando?' ].
					valid ifTrue: [
					art := self buscaArticulo:codArt.
					(art = nil)ifTrue: [compra := true ].
					(art = nil)ifFalse: [  
					venta asignaArt: art.
					compra:= MessageBox confirm: 'Quiere seguir comprando?'.].].
].
			"Si la coleccion esta vacia significa que no compro nada. Entonces no registro la venta."
			venta colArticulos notEmpty
				ifTrue: [ colVentas add: venta]
				ifFalse: [MessageBox notify: 'No compro nada. La venta no se va a registrar.']]!

validarNumber: codigo
[	
	codigo asNumber isKindOf: Integer.
	^true.
]on: InvalidFormat  do: [:e| MessageBox notify: 'El dato ingresado debe ser entero'.
	^false. ].! !
!AASupermercado categoriesFor: #buscaArticulo!public! !
!AASupermercado categoriesFor: #buscaArticulo:!public! !
!AASupermercado categoriesFor: #buscaCli:!public! !
!AASupermercado categoriesFor: #buscaDistri:!public! !
!AASupermercado categoriesFor: #cargaArticulos!public! !
!AASupermercado categoriesFor: #cargaCliente!public! !
!AASupermercado categoriesFor: #cargaDistribuidor!public! !
!AASupermercado categoriesFor: #cargarDatosPrueba!public! !
!AASupermercado categoriesFor: #inicia!public! !
!AASupermercado categoriesFor: #menu!public! !
!AASupermercado categoriesFor: #mostrarColArticulos!public! !
!AASupermercado categoriesFor: #mostrarColPersonas!public! !
!AASupermercado categoriesFor: #mostrarColVenta!public! !
!AASupermercado categoriesFor: #mostrarVentaDistri!public! !
!AASupermercado categoriesFor: #registrarVenta!public! !
!AASupermercado categoriesFor: #validarNumber:!public! !

