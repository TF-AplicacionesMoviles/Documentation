Feature: TS15 - Registro de pago de tratamiento por el personal

    Scenario: ES01 - Registro de pago y actualización del estado
        Given que el paciente recibió un tratamiento
        When el personal registre el monto pagado
        Then debe actualizar el estado como pagado y reducir el stock médico

        Examples:
        | username        | patient_name     | treatment_name     | amount  | stock_before | stock_after |
        | diana.martinez  | Ana García       | Limpieza dental    | 120.00  | 15           | 14          |
        | diana.martinez  | Luis Fernández   | Ortodoncia inicial | 350.00  | 10           | 9           |
