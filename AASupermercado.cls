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
	| art cod |
	cod := (Prompter prompt: 'Ingrese codigo del articulo') asNumber.
	art := colArticulos detect: [:i | i id = cod] ifNone: [MessageBox notify: 'Articulo no encontrado'].
	^art!

buscaCli: cod
	| aux |
	aux := colClientes detect: [:i | i id = cod]
				ifNone: 
					[MessageBox notify: 'Cliente no Encontrado. Se lo va a ingresar.'.
					aux := nil].
	^aux!

buscaDistri: cod
	| dist |
	dist := colDistribuidores detect: [:i | i id = cod]
				ifNone: [MessageBox notify: 'Distribuidor no encontrado'].
	^dist!

cargaArticulos
	"Inicio la coleccion solo si no esta inciada. Si esta iniciada este ifNil NO HACE NADA."
	| art op |
	colArticulos ifNil: [colArticulos := OrderedCollection new].
	op := 1.
	[op = 0] whileFalse: 
			[art := MessageBox confirm: 'Es un articulo frio?'.
			art ifFalse: [art := AAArticulo new] ifTrue: [art := ArtFrio new].
			art cargaDatos.
			colArticulos add: art.
			op := (Prompter prompt: '1_Cargar otro articulo 0_Salir') asNumber]!

cargaCliente
	"Inicio la coleccion solo si no esta inciada. Si esta iniciada este ifNil NO HACE NADA."
	| cli clave aux |
	colClientes ifNil: [colClientes := OrderedCollection new].
	clave := (Prompter prompt: 'Ingrese su clave de usuario') asNumber asInteger.
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



"Clientes ___________________________________________________________"
(colClientes )ifNil:[
	colClientes =OrderedCollection new.
].


"Distribuidores _____________________________________________________"
(colDistribuidores)ifNil:[
	colDistribuidores =OrderedCollection new.
].


"Ventas_____________________________________________________________"
(colVentas)ifNil:[
	colVentas:=OrderedCollection new.
].

!

inicia
colVentas:= OrderedCollection new.!

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
			(op := 3) ifTrue: [self registrarVenta].
			op = 4 ifTrue: [self listadoVentas]]!

mostrarColArticulos

Transcript clear.
Transcript show: 'id: ', '	Descripcion: ', '	Precio: ', '		Peso:'; cr .
colArticulos do: [
	:i | Transcript show:(i id printString),'	', (i descripcion),'		', (i precio printString),'		'.
	 (i isMemberOf: ArtFrio)ifTrue: [ Transcript show: (i peso printString). ] .
	Transcript cr.
].!

mostrarColPersonas

Transcript clear.
Transcript show: 'DISTRIBUIDORES ______________________________'; cr.
Transcript show: 'id: ', '	Nombre: ', '		Zona: ', '		Valor Entrega:'; cr .
colDistribuidores do: [
	:i |Transcript show:(i id printString),'	', (i nombre),'		', (i zona),'		',(i valorEntrega).
].
Transcript show: '	';cr .
Transcript show: 'CLIENTES __________________________________'; cr.
Transcript show: 'id: ', '	Nombre: ', '		Zona: ', '		Domicilio: '; cr .
colClientes do: [
	:i | Transcript show:(i id printString),'	', (i nombre),'		', (i zona),'		',(i domicilio).
].!

registrarVenta
	| aux aux2 cli dist venta art |
	aux := (Prompter prompt: 'Ingrese clave del Cliente') asNumber.
	aux2 := (Prompter prompt: 'Ingrese codigo del distribuidor') asNumber.
	cli := self buscaCli: aux.
	dist := self buscaDistri: aux2.
	art := self buscaArticulo.
	venta := AAVenta new.
	venta
		cargaDatos: cli and: dist;
		asignaArt: art! !
!AASupermercado categoriesFor: #buscaArticulo!public! !
!AASupermercado categoriesFor: #buscaCli:!public! !
!AASupermercado categoriesFor: #buscaDistri:!public! !
!AASupermercado categoriesFor: #cargaArticulos!public! !
!AASupermercado categoriesFor: #cargaCliente!public! !
!AASupermercado categoriesFor: #cargaDistribuidor!public! !
!AASupermercado categoriesFor: #cargarDatosPrueba!public! !
!AASupermercado categoriesFor: #inicia!public! !
!AASupermercado categoriesFor: #listadoVentas!public! !
!AASupermercado categoriesFor: #menu!public! !
!AASupermercado categoriesFor: #mostrarColArticulos!public! !
!AASupermercado categoriesFor: #mostrarColPersonas!public! !
!AASupermercado categoriesFor: #registrarVenta!public! !

