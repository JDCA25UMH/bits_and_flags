
function _init()

end
cambio_apagar = false
local state = {
["indicar"] = true,
["llave"]=false,
["Revisar"]= false,
["Foco"]= false,
["Super"] = false
}

position = ""
newbit= ""
uno =true

function _update()

end

function bit_status(bit_cero,bit_uno,
bit_dos,bit_tres,bit_cuatro,bit_cinco,
bit_seis,bit_siete,bit_ocho,bit_nueve,
bit_diez)

end
local Status_Flag =
"100000000000000000000"

function cifra_status(Status_Flag)
local t={}
for i=1,#Status_Flag do 
 t[i]=tonumber(Status_Flag:sub(i,i))
end
return t
end

function mask(position)
local mask_number =
 math.pow(2,position)
 return mask_number
end


function dibujar(bit,x,y)
if bit == 1 then 
cl =10
elseif bit == 0 then 
cl = 5
end
 color(cl)
 rect(x,y,10,10)
if cl== 5 then
 color(0)
 print(0,x+2,y+2.5)
elseif cl == 10 then 
 color(0)
 print(1,x+2,y+2.5)
end


end
function dec_bin(decimal)
local i =1
local accum = {}
local bin = {}

while decimal >= 1 do 
 dec_bin_num = decimal % 2
 decimal= math.floor(decimal/2)
 accum[i]= dec_bin_num
 i = i +1
end
a=1
for i=#accum,1,-1 do 
 bin[i]=accum[a]
a=a+1
end
return bin
end

function cifra_mask_mostrar(mask_mostrar)
local t = {}
for i=1,#mask_mostrar do 
 t[i]=tonumber(mask_mostrar:sub(i,i))
end
 return t 
end


function not_mask(mask_total)
inv_mask={}

 for k,v in pairs(mask_total)do 
 if v == 1 then 
  inv_mask[k]=0
  else 
  inv_mask[k]=1
 end
 end
 return inv_mask
end

function and_bit(status,not_mask_total)
bit_and={}
for i=1, 21 do 
 if status[i]== 1 and
  not_mask_total[i]==1 then 
 bit_and[i]=1 
 else
 bit_and[i]=0
end
end
return bit_and
end

function or_bit(tab_01,tab_02)
bit_or={}
for i = 1,21 do 
 if tab_01[i]== 1 then 
  bit_or[i]=1
 elseif tab_02[i]== 1 then 
  bit_or[i]=1
  else
  bit_or[i]=0
 end
end
return bit_or
end

function mask_put(mask_number,mask_table,mask_strg,
mask_mostrar,mask_total, not_mask_total,and_b)
 local status= cifra_status(Status_Flag)
 local mask_n= mask(position)
 local mask_table = dec_bin(mask_n)
 
 local mask_strg= table.concat(mask_table)
 local mask_mostrar =
  string.rep("0",21-position-1)..mask_strg
local mask_total =
 cifra_mask_mostrar(mask_mostrar)

local not_mask_total =
not_mask(mask_total)

local and_b= and_bit(status,not_mask_total)

return mask_n,mask_table, mask_strg,mask_mostrar,
 mask_total,not_mask_total,and_b
end


function foco_decimal(position,newbit)
foco =( math.pow(2,position))*newbit
return foco
end

dos = true 

function para_foco(f,f_binario,f_concat,f_mostrar,f_total)
 local f = foco_decimal(position,newbit)
 local f_binario = dec_bin(f)
 local f_concat= table.concat(f_binario)
 local f_mostrar = string.rep("0",21-position-1)..f_concat
 local f_total = cifra_mask_mostrar(f_mostrar)

return f,f_binario,f_concat,f_mostrar,f_total
end


function _keypressed(tecla,scancode,
isRepeat)
if tecla == "tab"then
 uno=false
end
if tecla == "backspace" and
 uno == true then 
 position = position:sub(1,-2)
 
end
 if tecla == "backspace"and
  uno == false  then
 newbit = newbit:sub(1,-2)
 end
if tecla == "space"then 

 state["llave"]=true
 state["indicar"]= false
 state["Revisar"] = false
 state["Foco"]=false
 state["Super"]=false
