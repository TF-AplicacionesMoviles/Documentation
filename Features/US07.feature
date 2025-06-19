Feature: US07 - Eliminación de citas

    Scenario: ES01 - Eliminación confirmada de cita futura
        Given que el asistente accede a la lista de citas
        When seleccione una cita futura y confirme la eliminación
        Then la cita será eliminada del sistema y se notificará al paciente

        Examples:
        | username         | appointment_id | patient_email            | appointment_date | appointment_time |
        | carmen.sanchez   | 5              | ana.garcia@correo.com    | 2025-06-27        | 10:30            |
        | roberto.mendoza  | 6              | luis.fernandez@correo.pe | 2025-06-28        | 14:00            |

    Scenario: ES02 - Intento de eliminar cita pasada
        Given que la cita ya ocurrió
        When se intente eliminar
        Then el sistema impedirá la acción y mostrará un mensaje de restricción

        Examples:
        | username         | appointment_id | appointment_date | appointment_time |
        | carmen.sanchez   | 3              | 2025-06-10        | 08:00            |
        | roberto.mendoza  | 4              | 2025-06-15        | 13:00            |
