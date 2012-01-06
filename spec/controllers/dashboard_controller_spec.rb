require 'spec_helper'

describe DashboardController do
  describe "#top_level" do
    it "renders a template" do
      get(:top_level).should render_template :top_level
    end
  end
end
