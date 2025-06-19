Feature: TS23 - Validar que el personal pueda eliminar un historial clínico con confirmación

    Scenario: Eliminación de historial clínico con confirmación
    Given que el personal accede al historial clínico de un paciente
    And visualiza la lista de historiales registrados
    When selecciona la opción [Eliminar historial] en un registro
    And confirma la acción en el cuadro de diálogo
    Then la aplicación eliminará dicho historial
    And actualizará la vista para reflejar los cambios

    Examples:
    | Diagnóstico eliminado    | Fecha del historial |
    | Caries superficial       | 2025-04-12          |
    | Periodontitis inicial    | 2025-05-03          |