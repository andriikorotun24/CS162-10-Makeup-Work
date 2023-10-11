--What are the ingredients for a given recipe?
SELECT IngredientName, Quantity 
FROM Ingredients 
JOIN RecipeIngredients ON Ingredients.IngredientID = RecipeIngredients.IngredientID 
WHERE RecipeID = 1;  -- Replace 1 with the desired RecipeID

--What are the favorite repices of a user?
SELECT RecipeName 
FROM Recipes 
JOIN UserFavorites ON Recipes.RecipeID = UserFavorites.RecipeID 
WHERE UserID = 1;  -- Replace 1 with the desired UserID

--What is the caloric value of a given recipe?
SELECT SUM(CaloricValue) as TotalCalories 
FROM Ingredients 
JOIN RecipeIngredients ON Ingredients.IngredientID = RecipeIngredients.IngredientID 
WHERE RecipeID = 1;  -- Replace 1 with the desired RecipeID

--What is the meal plan for a user for a given week?
SELECT RecipeName, Date 
FROM Recipes 
JOIN MealPlans ON Recipes.RecipeID = MealPlans.RecipeID 
WHERE UserID = 1 AND Date BETWEEN '2023-10-10' AND '2023-10-16';

--How much time it will take to prepare all meals in a user's meal plan for a day?
SELECT SUM(CookingTime) as TotalCookingTime 
FROM Recipes 
JOIN MealPlans ON Recipes.RecipeID = MealPlans.RecipeID 
WHERE UserID = 1 AND Date = '2023-10-10';
