Feature: TS33 - Permitir especificar la cantidad de cada objeto usado en un tratamiento y guardarlo en el historial

    Scenario: Registro de la cantidad utilizada por objeto en un tratamiento
    Given que el personal está registrando un tratamiento para un paciente
    And selecciona objetos del inventario para asociarlos al tratamiento
    When especifica la cantidad utilizada de cada objeto
    And guarda el tratamiento
    Then el sistema almacenará la cantidad utilizada de cada objeto como parte del historial de consumo

    Examples:
    | Tratamiento         | Objeto              | Cantidad usada |
    | Limpieza dental     | Guantes quirúrgicos | 2              |
    | Extracción molar    | Lidocaína 2%        | 1              |