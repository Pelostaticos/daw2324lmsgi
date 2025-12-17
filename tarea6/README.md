# Tarea 6: Consultas a una Base de Datos XML (XQuery)

* <u>Módulo</u>: Lenguajes de Marcas y Sistemas de Gestión de la Información (LMSGI)
* <u>Unidad de Trabajo</u>: UT06. Almacenamiento de información.
* <u>Curso Académico</u>: 2023/2024 (Referencia)

# 📝 Descripción del Proyecto

Este proyecto corresponde a la Tarea 6 de LMSGI y tiene como objetivo el dominio de XQuery (XML Query Language), un lenguaje diseñado para consultar, buscar y extraer datos de documentos XML. El escenario de la tarea es una base de datos XML que contiene información sobre Aeropuertos.

Se requiere la implementación de varias consultas XQuery, utilizando la sintaxis FLWOR (FOR, LET, WHERE, ORDER BY, RETURN), para obtener datos específicos del documento XML de entrada y formatear los resultados según los requisitos.

# 🎯 Objetivos de Aprendizaje

Los principales resultados de aprendizaje trabajados en esta tarea son:

* RA6: Almacenar información de forma persistente, aplicando el lenguaje de consultas XQuery.
* XQuery y FLWOR: Escribir consultas XQuery complejas, haciendo uso efectivo de las cláusulas FLWOR para filtrar, ordenar y devolver información estructurada.
* XPath Avanzado: Utilizar expresiones XPath para la navegación precisa dentro del árbol XML, como base para las consultas XQuery.
* Extracción de Datos: Demostrar la capacidad de extraer subconjuntos de datos, calcular agregaciones y generar nuevos documentos XML (o listas de resultados) a partir de un documento fuente.

# ⚙️ Estructura de la Tarea y Requisitos

La tarea consiste en desarrollar múltiples consultas XQuery sobre el documento XML de aeropuertos proporcionado (o generado). Cada actividad requiere una consulta específica:

| Actividad |                                                      Objetivo Principal de la Consulta                                                       |                       Conceptos XQuery Requeridos                        |
| :-------: | :------------------------------------------------------------------------------------------------------------------------------------------: | :----------------------------------------------------------------------: |
|   1 - 5   | Obtener y formatear información diversa sobre aeropuertos, vuelos, y rutas, aplicando criterios de filtrado (WHERE) y ordenación (ORDER BY). | Sentencias FLWOR, Expresiones XPath, Creación de elementos de resultado. |

## 📌 Requisitos Generales:

    1. Sintaxis XQuery: El código XQuery debe ser correcto, legible y bien estructurado (usando FLWOR cuando sea apropiado).
    2. Precisión: Las consultas deben extraer exactamente la información solicitada en el formato de salida requerido.
    3. Resultado Formateado: Los resultados de las consultas deben mostrarse de forma estructurada, creando nuevos elementos XML si es necesario, o como una lista clara de datos.

## 🛠️ Tecnologías Utilizadas

* <u>Lenguaje de Consulta</u>: XQuery (XML Query Language).
* <u>Base de Datos</u>: Documento XML (que simula una base de datos XML).
* <u>Soporte de Navegación</u>: XPath (implícito en XQuery)
* <u>Herramientas</u>: Entorno de ejecución de XQuery (como BaseX, Oxygen XML Editor, o un servicio online).

## 📂 Contenido del Repositorio

El repositorio debe incluir los siguientes ficheros:

    1. aeropuertos.xml (o similar): El documento XML de origen con la información de los aeropuertos.
    2. consultas.xquery (o un fichero por consulta): El/los fichero/s que contienen las sentencias XQuery desarrolladas.
    3. README.md (Este archivo).

Este proyecto demuestra la habilidad para consultar información estructurada en XML, una competencia esencial para trabajar con bases de datos nativas XML y en arquitecturas de intercambio de datos basadas en XML.