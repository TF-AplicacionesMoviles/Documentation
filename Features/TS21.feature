Feature: TS21 - Validar que el sistema muestre resultados correctos al buscar por DNI

    Scenario: Búsqueda exitosa de paciente por DNI
    Given que existen pacientes registrados en el sistema
    And el personal accede al campo de búsqueda
    When ingresa un número de DNI válido
    And selecciona el botón [Buscar]
    Then la aplicación mostrará al paciente correspondiente en los resultados

    Examples:
    | DNI        |
    | 75489621   |
    | 10653248   |