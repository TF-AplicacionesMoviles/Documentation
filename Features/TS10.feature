Feature: TS10 - Búsqueda de citas por fecha

    Scenario: ES01 - Búsqueda exitosa de citas por fecha
        Given que el personal está en la sección de citas
        When ingrese una fecha y presione buscar
        Then debe mostrar las citas de esa fecha

        Examples:
        | username       | search_date  | appointment_id | patient_name     | appointment_time |
        | elena.mendoza  | 2025-07-08   | 0              | Camila Ríos      | 09:00            |
        | elena.mendoza  | 2025-07-08   | 1              | Diego Fernández  | 11:30            |
