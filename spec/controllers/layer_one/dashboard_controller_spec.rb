require 'spec_helper'

module LayerOne
  describe DashboardController do
    describe "#layer_one" do
      it "should render the correct template" do
        get(:layer_one).should render_template :layer_one
      end
    end
  end
end
