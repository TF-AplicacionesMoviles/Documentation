Feature: US17 - Como personal del consultorio, quiero registrar un nuevo historial clínico para tener un seguimiento detallado del paciente

    Scenario: Scenario 1 - Registro de historial clínico
    Given que el personal accede al perfil de un paciente
    And se encuentra en la sección de historial clínico
    When selecciona la opción [Añadir historial clínico]
    And completa los campos requeridos
    And presiona el botón [Guardar]
    Then la aplicación almacenará el nuevo historial vinculado al paciente

    Examples:
    | Diagnóstico              | Tratamiento propuesto        | Observaciones                     |
    | Caries dental leve       | Limpieza dental y fluoración | Se recomienda control en 3 meses  |
    | Gingivitis moderada      | Profilaxis y enjuague bucal  | Revisar evolución en próxima cita |