Feature: US10 - Pagos de tratamientos desde la plataforma

    Scenario: ES01 - Pago exitoso desde la plataforma
        Given que el paciente ha iniciado sesión y tiene un tratamiento pendiente de pago
        When acceda a la sección de pagos y complete los datos de su tarjeta
        Then el sistema procesará el pago y mostrará una confirmación

        Examples:
        | patient_username | treatment_id | card_number       | amount |
        | jose.vera        | 0            | 4111111111111111  | 150.00 |
        | claudia.torres   | 1            | 5500000000000004  | 320.00 |

    Scenario: ES02 - Error en el pago
        Given que el paciente intenta pagar
        When ocurra un error en la transacción (fondos insuficientes, datos inválidos, etc.)
        Then el sistema mostrará un mensaje de error y permitirá reintentar el pago

        Examples:
        | patient_username | treatment_id | card_number       | error_message              |
        | jose.vera        | 2            | 4111111111111234  | Fondos insuficientes       |
        | claudia.torres   | 3            | 550000000000abcd  | Número de tarjeta inválido |

    Scenario: ES03 - Ver historial de pagos
        Given que el paciente ha realizado pagos anteriores
        When acceda a la sección de historial
        Then podrá visualizar el detalle de los pagos realizados y sus estados

        Examples:
        | patient_username | payment_id | treatment_name    | amount | status     |
        | jose.vera        | 4          | Limpieza dental   | 150.00 | Pagado     |
        | claudia.torres   | 5          | Ortodoncia        | 320.00 | Pendiente  |
