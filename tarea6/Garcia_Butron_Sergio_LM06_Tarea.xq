xquery version "1.0";
"Actividad1:  Crea una lista HTML desordenada de los países con aeropuertos (sin repetición). La lista sólo debe mostrar los países que comiencen por A o por E, y se mostrará ordenada alfabéticamente","------>>>> RESPUESTA:",
<ul>{
for $a in distinct-values(*//pais)
where starts-with($a, "A") or starts-with($a,"E")
order by $a
return <li>{data($a)}</li>
}</ul>,
"Actividad 2: Queremos listar las diferentes monedas con el número de países que las usan. El resultado se debe mostrar ordenado alfabéticamente por moneda","------>>>> RESPUESTA:",
<monedas>{
for $a in *//aeropuerto
let $b := $a//tasas/@moneda
order by $b
group by $b
return <moneda num_paises="{count($a)}">{$b}</moneda>
}</monedas>,
"Actividad 3: Lista los aeropuertos de Argentina posteriores a 1995. El resultado se debe mostrar en forma de table HTML ordenado por año de construcción desde el mayor al menor, debe tener el siguiente formato:","------>>>> RESPUESTA:",
<div id="aero1995">
   <table>
     <tr>
       <th>Nombre</th>
       <th>Año de construccion</th>
     </tr>{
        for $a in *//aeropuerto
        where $a/pais="Argentina" and $a/anho_construccion>1995
        order by $a/anho_construccion descending
        return
          <tr>
            <td>{$a/nombre/data()}</td>
            <td>{$a/anho_construccion/data()}</td>
          </tr>      
     }
   </table>
</div>,
"Actividad 4: Lista todos los aeropuertos de España y Ucrania (Spain, Ukraine) en forma de lista desordenada, ordenadas por el nombre del aeropuerto. El resultado debe ser: ","------>>>> RESPUESTA:",
for $p in ("Spain", "Ukraine")
return 
<div>
    <h2>{$p}</h2>
        <ul> {
  for $a in *//aeropuerto
  order by $a/nombre
  where $a/pais=$p
  return 

      <li>{$a/nombre/text()}</li>
  } </ul>
</div>,
"Actividad 5: Lista todos los aeropuertos de manera que todos los atributos que aparecen en los elementos aparezcan ahora como elementos de cada aeropuerto, para poder posteriormente tratarlos posteriormente en otras aplicaciones, es decir, a partir de la base de datos generada los los tres fichero xml generaremos uno único con todos los datos de la base de datos en el que transformaremos los atributos en elementos","------>>>> RESPUESTA:",
<aeropuertos>{
  for $a in *//aeropuerto
  return 
    <aeropuerto> {
      for $b in ($a//@*, $a/*)
      let $etiqueta := $b/name()
      let $valor := $b/data()
      order by $etiqueta
      return element {lower-case($etiqueta)} {$valor}
 } </aeropuerto>
}</aeropuertos>