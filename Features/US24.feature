Feature: US24 - Como personal del consultorio, quiero visualizar un resumen del inventario para tomar decisiones sobre abastecimiento

    Scenario: Scenario 1 - Visualización del dashboard de inventario
    Given que el personal accede a la sección de inventario
    And se encuentra en la vista general de gestión
    When selecciona la opción [Dashboard]
    Then la aplicación mostrará gráficos y métricas del inventario
    And se visualizarán indicadores de stock actual, consumo histórico y disponibilidad por categoría

    Examples:
    | Categoría        | Stock actual | Consumo mensual | Disponibilidad |
    | Insumos médicos  | 250          | 180             | Alta           |
    | Medicamentos     | 90           | 120             | Baja           |