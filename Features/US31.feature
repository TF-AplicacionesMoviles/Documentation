Feature: US31 - Como visitante del sitio, quiero ver un menú principal en la parte superior de la página para acceder fácilmente a otras secciones.

  Scenario: ES01 - El visitante visualiza el menú principal al cargar la landing page
    Given que el visitante están en la landing page
    When se carga completamente el sitio
    Then el menú principal debe ser visible en la parte superior de la página
    And debe mostrar los enlaces [About Us], [Services], [Contact Us] y [Formulario]

    Examples:
      | Página actual      | Enlaces visibles                               | Sección del menú |
      | index.html         | About Us, Services, Contact Us, Formulario     | About Us         |
      | index.html         | About Us, Services, Contact Us, Formulario     | Services         |
      | index.html         | About Us, Services, Contact Us, Formulario     | Contact Us       |
      | index.html         | About Us, Services, Contact Us, Formulario     | Formulario       |
