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
        @program.step(1){test "Hello!"}
        @program.instance_eval{@steps[1]}.instance_eval{@test}.should == "Hello!"
      end

    end


  end


end