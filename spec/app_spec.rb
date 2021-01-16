RSpec.describe 'functions_hello_http_get' do
  around do |example|
    load_temporary('app.rb') { example.run }
  end

  it 'responds with the correct response body' do
    request = make_get_request('http://example.com:8080/')
    response = call_http('hello_http', request)

    expect(response.status).to eq(200)
    expect(response.body.join).to eq("Hello, world!\n")
  end
end
