Feature: TS14 - Visualización del historial de pagos del paciente

    Scenario: ES01 - Visualización del historial de pagos
        Given que el paciente accede al historial
        When lo visualice
        Then debe mostrar los pagos previos y sus estados

        Examples:
        | username        | payment_id | treatment_name     | payment_date | amount  | status     |
        | ana.garcia      | 0          | Limpieza dental    | 2025-06-10   | 120.00  | Completado |
        | luis.fernandez  | 1          | Ortodoncia inicial | 2025-06-12   | 350.00  | Completado |