if cambio_apagar == true then 

 state["llave"] = false
 state["indicar"]= false
 state["Revisar"]= true
 state["Foco"]=false
 state["Super"]=false
end
if cambio_foco == true then 
 state["llave"] = false
 state["indicar"]=false
 state["Revisar"]=false
 state["Foco"] = true
 state["Super"]= false
end
if fabricar_foco == true then 
 state["llave"]=false
 state["indicar"]=false
 state["Revisar"]=false
 state["Foco"]=true
 state["Super"]= false
end
if super_position == true then 
 state["llave"]= false
 state["indicar"]=false
 state["Revisar"]= false
 state["Foco"]= false
 state["Super"]=true

end

end
end
function _textinput(t)
if uno == true then 
 position = position ..t
 elseif uno== false then
 newbit = newbit..t
end
end
function _draw()
clear()

hab_21= dibujar(1,10,30)--21
hab_20= dibujar(0,25,30)--20
hab_19= dibujar(0,40,30)--19
hab_18= dibujar(0,55,30)--18
hab_17= dibujar(0,70,30)--17
hab_16= dibujar(0,85,30)--16
hab_15= dibujar(0,100,30)--15
hab_14= dibujar(0,115,30)--14
hab_13= dibujar(0,130,30)--13
hab_12= dibujar(0,145,30)--12
hab_11= dibujar(0,160,30)--11
hab_10= dibujar(0,10,50)--10
hab_9=  dibujar(0,25,50)--9
hab_8=  dibujar(0,40,50)--8
hab_7=  dibujar(0,55,50)--7
hab_6=  dibujar(0,70,50)--6
hab_5=  dibujar(0,85,50)--5 
hab_4=  dibujar(0,100,50)--4
hab_3=  dibujar(0,115,50)--3
hab_2= dibujar(0,130,50)--2
hab_1= dibujar(0,145,50)--1

color(5)


if state["indicar"]==true then 
color(7)
print("mdf("..position..","
..newbit..")",100,70)
color(3)

print("position="..position,100,80)
print("newbit="..newbit,100,90)

elseif state["llave"]== true then 

num1,num2,num3,num4,num5,num6=
 mask_put(mask_number,mask_table,mask_strg,
mask_mostrar,mask_total,not_mask_total)

color(11)
print("Fabricar llave",10,70)
color(3)
print("mask="..num1,10,80)
print("mask_binario="..num4,
10,90)

cambio_apagar=true
elseif state["Revisar"] == true then
local status = cifra_status(Status_Flag)
local status_mostrar = table.concat(status)

num1,num2,num3,num4,num5,num6,num7 = 
mask_put(mask_number,mask_table,mask_strg,
mask_mostrar,mask_total,not_mask_total,and_b)

color(11)
print("Apagar",10,70)
color(3)
print("Status_Flag="..status_mostrar,10,80)
print("Not Mask="..table.concat(num6),
10,90)
print("AND="..table.concat(num7),10,100)


fabricar_foco = true

elseif state["Foco"]== true then 

f_num1, f_num2,f_num3,f_num4,f_num5 = 
para_foco(f,f_binario,f_concat,f_mostrar,f_total)

num1,num2,num3,num4,num5,num6= 
mask_put(mask_number,mask_table,mask_strg,
mask_mostrar,mask_total,not_mask_total)

color(11)
print("Foco",10,70)
color(3)
print("foco="..f_num4,10,80)
print("llave="..num4,10,90)
print("AND="..table.concat(and_bit(num5,f_num5)),10,100)
 super_position = true
elseif state["Super"]== true then 

f_num1,f_num2,f_num3,f_num4,f_num5=
para_foco(f_num1,f_num2,f_num3,f_num4,f_num5)

num1,num2,num3,num4,num5,num6,num7 =
mask_put(mask_number,mask_table,mask_strg,
mask_mostrar,mask_total,not_mask_total,and_b)
local tabla_02 = and_bit(num5,f_num5)

color(11)
print("Montar todo",10,70)
color(3)
print("AND_Apagado="..table.concat(num7),10,80)
print("AND_Foco="..
table.concat(and_bit(num5,f_num5)),10,90)
print("Flags="..table.concat(or_bit(num7,tabla_02))
,10,100)



end

end

