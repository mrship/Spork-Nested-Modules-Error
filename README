== Spork 0.9 v 0.8 module error

There are 3 controllers in the app, each called DashboardController. They are split into 2 modules, thus:

    class DashboardController < ApplicationController
    end
    
    module LayerOne
        class DashboardController < ApplicationController
        end
        module LayerTwo
            class DashboardController < ApplicationController
            end
        end
    end
    
To setup, clone the repo and run using Spork with v0.9.RC
    `gem install bundler --pre`
    `bundle`
    `bundle exec spork`
    `rspec spec`
    
This shows 2 spec errors about routes not being available in the 'root' DashboardController, even though the specs being run are from the module versions on DashboardController.
Running the specs individually works without a problem.

    `rspec spec spec/controllers/dashboard_controller_spec.rb`
    `rspec spec spec/controllers/layer_one/dashboard_controller_spec.rb`
    `rspec spec spec/controllers/layer_one/layer_two/dashboard_controller_spec.rb`

However, if you drop back to 0.8.5 of Spork, thus:

1. Alter the Gemfile to comment line 19
    `gem 'spork', '~> 0.9.0.rc'`
2. Uncomment line 20
3. Run `bundle update spork`

Then run as before:
    `bundle exec spork`
    `rspec spec`
    
You'll notice that all specs run just fine.