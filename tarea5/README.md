Tarea 5: Conversión y Adaptación de Documentos XML (XSLT)
Módulo: Lenguajes de Marcas y Sistemas de Gestión de la Información (LMSGI)
Unidad de Trabajo: UT05. Conversión y adaptación de documentos XML.
Curso Académico: 2023/2024 (Referencia)
📝 Descripción del Proyecto
Este proyecto aborda la Tarea 5 de LMSGI, cuyo objetivo fundamental es aplicar el estándar XSLT (eXtenisble Stylesheet Language Transformations) para convertir un documento de datos XML en un formato de presentación final, concretamente HTML. El escenario de trabajo es la gestión y visualización de una serie de "Sucesos".
La tarea demuestra el principio de la separación de datos (XML) y presentación (HTML), utilizando una hoja de estilos XSL (.xsl) como motor de transformación, y el lenguaje XPath para la navegación y selección precisa de los nodos dentro del documento XML de entrada.
🎯 Objetivos de Aprendizaje
Los principales resultados de aprendizaje trabajados en esta tarea son:
    • RA5: Realizar la conversión y adaptación de documentos XML, analizando los estándares implicados.
    • XSLT y XPath: Dominio de la sintaxis XSLT para definir reglas de transformación y uso de expresiones XPath para la selección de datos.
    • Generación de HTML: Creación de una hoja de estilos XSL capaz de generar un documento HTML bien estructurado y con estilos (usando CSS).
    • Adaptación de Formatos: Demostración de cómo se puede adaptar un mismo origen de datos (XML) a diferentes formatos de salida.
⚙️ Estructura de la Tarea y Flujo de Trabajo
El proyecto se basa en un flujo de trabajo de transformación estándar:
    1. Documento XML de Origen (sucesos.xml): Contiene los datos estructurados del listado de sucesos (título, fecha, descripción, etc.).
    2. Hoja de Estilos XSL (sucesos.xsl): Define las plantillas de transformación, indicando cómo deben mapearse los elementos XML a etiquetas HTML. Utiliza XPath para seleccionar la información.
    3. Resultado HTML (sucesos.html): Documento final generado al aplicar la transformación, listo para ser visualizado en un navegador web con estilos CSS.
Archivo
Función Principal
Tecnologías
XML
Contiene los datos brutos de los sucesos.
XML
XSL
Define las reglas para transformar XML a HTML.
XSLT, XPath
HTML
Resultado final de la transformación, listo para presentación.
HTML, CSS
🛠️ Tecnologías Utilizadas
    • Lenguajes de Transformación: XSLT (eXtensible Stylesheet Language Transformations).
    • Lenguajes de Consulta: XPath (XML Path Language).
    • Formatos de Entrada/Salida: XML y HTML.
    • Estilos: CSS (aplicados al HTML generado).
📂 Contenido del Repositorio
El repositorio incluye los siguientes ficheros clave:
    1. sucesos.xml: El documento XML con la estructura de datos.
    2. sucesos.xsl: La hoja de estilos XSLT que realiza la conversión.
    3. sucesos.html (o similar): El resultado de la transformación, que debe ser visualmente correcto.
    4. README.md (Este archivo).
Este proyecto demuestra la capacidad para automatizar la publicación de contenido web a partir de fuentes de datos estructuradas, un pilar fundamental en la arquitectura de información y gestión de contenidos (CMS).