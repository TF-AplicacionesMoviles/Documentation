Feature: TS19 - Validar que se actualicen correctamente los datos de un paciente.

  Scenario: Scenario 1 - El personal edita y guarda los datos de un paciente exitosamente
    Given que el personal accede a la sección [Pacientes]
    And selecciona a un paciente de la lista
    When actualiza los datos en el formulario
    And presiona el botón [Guardar cambios]
    Then el sistema actualizará la información del paciente correctamente

  Examples:
    | Nombre anterior   | Nombre actualizado | Email anterior            | Email actualizado          |
    | Camila            | Carmilia           | camSan@gmail.com          | Carm12@outlook.com         |
    | Andrés            | Andrew             | andGus@gmail.com          | andyG@gamil.com            |
