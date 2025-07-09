Feature: TS35 - Permitir visualizar y editar los datos del perfil del usuario

    Scenario: Visualización y edición del perfil del usuario
    Given que el usuario ha iniciado sesión en la aplicación
    And accede a la sección [Perfil]
    Then podrá visualizar su información actual registrada (nombre, correo, especialidad, etc.)
    When edita sus datos
    And presiona el botón [Guardar]
    Then la información será actualizada correctamente en la base de datos
    And la vista mostrará los datos actualizados

    Examples:
    | Nombre original  | Nuevo nombre     | Correo                         |
    | Ana Fernández    | Ana F. Sánchez   | ana.sanchez@dental.pe          |
    | Marco Gómez      | Marco A. Gómez   | marco.gomez@odontoplus.pe      |