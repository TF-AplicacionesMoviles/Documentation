Feature: US09 - Gestión de horarios de atención del consultorio

    Scenario: ES01 - Ver horarios de atención con citas agendadas
        Given que soy un administrador autenticado en el sistema
        When accedo a la sección de gestión de horarios de atención
        Then debo poder ver los horarios disponibles y ocupados, con las citas agendadas reflejadas en la agenda

        Examples:
        | username        | appointment_id | specialist_name      | appointment_date | appointment_time |
        | admin.sonrident | 0              | Dra. Carla Salazar   | 2025-07-04        | 10:00            |
        | admin.dentalux  | 1              | Dr. Marco Gutiérrez  | 2025-07-04        | 15:00            |

    Scenario: ES02 - Editar horarios de atención
        Given que soy un administrador autenticado en el sistema
        When modifico los horarios de atención de un especialista
        Then el sistema debe actualizar automáticamente la disponibilidad y bloquear esos horarios para nuevas reservas si ya están ocupados por citas

        Examples:
        | username        | specialist_name      | modified_start | modified_end | blocked_time  |
        | admin.sonrident | Dra. Carla Salazar   | 08:00          | 12:00        | 10:00         |
        | admin.dentalux  | Dr. Marco Gutiérrez  | 14:00          | 18:00        | 15:00         |
