Feature: US03 - Recordatorios automáticos de citas dentales

    Scenario: ES01 - Envío automático de recordatorio por correo electrónico
    Given que una cita ha sido registrada con al menos 24 horas de anticipación
    When se acerque la fecha y hora de la cita
    Then el sistema enviará un correo recordatorio al paciente

    Examples:
    | patient_email            | appointment_date     | appointment_time |
    | ana.garcia@correo.com    | 2025-06-20            | 09:00            |
    | luis.fernandez@correo.pe | 2025-06-22            | 14:30            |

    Scenario: ES02 - Envío de notificación interna
    Given que el paciente ha iniciado sesión
    When tenga una cita próxima (24 horas antes)
    Then el sistema mostrará una notificación en la plataforma

    Examples:
    | username     | appointment_date | appointment_time |
    | ana.garcia   | 2025-06-20        | 09:00            |
    | luis.fernandez | 2025-06-22      | 14:30            |
