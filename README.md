# Google Cloud Function

## Installation

- Install Ruby
- Install the dependencies `bundle install`

## Running

```
$ bundle exec rake start

I, [2021-01-15T19:25:43.196614 #74487]  INFO -- : FunctionsFramework v0.7.0
I, [2021-01-15T19:25:43.196703 #74487]  INFO -- : FunctionsFramework: Loading functions from "./app.rb"...
I, [2021-01-15T19:25:43.197445 #74487]  INFO -- : FunctionsFramework: Looking for function name "hello_http"...
I, [2021-01-15T19:25:43.197515 #74487]  INFO -- : FunctionsFramework: Starting server...
I, [2021-01-15T19:25:43.347717 #74487]  INFO -- : FunctionsFramework: Serving function "hello_http" on port 8080...
```

## Deployment

Read more: https://cloud.google.com/functions/docs/first-ruby#creating_a_gcp_project_using_cloud_sdk

### Creating a GCP project using Cloud SDK

1. In the Google Cloud Console, on the project selector page, create a Google Cloud project:
   
    - Open the [Project Selector](https://console.cloud.google.com/projectselector2/home/dashboard?pli=1)
    - Click on __Create Project__
    - Set the __Project name__ to *hello-google-cloud-functions*
    - Leave __Location__ as *No Organization*
    - Click on __Create__

2. Make sure that [billing is enabled for your Cloud project.](https://cloud.google.com/billing/docs/how-to/modify-project)

3. Enable the Cloud Functions and Cloud Build APIs.

   - Open the [Google Cloud project setup wizard](https://console.cloud.google.com/flows/enableapi?apiid=cloudfunctions,cloudbuild.googleapis.com)
   - Under __Select a project where your application will be registered__ select *hello-google-cloud-functions* and press __Continue__
   - Click __Go to credentials__
   - Under __Which API are you using?__ select *Cloud Functions API*
   - Under __Are you planning to use this API with App Engine or Compute Engine?__ select *No, I’m not using them*

### Installing and setting up the Google Cloud SDK

1. Install and initialize the Cloud SDK.

- https://cloud.google.com/sdk/docs/quickstart

### Connecting the local project with the Google Cloud

1. Setup the function name and project ID in the environment file `.env`

The project ID can be found in the project's dashboard

```sh
PROJECT_ID=psychic-outcome-301815
FUNCTION_NAME=hello_http
```

2. Login onto your Google Cloud account

```
bundle exec rake login
```

3. Set the local Google Cloud Project

```
bundle exec rake setup
```

4. Deploy the function to Google Cloud

```
bundle exec rake deploy
```

5. Test the deployed function

```
bundle exec rake describe
```
