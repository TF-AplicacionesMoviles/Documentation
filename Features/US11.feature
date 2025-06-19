Feature: US11 - Visualización del historial de pagos

    Scenario: ES01 - Visualización de historial de pagos
        Given que el personal accede al módulo de pagos
        When seleccione la opción "Historial de pagos"
        Then la aplicación mostrará una lista de todos los pagos registrados con su fecha, monto y paciente asociado

        Examples:
        | username        | payment_id | patient_name     | payment_date | amount |
        | diana.martinez  | 0          | Juan Morales     | 2025-07-01    | 150.00 |
        | diana.martinez  | 1          | Laura Chávez     | 2025-07-02    | 320.00 |
