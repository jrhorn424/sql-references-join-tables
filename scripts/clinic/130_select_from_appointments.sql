-- What are all the appointments, for which doctors are they, and for which
-- patients?

SELECT d.family_name, d.specialty, p.family_name, a.starts_at
  FROM appointments a
    INNER JOIN doctors d
    ON d.id = a.doctor_id
    INNER JOIN patients p
    ON p.id = a.patient_id
;
