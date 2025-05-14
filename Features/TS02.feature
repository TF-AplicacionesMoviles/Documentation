Feature: TS02 - Verificar que el personal registrado pueda iniciar sesión con sus credenciales válidas.

  Scenario: Scenario 1 - El personal inicia sesión correctamente con credenciales válidas
    Given que el personal ya está registrado
    And el usuario se encuentra en el formulario de inicio de sesión
    When ingresa su [Correo] y [Contraseña]
    And presiona el botón [Iniciar Sesión]
    Then debe ser redirigido a la pantalla de inicio

  Examples:
    | Correo                          | Contraseña       |
    | laura.gomez@odontosalud.pe      | Laura2024@       |
    | miguel.rojas@clinicadental.pe   | M!guelDent55     |
