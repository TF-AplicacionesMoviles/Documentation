Feature: TS05 - Edición de citas futuras

    Scenario: ES01 - Edición exitosa de una cita futura
        Given que el asistente ve una cita futura
        When modifique sus campos
        Then el sistema debe actualizarla exitosamente

        Examples:
        | username        | appointment_id | original_date | original_time | new_date   | new_time |
        | valeria.perez   | 0              | 2025-07-10     | 10:00         | 2025-07-12 | 09:30    |
        | andres.milla    | 1              | 2025-07-11     | 15:00         | 2025-07-13 | 11:00    |
