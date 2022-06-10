# NEAR Certified AURORA Developer (NCAD)

El objetivo del proyecto es desplegar un *Smart Contract* desarrollado en solidity en la red *AURORA*. 

Durante el mismo se expusieron los beneficios de utilizar Aurora como un Layer2 para Ethereum. En especial el de poder reutilizar los desarrollos existentes en solidity, aprovechando los bajos costes , escalabilidad y performance brindados por NEAR.

## Entregables
 - crear un Smart Contract en Solidity, que este funcional en la testnet.
    - Estructura de DAtos
    - Requires
    - Variables Especiales
    - Functions (address, msg, transfer, balance)
 - documentar el proceso durante el mismo en un repositorio GitHub. 
    - explicando la funcionalidad del proyecto
    - documentacion para poder reproducir el proyecto
 - realizar la demo day

@ver https://ow-academy.notion.site/Bienvenidos-5e25b318da85432fa63cd0798bbfbabf 

## Keywords
- Aurora Blockchain, Solidity, NEAR, Terminal, Git, Github, Unix, Remix.

# Instalacion
- ingresar a https://remix.ethereum.org/
- instalar el plugin dgit (https://medium.com/remix-ide/github-in-remix-ide-356de378f7da)
- realizar el checkout del proyecto https://github.com/mariogarcia-ar/ncad
- compilar el contrato 10_TcoCompra.sol
- conectar metamask con la cuenta de Aurora
- como vendedor desplegar el contrato en aurora (validar que estamos usando el enviroment: injected web3) con un precio
- como comprador realizar la compra, su confirmacion
- como vendedor solicitar el pago 

 
[![TCO Contrato Tutorial](https://cdn.loom.com/sessions/thumbnails/77a933dc5619483d87b50d19139cd4c6-00001.mp4#t=0.1)](https://www.loom.com/share/77a933dc5619483d87b50d19139cd4c6)


# Clases
## Día 0: Recursos para antes de comenzar

### Aurora
Aurora es una máquina virtual de Ethereum creada por el equipo de NEAR Protocol, que ofrece una solución llave en mano para que los desarrolladores operen sus aplicaciones en una plataforma compatible con Ethereum, de alto rendimiento, escalable y segura para el futuro, con bajos costos de transacción para sus usuarios

Nota: se puede ver el estado actual de la red en https://api.aurora.dev/ 

### Metamask
La interacción de los usuarios con las dApps de blockchains como las de Ethereum, Aurora, etc requieren de un puente, y eso precisamente es lo que hace MetaMask. MetaMask es una extensión o plugin para navegadores web que permite a los usuarios interactuar fácilmente con las dApps de la blockchain de Ethereum. Esto es posible, porque MetaMask hace de puente entre las dApps y los navegadores web facilitando el uso y disfrute de las mismas.

### Aurora / Metamask
Podemos instalar ... 
 - **mainnet**: La red principal es responsable de ejecutar transacciones reales dentro de la red y almacenarlas en la cadena de bloques para uso público.
    - Nombre de red:red principal aurora
    - Nueva URL de RPC: https://mainnet.aurora.dev
    - CadenaID: 1313161554
    - Símbolo: AETH
    - URL del explorador de bloques: https://explorer.mainnet.aurora.dev/
 - **testnet**: La red de prueba proporciona un entorno alternativo que imita la funcionalidad de la red principal para permitir a los desarrolladores crear y probar proyectos sin necesidad de facilitar transacciones en vivo o el uso de criptomonedas, por ejemplo.
    - Network Name: Aurora Testnet
    - New RPC URL: https://testnet.aurora.dev/
    - Chain ID: 1313161555
    - Currency Symbol: ETH

### Fonder Aurora
Se pueden solicitar ETH en el Faucet de Aurora en la url https://aurora.dev/faucet . En donde hay que conectar metamask y y solicitar los 0.0005 ETH.



## Día 1:Introducción a la red AURORA y al desarrollo de contratos inteligentes en  Solidity

### Solidity
Solidity es un lenguaje de alto nivel orientado a Smart Contracts. Su sintaxis es similar a la de JavaScript y está enfocado específicamente a la Máquina Virtual de Ethereum (EVM).

### OpenZeppelin 
El proyecto OpenZeppelin ofrece un entorno de desarrollo y un conjunto de herramientas que tienen como objetivo dotar de la mayor seguridad a las aplicaciones descentralizadas desarrolladas en el ecosistema Ethereum con Solidity.

Nos ofrecen contratos para implementar NFT y FT, de una manera simple y sencilla.

## Día 2: Interacción con Contratos Inteligentes en Remix

### Remix 
Remix es un entorno integrado de desarrollo (IDE) basado en un navegador que integra un compilador y un entorno en tiempo de ejecución para Solidity sin los componentes orientados al servidor.

Allí vamos a poder desarrollar y poner a prueba nuestros Smart Contracts de la forma más real posible. Incluso tendremos a nuestra disposición address ficticias cargadas con gas para poder así simular transacciones antes de llevar nuestro código a la aplicación. 
 
[![Remix Tutorial](https://cdn.loom.com/sessions/thumbnails/efb2b2fb3114441ea30d28c528c86fca-00001.mp4#t=0.1)](https://www.loom.com/share/efb2b2fb3114441ea30d28c528c86fca)


## Día 3: Despliegue de un Contrato Inteligente en Aurora con Remix

### Ventajas Aurora vs Ethereum
Aurora es una solución que permite ejecutar contratos de Ethereum en un entorno de mayor rendimiento: NEAR blockchain, una cadena de bloques moderna de capa 1 que es rápida (finalización de transacciones de 2 a 3 segundos), escalable y neutral en carbono. Aurora es una máquina virtual Ethereum (EVM) implementada como un contrato inteligente en el protocolo NEAR. Ayuda a escalar el ecosistema Ethereum para que los desarrolladores operen sus aplicaciones en una plataforma compatible con Ethereum, de alto rendimiento, escalable y segura para el futuro, con bajos costos de transacción para sus usuarios.

- Tiempo de ejecución por transacción
    - 2 sec Transaction finality
    - $0.02 Transaction cost

Agregamos Aurora en  metamask 
[![Remix Tutorial](https://cdn.loom.com/sessions/thumbnails/b14f474bf2814c3dbb51ce8318a2c850-00001.mp4#t=0.1)](https://www.loom.com/share/b14f474bf2814c3dbb51ce8318a2c850)

 

## Día 4: Rainbow Bridge y Conocimientos Avanzados en Solidity

### Rainbow Bridge
El Rainbow Bridge de NEAR es único en la criptografía como el puente que permitirme el transferir tokens sin permisos y sin confianza entre Ethereum y NEAR. Entre otras.





## Día 5: Demo Day 
Video explicando el funcionamiento.
