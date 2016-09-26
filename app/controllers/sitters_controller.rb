class SittersController < ApplicationController
  before_action :set_sitter, only: [:show, :edit, :update, :destroy]
  # GET /sitters
  # GET /sitters.json
  def index
    @sitters = Sitter.all
    @hash = Gmaps4rails.build_markers(@sitters) do |sitter, marker|
      marker.lat sitter.latitude
      marker.lng sitter.longitude
      sitter_path = view_context.link_to sitter.name, show_client_path(sitter)
      marker.infowindow "<b>#{sitter_path}</b>"
    end

    array_client = Array(current_user.client)
    @loc_client=Gmaps4rails.build_markers(array_client) do |client, marker|
      marker.lat client.latitude
      marker.lng client.longitude
      marker.infowindow "YOUR LOCATION"
    end
  end
  # GET /sitters/1
  # GET /sitters/1.json
  def show
  end
  def show_client
    @sitter = Sitter.find(params[:id])
  end

  # GET /sitters/new
  def new
    @sitter = Sitter.new
  end

  # GET /sitters/1/edit
  def edit
  end

  # POST /sitters
  # POST /sitters.json
  def create 
    @sitter = current_user.build_sitter(sitter_params)

    respond_to do |format|
      if @sitter.save
        format.html { redirect_to @sitter, notice: 'Sitter was successfully created.' }
        format.json { render :show, status: :created, location: @sitter }
      else
        format.html { render :new }
        format.json { render json: @sitter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sitters/1
  # PATCH/PUT /sitters/1.json
  def update
    respond_to do |format|
      if @sitter.update(sitter_params)
        format.html { redirect_to @sitter, notice: 'Sitter was successfully updated.' }
        format.json { render :show, status: :ok, location: @sitter }
      else
        format.html { render :edit }
        format.json { render json: @sitter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sitters/1
  # DELETE /sitters/1.json
  def destroy
    @sitter.user.destroy
    respond_to do |format|
      format.html { redirect_to destroy_user_session_path, notice: 'Sitter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sitter
      @sitter = Sitter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sitter_params
      params.require(:sitter).permit(:latitude, :longitude, :address, :description, :name, :date_of_birth, :phone, :avatar)
    end
end
