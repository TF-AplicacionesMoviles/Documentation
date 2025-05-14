Feature: US33 - Como visitante del sitio, quiero ver información sobre la empresa en la sección About Us para conocer su misión y valores.

  Scenario: ES01 - El visitante visualiza el contenido de la sección About Us
    Given que el visitante ha  navegado a la sección [About Us]
    Then debe ver texto con información clara sobre la empresa
    And un diseño consistente con el resto de la página

    Examples:
      | URL              | Contenido visible                         | Diseño consistente |
      | /about-us.html   | Misión, visión y valores de la empresa    | Sí                 |
      | /#about          | Descripción general y objetivos           | Sí                 |
