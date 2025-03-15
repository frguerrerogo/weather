# Weather App

Aplicación de clima con soporte para múltiples entornos (desarrollo y producción) usando flavors.

## 🚀 Instalación y Configuración

### Requisitos previos

- **Flutter 3.29.0** o superior.
- **Dart 3.7.0** o superior.
- Dependencias instaladas con `flutter pub get`.

### Instalación

1. Clonar el repositorio:
   ```bash
   git clone https://github.com/frguerrerogo/weather.git
   cd weather
   ```
2. Instalar dependencias:
   ```bash
   flutter pub get
   ```
3. Ejecutar la aplicación:
    - Para ejecutar la aplicación en modo desarrollo (Dev), usa:
        ```bash
        flutter run --flavor dev -t lib/main.dart
        ```
    - Para ejecutar la aplicación en modo producción (Production), usa:
        ```bash
        flutter run --flavor prod -t lib/main.dart
        ```
    - Depuración en Visual Studio Code

        El proyecto está configurado para soportar la depuración con los ambientes 'Dev' y 'Prod' desde 'Run and Debug' en Visual Studio Code.
