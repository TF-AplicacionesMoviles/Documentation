Feature: US22 - Como personal del consultorio, quiero modificar los datos de un objeto del inventario para reflejar información correcta y actualizada

    Scenario: Scenario 1 - Modificación de objeto del inventario
    Given que el personal accede a la sección de inventario
    And visualiza la lista de objetos registrados
    When selecciona un objeto de la lista
    And actualiza su información (nombre, tipo o cantidad)
    And presiona el botón [Guardar cambios]
    Then la aplicación guardará la información modificada del objeto
    And mostrará un mensaje de confirmación

    Examples:
    | Nombre original   | Nuevo nombre       | Nuevo tipo       | Nueva cantidad |
    | Guantes de látex  | Guantes quirúrgicos| Insumo médico    | 120            |
    | Pasta dental      | Pasta fluorada     | Medicamento      | 60             |