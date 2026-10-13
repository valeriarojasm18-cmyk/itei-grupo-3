---
name: Valeria Rojas Portfolio
# [REVISAR] Los valores marcados con REVIEW fueron completados por coherencia
# porque no estaban definidos en DESIGN.docx. Revisa antes de usar en producción.
# Nota de color: en DESIGN.docx las etiquetas hexadecimales de Verde / Crema /
# Rosa Claro parecen intercambiadas por su valor visual. Se reasignan abajo
# y se marca con REVIEW. Ver sección Colors.

colors:
  primary: "#E65286"
  primary-hover: "#C93E70"
  primary-soft: "#FDE6EC"
  rose-mid: "#EE7FA8"
  secondary: "#D0E86E"
  secondary-deep: "#7A9A1E"
  secondary-soft: "#F1F6D3"
  cream: "#FCE2BF"
  background: "#FDFDFD"
  surface: "{colors.background}"
  ink: "#1D1D1B"
  ink-muted: "#5A5A57"
  border-subtle: "#EDE8E1"
  focus: "{colors.primary}"
  heatmap-1: "{colors.primary}"
  heatmap-2: "{colors.secondary}"
  heatmap-3: "{colors.cream}"

typography:
  display:
    family: "'Camiro', 'Times New Roman', serif"
    weight: 400
    sizes:
      desktop: "80-96px"
      mobile: "44-56px"
    line-height: 1.02
    letter-spacing: "-0.02em"
    color: "{colors.ink}"
    use: "hero, palabras de gran escala, frases editoriales"
  heading:
    family: "'Bricolage Grotesque', 'Questrial', sans-serif"
    weight: 700
    sizes:
      section-desktop: "52-64px"
      section-mobile: "32-40px"
      project-desktop: "36-44px"
      project-mobile: "26-32px"
      subtitle: "20-24px"
    line-height: 1.1
    letter-spacing: "-0.01em"
    color: "{colors.ink}"
  body:
    family: "'Questrial', 'Helvetica Neue', sans-serif"
    weight: 400
    sizes:
      body: "17-18px"
      label: "14-15px"
      nav-button: "15-16px"
    line-height: 1.6
    letter-spacing: "0em"
    color: "{colors.ink}"
  link:
    family: "{typography.body.family}"
    weight: 400
    decoration: "none"
    color: "{colors.ink}"

spacing:
  base: "8px"
  scale:
    "0": "0px"
    "1": "8px"
    "2": "16px"
    "3": "24px"
    "4": "32px"
    "6": "48px"
    "8": "64px"
    "12": "96px"
  container-max: "1280px"
  margin-desktop: "{spacing.scale.8}"
  margin-mobile: "{spacing.scale.3}"
  section-gap-desktop: "{spacing.scale.12}"
  section-gap-mobile: "{spacing.scale.8}"
  text-max-width: "68ch"

rounded:
  sm: "12px"
  md: "16px"
  lg: "24px"
  xl: "32px"
  full: "999px"
  container: "{rounded.md}"
  feature: "{rounded.lg} / {rounded.xl}"
  pill: "{rounded.full}"

elevation:
  none: "none"
  subtle: "0 1px 2px rgba(29,29,27,0.06)"
  lift: "0 8px 24px rgba(29,29,27,0.10)"
  float: "0 16px 48px rgba(230,82,134,0.14)"

