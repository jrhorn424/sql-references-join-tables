SELECT
  r.name AS recipe,
  r.directions AS directions,
  i.name AS ingredient,
  i.unit AS unit,
  ri.quantity
FROM recipe_ingredients ri
  INNER JOIN recipes r
  ON r.id = ri.recipe_id
  INNER JOIN ingredients i
  ON i.id = ri.ingredient_id
;
