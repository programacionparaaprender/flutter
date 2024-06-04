
# Sección 1: Introducción

## 1. Introducción

## 2. ¿Cómo funcionará el curso?

## 3. Antes de realizar preguntas en el curso

## 4. Instalaciones iniciales - Editor de código y descargas
>- https://gist.github.com/Klerith/67058c9ad01e32214901fab5f664ec4f

# Sección 2: Introducción a Dart

## 5. Introducción a la sección

## 6. Temas puntuales de la sección
>- Temas puntuales de la sección
>- En esta sección tocaremos temas sobre:
>- ¿Por qué Dart?
>- Nuestro "Hola Mundo" en Dart
>- Tipado de datos en Dart
>- Listas
>- Mapas
>- Funciones
>- Clases
>- Mixins
>- Constructores
>- Getters
>- Setters
>- Extender una clase
>- Futures
>- Async
>- Await
>- Entre otras cosas más...
>- Hay otros temas que son necesarios saber sobre dart, pero los mismos serán expuestos antes de las clases donde sean necesarios para tener el conocimiento fresco antes de usarlo.

## 7. ¿Por qué Dart?
>- AOT (Ahead Of Time): Compilado a un rápido y predecible código nativo. (Totalmente personalizable)
>- Puede ser JIT (Just In Time): Compilado para una velocidad excepcional de desarrollo. (Esto incluye el popular Hot Reload).
>- Hace fácil la creación de animaciones y transiciones que corren a 60fps (frames per second).
>- Al ser compilado a código nativo, no hay puentes innecesarios para correr el código.
>- Dart le permite a Flutter evitar el desarrollo de diseños en archivos independientes como JSX, XML o bien interfaces separadas.

## 8. Hola Mundo
>- https://dartpad.dartlang.org/
>- https://dartpad.dev/
<p>
void main() {
  print('Hola mundo');
  var nombre = 'Fernando';
  print('nombre ${nombre}');
  for (int i = 0; i < 10; i++) {
    print('hello ${i + 1}');
  }
}
</p>

## 9. Tipos de daots - Números y Strings
<p>
void main() {
  int empleados = 10;
  double pi = 3.141592;
  double numero = 1.0;
  print('${empleados} - ${pi} - ${numero}');
  var nombre = 'Fern\'ando';
  print("${nombre}");
  print('${nombre[0]}');
  print('${nombre[nombre.length-1]}');
}
</p>

## 10. Tipo de dato - Booleanos y condiciones
<p>
void main() {
  bool activado = true;
  if(activado){
    print('esta encendido.');
  }else{
    print('esta apagado.');
  }
}

</p>

## 11. Tipo de dato - Lista
>- https://github.com/Klerith/dart-basics/blob/master/04-listas.dart
<p>
void main() {
  List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  numeros.add(11);
  print(numeros);
  numeros[0] = 20;
  print(numeros);

  List numeros2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  numeros2.add('Hola mundo');
  print(numeros2);

  final masNumeros = List.generate(100, (int index) => index);

  print(masNumeros);
}

</p>

## 12. Tipo de dato - Map
>- https://github.com/Klerith/dart-basics/blob/master/05-map.dart
<p>
void main() {
  Map<String, dynamic> persona = {
    'nombre':'Carlos',
    'edad': 32,
    'soltero':true
  };
  print(persona['nombre']);
  print(persona['edad']);

  Map<int, String> personas = {
    1:'Tony',
    2: 'Peter',
    3: 'Strange'
  };
  personas.addAll({4:'Banner'});
  print(personas);
}

</p>

## 13. Funciones en Dart
>- https://github.com/Klerith/dart-basics/blob/master/06-funciones.dart
<p>
void main() {
  final nombre = 'Fernando';
  saludar( nombre, 'Greetings1' );
  saludar2( nombre: nombre, mensaje: 'Greetings2' );
  print(saludar3( nombre, 'Greetings3' ));
  saludar4( nombre, 'Greetings4' );
}
void saludar( String nombre, [ String mensaje = 'Hi' ]) {
  print('$mensaje $nombre');
}
String saludar3(texto, nombre) => '${texto} ${nombre}';
void saludar2({ 
  required String nombre, 
  required String mensaje,
 }) {
  print('$mensaje $nombre');
}
void saludar4(texto, nombre){
  print('${texto} ${nombre}');
}
</p>

