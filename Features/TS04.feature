Feature: TS04 - Validación de errores en el inicio de sesión

    Scenario: ES01 - Inicio de sesión fallido por credenciales incorrectas
        Given que el personal ya está registrado
        When ingrese su correo y contraseña
        And presione "Iniciar Sesión"
        Then debe ser advertido de que las credenciales son incorrectas

        Examples:
        | email                      | password       |
        | carla.lopez@sonrisas.pe    | Contraseña123  |
        | marco.perez@dentalux.pe    | ClaveErronea   |
