require 'spec_helper'
require_relative '../../app'
require 'rack/test'

RSpec.describe 'Application' do
    include Rack::Test::Methods

    let(:app) {Application.new}

    context "GET to /names" do
        it '200 OK - should return a list of names' do
            response = get('/names')

            expect(response.status).to eq(200)
            expect(response.body).to eq("Julia, Mary, Karim")
        end
    end

    context "POST to /sort-names" do
        it 'returns 200 OK - sorts names' do
            response = post('/sort-names')
      
            expect(response.status).to eq(200)
            expect(response.body).to eq "Alice,Joe,Julia,Kieran,Zoe"
        end
    end 
end
