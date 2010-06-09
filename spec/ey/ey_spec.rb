require 'spec_helper'

describe "ey" do
  context "run without arguments" do
    it "prints usage information" do
      ey.should include("Commands:")
    end
  end

  context "run with an argument that is not a command" do
    it "tells the user that is not a command" do
      ey "foobarbaz", :expect_failure => true
      @err.should include("Could not find command")
    end
  end
end
