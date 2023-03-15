class InstructionsController < ApplicationController
  before_action :set_instruction, only: %i[ show edit update destroy ]

  # GET /instructions or /instructions.json
  def index
    @instructions = Instruction.all
  end

  # GET /instructions/1 or /instructions/1.json
  def show
  end

  # GET /instructions/new
  def new
    @instruction = Instruction.new
  end

  # GET /instructions/1/edit
  def edit
  end

  # POST /instructions or /instructions.json
  def create
    @instruction = Instruction.new(instruction_params)

    respond_to do |format|
      if @instruction.save
        format.html { redirect_to instruction_url(@instruction), notice: "Instruction was successfully created." }
        format.json { render :show, status: :created, location: @instruction }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @instruction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /instructions/1 or /instructions/1.json
  def update
    respond_to do |format|
      if @instruction.update(instruction_params)
        format.html { redirect_to instruction_url(@instruction), notice: "Instruction was successfully updated." }
        format.json { render :show, status: :ok, location: @instruction }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @instruction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instructions/1 or /instructions/1.json
  def destroy
    @instruction.destroy

    respond_to do |format|
      format.html { redirect_to instructions_url, notice: "Instruction was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instruction
      @instruction = Instruction.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def instruction_params
      params.require(:instruction).permit(:prep_time, :cook_time, :ingredient, :description)
    end
end
