Feature: US19 - Como personal del consultorio, quiero visualizar el historial clínico de un paciente para revisar sus antecedentes y tratamientos

    Scenario: Scenario 1 - Visualización del historial clínico
    Given que el personal accede al perfil de un paciente
    And el paciente cuenta con registros clínicos previos
    When selecciona la opción [Ver historial clínico]
    Then la aplicación mostrará todos los registros clínicos asociados a dicho paciente

    Examples:
    | Paciente             | Número de historiales |
    | Juan Pérez           | 3                     |
    | María Rodríguez      | 5                     |