## 14. Clases en Dart
>- https://github.com/Klerith/dart-basics/blob/master/07-clase-basica.dart
<p>
void main(){
  final wolverine = new Heroe(nombre:'Logan', poder: 'Regeneración');
//   wolverine.nombre = 'Logan';
//   wolverine.poder = 'Regeneración';
  print( wolverine );
}
class Heroe {
  String nombre;
  String poder;
  Heroe({ 
    required this.nombre, 
    required this.poder 
  });
//   Heroe( String pNombre ) {
//     this.nombre = pNombre;
//   }
  String toString() {
    return 'Heroe: nombre: ${this.nombre}, poder: ${ this.poder }';
  }
}
</p>

## 15. Forma corta de definir propiedades de las clases
>- https://dartpad.dartlang.org/
>- https://dartpad.dev/
<p>
void main() {
  final hero = new Heroe('Flash', 'Velocidad');
  print('heroe: ${hero.nombre}');
}
class Heroe{
  String nombre;
  String poder;
  Heroe(this.nombre, this.poder);
  String toString() => 'nombre: ${nombre} - poder ${poder}';
}
</p>

## 16. Constructores con nombre
>- https://dartpad.dartlang.org/
>- https://dartpad.dev/
>- https://github.com/Klerith/dart-basics/blob/master/08-named-constructor.dart
<p>
import 'dart:convert';
void main() {
  final rawJson = {
    'nombre': 'Tony Stark',
    'poder': 'Dinero'
  };
  final ironman = Heroe.fromJson( rawJson );
  print(ironman);
}
class Heroe{
  String nombre;
  String poder;
  Heroe({ 
    required this.nombre, 
    required this.poder 
  });
  Heroe.fromJson( Map<String, String> json  ):
    this.nombre = json['nombre']!,
    this.poder  = json['poder'] ?? 'No tiene poder';
  String toString() => 'nombre: ${nombre} - poder ${poder}';
}
</p>

## 17. Getters y Setters
>- https://dartpad.dartlang.org/
>- https://dartpad.dev/
>- https://github.com/Klerith/dart-basics/blob/master/09-getters-setters.dart
<p>
import 'dart:math' as math;
void main() {
  final cuadrado = new Cuadrado( 2 );
  cuadrado.area = 100;
  print( 'area: ${ cuadrado.calculaArea() }' );
  print( 'lado: ${ cuadrado.lado }' );
  print( 'area get: ${ cuadrado.area }' );
}
class Cuadrado {
  double lado;  // lado * lado
  double get area {
    return this.lado * this.lado;
  }
  set area( double valor ) {
    this.lado = math.sqrt(valor);
  }
  Cuadrado( double lado ):
    this.lado = lado;
  double calculaArea() {
    return this.lado * this.lado;
  }
}
</p>

## 18. Clases abstractas
>- https://dartpad.dartlang.org/
>- https://dartpad.dev/
>- https://github.com/Klerith/dart-basics/blob/master/07-clase-basica.dart
>- https://github.com/Klerith/dart-basics/blob/master/10-clases-abstractas.dart
<p>
void main() {
  final perro = new Perro();
  final gato = new Gato();
  sonidoAnimal( perro );
  sonidoAnimal( gato );
}
void sonidoAnimal( Animal animal ) {
  animal.emitirSonido();
}
abstract class Animal {
  int? patas;
  void emitirSonido();
}
class Perro implements Animal {
  int? patas;
  void emitirSonido() => print('Guauuuuuuuu');
}
class Gato implements Animal {
  int? patas;
  int? cola;
  void emitirSonido() => print('Miauuuuuuuu');
}
</p>

