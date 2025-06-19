Feature: TS07 - Registro correcto de una nueva cita

    Scenario: ES01 - Registro exitoso de una nueva cita
        Given que el personal está autenticado
        When complete los datos de la cita y presione "Registrar"
        Then debe guardarse y aparecer en la lista

        Examples:
        | username      | patient_name     | appointment_date | appointment_time |
        | maria.rojas   | Ana García       | 2025-07-05       | 10:00            |
        | jose.lopez    | Luis Fernández   | 2025-07-06       | 16:00            |
