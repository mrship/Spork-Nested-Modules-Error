require 'spec_helper'

module LayerOne
  module LayerTwo
    describe DashboardController do
      describe "#layer_two" do
        it "renders the correct template" do
          get(:layer_two).should render_template :layer_two
        end
      end
    end
  end
end
