Feature: TS27 - Permitir al usuario seleccionar un objeto del inventario y modificar sus datos

    Scenario: Edición de objeto del inventario
    Given que el personal accede al módulo [Inventario]
    And visualiza la lista de objetos registrados
    When selecciona un objeto del inventario
    Then podrá ver sus datos actuales en un formulario editable
    When modifica los datos y presiona el botón [Guardar cambios]
    Then los datos del objeto se actualizarán en la base de datos
    And se reflejarán en la lista del inventario

    Examples:
    | Nombre original    | Nuevo nombre        | Nuevo tipo      | Nueva cantidad |
    | Algodón estéril    | Algodón quirúrgico  | Insumo médico   | 150            |
    | Ibuprofeno 400 mg  | Ibuprofeno 600 mg   | Medicamento     | 75             |