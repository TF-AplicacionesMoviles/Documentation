Feature: TS06 - Restricción de edición en citas pasadas

    Scenario: ES01 - Intento de editar una cita pasada
        Given que la cita ya pasó
        When se intente editar
        Then el sistema debe mostrar un mensaje de restricción

        Examples:
        | username        | appointment_id | appointment_date | appointment_time |
        | valeria.perez   | 0              | 2025-06-10        | 08:00            |
        | andres.milla    | 1              | 2025-06-15        | 13:00            |
