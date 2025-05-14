Feature: US35 - Como visitante del sitio, quiero tener acceso a datos de contacto para poder comunicarme con la empresa.

  Scenario: ES01 - El visitante visualiza la información de contacto en la sección Contact Us
    Given que el visitante está en la sección [Contact Us]
    Then debe ver una dirección, número de teléfono y correo electrónico válidos
    And deben estar visibles y legibles

    Examples:
      | URL              | Dirección visible          | Teléfono visible | Correo electrónico visible     |
      | /contact-us.html | Av. Central 123, Lima      | (01) 234-5678    | contacto@empresa.com.pe        |
      | /#contact        | Calle Ficticia 456, Cusco  | (084) 765-4321   | info@empresa.com.pe            |
