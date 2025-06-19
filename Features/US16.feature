Feature: US16 - Como personal del consultorio, quiero buscar pacientes por DNI para encontrarlos rápidamente en el sistema

    Scenario: Scenario 1 - Búsqueda exitosa por DNI
    Given que existen pacientes registrados en el sistema
    And el usuario se encuentra en la pantalla de búsqueda de pacientes
    When ingresa un número de DNI válido en el campo de búsqueda
    And selecciona el botón [Buscar]
    Then la aplicación mostrará al paciente correspondiente en los resultados

    Examples:
    | DNI         |
    | 74589632    |
    | 10234567    |