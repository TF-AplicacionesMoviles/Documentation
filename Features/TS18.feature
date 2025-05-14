Feature: TS18 - Validar que el sistema permita guardar nuevos pacientes correctamente

  Scenario: ES01 - El personal registra un nuevo paciente
    Given que el personal accede a la sección de pacientes
    When complete el formulario con los datos del nuevo paciente
    And presione el botón [Guardar]
    Then la aplicación registrará al paciente y lo mostrará en la lista

    Examples:
      | first_name | last_name  | birth_date  | gender   | email                        | phone        |
      | Juan       | Pérez      | 1990-06-15  | Masculino | juan.perez@dentify.pe       | 999123456    |
      | María      | González   | 1985-11-20  | Femenino | maria.gonzalez@dentify.pe    | 987654321    |
