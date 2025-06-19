Feature: TS03 - Validación de errores en el registro de personal

    Scenario: ES03 - Registro fallido por campos incompletos
        Given que el personal está en la zona de registro
        When ingrese datos en blanco
        And presione "Registrarse"
        Then debe ser advertido de que faltan campos por completar

        Examples:
        | company_name     | email                    | first_name | last_name | username       | password       | trial |
        | Sonrisas Perú    |                          | Ana        | Ramírez   | ana.ramirez    | Ana123#        | true  |
        | Dental Vida      | roberto.perez@vida.pe    |            | Pérez     | roberto.perez  | Rober456!      | false |
        | Dental Clean     | laura.rios@clean.pe      | Laura      |           | laura.rios     |                | true  |
