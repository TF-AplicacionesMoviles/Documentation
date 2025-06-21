Feature: US06 - Registro de nuevas citas

    Scenario: ES01 - Registro de una nueva cita
        Given que el personal del consultorio ha iniciado sesión
        And se encuentra en la sección de citas
        When seleccione la opción para añadir nueva cita
        And complete los campos requeridos como paciente, fecha y hora
        And confirme el registro
        Then la aplicación guardará la nueva cita y la mostrará en la lista de citas registradas

        Examples:
        | username      | patient_name     | appointment_date | appointment_time |
        | maria.rojas   | Ana García       | 2025-06-25        | 11:00            |
        | jose.lopez    | Luis Fernández   | 2025-06-26        | 16:30            |
