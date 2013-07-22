class ProfilesController < ApplicationController
 # GET /profiles
 # GET /profiles.json
def index
 @profiles = Profile.all

respond_to do |format|
  format.html # index.html.erb
  format.json { render json: @profiles }
 end
end

# GET /profiles/1
# GET /profiles/1.json
def show
@profile = current_user.profile

 respond_to do |format|
  format.html # show.html.erb
  format.json { render json: @profile }
 end
end

# GET /profiles/new
# GET /profiles/new.json
def new
 @profile = Profile.new

 respond_to do |format|
  format.html # new.html.erb
  format.json { render json: @profile }
 end
end
