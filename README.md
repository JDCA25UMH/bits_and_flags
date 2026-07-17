
<h1>Demo de bits y banderas</h1>

Demostración creada en Liko 12, con el proposito de explicar el funcionamiento de la modificación 
de banderas en bits, por medio de parametros de función para modificar valores, acorde con lo solicitado por el usuario, 
en lo relacionado con posición, y el newbit que es un número de 0 o 1, cuales se colocan como parametros de función.

<img width="678" height="456" alt="ejemplo1 " src="https://github.com/user-attachments/assets/56f90ff1-195a-4c5f-9652-29034203896a" />

Son 21 habitaciones de hotel representandas desde la habitación 0 hasta la 20, en donde el usuario debe colocar como
primer argumento la posicion cual pretende encender, (un número entre 0 y 20), y como segundo argumento el newbit entre 0 y 1 de la habitación de la cual pretende 
modificar la bandera, para ello el usuario escribe el primer valor, y vuelve a presionar la tecla "tab", para escribir el 
segundo valor.
El valor por defecto que encontramos en el Status Flag, cual representa 
Este hotel se caracteriza por una correspondencia entre la llave, el foco, y el agujero del que se retira el foco, en donde estos valores se corresponden 
para dar con la debida habitación
La modificación de banderas de bit, consiste en enmascarar la posición del valor que se quiere modicar, representando la posición, como exponente en base 2,
en donde se realiza la mascara equiparando la operación con la variable mask.

<img width="570" height="385" alt="mask" src="https://github.com/user-attachments/assets/0e014417-6a2e-470c-9508-34c576a59a3b" />


