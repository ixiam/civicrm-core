{* file to handle db changes in 5.11.alpha1 during upgrade *}

SET @ColombiaCountryId = (SELECT id FROM civicrm_country cc WHERE cc.name = 'Colombia');

INSERT IGNORE INTO civicrm_state_province (country_id, abbreviation, name)
VALUES (@ColombiaCountryId, 'HUI', 'Huila');

UPDATE civicrm_state_province SET name = 'Caldas'
WHERE country_id = @ColombiaCountryId AND name = 'Caldea';
