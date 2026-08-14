# Sistema de Gestión de Sastrería

Plataforma móvil para el control de órdenes de trabajo, seguimiento de medidas anatómicas y gestión de estados de confección en tiempo real. 

## El dominio

- `Pedido` — entidad principal. Identidad: `id`. Representa una orden de trabajo única para un cliente.
- `Medidas` — objeto de valor. Almacena las dimensiones anatómicas. Se compara por su contenido, no tiene identidad propia.
- `EstadoPedido` — clase sellada (sealed). Garantiza los estados lógicos de la prenda: `Pendiente` · `EnConfeccion` · `Terminado` · `Entregado`. Restringe la edición a los estados permitidos.

**Decisión de Arquitectura** 
Implementé un modelo híbrido usando la librería Freezed. Escrib manualmente la factoría `fromJson` para preservar el control del manejo de errores con la excepción personalizada `CampoInvalido`, mientras que delegué a Freezed la generación mecánica de la igualdad profunda (`==`), `hashCode` y el método `copyWith`. Conservé los archivos generados en el repositorio para agilizar la compilación inicial

## Cómo correrlo

    flutter pub get
    flutter test
    flutter run