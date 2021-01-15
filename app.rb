require "functions_framework"
 
FunctionsFramework.http "hello_http" do |request|
  "Hello, world!\n"
end