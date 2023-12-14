class Api::MessagesController < ApplicationController

  before_action :set_cors_headers

    def index
      @messages = Message.all
      render json: @messages
    end

    private

    def set_cors_headers
      response.headers['Access-Control-Allow-Origin'] = '*'
      response.headers['Access-Control-Allow-Methods'] = 'GET, POST, PUT, PATCH, DELETE, OPTIONS, HEAD'
      response.headers['Access-Control-Allow-Headers'] = 'Content-Type'
      response.headers['Access-Control-Max-Age'] = '1728000'
    end
  end