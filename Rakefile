require 'dotenv/load'

function_name = ENV.fetch('FUNCTION_NAME')
project_id = ENV.fetch('PROJECT_ID')

desc 'Run the app on port 8080'
task :start do
  `bundle exec functions-framework-ruby --target #{function_name}`
end

desc 'Deploys the app to Google Cloud'
task :deploy do
  `gcloud functions deploy #{function_name} --runtime ruby27 --trigger-http --allow-unauthenticated`
end

desc 'Logs into Google Cloud Environment'
task :login do
  `gcloud auth login`
end

desc 'Sets up the Google Cloud Environment'
task :setup do
  `gcloud config set project #{project_id}`
end

desc 'Displays the information about the function in Google Cloud'
task :describe do
  `gcloud functions describe #{function_name}`
end

desc 'Displays the app logs'
task :logs do
  `gcloud functions logs read #{function_name}`
end
