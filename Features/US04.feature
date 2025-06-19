Feature: US04 - Visualización de citas registradas

    Scenario: ES01 - Visualización de citas registradas
        Given que el personal del consultorio ha iniciado sesión
        And accede a la sección de citas
        When se cargue la pantalla de citas
        Then la aplicación mostrará una lista con todas las citas registradas, incluyendo la información del paciente, fecha y hora

        Examples:
        | username      | appointment_id | patient_name     | appointment_date | appointment_time |
        | maria.rojas   | 1              | Ana García       | 2025-06-21       | 10:00            |
        | jose.lopez    | 2              | Luis Fernández   | 2025-06-22       | 15:30            |
