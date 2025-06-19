Feature: US14 - Modificación de datos de pacientes

    Scenario: ES01 - Edición de datos exitosa
        Given que el personal accede a la sección de pacientes
        And selecciona a un paciente de la lista
        When actualice los datos en el formulario
        And presione el botón "Guardar cambios"
        Then el sistema actualizará la información del paciente correctamente

        Examples:
        | username        | patient_id | old_email                 | new_email                 | new_phone     |
        | diana.martinez  | 0          | juan.morales@correo.com   | juan.morales@sonrisas.pe | 987654321     |
        | diana.martinez  | 1          | laura.chavez@correo.pe    | laura.chavez@dentalux.pe | 912345678     |
