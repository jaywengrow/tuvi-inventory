require 'spec_helper'

describe Tuvi do

  class Program
    include Tuvi
    include Inventory
  end

  before(:each) do
    @program = Program.new
  end

  describe "The Tuvi language helper methods" do

    describe "test" do

      it "should assign a message based on message passed in block" do
        @program.step(1){set_test "Hello!"}
        @program.instance_eval{@steps[1]}.instance_eval{@test}.should == "Hello!"
      end

      it "should determine the next step based on answer paths" do
        @program.step(1){set_test "hi"; answer "yest", 3}
        current_step = @program.instance_eval{@steps[1]}
        @program.determine_next_step(current_step, "hi").should == 3
      end

    end


  end


end