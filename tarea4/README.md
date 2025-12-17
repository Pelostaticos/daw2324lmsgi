## Tarea 4: Definición de Esquemas y Vocabularios en XML

* <u>Módulo</u>: Lenguajes de Marcas y Sistemas de Gestión de la Información (LMSGI)
* <u>Unidad de Trabajo</u>: UT04. Definición de esquemas y vocabularios en XML.
* <u>Curso Académico</u>: 2023/2024 (Referencia)

## 📝 Descripción del Proyecto

Este proyecto corresponde a la Tarea 4 de LMSGI y su objetivo principal es el dominio de las tecnologías utilizadas para definir la estructura y las reglas de validación de documentos XML.

La tarea requiere modelar la información de "Centros Educativos" y sus componentes (como módulos, ciclos formativos y alumnos) mediante dos lenguajes de definición de gramática: DTD (Document Type Definition) y XML Schema (XSD). Esto asegura que los documentos XML sigan una sintaxis y unas reglas semánticas preestablecidas, garantizando la consistencia de los datos.

## 🎯 Objetivos de Aprendizaje

Los principales resultados de aprendizaje trabajados en esta tarea son:

* <u>RA4</u>: Definir estructuras de información y las reglas que deben cumplir.
* <u>Gramáticas XML</u>: Creación de documentos de definición de gramática utilizando DTD y XSD.
* <u>Validación de Datos</u>: Aplicación de restricciones avanzadas en XSD (tipos de datos, patrones, rangos, etc.) para asegurar la integridad de la información.
* <u>Asociación y Verificación</u>: Enlazar correctamente los documentos XML con su gramática correspondiente (DTD o XSD) y utilizar herramientas de validación.

## ⚙️ Estructura de la Tarea y Requisitos

La tarea se divide en varios apartados que cubren la definición de esquemas:

| Apartado           |                                                             Requisito Principal                                                             |                                                                             Conceptos Clave |
| :----------------- | :-----------------------------------------------------------------------------------------------------------------------------------------: | ------------------------------------------------------------------------------------------: |
| Punto de Control 1 |                        Creación del documento DTD (centros.dtd) que defina la estructura de los centros educativos.                         |                                                  DTD, Declaración de elementos y atributos. |
| Punto de Control 2 |                             Creación de dos documentos XML (xml1.xml, xml2.xml) que sean válidos contra el DTD.                             |                                                         Estructura XML, Asociación con DTD. |
| Punto de Control 3 | Creación del documento XML Schema (centros.xsd) que implemente todas las reglas de validación y tipos de datos requeridos por el enunciado. | XSD, Tipos complejos y simples, Restricciones (xs:restriction, xs:pattern, xs:enumeration). |
| Punto de Control 4 |                             Cuestiones teóricas sobre la necesidad y tecnologías de definición de esquemas XML.                             |                                                                     DTD vs XSD, Validación. |

## 🛠️ Tecnologías Utilizadas

* <u>Lenguajes de Marcas</u>: XML, DTD, XML Schema (XSD).
* <u>Herramientas</u>: Editor XML (como Visual Studio Code, Oxygen XML Editor, etc.) y validadores en línea.

## 📂 Contenido del Repositorio

El repositorio debe incluir los siguientes ficheros:

    1. centros.dtd: Fichero de definición de tipo de documento.
    2. centros.xsd: Fichero de esquema XML.
    3. xml1.xml y xml2.xml: Documentos de ejemplo válidos.
    4. README.md (Este archivo).

Este proyecto demuestra la habilidad para estandarizar la forma en que se almacena e intercambia la información, sentando las bases para el procesamiento automatizado de documentos XML.