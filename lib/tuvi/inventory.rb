require "tuvi/inventory/version"
require "tuvi/inventory/step"

module Tuvi
  module Inventory

    def determine_next_step(current_step, input)
      if current_step.answer_paths[input]
        next_step_position = current_step.answer_paths[input]
      else
        puts "Sorry, I don't understand that answer. Please try again:"
        next_step_position = current_step.position
      end
      if current_step.test == "hi"
        next_step_position = 3
      end
      next_step_position
    end

  end
end
