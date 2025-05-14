Feature: US01 - Como personal del consultorio, quiero registrarme en la aplicación para acceder a los servicios.

  Scenario: ES01 - Personal del consultorio se registra en la aplicación
    Given que el consultorio odontológico se ha registrado en la aplicación
    When esté en la pantalla de registro
    And complete los datos solicitados en el formulario de registro: [CompanyName], [email], [first_name], [last_name], [username], [password], [trial]
    And seleccione el botón [Registrarme]
    Then la aplicación redirigirá al personal odontológico a la pantalla de inicio

    Examples:
        | CompanyName       | email                        | first_name | last_name       | username         | password       | trial |
        | Dental Lima       | ana.ramirez@dentify.pe       | Ana        | Ramírez Torres  | ana.ramirez      | AnaDent2025!   | true  |
        | Clínica Gutiérrez | luis.gutierrez@dentify.pe    | Luis       | Gutiérrez       | luis.gutierrez   | LuisClinic#1   | false |