components:
  button-primary:
    shape: "{rounded.full}"
    font: "{typography.heading.family}"
    font-size: "{typography.body.sizes.nav-button}"
    padding: "{spacing.scale.2} {spacing.scale.4}"
    background-default: "{colors.primary}"
    background-alt: "{colors.secondary}"
    text-on-primary: "{colors.background}"
    text-on-secondary: "{colors.ink}"
    hover: "invertir color / crecer 1.02 / desplazar flecha 4px"
    focus-ring: "2px solid {colors.focus}"
  link-secondary:
    style: "texto + → / ↗ sin caja"
    color: "{colors.ink}"
    hover-color: "{colors.primary}"
    font: "{typography.body.family}"
  nav-desktop:
    items: "Valeria Rojas, Sobre mí, Proyectos, Experiencia, Contacto, Vamos a crear"
    shape: "recta -> {rounded.full} flotante en scroll"
    background: "{colors.background}"
    blur: "none"
  nav-mobile:
    topbar: "'Valeria Rojas' + botón menú"
    menu-items: "Sobre mí, Proyectos, Experiencia, Contacto, Vamos a crear"
  card-project:
    shape: "{rounded.md} o sin marco / flotante"
    background: "{colors.background}"
    shadow: "{elevation.none}"
    shadow-hover: "{elevation.lift}"
    hover-motion: "zoom 1.03 / desplazamiento 4-8px / revelar segunda vista"
  modal-cta:
    title: "Vamos a crear"
    shape: "{rounded.xl}"
    background: "{colors.background}"
    accent: "{colors.primary} + {colors.secondary} + heatmap suave"
    fields: "Nombre, Correo, ¿Qué tienes en mente?, Enviar mensaje"
    padding: "{spacing.scale.8}"
  input:
    shape: "{rounded.sm}"
    border: "1px solid {colors.border-subtle}"
    border-focus: "1.5px solid {colors.focus}"
    background: "{colors.background}"
    font: "{typography.body.family}"
  icon:
    style: "línea, limpio, ligeramente redondeado"
    symbols: "→ ↗ +"
---

# Valeria Rojas — Portfolio Design System

## Overview

Portfolio personal, actual, experimental e interactivo. No es un CV corporativo
ni una plantilla genérica.

La identidad se sostiene en tres decisiones:

1. Pareja protagonista rosa + verde (`{colors.primary}` + `{colors.secondary}`),
   que se alternan según fondo y composición sin jerarquía fija.
2. Contraste tipográfico editorial vs. funcional: Camiro para expresión,
   Bricolage Grotesque para jerarquía, Questrial para lectura.
3. Libertad controlada: retícula invisible, rupturas intencionales,
   formas orgánicas difusas tipo heat map y mucho aire.

La página es predominantemente clara (`{colors.background}`). El color intenso,
el movimiento y la ruptura de retícula aparecen en momentos concretos.
El espacio vacío es un recurso activo, no un hueco por rellenar.

## Colors

Rol de cada token (ver `colors` en front matter):

- Protagonistas: `{colors.primary}` rosa #E65286 y `{colors.secondary}`
  verde lima #D0E86E. Llamadas de atención, énfasis tipográfico, estados
  activos, botones, enlaces y detalles gráficos. Se alternan según fondo.
- Fondos de pausa: `{colors.background}` #FDFDFD, `{colors.cream}` #FCE2BF,
  `{colors.primary-soft}` #FDE6EC, `{colors.secondary-soft}` #F1F6D3.
  Ocupan superficies amplias para separar zonas sin depender de cajas.
- Texto: `{colors.ink}` #1D1D1B sobre fondos claros. `{colors.ink-muted}`
  para texto secundario. [REVISAR] `ink-muted` #5A5A57 inventado para
  jerarquía secundaria, validar contraste.
- Heat maps: degradados orgánicos que mezclan `{colors.heatmap-1}`,
  `{colors.heatmap-2}`, `{colors.heatmap-3}`. Son focos visuales parciales,
  no fondos permanentes.

Comportamiento:

- Los tonos claros pueden ocupar grandes superficies.
- Los tonos intensos (`{colors.primary}`, `{colors.secondary}`) solo en
  momentos de énfasis.
- Los heat maps aparecen estratégicamente, nunca en cada sección.

> [REVISAR — color] En DESIGN.docx: `Rosa Medio: #e65286` duplica el rosa
> principal; se propone `{colors.rose-mid}` #EE7FA8 como intermedio.
> `Verde: #fde6ec` es visualmente rosa pálido; se reasigna a
> `{colors.primary-soft}`. `Crema: #d0e86e` es visualmente lima; se reasigna
> a `{colors.secondary}`. `Rosa Claro: #fce2bf` es visualmente crema; se
> reasigna a `{colors.cream}`. `Verde Claro #f1f6d3`, `Blanco #fdfdfd` y
> `Gris Oscuro #1d1d1b` se conservan. Confirma esta corrección.
> [REVISAR] `{colors.primary-hover}` #C93E70 y `{colors.secondary-deep}`
> #7A9A1E inventados para hover y accesibilidad sobre fondo claro.
> El lima #D0E86E solo no pasa contraste para texto; usar texto
> `{colors.ink}` sobre él.

