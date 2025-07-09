Feature: US23 - Como personal del consultorio, quiero eliminar objetos del inventario

    Scenario: Scenario 1 - Eliminación de objeto del inventario
    Given que el personal accede a la lista del inventario
    And visualiza los objetos registrados
    When selecciona un objeto
    And presiona el botón [Eliminar]
    And confirma la acción en el cuadro de diálogo
    Then la aplicación eliminará el objeto seleccionado
    And actualizará la lista de inventario

    Examples:
    | Objeto a eliminar     | Tipo            |
    | Guantes quirúrgicos   | Insumo médico   |
    | Pasta fluorada        | Medicamento     |