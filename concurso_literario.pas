PROGRAM concurso_literario;
USES crt;

CONST
     ESCUELAS = 2;

VAR
   opcion,opcion_2,f,acumulador_total_libros,acumulador_total_fabula,
   acumulador_total_poesia,acumulador_total_cuento,mayor_cantidad_de_libros_en_cierta_escuela,numero_escuela,mayor_escuela,acumulador_total_de_libros_en_una_escuela: integer;
   dni: string[8];

BEGIN
mayor_cantidad_de_libros_en_cierta_escuela:= 0;
acumulador_total_libros:= 0;
mayor_escuela:= 0;
FOR f:= 1 TO ESCUELAS DO
 BEGIN
 writeln('Escuela nro ',f);
 writeln();
 write('>>> Ingrese dni del alumno: ');
 readln(dni);
 acumulador_total_de_libros_en_una_escuela:= 0;
 acumulador_total_fabula:= 0;
 acumulador_total_cuento:= 0;
 acumulador_total_poesia:= 0;
 WHILE dni <> '*' DO
  BEGIN
  writeln('TIPOS DE GENEROS LITERARIOS');
  writeln('---------------------------');
  writeln();
  writeln('1. Fabula');
  writeln('2. Poesia');
  writeln('3. Cuento');
  writeln();
  writeln('Seleccione tipo de genero: ');
  readln(opcion);
  CASE opcion OF

   1:BEGIN
     acumulador_total_fabula:= acumulador_total_fabula + 1;
     acumulador_total_de_libros_en_una_escuela:= acumulador_total_de_libros_en_una_escuela + 1;
     END;

   2:BEGIN
     acumulador_total_poesia:= acumulador_total_poesia + 1;
     acumulador_total_de_libros_en_una_escuela:= acumulador_total_de_libros_en_una_escuela + 1;
     END;

   3:BEGIN
     acumulador_total_cuento:= acumulador_total_cuento + 1;
     acumulador_total_de_libros_en_una_escuela:= acumulador_total_de_libros_en_una_escuela + 1;
     END;
  END;
  numero_escuela:= f;
  write('>>> Ingrese dni del alumno: ');
  readln(dni);
  END;
  acumulador_total_libros:= acumulador_total_libros + acumulador_total_de_libros_en_una_escuela;
  IF acumulador_total_de_libros_en_una_escuela > mayor_cantidad_de_libros_en_cierta_escuela THEN
   BEGIN
   mayor_cantidad_de_libros_en_cierta_escuela:= acumulador_total_de_libros_en_una_escuela;
   mayor_escuela:= numero_escuela;
   END;
 END;

REPEAT
writeln('MENU PRINCIPAL');
writeln('--------------');
writeln();
writeln('1. Total de obras presentadas');
writeln('2. Escuela que presento mayor cantidad de obras');
writeln('3. Cantidad de obras de cada genero');
writeln('4. Salir');
writeln();
writeln('Seleccione una opcion: ');
readln(opcion_2);
CASE opcion_2 OF
 1:BEGIN
   clrscr;
   writeln('TOTAL DE TODOS LAS OBRAS JUNTAS DE LAS 10 ESCUELAS: ',acumulador_total_libros);
   writeln();
   writeln('Presione enter para salir...');
   readln();
   END;

 2:BEGIN
   clrscr;
   writeln('LA ESCUELA NRO, ',mayor_escuela,', TIENE LA MAYOR CANTIDAD DE OBRAS, CON UNA CANTIDAD DE, ',mayor_cantidad_de_libros_en_cierta_escuela);
   writeln();
   writeln('Presione enter para salir...');
   readln();
   END;

 3:BEGIN
   clrscr;
   writeln('TOTAL DE LIBROS DE FABULA: ',acumulador_total_fabula);
   writeln('TOTAL DE LIBROS DE POESIA: ',acumulador_total_poesia);
   writeln('TOTAL DE LIBROS DE CUENTO: ',acumulador_total_cuento);
   writeln('Presione enter para salir...');
   readln();
   END;
END;
UNTIL (opcion_2 = 4);

END.
