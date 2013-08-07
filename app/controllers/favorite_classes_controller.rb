class FavoriteClassesController < ApplicationController
  before_action :set_favorite_class, only: [:show, :edit, :update, :destroy]

  # GET /favorite_classes
  # GET /favorite_classes.json
  def index
    @favorite_classes = FavoriteClass.all
  end

  # GET /favorite_classes/1
  # GET /favorite_classes/1.json
  def show
  end

  # GET /favorite_classes/new
  def new
    @favorite_class = FavoriteClass.new
  end

  # GET /favorite_classes/1/edit
  def edit
  end

  # POST /favorite_classes
  # POST /favorite_classes.json
  def create
    @favorite_class = FavoriteClass.new(favorite_class_params)

    respond_to do |format|
      if @favorite_class.save
        format.html { redirect_to @favorite_class, notice: 'Favorite class was successfully created.' }
        format.json { render action: 'show', status: :created, location: @favorite_class }
      else
        format.html { render action: 'new' }
        format.json { render json: @favorite_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /favorite_classes/1
  # PATCH/PUT /favorite_classes/1.json
  def update
    respond_to do |format|
      if @favorite_class.update(favorite_class_params)
        format.html { redirect_to @favorite_class, notice: 'Favorite class was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @favorite_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /favorite_classes/1
  # DELETE /favorite_classes/1.json
  def destroy
    @favorite_class.destroy
    respond_to do |format|
      format.html { redirect_to favorite_classes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favorite_class
      @favorite_class = FavoriteClass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def favorite_class_params
      params.require(:favorite_class).permit(:dance_class_id, :user_id)
    end
end
