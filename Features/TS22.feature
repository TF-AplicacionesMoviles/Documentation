Feature: TS22 - Validar que se pueda añadir un historial clínico a un paciente

    Scenario: Registro exitoso de historial clínico
    Given que el personal accede al perfil de un paciente
    And se encuentra en la sección de historial clínico
    When selecciona la opción [Añadir historial clínico]
    And completa los campos requeridos
    And presiona el botón [Guardar]
    Then la aplicación almacenará el nuevo historial vinculado al paciente

    Examples:
    | Diagnóstico              | Tratamiento sugerido           | Observaciones                   |
    | Caries superficial       | Limpieza dental                | Seguimiento en 3 meses          |
    | Periodontitis inicial    | Raspado y alisado radicular    | Revisión en la próxima consulta |