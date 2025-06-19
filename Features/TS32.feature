Feature: TS32 - Guardar el ID de la factura generada junto con el registro de consumo de inventario

    Scenario: Registro del ID de la factura al consumir objetos del inventario
    Given que el personal completa el proceso de facturación de un tratamiento
    And el tratamiento incluye objetos consumidos del inventario
    When se genera la factura
    Then el sistema almacenará automáticamente el ID de la factura
    And lo vinculará con los datos de los objetos consumidos en el inventario

    Examples:
    | Tratamiento           | Objeto consumido     | ID objeto | ID factura  |
    | Limpieza dental       | Guantes quirúrgicos  | 12345     | FCT-2025-001 |
    | Extracción molar      | Lidocaína 2%         | 67890     | FCT-2025-002 |