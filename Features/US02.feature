Feature: US02 - Como personal del consultorio, quiero iniciar sesión en la aplicación para acceder a las funcionalidades.

  Scenario: Scenario 1 - Personal del consultorio inicia sesión correctamente
    Given que el personal del consultorio ya se encuentra registrado en la aplicación
    And el usuario se encuentra en el formulario de inicio de sesión
    When ingresa su [Correo] y [Contraseña]
    And selecciona el botón [Iniciar Sesión]
    Then la aplicación lo redirigirá a la pantalla de inicio con acceso a sus funcionalidades

  Examples:
    | Correo                         | Contraseña       |
    | carla.reyes@dentalplus.pe      | CarlaDent2024!   |
    | jose.martinez@sonrisa.pe       | JoseSmile#55     |