## Typography

Tokens en `typography`. Tres familias con roles estrictos:

- Display / Camiro Regular (`{typography.display.family}`): títulos,
  nombres de proyecto, frases cortas y palabras de gran escala como elemento
  gráfico. Puede aparecer fuera de encabezados de forma ocasional.
- Funcional / Bricolage Grotesque Bold (`{typography.heading.family}`):
  subtítulos, etiquetas importantes, botones y énfasis funcional.
- Lectura / Questrial Regular (`{typography.body.family}`): cuerpo,
  navegación, descripciones.

Escala escritorio (fluida, usar clamp):

- Hero: 80–96px (`{typography.display.sizes.desktop}`)
- Sección: 52–64px
- Proyecto: 36–44px
- Subtítulo: 20–24px
- Cuerpo: 17–18px, line-height 1.6
- Etiqueta: 14–15px
- Nav / Botón: 15–16px

Móvil: reducir conservando jerarquía, no reutilizar tamaños de escritorio.
Propuesta [REVISAR]: hero 44–56px, sección 32–40px, proyecto 26–32px.
Line-height display 1.02, heading 1.1 inventados [REVISAR].

Voz: contraste entre expresión (Camiro) y claridad (Questrial), con
Bricolage como sostén jerárquico. Símbolos → ↗ + forman parte del lenguaje
editorial.

> [REVISAR — fuentes] Camiro no está en Google Fonts (licencia comercial).
> Define fallback y plan de carga: `{typography.display.family}` usa
> Times New Roman como fallback temporal. Bricolage Grotesque y Questrial
> sí están en Google Fonts. Confirma pesos exactos y si Bricolage se usa
> solo en Bold.

## Layout

Tokens en `spacing` y `rounded`.

- Base 8px (`{spacing.base}`), múltiplos 16 / 24 / 32 / 48 / 64 / 96
  (`{spacing.scale.2}`–`{spacing.scale.12}`).
- Contenedor max `{spacing.container-max}` 1280px [REVISAR — inventado,
  no estaba en DOCX]. Márgenes generosos: `{spacing.margin-desktop}` 64px,
  `{spacing.margin-mobile}` 24px. Texto corrido max 68ch.
- Gap entre secciones: `{spacing.section-gap-desktop}` 96px,
  `{spacing.section-gap-mobile}` 64px [REVISAR — inventado].
- Retícula invisible: ordena pero no se percibe como columnas rígidas.
  Se permite desplazar imágenes, variar escalas, superposición ligera y
  elementos flotantes. La ruptura siempre es intencional; el texto conserva
  zonas de lectura claras.
- Transiciones de sección: cambio suave de fondo (`{colors.cream}` /
  `{colors.secondary-soft}` / `{colors.primary-soft}`), palabra grande en
  Camiro, heat map parcial, imagen continua o simplemente más
  `{spacing.scale.12}`.
- Móvil: reordenar a una columna, no solo escalar. Proyectos a una columna
  con imagen protagonista. Heat maps simplificados. Todo hover debe tener
  alternativa táctil. Los márgenes se reducen pero nunca desaparecen.

## Elevation & Depth

Sistema mayormente plano. Tokens en `elevation`.

- Reposo: `{elevation.none}`. Las tarjetas no tienen sombra por defecto.
- Hover / foco: `{elevation.lift}` `0 8px 24px rgba(29,29,27,0.10)`
  [REVISAR — valor inventado, validar sutileza].
- Flotante / modal: `{elevation.float}` [REVISAR].
- Botón: puede separarse del fondo sin sombra pesada. Imagen flotante:
  sombra muy tenue (`{elevation.subtle}`).
- Prohibido como lenguaje dominante: sombras pesadas, capas de vidrio,
  glassmorphism, blur generalizado.

Movimiento con intención (reduce con `prefers-reduced-motion`):

- Heat map reacciona al cursor solo en zonas específicas.
- Proyecto en hover: zoom ≤1.03 o desplazamiento 4–8px.
- Flotación lenta ocasional, sin distraer.
- Botones/enlaces y campos con estados visibles de hover/foco
  (`{components.button-primary.hover}`, `{components.input.border-focus}`).

> [REVISAR] Valores de sombra y duraciones (p. ej. 200–300ms ease-out)
> inventados; define curva oficial si usas librería de animación.

