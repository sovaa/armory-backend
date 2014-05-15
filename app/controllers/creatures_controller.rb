class CreaturesController < ApplicationController
  before_action :set_creature, only: [:show, :edit, :update, :destroy]

  # GET /creatures
  # GET /creatures.json
  def index
    @creatures = Creature.all
    respond_to do |format|
      format.html { render json: @creatures }
      format.json { render json: @creatures }
    end
  end

  # GET /creatures/1
  # GET /creatures/1.json
  def show
    @creature = set_creature
    respond_to do |format|
      format.html { render json: @creature }
      format.json { render json: @creature }
    end
  end

  # GET /creatures/new
  def new
    @creature = Creature.new
  end

  # GET /creatures/1/edit
  def edit
  end

  # POST /creatures
  # POST /creatures.json
  def create
    @creature = Creature.new(creature_params)

    respond_to do |format|
      if @creature.save
        format.html { redirect_to @creature, notice: 'Creature was successfully created.' }
        format.json { render action: 'show', status: :created, location: @creature }
      else
        format.html { render action: 'new' }
        format.json { render json: @creature.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /creatures/1
  # PATCH/PUT /creatures/1.json
  def update
    respond_to do |format|
      if @creature.update(creature_params)
        format.html { redirect_to @creature, notice: 'Creature was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @creature.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /creatures/1
  # DELETE /creatures/1.json
  def destroy
    @creature.destroy
    respond_to do |format|
      format.html { redirect_to creatures_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_creature
      @creature = Creature.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def creature_params
      params.require(:creature).permit(:name, :health)
    end
end
