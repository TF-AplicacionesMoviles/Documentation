Feature: TS11 - Búsqueda de citas por DNI del paciente

    Scenario: ES01 - Búsqueda exitosa de citas por DNI
        Given que el personal está en la sección de citas
        When ingrese un DNI y presione buscar
        Then debe mostrar las citas que coincidan con ese paciente

        Examples:
        | username       | search_dni | appointment_id | patient_name     | appointment_date | appointment_time |
        | elena.mendoza  | 73481255   | 0              | Camila Ríos      | 2025-07-08        | 09:00            |
        | elena.mendoza  | 40872911   | 1              | Diego Fernández  | 2025-07-08        | 11:30            |