## Shapes

Tokens en `rounded`.

- Contenedores: `{rounded.container}` 16px. Superficies protagonistas:
  `{rounded.feature}` 24–32px. Botones y nav flotante: `{rounded.pill}` cápsula.
- No todo vive en tarjeta: alternar sin marco / contenedor redondeado /
  flotante para evitar monotonía rectángulo + sombra.
- Motivo distintivo: formas orgánicas, difusas, tipo heat map. Contrasta
  con contenedores limpios. Pueden romper la geometría pero nunca bloquear
  contenido ni reducir legibilidad (usar `pointer-events: none` y controlar
  contraste tras ellas) [REVISAR — regla técnica propuesta].

## Components

Ver `components` en front matter. La forma, tipografía y comportamiento se
mantienen; lo que alterna es el color según fondo.

Navegación (`{components.nav-desktop}`, `{components.nav-mobile}`):

- Escritorio: Valeria Rojas, Sobre mí, Proyectos, Experiencia, Contacto,
  Vamos a crear. En scroll: barra flotante compacta `{rounded.full}`.
  Rápida de leer, no corporativa.
- Móvil: topbar “Valeria Rojas” + botón menú; despliega las 5 secciones.

Botones y enlaces (`{components.button-primary}`, `{components.link-secondary}`):

- Primario cápsula (`{rounded.full}`), fondo `{colors.primary}` o
  `{colors.secondary}` según contraste con sección. Padding
  `{spacing.scale.2} {spacing.scale.4}` [REVISAR — inventado].
  Hover: invertir color / crecer 1.02 / flecha +4px.
- Secundario: texto + → / ↗ sin caja, hover a `{colors.primary}`.

Proyectos (`{components.card-project}`):

- Previews heterogéneas: imagen directa o mockup, escalas y desplazamientos
  distintos. Sin marco obligatorio.
- Hover: zoom mínimo, desplazamiento o segunda vista. No forzar mismo
  layout a todos.
- Página dedicada por proyecto: principalmente visual, texto mínimo para
  contexto / decisiones / resultado. Excepción con más texto solo si lo exige.

Formulario “Vamos a crear” (`{components.modal-cta}`, `{components.input}`):

- Espacio amplio `{rounded.xl}`, sin salir de la página. Campos: Nombre,
  Correo, ¿Qué tienes en mente?, Enviar mensaje. Correo visible como
  alternativa directa. Puede usar `{colors.primary}`, `{colors.secondary}`
  y heat map suave manteniendo lectura (`{colors.ink}` sobre
  `{colors.background}`).
- Campos simples; foco con borde `{components.input.border-focus}` rosa o
  verde. Iconos de línea ligeramente redondeados.

Imágenes: sin tratamiento único. Prohibido aplicar rectángulo + sombra por
defecto a cada imagen.

> [REVISAR] Falta especificar: padding vertical botones, altura mínima
> táctil 44px, estilo disabled, validación/errores del formulario y anchos
> de mockup. Se propone 44px mínimo y errores en `{colors.primary}` oscuro;
> confirma.

## Do's and Don'ts

Sí:

- Sí: usar rosa y verde como pareja protagonista, alternando según contexto
  (`{colors.primary}` ↔ `{colors.secondary}`).
- Sí: mantener aire, márgenes (`{spacing.margin-desktop}` /
  `{spacing.margin-mobile}`) y pausas con fondos claros.
- Sí: composiciones libres si la jerarquía sigue clara.
- Sí: usar Camiro (`{typography.display.family}`) como recurso expresivo
  puntual además de títulos.
- Sí: priorizar proyectos y adaptar presentación a cada uno
  (`{components.card-project}`).

No:

- No: estética corporativa, seria o de CV tradicional.
- No: llenar cada sección con heat maps, imágenes, tarjetas o animaciones.
- No: mostrar columnas rígidas ni encerrar todo en contenedores
  (`{rounded.container}` no es obligatorio).
- No: abusar de sombras (`{elevation.lift}` solo en hover), blur o
  glassmorphism.
- No: movimiento constante ni efectos exagerados; respetar
  `prefers-reduced-motion`.
- No: sacrificar lectura, contraste o navegación por experimentalismo.
- No: introducir estilos gráficos ajenos al sistema solo para decorar.
