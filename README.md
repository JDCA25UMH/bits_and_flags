
<h1>Demo de bits y banderas</h1>

Demostración creada en Liko 12, con el propósito de explicar el funcionamiento de la modificación 
de banderas en bits,  acorde con los parámetros establecidos por el usuario, 
en lo relacionado con posición, y el newbit que es un número  (0 /1), cuales se colocan como parámetros de función mdf(position,newbit).

--Codigo en lua de modificación de bits, que representan banderas

--function mdf(flags, position, newbit)
  --local mask = 1 << position
  --local apagado = flags & ~mask
  --local foco = (newbit << position) & mask
  --return apagado | foco
-end

Los bits son unidades de 0 o 1, que indican si algo está apagado o prendido.
Las banderas, es lo que representa los bits, en este caso cada bit representa una habitación de hotel, demostrando si esta 
prendida o apagada la luz, en ese lugar.

<img width="678" height="456" alt="ejemplo1" src="https://github.com/user-attachments/assets/56f90ff1-195a-4c5f-9652-29034203896a" />

Son 21 habitaciones de hotel representadas desde la habitación (0-20), en donde el usuario debe colocar como
primer argumento la posición cuál pretende encender, (0 - 20), y como segundo argumento el newbit entre (0/1) de la habitación de la cual pretende 
modificar la bandera.

Para ello el usuario escribe el primer valor, y vuelve a presionar la tecla "tab", para escribir el 
segundo valor, y presiona luego la tecla "space", para avanzar dentro del programa.

El valor por defecto lo encontramos en el Status Flag, cuál representa este hotel, en su estado inicial con respecto a sus habitaciones.

Se caracteriza este hotel por una correspondencia entre la llave, el foco, y el agujero del que se retira el foco, en donde estos valores se corresponden 
para dar con la debida habitación, con el propósito de modificar bandera, esto cambiando el valor del bit.

La modificación de banderas de bit, consiste en enmascarar la posición del valor que se quiere modificar, representando la posición, como exponente en base 2,
en donde se realiza la mascara equiparando la operación con la variable mask, a esto lo llamamos llave, así obtenemos el criterio inicial para 
determinar la habitación en la que se va a modificar el correspondiente bit.

local mask = 1 << position

<img width="570" height="385" alt="mask" src="https://github.com/user-attachments/assets/0e014417-6a2e-470c-9508-34c576a59a3b" />


Luego de obtener el valor enmascarado de la posición, se invierte la mascara, para tapar la habitación
con el propósito de señalar en donde vamos a modificar el bit,comparando los bits de la mascara invertida, con el valor inicial de Status Flag, 
realizando la operación lógica AND &, estableciendo la correspondencia entre los estados de apagado del Status Flag, y la mascara invertida.

<img width="681" height="451" alt="apagar" src="https://github.com/user-attachments/assets/7a814a68-0bfa-4066-8744-78f63e006b0e" />

Se extrae el valor del foco, cuál es el mismo de la mascara, pero siempre teniendo en cuenta que de debe multiplicar por el newbit,
dada la correspondencia que existe entre la llave y el foco; en donde evidenciamos si la habitación que le corresponde a la llave se debe encontrar encendida o apagada,
se compara con el valor de la llave por medio de otra operación AND &, y asi encontramos la habitación a la cual le corresponde el foco.


<img width="678" height="452" alt="foco" src="https://github.com/user-attachments/assets/e8e5117d-be0f-4e41-b2bb-cac01ddb4d85" />

Comparamos los resultados, entre la habitación a la cual verificamos si se encontraba 
apagada, y la cual señalamos con el correspondiente foco, y llave, en las 
operaciones lógicas AND &y se monta todo por medio de una operación lógica OR |,
para hallar el correspondiente status de la banderas.

<img width="677" height="450" alt="montar" src="https://github.com/user-attachments/assets/821274d9-e67a-4dd1-9331-9770ab285fd3" />


