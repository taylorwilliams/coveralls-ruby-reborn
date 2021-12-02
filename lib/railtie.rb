require 'coveralls'
require 'rails'

module MyGem
  class Railtie < Rails::Railtie
    railtie_name :coveralls

    rake_tasks do
      path = File.expand_path(__dir__)
      Dir.glob("#{path}/tasks/**/*.rake").each { |f| load f }
    end
  end
end
