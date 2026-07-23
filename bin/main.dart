import 'dart:io';

void main() {
  /*
Este programa calcula el promedio del aprendiz
y valida su estado académico.
*/

 //Creamos el input para el nombre y lo leemos en la variable nombre
  stdout.write("Ingrese su nombre: ");
  final nombre = stdin.readLineSync()!;

 //Creamos el input para la edad y lo leemos en la variable edad
  stdout.write("Ingrese su edad: ");
  int edad = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese su progrma de formación: ");
  String programa = stdin.readLineSync()!;



//Pedimos las 3 notas al usuario 
  stdout.write("Ingrese la nota 1: ");
  int nota1 = int.parse(stdin.readLineSync()!);
  stdout.write("Ingrese la nota 2: ");
  int nota2 = int.parse(stdin.readLineSync()!);
  stdout.write("Ingrese la nota 3: ");
  int nota3 = int.parse(stdin.readLineSync()!);

//Calculamos el promedio del aprendiz
  double promedio = (nota1 + nota2 + nota3)/3;

  stdout.write("Está activo el aprendiz? (S/N): ");
  String respuesta = stdin.readLineSync()!.toUpperCase();
  bool estado = respuesta == "S";

//Imprimimos y validamos los resultados de todos los inputs
  print("Nombre: $nombre");
  print("Edad: $edad");
  print("Promgrama de formación: $programa");
  print("Su promedio es $promedio");

  //Condicionales
  if (promedio>4){
    print("Usted aprobó la asignatura");
    print("Puede continuar con el proceso");
  }
  else{
    print("Usted no aprobó la asignatura");
    print("Requiere  apoyo");
  }
  if(estado){
    print("El aprendiz está activo");
  }
  else{
    print("El aprendiz no está activo");
  }

  if (edad>18) {
    print("Es usted mayor de edad");
  }
  else{
    print("Usted no es mayor de eddad");
  }

//validacion de si el aprendiz ´puede continuar 
  bool puedeContinuar = promedio>4&&estado;
  if (puedeContinuar){
    print("El aprendiz puede continuar con el proceso");
  }
  else{
    print("EL aprendiz no puede continuar con el proceso");
  }
  
}