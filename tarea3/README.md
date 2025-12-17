# Tarea 3: Sindicación de Contenidos Web (RSS y Atom)

* <u>Módulo</u>: Lenguajes de Marcas y Sistemas de Gestión de la Información (LMSGI)
* <u>Unidad de Trabajo</u>: UT03. Aplicaciones de los lenguajes de marcas a la sindicación de contenidos.
* <u>Curso Académico</u>: 2023/2024 (Referencia)

## 📝 Descripción del Proyecto

Este proyecto aborda la Tarea 3 de LMSGI, enfocada en la creación y validación de canales de sindicación de contenidos utilizando los estándares RSS 2.0 y Atom 1.0.

La tarea requiere la elaboración de un canal de noticias ficticio que acceda a contenidos externos (ejercicios de plantillas HTML/CSS), poniendo en práctica la difusión y gestión de información mediante lenguajes de marcas especializados.

## 🎯 Objetivos de Aprendizaje

Los principales resultados de aprendizaje trabajados en esta tarea son:

* <u>RA3</u>: Aplicar lenguajes de marcas para la distribución de contenidos, analizando las técnicas de sindicación y las herramientas.
* <u>Creación de Canales</u>: Diseñar y construir canales de sindicación de contenidos (feeds) tanto en formato RSS como Atom.
* <u>Validación</u>: Utilizar herramientas específicas para la validación de los ficheros generados, asegurando su correcto consumo por agregadores.
* <u>Análisis Conceptual</u>: Identificar las ventajas de la sindicación en la gestión y transmisión eficiente de la información web.

## ⚙️ Estructura de la Tarea y Requisitos

La tarea se divide en varios apartados que cubren la teoría y la práctica de la sindicación:

| Apartado |                                                      Requisito Principal                                                       |                              Conceptos Clave |
| :------- | :----------------------------------------------------------------------------------------------------------------------------: | -------------------------------------------: |
| A        |                                    Desarrollo de la estructura básica del fichero RSS 2.0.                                     | XML, Etiquetas RSS (<channel>, <item>, etc.) |
| B        |                                    Desarrollo de la estructura básica del fichero Atom 1.0.                                    |  XML, Etiquetas Atom (<feed>, <entry>, etc.) |
| C        | Validación de los ficheros RSS y Atom mediante una herramienta de validación (por ejemplo, el Validador de Feed de W3C o WDG). |                    Validación de Estándares. |
| D        |         Referencia al archivo de sindicación (feed.xml o similar) en la cabecera (<head>) de la página web principal.          |          Descubrimiento Automático del Feed. |

## 🛠️ Tecnologías Utilizadas

    • Lenguajes de Marcas: XML, RSS 2.0, Atom 1.0.
    • Tecnología Web: HTML (para el enlace del feed en la cabecera).
    • Herramientas de Verificación: W3C Feed Validation Service.

## 📂 Contenido del Repositorio

El repositorio incluye los ficheros XML con los canales de sindicación implementados:

    1. rss.xml (o similar): Fichero con el canal de noticias en formato RSS 2.0.
    2. atom.xml (o similar): Fichero con el canal de noticias en formato Atom 1.0.
    3. index.html: Página web que referencia ambos canales de sindicación en su cabecera.
    4. README.md (Este archivo).

Este proyecto demuestra la capacidad para difundir y gestionar contenidos web de forma estandarizada y eficiente, un pilar fundamental en las arquitecturas de información actuales.