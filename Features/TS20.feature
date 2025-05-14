Feature: TS20 - Validar que el sistema permita eliminar pacientes con confirmación

  Scenario: ES01 - El personal elimina un paciente
    Given que el personal accede a la lista de pacientes
    When seleccione un paciente
    And elija la opción de eliminar
    And confirme la acción
    Then la aplicación eliminará dicho registro de la base de datos

    Examples:
      | patient_id | first_name  | last_name  |removido |
      | 1          | Juan        | Pérez      | true    |
      | 2          | María       | González   | false   |
