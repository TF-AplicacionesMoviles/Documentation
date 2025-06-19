Feature: TS08 - Eliminación de cita futura y notificación al paciente

    Scenario: ES01 - Eliminación exitosa de una cita futura
        Given que el asistente selecciona una cita futura
        When confirme la eliminación
        Then debe eliminarse y enviarse la notificación

        Examples:
        | username         | appointment_id | patient_email            | appointment_date | appointment_time |
        | carmen.sanchez   | 0              | ana.garcia@correo.com    | 2025-07-10        | 11:00            |
        | roberto.mendoza  | 1              | luis.fernandez@correo.pe | 2025-07-11        | 14:30            |
