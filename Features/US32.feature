Feature: US32 - Como visitante del sitio, quiero poder hacer clic en los elementos del menú para navegar a las secciones correspondientes de la misma página.

  Scenario: Scenario 1 - El visitante navega por la landing page desde la barra principal
    Given que el visitante está en la landing page
    When hace clic en el elemento del menú [About Us]
    Then la vista debe desplazarse suavemente a la sección [About Us]
    When hace clic en el elemento del menú [Services]
    Then la vista debe desplazarse suavemente a la sección [Services]
    When hace clic en el elemento del menú [Contact Us]
    Then la vista debe desplazarse suavemente a la sección [Contact Us]
    When hace clic en el elemento del menú [Formulario]
    Then la vista debe desplazarse suavemente a la sección [Formulario]

Examples:
  | Sección 1  | Sección 2   | Sección 3     | Sección 4  |
  | About Us   | Services    | Contact Us    | Formulario |
  | Services   | Formulario  | About Us      | Contact Us |