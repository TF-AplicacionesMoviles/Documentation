Feature: US21 - Como personal del consultorio, quiero añadir nuevos objetos al inventario para mantener actualizado el stock disponible

    Scenario: Scenario 1 - Registro de nuevo objeto
    Given que el personal accede al módulo de inventario
    And se encuentra en la sección de gestión de objetos
    When selecciona la opción [Añadir objeto]
    And completa los campos requeridos: [Nombre], [Tipo], [Cantidad]
    And presiona el botón [Guardar]
    Then la aplicación registrará el objeto en el inventario
    And actualizará la lista de stock disponible

    Examples:
    | Nombre             | Tipo           | Cantidad |
    | Guantes de látex   | Insumo médico  | 100      |
    | Pasta dental       | Medicamento    | 50       |