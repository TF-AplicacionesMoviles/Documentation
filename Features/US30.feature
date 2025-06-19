Feature: US30 - Como personal del consultorio, quiero acceder y editar mi perfil para mantener mi información personal actualizada

    Scenario: Scenario 1 - Visualización y edición del perfil
    Given que el personal ha iniciado sesión en la aplicación
    And accede a la sección [Perfil]
    Then podrá visualizar su información registrada (nombre, correo, especialidad, etc.)
    When edita sus datos y presiona el botón [Guardar cambios]
    Then la aplicación actualizará su perfil correctamente
    And mostrará un mensaje de confirmación

    Examples:
    | Nombre             | Correo                       | Especialidad     |
    | Ana Fernández      | ana.fernandez@dental.pe      | Ortodoncia       |
    | Marco Gómez        | marco.gomez@odontoplus.pe    | Endodoncia       |