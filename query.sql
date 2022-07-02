WITH RECURSIVE gen AS 
(
  SELECT 	  causality.id_entity_from, 
              causality.id_entity_to 
  FROM 		  causality
  UNION ALL
  SELECT 		causality.id_entity_from, 
               gen.id_entity_to
  FROM 		   gen
  INNER JOIN 	causality ON gen.id_entity_from = causality.id_entity_to
)
SELECT `entity_from`.`nome` AS `entity_from`,
		 `entity_to`.`nome` AS `entity_to`
FROM        gen
INNER JOIN `entity` AS `entity_from` ON `entity_from`.`id` = `gen`.`id_entity_from`
INNER JOIN `entity` AS `entity_to` ON `entity_to`.`id` = `gen`.`id_entity_to`
ORDER BY    id_entity_to