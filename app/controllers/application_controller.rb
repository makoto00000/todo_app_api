class ApplicationController < ActionController::API
  def index
    render json: { status: 'success' }
  end
end
