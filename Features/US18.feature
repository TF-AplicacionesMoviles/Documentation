Feature: US18 - Como personal del consultorio, quiero eliminar un historial clínico para mantener la información actualizada y precisa

    Scenario: Scenario 1 - Eliminación de historial clínico
    Given que el personal accede al historial clínico de un paciente
    And visualiza la lista de registros clínicos disponibles
    When selecciona la opción [Eliminar historial] en un registro
    And confirma la acción en el cuadro de diálogo
    Then la aplicación eliminará el historial seleccionado
    And actualizará la vista para reflejar los cambios

    Examples:
    | Diagnóstico a eliminar       |
    | Caries dental leve           |
    | Gingivitis moderada          |