## 19. Extends
>- https://dartpad.dartlang.org/
>- https://dartpad.dev/
>- https://github.com/Klerith/dart-basics/blob/master/11-extends.dart
<p>
void main() {
  final superman = new Heroe('Clark Kent');
  final luthor   = new Villano('Lex Luthor'); 
  print( superman );
  print( luthor );
}
abstract class Personaje {
  String? poder;
  String nombre;
  Personaje( this.nombre );
  @override
  String toString() {
    return '$nombre - $poder';
  } 
}
class Heroe extends Personaje {
   int valentia = 100;
   Heroe( String nombre ): super( nombre ); 
}
class Villano extends Personaje {
  int maldad = 50; 
  Villano( String nombre ): super( nombre );
}
</p>

## 20. Mixins
>- https://dartpad.dartlang.org/
>- https://dartpad.dev/
>- https://medium.com/flutter-community/dart-what-are-mixins-3a72344011f3
>- https://github.com/Klerith/dart-basics/blob/master/12-mixins.dart
<p>
abstract class Animal { }
abstract class Mamifero extends Animal { }
abstract class Ave extends Animal { }
abstract class Pez extends Animal { }
abstract class Volador {
  void volar() => print('estoy volando');
}
abstract class Caminante {
  void caminar() => print('estoy caminando');
}
abstract class Nadador {
  void nadar() => print('estoy nadando');
}
class Delfin extends Mamifero with Nadador{}
class Murcielago extends Mamifero with Caminante, Volador {}
class Gato extends Mamifero with Caminante {}
class Paloma extends Ave with Caminante, Volador {}
class Pato extends Ave with Caminante, Volador, Nadador {}
class Tiburon extends Pez with Nadador {}
class PezVolador extends Pez with Nadador, Volador {}
void main() {
  final flipper = new Delfin();
  flipper.nadar();
//   final batman = new Murcielago();
//   batman.caminar();
//   batman.volar();
}
</p>

## 21. Futures
>- https://dartpad.dartlang.org/
>- https://dartpad.dev/
>- https://github.com/Klerith/dart-basics/blob/master/13-futures.dart
<p>
void main() {
  print('Antes de la petición');
  httpGet('https://api.nasa.com/aliens')
     .then( (data) {
       print( data.toUpperCase() );
     });
  print('Fin del programa');   
}
Future<String> httpGet( String url ) {
  return Future.delayed( 
    Duration( seconds: 3 ), () =>'Hola Mundo - 3 segundos' 
  );
}
</p>

## 22. Async - Await
>- https://dartpad.dartlang.org/
>- https://dartpad.dev/
>- https://github.com/Klerith/dart-basics/blob/master/14-async-await.dart
<p>
void main() async {
  print('Antes de la petición');
  final data = await httpGet('https://api.nasa.com/aliens');
  print( data );
  print('Fin del programa'); 
}
Future<String> getNombre( String id ) async {
  return '$id - Fernando';
} 
Future<String> httpGet( String url ) {
  return Future.delayed( 
    Duration( seconds: 3 ), () =>'Hola Mundo - 3 segundos' 
  );
}
</p>

## Cuestionario 1: Examen introductorio a Dart

## 23. Código fuente de la sección
>- https://dartpad.dartlang.org/
>- https://dartpad.dev/


# Sección 3: Instalación de Flutter, equipos virtuales y equipos físicos

## 24. Introducción a la sección
>- https://dartpad.dartlang.org/
>- https://dartpad.dev/

## 25. Temas puntuales de la sección

## 26. Instalaciones en Windows
>- https://dartpad.dartlang.org/
>- https://dartpad.dev/
>- https://flutter.dev/

## 27. Creación de un Android Virtual - Windows
>- https://docs.flutter.dev/get-started/install/windows/mobile#configure-android-development

### 28. Crear proyectos desde Visual Studio Code - Windows
>- extensión fluter de vscode: Flutter

### 29. Nota: Si no te interesa la instalación de OSX

### 30. Instalaciones en OSX
>- https://flutter.dev/
>- https://git-scm.com/download/mac

### 31. Configurar XCode y lanzar nuestro proyecto en IPhone Simulador

