Feature: TS26 - Implementar un formulario que permita al personal del consultorio añadir nuevos objetos al inventario con nombre, tipo y cantidad

    Scenario: Registro de nuevo objeto mediante formulario
    Given que el personal accede al módulo [Inventario]
    And visualiza el botón [Añadir objeto]
    When selecciona el botón [Añadir objeto]
    And completa los campos requeridos: [Nombre], [Tipo], [Cantidad]
    And envía el formulario
    Then el objeto se añadirá a la base de datos
    And aparecerá en la lista del inventario con su información correspondiente

    Examples:
    | Nombre             | Tipo           | Cantidad |
    | Mascarilla N95     | Insumo médico  | 200      |
    | Lidocaína 2%       | Medicamento    | 40       |