Feature: TS12 - Pago de tratamiento desde la plataforma

    Scenario: ES01 - Pago exitoso de tratamiento
        Given que el paciente tiene un tratamiento pendiente
        When complete los datos de pago
        Then el sistema debe procesar y confirmar el pago

        Examples:
        | username        | treatment_name     | card_number        | amount  |
        | ana.garcia      | Limpieza dental    | 4111111111111111   | 120.00  |
        | luis.fernandez  | Ortodoncia inicial | 5500000000000004   | 350.00  |
