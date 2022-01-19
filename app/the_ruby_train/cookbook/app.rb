
require_relative "app/repositories/meal_repository"
require_relative "router"


MEALS_CSV_FILE = File.join(__dir__, "data/meals.csv")


# meal_repository = MealRepository.new(MEALS_CSV_FILE)




router = Router.new(meals_controller)
router.run