
<h1>Demo de bits y banderas</h1>

Demostración creada en Liko 12, con el proposito de explicar el funcionamiento de la modificación 
de banderas en bits, por medio de parametros de función para modificar valores, acorde con lo solicitado por el usuario, 
en lo relacionado con posición, y el newbit que es un número de 0 o 1, cuales se colocan como parametros de función.

<img width="678" height="456" alt="ejemplo1" src="https://github.com/user-attachments/assets/56f90ff1-195a-4c5f-9652-29034203896a" />

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


Luego de obtener el valor enmascarado de la posición, se invierte la mascara, y se realiza la operación logica AND &, 
comparando los bits de la mascara invertida, con el valor inicial de Status Flag, con el proposito de observar si la llave invertida 
es compatible con el foco, y por ultimo aparece el resultado de la operación logica and, en donde se mira si ya estaba prendido o no el foco.

<img width="681" height="451" alt="apagar" src="https://github.com/user-attachments/assets/7a814a68-0bfa-4066-8744-78f63e006b0e" />

Se extrae el valor del foco, cual es el mismo de la mascara, dada la correspondencia que existe entre la llave y el foco, en donde el foco
es el valor mask, multiplicado por newbit; en donde evidenciamos si la habitación que le corresponde a la llave se debe encontrar encendida o apagada,
se compara con el valor de la llave por medio de otra operación AND &, y asi encontramos la habitación a la cual le corresponde el foco.


<img width="678" height="452" alt="foco" src="https://github.com/user-attachments/assets/e8e5117d-be0f-4e41-b2bb-cac01ddb4d85" />

Comparamos los resultados, entre la habitación a la cual verificamos si se encontraba 
apagada, y la cual señalamos con el correspondiente foco, y llave, en las 
operaciones logicas AND &y se monta todo por medio de una operación logica OR |,
para hallar el correspondiente status de la banderas.

<img width="677" height="450" alt="montar" src="https://github.com/user-attachments/assets/821274d9-e67a-4dd1-9331-9770ab285fd3" />