### 32. Android Studio y simulador de Android
>- https://docs.flutter.dev/get-started/install/macos/mobile-android#configure-android-development
>- https://developer.android.com/studio?hl=es-419

### 33. Windows y OSX - Correr aplicación en dispositivo físico - Android

### 34. OSX - Correr aplicación directamente en un iPhone

## Sección 4: Introducción a Flutter

### 35. Introducción a la sección

# cuestionario
>- https://pub.dev/packages/rxdart
>- https://docs.flutter.dev/cookbook/networking/fetch-data

# tiktok
>- https://www.tiktok.com/@programacionparaaprender/video/6927027560132005125

https://gist.github.com/Klerith/67058c9ad01e32214901fab5f664ec4f
https://dartpad.dartlang.org/
https://flutter.dev/docs/get-started/install/windows
https://www.udemy.com/course/flutter-primeros-pasos/learn/lecture/16815878#overview
https://plugins.jetbrains.com/search?products=androidstudio&search=flutter
https://stackoverflow.com/questions/59464169/plugins-inside-android-studio-marketplace-not-showing-when-browsing
https://stackoverflow.com/questions/49280884/how-to-set-up-devices-for-vs-code-for-a-flutter-emulator
https://github.com/flutter/flutter/issues/57017
https://codelabs.developers.google.com/codelabs/google-maps-in-flutter#4


ctrol-Shift-P
flutter new project
se coloca el nombre
se selecciona la carpeta y listo

In order to run your application, type:
  $ cd .
  $ flutter run
Your application code is in .\lib\main.dart.

ctrol-Shift-P
flutter launch emulator
seleccionas el dispositivo android que emulara el proyecto

Widgets
Sin estado
StatelessWidget

Con estado
StatefulWidget

//para descargar paquetes como npm install
flutter packages get


-Stateless
-Stateful
-Scaffolds
-Estilos
-Botones
-Manejo de estado básico

en windows
--------------
control+windows no me funciona
control+space para asistente si funciona

Widgets
------------
https://flutter.dev/docs/development/ui/widgets/basics

botón flotante
-------------------
https://material.io/resources/icons/?style=baseline

centrar botón flotante
---------------------
https://fluttermaster.com/working-with-floatingactionbutton-in-flutter/#:~:text=In%20Material%20Design%2C%20FloatingActionButton%2C%20also,bottom%20right%20of%20the%20screen.



Listviews
ListTiles
Listas y map
Rutas
Json hacia mapas
Future Builder
Lectura de archivos JSON
Iconos
Imágenes
Avatars
Loadings
InfiniteScroll
Pull to refresh
Cards
Sliders

---------------
Recursos estaticos
------------------
pubspec.yaml

assets:

### ejemplo como agregar imagenes
https://flutter.dev/docs/development/ui/assets-and-images

### ejemplo de geocerca teoria
https://developers.google.com/location-context/geofencing/

### trabajar con google maps
https://codelabs.developers.google.com/codelabs/google-maps-in-flutter#4

### agregar dependencias en flutter
https://stackoverflow.com/questions/64969391/how-to-run-google-maps-flutter-example

### pendiente agregar marcadores
https://stackoverflow.com/questions/55000043/flutter-how-to-add-marker-to-google-maps-with-new-marker-api
https://www.linkedin.com/pulse/add-custom-marker-google-maps-flutter-amar-dave/?articleId=6650403606409383937
https://stackoverflow.com/questions/62515136/nosuchmethoderror-nosuchmethoderror-the-method-add-was-called-on-null

### añadir botones en el mapa
https://stackoverflow.com/questions/59435789/stack-widget-with-google-maps-and-container-on-it-in-flutter

### eliminar marcadores
https://stackoverflow.com/questions/56009561/how-to-remove-all-my-markers-and-add-new-ones-onpress

### añadir poligonos
https://medium.com/@zeh.henrique92/google-maps-flutter-marker-circle-and-polygon-c71f4ea64498

### pendiente:
https://stackoverflow.com/questions/45669202/how-to-add-a-listview-to-a-column-in-flutter



