Feature: US05 - Edición de citas registradas

    Scenario: ES01 - Modificación exitosa de una cita
        Given que el asistente visualiza una cita futura
        When edite los campos permitidos (fecha, hora, tratamiento, profesional)
        Then la información se actualizará correctamente en el sistema

        Examples:
        | username         | appointment_id | new_date   | new_time | treatment        | professional         |
        | carmen.sanchez   | 3              | 2025-06-23 | 11:00    | Limpieza dental  | Dr. Alejandro Ramos  |
        | roberto.mendoza  | 4              | 2025-06-24 | 09:30    | Ortodoncia       | Dra. Eliana Torres   |

    Scenario: ES02 - Cita pasada no editable
        Given que una cita ya ha pasado
        When el asistente intente editarla
        Then el sistema mostrará un mensaje indicando que no puede ser modificada

        Examples:
        | username         | appointment_id | original_date | original_time |
        | carmen.sanchez   | 1              | 2025-06-10     | 08:00         |
        | roberto.mendoza  | 2              | 2025-06-15     | 13:00         |
