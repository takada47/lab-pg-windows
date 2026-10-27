-- Миграция 001: создание таблицы audit_log для аудита изменений.
-- Хранит тип события, целевую таблицу, старые и новые данные,
-- пользователя, выполнившего действие, и время события.
CREATE TABLE IF NOT EXISTS audit_log (
    id bigserial PRIMARY KEY,
    event_type text NOT NULL,
    target_table text NOT NULL,
    old_data jsonb,
    new_data jsonb,
    actor text NOT NULL,
    occurred_at timestamptz NOT NULL DEFAULT now()
);

COMMENT ON TABLE audit_log IS 'Журнал аудита изменений данных';