Feature: TS25 - Validar que el personal pueda ver el inventario con los objetos y su stock

    Scenario: Visualización del inventario con stock disponible
    Given que el personal se encuentra correctamente logueado en la aplicación
    And accede al módulo [Inventario]
    When ingresa a la sección de visualización de objetos
    Then la aplicación mostrará la lista de todos los objetos registrados
    And se incluirá su stock disponible correspondiente

    Examples:
    | Objeto              | Tipo           | Stock disponible |
    | Guantes quirúrgicos | Insumo médico  | 120              |
    | Anestesia local     | Medicamento    | 35               |