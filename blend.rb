#This program blends a recipe of ingredients together using the class Blender


	class Blender  # defining my class, Smoothy
		def prompt() # prompting the user
		 	puts "Turn on Blender? Yes or No"
		    ans = gets.chomp

		    if ans == "Yes"
		    	puts get_ingredients
		    	puts "All done!"
		    elsif ans == "No"
		    	puts "Turning off"
		    else
		    	puts "Didnt understand your input"
		    end
		end

		def initialize(my_recipe)  # creates a method from Blender.new
			@smoothie_recipe = my_recipe
		end

		def get_ingredients()
			@ing = @smoothie_recipe.keys.join("") #joining and putting nothing inbetween each element
			@no_air = @ing.delete(" ").split("").shuffle.join 
			return @no_air

		end

		

		

	end

recipe = {
		  'flax seeds' => '1 tbsp',
		  'chia seeds' => '1 tbsp',
		  'coconut flakes' => '1 tbsp',
		  'spirulina' => '1 tsp',
		  'pumpkin seeds' => '1 tbsp',
		  'oatmeal' => '1/4 cup',
		  'coco powder' => '1 tbsp',
		  'peanut butter' => '1 tbsp',
		  'almonds' => '1/4 cup',
		  'walnuts' => '1/4 cup',
		  'spinach' => '1/4 cup',
		  'greek yogurt' => '1/4 cup',
		  'nutrional yeast' => '1 tbsp',
		  'brussel sprouts' => '1/4 cup',
		  'asparagus' => '1/4 cup',
		  'kale' => '1/4 cup',
		  'brocoli rabe' => '1/4 cup',
		  'blue berries' => '1/4 cup',
		  'chopped banana' => '1/2 cup',
		  'straw berries' => '1/4 cup',
		  'mango' => '1/4 cup',
		  'hemp milk' => '1 cup'
	}

bld = Blender.new(recipe)
bld.prompt()




