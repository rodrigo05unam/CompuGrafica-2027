# Laboratorio de Computación Gráfica e Interacción Humano-Computadora

**Rodrigo Jardón Marín** · No. de cuenta 321240693 · Grupo de laboratorio 09 · Semestre 2027-1

Prácticas de OpenGL en C++ (GLFW, GLEW, glm, assimp, SOIL2 y stb_image), todas dentro de un
mismo proyecto de Visual Studio (`ConfiBase`). Cada práctica es un `.cpp` con su propio `main()`.

## Cómo probar una práctica

1. Abrir **`ConfiBase.sln`** con **Visual Studio 2022** (o más reciente), en **Debug** y **x86**.
2. En el *Explorador de soluciones* → *Archivos de origen*, solo debe haber **un** `.cpp` activo
   (los demás aparecen con un ícono rojo de "excluido").
3. Para cambiar de práctica:
   - Clic derecho sobre el `.cpp` activo → **Propiedades** → *Excluido de la compilación* → **Sí**.
   - Clic derecho sobre el `.cpp` de la práctica deseada → **Propiedades** → *Excluido de la compilación* → **No**.
4. Presionar **F5**.

Por defecto está activa la práctica más reciente (`Maquina de estados.cpp`).

No hace falta configurar nada más: las librerías están en `External Libraries/` y el proyecto
las encuentra con rutas relativas (`$(SolutionDir)`).

## Prácticas

| Práctica | Archivo | Tema |
|---|---|---|
| P00 | `Main.cpp` | Configuración base: ventana y triángulo |
| P01 | `Main_Dibujo2D.cpp` | Dibujo de primitivas en 2D |
| P02 | `Main_P3.cpp` | Proyecciones y transformaciones básicas |
| P03 | `Main_Modelado.cpp` | Modelado geométrico (mesa) |
| P04 | `Modelado_Jerarquico.cpp` | Modelado jerárquico (brazo) |
| P05 | `Carga de Modelos.cpp` | Carga de modelos y cámara sintética |
| P06 | `Texturizado.cpp` | Texturizado |
| P07 | `Iluminacion.cpp` | Materiales e iluminación |
| P08 | `fuentesDeLuz.cpp` | Fuentes de luz |
| P09 | `Maquina de estados.cpp` | Animación: máquina de estados |

## Organización de archivos

- `ConfiBase/Shader/P0X/` — shaders de cada práctica. Van separados porque varias prácticas
  modifican archivos con el mismo nombre (`core.vs`, `lighting.frag`, `lamp.frag`).
- `ConfiBase/Models/P0X/` — modelos y texturas de cada práctica.
- `ConfiBase/images/` — texturas de la práctica de texturizado.

## Notas técnicas

- Conjunto de herramientas: **v143 (Visual Studio 2022)**, Windows SDK 10.0 (más reciente instalado).
- Plataforma: **x86 (Win32)**, porque las librerías incluidas son de 32 bits.
- El `.exe` se genera en `ConfiBase/bin/Debug/` y las DLL se copian ahí al compilar.
