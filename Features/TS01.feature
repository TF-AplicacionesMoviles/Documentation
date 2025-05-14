Feature: TS01 - Verificar que el personal pueda registrarse correctamente en la aplicación completando el formulario

  Scenario: ES01 - Registro exitoso del personal
    Given que el consultorio ya está registrado
    When el personal complete el formulario de registro
    And presione el botón [Registrarme]
    Then debe redirigirlo a la pantalla de inicio

    Examples:
      | CompanyName     | email                      | first_name | last_name | username        | password      | trial |
      | Sonrisa Feliz   | carla.lopez@dentify.pe     | Carla      | López     | carla.lopez     | CarlaSmile#1  | true  |
      | Dental Huánuco  | marco.perez@dentify.pe     | Marco      | Pérez     | marco.perez     | Marco2025$    | false |
