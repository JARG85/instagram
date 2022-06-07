class ProfileController < ApplicationController
  before_action :authenticate_user!
  layout "navbar"
end
