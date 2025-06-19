Feature: TS34 - Implementar un menú principal que muestre las secciones: citas, pacientes, inventario, perfil, pagos y dashboard

    Scenario: Visualización y navegación del menú principal tras iniciar sesión
    Given que el usuario ha iniciado sesión correctamente
    And accede a la pantalla principal de la aplicación
    Then visualizará un menú de navegación con las siguientes secciones:
      | Sección     |
      | Citas       |
      | Pacientes   |
      | Inventario  |
      | Perfil      |
      | Pagos       |
      | Dashboard   |
    When el usuario selecciona una opción del menú
    Then será redirigido a la vista correspondiente

    Examples:
    | Opción seleccionada | Vista esperada      |
    | Citas               | /citas              |
    | Inventario          | /inventario         |
    | Dashboard           | /dashboard          |