<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <!-- Elijo el formato de salida a HTML identado -->
    <xsl:output method="html" version="5.0" encoding="UTF-8" indent="yes"/>
    <!-- Plantilla sobre el elemento raíz del documento XML -->
    <xsl:template match="/">
        <!-- <xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;</xsl:text>         -->
        <html lang="es">
            <!-- Encabezdo con metadatos de la página web -->
            <head>
                <!-- <meta charset="UTF-8"/> -->
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <title><xsl:value-of select="//titulo"/></title>
                <link rel="stylesheet" href="css/style.css"/>
            </head>
            <!-- El cuerpo de la página web de plantilla -->
            <body>
                <!-- cabecera de la web -->
                <header id="inicio">
                    <!-- título y descripción del suceso -->
                    <h1><xsl:value-of select="//titulo"/></h1>
                    <p><xsl:value-of select="//descripcion"/></p>
                    <!-- imágenes de la cabecera -->
                    <div class="header-images">
                        <!-- escena del suceso -->
                        <img src="{//informacion/imagen}" alt="escena suceso"/>
                        <!-- imágen flotante -->
                        <img class="transparente" src="img/sangre.png" alt="sangre"/>
                    </div>
                    <!-- menú de navegación a las distintas secciones de la web -->
                    <nav>
                        <ul>
                            <li><a href="#personajes">Personajes</a></li>
                            <li><a href="#acontecimientos">Acontecimientos</a></li>
                            <li><a href="#estadisticas">Estadísticas</a></li>
                        </ul>
                    </nav>
                </header>
                <!-- capa que contiene a todos los personajes del suceso -->
                <main id="personajes" class="contenedor-80">
                    <!-- Bucle para recorrer a cada personaje disponible y asignarle el tipo de ficha a mostrar -->
                    <xsl:for-each select="//personajes/personaje">
                        <!-- Selecciono si el tipo de ficha según el tipo de personaje -->
                        <xsl:choose>
                            <!-- Cuando un personaje es sospechoso usará la clase card únicamente -->
                            <xsl:when test="@tipo='sospechoso'">
                                <!-- Llama a la plantilla fichaPersonajes para mostrar a cada uno en la web -->
                                <xsl:call-template name="fichasPersonajes">
                                    <!-- En esta llamada a la plantilla le establezco el tipo de ficha: Sospechoso -->
                                    <xsl:with-param name="tipoFicha">card</xsl:with-param>
                                </xsl:call-template>                                
                            </xsl:when>
                            <!-- Cuando un personaje sea víctima usará la clase card y destacado -->
                            <xsl:when test="@tipo='víctima'">
                                <!-- Llama a la plantilla fichaPersonajes para mostrar a cada uno en la web -->
                                <xsl:call-template name="fichasPersonajes">
                                    <!-- En esta llamada a la plantilla le establezco el tipo de ficha: Víctima -->
                                    <xsl:with-param name="tipoFicha">card destacado</xsl:with-param>
                                </xsl:call-template>                                
                            </xsl:when>
                        </xsl:choose>
                    </xsl:for-each>
                </main>
                <!-- acontecimientos -->
                <section class="pistas contenedor-80" id="acontecimientos"> 
                    <h2>Acontecimientos</h2>
                    <!-- Aplico la plantilla específica para gestionar las pistas -->
                    <xsl:apply-templates select="//pistas/pista">
                </xsl:apply-templates>
                </section>
                <!-- sección correspondiente a las estadísticas de los personajes -->
                <section id="estadisticas" class="contenedor-80">
                    <h2>Estadísticas</h2>
                        <!-- Variables para el calculo para las estadisticas generales -->
                        <xsl:variable name="totalSospechosos" select="count(investigacion/personajes/personaje[@tipo='sospechoso'])"/>
                        <xsl:variable name="sumaEdades" select="sum(investigacion/personajes/personaje[@tipo='sospechoso']/edad)"/>
                        <xsl:variable name="totalVotos" select="sum(investigacion/personajes/personaje[@tipo='sospechoso']/votos)"/>
                        <!-- Variables para rango de edades solicitados con el objeto de mejorar legibilidad código -->
                        <xsl:variable name="rangoEdad017" select="count(investigacion/personajes/personaje[(@tipo='sospechoso' and (edad&gt;=0 and edad&lt;18))])"/>
                        <xsl:variable name="rangoEdad1825" select="count(investigacion/personajes/personaje[(@tipo='sospechoso' and (edad&gt;17 and edad&lt;26))])"/>
                        <xsl:variable name="rangoEdad2635" select="count(investigacion/personajes/personaje[(@tipo='sospechoso' and (edad&gt;25 and edad&lt;36))])"/>
                        <xsl:variable name="rangoEdad3645" select="count(investigacion/personajes/personaje[(@tipo='sospechoso' and (edad&gt;35 and edad&lt;46))])"/>
                        <xsl:variable name="restoEdades" select="count(investigacion/personajes/personaje[@tipo='sospechoso' and edad&gt;46])"/>                                      
                    <div class="est-datos">
                        <!-- tabla con el número total de sospechosos (únicamente figuran 
                            los sospechosos, no las víctimas)-->
                        <div class="est-tabla">
                            <h3>Número de sospechosos por franja de edad</h3>
                            <table class="texto-normal">
                                <thead>
                                    <tr>
                                        <th colspan="2">Nº de Sospechosos</th>
                                    </tr>
                                    <tr>
                                        <th>Datos</th>
                                        <th>Valor</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>entre 0 y 17 años</td>
                                        <td><xsl:value-of select="$rangoEdad017"/></td>
                                    </tr>
                                    <tr>
                                        <td>entre 18 y 25 años</td>
                                        <td><xsl:value-of select="$rangoEdad1825"/></td>
                                    </tr>
                                    <tr>
                                        <td>entre 26 y 35 años</td>
                                        <td><xsl:value-of select="$rangoEdad2635"/></td>
                                    </tr>
                                    <tr>
                                        <td>entre 36 y 45 años</td>
                                        <td><xsl:value-of select="$rangoEdad3645"/></td>
                                    </tr>
                                    <tr>
                                        <td>más de 46 años</td>
                                        <td><xsl:value-of select="$restoEdades"/></td>
                                    </tr>
                                    <tr>
                                        <th>Nº total</th>
                                        <th><xsl:value-of select="$totalSospechosos"/></th>
                                    </tr>
                                    <tr class="no-border">
                                        <td colspan="2" >Promedio de edad: 
                                            <!-- <span><xsl:value-of select="$sumaEdades div $totalSospechosos"/></span> años</td> -->
                                            <span><xsl:value-of select='format-number($sumaEdades div $totalSospechosos,"##.00")'/></span> años</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="est-lista">
                        <!-- listamos todos los personajes menos la víctima, ordenados por el número de votos. con el siguiente formato:
                        #9.- Nombre Apellidos - (9 años) - 99 de 99 votos (99.99%) 
                        los hombres tendrán un estilo diferente de las mujeres. -->
                            <h3>Listado de personajes sospechosos y proporción de votos</h3>
                            <div class="texto-normal">
                                <xsl:for-each select="investigacion/personajes/personaje[@tipo='sospechoso']">
                                    <xsl:element name="p">
                                        <xsl:text>#</xsl:text>
                                        <xsl:value-of select="position()"></xsl:value-of>
                                        <xsl:text>.- </xsl:text>
                                        <xsl:value-of select="nombre"></xsl:value-of>
                                        <xsl:text> - (</xsl:text>
                                        <xsl:value-of select="edad"></xsl:value-of>
                                        <xsl:text> años) - </xsl:text>
                                        <xsl:value-of select="votos"></xsl:value-of>
                                        <xsl:text> de </xsl:text>
                                        <xsl:value-of select="$totalVotos"></xsl:value-of>
                                        <xsl:text> votos (</xsl:text>
                                        <xsl:value-of select='format-number(votos div $totalVotos, "#%")'></xsl:value-of>
                                        <xsl:text>)</xsl:text>
                                    </xsl:element>
                                </xsl:for-each>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- flecha para navegar a la parte superior -->
                <div id="nav-flecha"><a href="#inicio"><i class="fa-solid fa-arrow-up"></i></a></div>
                <footer>
                    <p class="texto-normal">Plantilla Web elaborada por @pepelluyot 
                    y versión HTML generado con xsltproc por Sergio García Butrón 
                    para la tarea 5 de Lenguajes de Marcas. Curso 2023/2024</p>   
                </footer>                                
            </body>
        </html>
    </xsl:template>

    <!-- Creo una plantilla específica para mostrar los personajes implicados -->
    <xsl:template name="fichasPersonajes">
        <!-- Parametro que contiene las clase que definen el tipo de ficha del personaje -->
        <xsl:param name="tipoFicha"/>
        <!-- ficha del personaje 1 -->
        <div class="{$tipoFicha}">
            <!-- edad del personaje 1-->
            <h3><xsl:value-of select="edad"/></h3>
            <!-- icono del personaje 1-->
            <i class="{icono}"></i>
            <!-- imagen del personaje 1 (se muestra por duplicado) -->
            <div class="card-image">
                <!-- imagen del personaje 1 -->
                <img src="{imagen}" alt="{nombre}"/>
                <!-- sombra del personaje 1 -->
                <img class="blur" src="{imagen}" alt="{substring-before(nombre,' ')}"/>
            </div>
            <!-- descripcion del personaje 1 -->
            <div class="text">
                <h2><xsl:value-of select="nombre"/></h2>
                <h4><xsl:value-of select="profesion"/></h4>
                <p><xsl:value-of select="bio"/></p>
            </div>
        </div>                
    </xsl:template>

    <!-- Creo una plantilla especifica para mostrar los acontecimientos del suceso -->
    <xsl:template match="pista">

        <!-- Artículo que representa cada uno de los acontecimientos del suceso -->
        <article class="pista">
            <!-- título de la pista 1-->
            <h2><xsl:value-of select="@titulo"/></h2>
            <div class="info">
                <!-- personajes implicados en la pista 1-->
                <h3>Personajes implicados: 
                    <span class="texto-normal">
                        <xsl:for-each select="personajes/personaje">
                            <xsl:choose>
                                <xsl:when test="position()&lt;last()">
                                    <xsl:value-of select="concat(/investigacion/personajes/personaje[@id=current()]/nombre, ', ')"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="/investigacion/personajes/personaje[@id=current()]/nombre"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:for-each>
                    </span>
                </h3>
                <!-- imágenes de los personajes implicados -->
                <div class="imagenes-mini">
                    <xsl:for-each select="personajes/personaje">
                        <figure>
                            <img src="{/investigacion/personajes/personaje[@id=current()]/imagen}" alt="{/investigacion/personajes/personaje[@id=current()]/nombre}"/>
                            <figcaption><xsl:value-of select="/investigacion/personajes/personaje[@id=current()]/nombre"/></figcaption>
                        </figure>
                    </xsl:for-each>
                </div>
                <!-- descripción de la pista relacionada con el suceso. -->
                <h3>Descripción:</h3>
                <ul class="texto-normal">
                    <xsl:for-each select="descripcion/evento">
                        <li><xsl:value-of select="."/></li>
                    </xsl:for-each>
                </ul>
            </div>
        </article>        
    </xsl:template> 

</xsl:stylesheet>