# Encapsulates helper methods and instance variables to be rendered in the ERB
# templates.
class Lono::Template
  class Context
    autoload :Loader, "lono/template/context/loader"

    include Lono::Template::Helper
    include Loader

    def initialize(blueprint, options={})
      @blueprint, @options = blueprint, options
      load_variables
      load_project_helpers
    end

    # Take a hash and makes them instance variables in the current scope.
    # Use this in custom helper methods to make variables accessible to ERB templates.
    def instance_variables!(variables)
      variables.each do |key, value|
        instance_variable_set('@' + key.to_s, value)
      end
    end
  end
end
