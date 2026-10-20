# Valeria Rojas — Portafolio y Sistema de diseño

Sitio web del portafolio de **Valeria Rojas**, diseñadora gráfica digital, acompañado de su sistema de diseño.

El proyecto está hecho con HTML, CSS y JavaScript nativos, sin dependencias externas ni instalación. Incluye una página de portafolio de desplazamiento continuo (con portada, sobre mí, proyectos, recorrido creativo y contacto) y una página aparte que documenta las decisiones visuales del sistema: colores, tipografía, layout, profundidad, formas orgánicas, componentes, buenas prácticas y comportamiento adaptativo. Ambas páginas comparten la misma identidad visual (rosa #E65286 y verde lima #D0E86E, tipografías Camiro, Bricolage Grotesque y Questrial, formas florales y animaciones suaves).

## Páginas publicadas

- **Portafolio:** https://valeriarojasm18-cmyk.github.io/itei-grupo-3/
- **Sistema de diseño:** https://valeriarojasm18-cmyk.github.io/itei-grupo-3/design.html

## Documentación

- [DESIGN.md](./DESIGN.md) — sistema de diseño: colores, tipografía, espaciado, elevación, formas y componentes.
- [CV.md](./CV.md) — arquitectura de información y contenido del portafolio.

## Estructura

```
index.html      Portafolio (página principal)
design.html     Sistema de diseño
DESIGN.md       Documentación del sistema de diseño
CV.md           Contenido y arquitectura del portafolio
assets/         Imágenes, flores y tipografías
```

## Técnica

Portafolio responsive (mobile-first) con HTML, CSS y JavaScript nativos, sin frameworks ni dependencias externas. Las flores y el degradado son decoración accesible: no tapan textos y se desactivan con `prefers-reduced-motion`. El formulario de contacto se limita a abrir la aplicación de correo del visitante, sin enviar nada por su cuenta.
