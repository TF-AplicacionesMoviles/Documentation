Feature: TS31 - Guardar el ID de cada objeto consumido al registrar un tratamiento con ítems

    Scenario: Registro automático de IDs de objetos consumidos en un tratamiento
    Given que el personal está registrando un tratamiento para un paciente
    When se añaden ítems al tratamiento desde el inventario
    Then el sistema guardará automáticamente los IDs de los objetos consumidos
    And esos IDs quedarán vinculados al tratamiento en la base de datos

    Examples:
    | Tratamiento           | Objeto consumido     | ID del objeto |
    | Limpieza dental       | Guantes quirúrgicos  | 12345         |
    | Extracción molar      | Lidocaína 2%         | 67890         |