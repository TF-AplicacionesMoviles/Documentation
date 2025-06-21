Feature: US08 - Búsqueda de citas por filtros

    Scenario: ES01 - Búsqueda de cita por fecha
        Given que el personal del consultorio se encuentra en la sección de citas
        When ingrese una fecha en el campo de búsqueda
        And seleccione el botón Buscar
        Then la aplicación mostrará las citas programadas para esa fecha

        Examples:
        | username       | search_date  | appointment_id | patient_name       | appointment_time |
        | elena.mendoza  | 2025-07-02   | 0              | Camila Ríos        | 09:00            |
        | elena.mendoza  | 2025-07-03   | 1              | Diego Fernández    | 11:30            |

    Scenario: ES02 - Búsqueda de citas por DNI
        Given que el personal del consultorio se encuentra en la sección de citas
        When ingrese el DNI de un paciente en el campo de búsqueda
        And seleccione el botón Buscar
        Then la aplicación mostrará las citas que coincidan con el DNI correspondiente

        Examples:
        | username       | search_dni | appointment_id | patient_name     | appointment_date | appointment_time |
        | elena.mendoza  | 73481255   | 2              | Camila Ríos      | 2025-07-02        | 09:00            |
        | elena.mendoza  | 40872911   | 3              | Diego Fernández  | 2025-07-03        | 11:30            |
