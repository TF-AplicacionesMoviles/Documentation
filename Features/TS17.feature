Feature: TS17 - Validar que el sistema muestre correctamente los pacientes registrados.

  Scenario: Scenario 1 - El personal visualiza la lista de pacientes registrados
    Given que el personal ha iniciado sesión en la aplicación
    And accede a la sección [Pacientes]
    When se cargue la pantalla
    Then la aplicación mostrará una lista con los datos de todos los pacientes registrados

  Examples:
    | Nombre     | Apellido  | DNI        | Fecha de nacimiento | Email            | Direccion        |
    | Camila     | Sanchez   | 12345678   | 1995-04-12          | camSan@gmail.com | Avenida Aviación |
    | Andrés     | Gutierrez | 87654321   | 1988-11-03          | andGus@gmail.com | Calle Agustín    |
