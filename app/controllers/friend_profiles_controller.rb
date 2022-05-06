class FriendProfilesController < ApplicationController
  before_action :set_friend_profile, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except:[:index, :show]

  # GET /friend_profiles or /friend_profiles.json
  def index
    @friend_profiles = FriendProfile.all
  end

  # GET /friend_profiles/1 or /friend_profiles/1.json
  def show
  end

  # GET /friend_profiles/new
  def new
    @friend_profile = FriendProfile.new
  end

  # GET /friend_profiles/1/edit
  def edit
  end

  # POST /friend_profiles or /friend_profiles.json
  def create
    @friend_profile = FriendProfile.new(friend_profile_params)

    respond_to do |format|
      if @friend_profile.save
        format.html { redirect_to friend_profile_url(@friend_profile), notice: "Friend profile was successfully created." }
        format.json { render :show, status: :created, location: @friend_profile }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @friend_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /friend_profiles/1 or /friend_profiles/1.json
  def update
    respond_to do |format|
      if @friend_profile.update(friend_profile_params)
        format.html { redirect_to friend_profile_url(@friend_profile), notice: "Friend profile was successfully updated." }
        format.json { render :show, status: :ok, location: @friend_profile }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @friend_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /friend_profiles/1 or /friend_profiles/1.json
  def destroy
    @friend_profile.destroy

    respond_to do |format|
      format.html { redirect_to friend_profiles_url, notice: "Friend profile was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_friend_profile
      @friend_profile = FriendProfile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def friend_profile_params
      params.require(:friend_profile).permit(:first_name, :last_name, :email, :contact, :image)
    end
end
