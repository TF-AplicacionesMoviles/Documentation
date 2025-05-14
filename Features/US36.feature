Feature: US36 - Como visitante del sitio, quiero poder enviar un formulario de contacto con mis datos para recibir más información.

  Scenario: Scenario 1 - El visitante completa y envía el formulario de contacto
    Given que el visitante está en la sección del formulario
    And el visitante completa los campos [Nombre], [Email] y [Mensaje]
    When el visitante presiona el botón [Enviar]
    Then el sistema debe mostrar una confirmación de envío exitoso
    And en caso de error, el sistema debe mostrar un mensaje indicando el fallo

  Examples:
    | Nombre          | Email                         | Mensaje                                           |
    | Ana Torres      | ana.torres@email.com          | Me gustaría saber más sobre sus servicios web     |
    | Luis Mendoza    | luis.mendoza@correo.pe        | ¿Ofrecen soporte para un modo sin conexión?       |
