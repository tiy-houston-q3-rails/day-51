class NicePeopleController < ApplicationController
  before_action :set_nice_person, only: [:show, :edit, :update, :destroy]

  # GET /nice_people
  # GET /nice_people.json
  def index
    @nice_people = NicePerson.all
    @nice_people = @nice_people.where(city: params[:city]) if params[:city].present?

  end

  # GET /nice_people/1
  # GET /nice_people/1.json
  def show
  end

  # GET /nice_people/new
  def new
    @nice_person = NicePerson.new
  end

  # GET /nice_people/1/edit
  def edit
  end

  # POST /nice_people
  # POST /nice_people.json
  def create
    @nice_person = NicePerson.new(nice_person_params)

    respond_to do |format|
      if @nice_person.save
        format.html { redirect_to @nice_person, notice: 'Nice person was successfully created.' }
        format.json { render :show, status: :created, location: @nice_person }
      else
        format.html { render :new }
        format.json { render json: @nice_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nice_people/1
  # PATCH/PUT /nice_people/1.json
  def update
    respond_to do |format|
      if @nice_person.update(nice_person_params)
        format.html { redirect_to @nice_person, notice: 'Nice person was successfully updated.' }
        format.json { render :show, status: :ok, location: @nice_person }
      else
        format.html { render :edit }
        format.json { render json: @nice_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nice_people/1
  # DELETE /nice_people/1.json
  def destroy
    @nice_person.destroy
    respond_to do |format|
      format.html { redirect_to nice_people_url, notice: 'Nice person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nice_person
      @nice_person = NicePerson.find_by(permalink: params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nice_person_params
      params.require(:nice_person).permit(:name, :city, :hair, :age)
    end
end
