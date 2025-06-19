Feature: TS09 - Restricción para eliminar citas pasadas

    Scenario: ES01 - Intento de eliminar una cita que ya ocurrió
        Given que la cita ya ocurrió
        When se intente eliminar
        Then el sistema debe bloquear la acción con un mensaje

        Examples:
        | username         | appointment_id | appointment_date | appointment_time |
        | carmen.sanchez   | 2              | 2025-06-15        | 08:00            |
        | roberto.mendoza  | 3              | 2025-06-18        | 12:30            |
