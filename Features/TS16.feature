Feature: TS16 - Visualización de historial de pagos por parte del personal

    Scenario: ES01 - Visualización del historial de pagos
        Given que el personal accede al módulo de pagos
        When seleccione la opción "Historial de pagos"
        Then la aplicación mostrará una lista de todos los pagos registrados con su fecha, monto y paciente asociado

        Examples:
        | username        | payment_id | patient_name     | payment_date | amount  |
        | diana.martinez  | 0          | Ana García       | 2025-07-01   | 120.00  |
        | diana.martinez  | 1          | Luis Fernández   | 2025-07-02   | 350.00  |
