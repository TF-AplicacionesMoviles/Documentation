Feature: TS28 - Permitir al usuario eliminar un objeto del inventario previa confirmación

    Scenario: Eliminación de objeto del inventario con confirmación
    Given que el personal accede al módulo [Inventario]
    And visualiza la lista de objetos registrados
    When presiona el botón [Eliminar] en un objeto del inventario
    Then se mostrará un cuadro de confirmación
    When el usuario confirma la eliminación
    Then el objeto será eliminado de la base de datos
    And se actualizará la lista del inventario

    Examples:
    | Objeto a eliminar     | Tipo           |
    | Gasas estériles       | Insumo médico  |
    | Amoxicilina 500 mg    | Medicamento    |