Feature: US34 - Como visitante del sitio, quiero conocer los servicios ofrecidos para saber si se ajustan a mis necesidades.

  Scenario: Scenario 1 - Visualización de los servicios ofrecidos en la sección correspondiente
    Given que el visitante está en la sección de [Servicios]
    Then debe ver una lista o tarjetas con los servicios ofrecidos
    And cada servicio debe tener el título "<Título del Servicio>" y la descripción "<Descripción>"

  Examples:
    | Título del Servicio  | Descripción                                         |
    | Facturas             | Gestionamos tus facturas del consultorio            |
    | Gestión de citas     | Te ayudamos a gestionar tus citas con tus pacientes |
