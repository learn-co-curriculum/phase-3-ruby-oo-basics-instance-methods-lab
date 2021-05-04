require_relative '../lib/dog'
require_relative '../lib/person'

RSpec.configure do |config|
  config.order = :default
end

def file_includes_class_definition(file,class_name)
   search_result = File.open(file).grep(/class #{Regexp.quote(class_name)}/).first
   if search_result
     search_result.include?("class #{class_name}")
   else
     message = "#{file} does not appear to include a class definition for #{class_name}"
     raise NameError, message
   end
end

def get_variable_from_file(file, variable)
  file_scope = binding
  file_scope.eval(File.read(file))

  begin
    return file_scope.local_variable_get(variable)
  rescue NameError
    raise NameError, "local variable `#{variable}' not defined in #{file}."
  end
end