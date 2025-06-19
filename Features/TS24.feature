Feature: TS24 - Validar que se muestre el historial clínico completo de un paciente

    Scenario: Visualización del historial clínico del paciente
    Given que el personal accede al perfil de un paciente
    And el paciente tiene historiales clínicos registrados
    When selecciona la opción [Ver historial clínico]
    Then la aplicación mostrará todos los registros clínicos asociados a dicho paciente

    Examples:
    | Paciente         | Historiales clínicos esperados |
    | Juan Ramírez     | 3                              |
    | Lucía Gonzales   | 5                              |