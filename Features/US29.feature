Feature: US29 - Como personal del consultorio, quiero acceder a un menú general para navegar fácilmente entre las secciones del sistema

    Scenario: Scenario 1 - Acceso al menú de navegación
    Given que el personal ha iniciado sesión correctamente en la aplicación
    And se encuentra en la pantalla principal del sistema
    When accede a la vista general
    Then visualizará un menú de navegación con las siguientes secciones:
      | Sección     |
      | Citas       |
      | Pacientes   |
      | Inventario  |
      | Perfil      |
      | Pagos       |
      | Dashboard   |

    Examples:
    | Usuario                     |
    | ana.fernandez@dental.pe    |
    | marco.gomez@odontoplus.pe  |