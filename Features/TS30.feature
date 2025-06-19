Feature: TS30 - Guardar automáticamente la fecha de cualquier edición o consumo registrado en el inventario

    Scenario: Registro automático de fecha al editar un objeto del inventario
    Given que el personal accede al módulo [Inventario]
    When se realiza una edición de un objeto (nombre, tipo o cantidad)
    Then el sistema almacenará automáticamente la fecha y hora del ajuste en el historial del objeto

    Examples:
    | Objeto              | Fecha esperada     |
    | Algodón quirúrgico  | 2025-06-18 10:34    |
    | Jeringa 5 ml        | 2025-06-18 11:12    |

    Scenario: Registro automático de fecha al registrar un consumo de inventario
    Given que el personal accede al módulo [Inventario]
    When se registra un consumo que disminuye el stock de un objeto
    Then el sistema almacenará automáticamente la fecha y hora del ajuste en el historial del objeto

    Examples:
    | Objeto          | Fecha esperada     |
    | Lidocaína 2%    | 2025-06-18 11:07    |
    | Guantes Nitrilo | 2025-06-18 11:45    |