Feature: US37 - Como visitante del sitio, quiero ver información adicional en el pie de página para acceder a datos legales o complementarios.

  Scenario: ES01 - El visitante visualiza el footer informativo al final de la página
    Given que el visitante está al final de la página
    Then debe ver un footer con información como derechos de autor
    And enlaces a redes sociales o políticas del sitio si están disponibles

    Examples:
      | Página              | Derechos de autor visibles                     | Enlaces disponibles                          |
      | /index.html         | © 2025 Dentify. Todos los derechos reservados. | Facebook, Instagram, Políticas de privacidad |
      | /servicios.html     | © 2025 Dentify. Todos los derechos reservados. | Solo Políticas de privacidad                 |
