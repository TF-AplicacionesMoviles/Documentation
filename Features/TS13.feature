Feature: TS13 - Manejo de errores en el pago

    Scenario: ES01 - Mensaje de error y opción de reintento ante fallo en el pago
        Given que hay un error de transacción
        When el paciente intente pagar
        Then debe ver un mensaje de error y opción de reintento

        Examples:
        | username        | treatment_name     | card_number        | error_reason             |
        | ana.garcia      | Limpieza dental    | 4111111111110000   | Fondos insuficientes     |
        | luis.fernandez  | Ortodoncia inicial | 5500000000009999   | Datos de tarjeta inválidos |
