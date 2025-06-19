Feature: TS29 - Crear una vista de dashboard para visualizar métricas y gráficos de inventario

    Scenario: Visualización de métricas y gráficos del inventario en el dashboard
    Given que el personal accede al módulo [Inventario]
    And selecciona la opción [Dashboard]
    Then la aplicación mostrará una vista con gráficos de stock, consumo y disponibilidad por tipo de objeto
    And los datos estarán actualizados en tiempo real o mediante sincronización periódica

    Examples:
    | Categoría         | Stock actual | Consumo mensual | Disponibilidad |
    | Insumos médicos   | 320          | 210             | Alta           |
    | Medicamentos      | 85           | 110             | Baja           |