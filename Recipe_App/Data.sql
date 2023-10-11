-- Users
INSERT INTO Users (Email, Password, FullName) VALUES ('john.doe@email.com', 'password123', 'John Doe');

-- Recipes
INSERT INTO Recipes (RecipeName, Preparation, CookingTime) VALUES ('Spaghetti', 'Boil and serve with sauce', 20);
INSERT INTO Recipes (RecipeName, Preparation, CookingTime) VALUES ('Omelette', 'Mix eggs and fry', 10);

-- Ingredients
INSERT INTO Ingredients (IngredientName, CaloricValue) VALUES ('Spaghetti', 200);
INSERT INTO Ingredients (IngredientName, CaloricValue) VALUES ('Egg', 70);
INSERT INTO Ingredients (IngredientName, CaloricValue) VALUES ('Cheese', 100);

-- RecipeIngredients
INSERT INTO RecipeIngredients (RecipeID, IngredientID, Quantity) VALUES (1, 1, '200g');
INSERT INTO RecipeIngredients (RecipeID, IngredientID, Quantity) VALUES (2, 2, '2 pcs');
INSERT INTO RecipeIngredients (RecipeID, IngredientID, Quantity) VALUES (2, 3, '50g');

-- MealPlans
INSERT INTO MealPlans (UserID, RecipeID, Date) VALUES (1, 1, '2023-10-10');
INSERT INTO MealPlans (UserID, RecipeID, Date) VALUES (1, 2, '2023-10-11');

-- UserFavorites
INSERT INTO UserFavorites (UserID, RecipeID) VALUES (1, 2);
