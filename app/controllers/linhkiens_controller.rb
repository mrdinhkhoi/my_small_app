class LinhkiensController < ApplicationController
  before_action :set_linhkien, only: [:show, :edit, :update, :destroy]

  # GET /linhkiens
  # GET /linhkiens.json
  def index
    @linhkiens = Linhkien.all
    @linhkien  = Linhkien.new
    respond_to do |format|
      format.html
      format.csv { send_data @linhkiens.to_csv }
      format.xls # { send_data @products.to_csv(col_sep: "\t") }
    end
  end

  # GET /linhkiens/1
  # GET /linhkiens/1.json
  def show
  end

  # GET /linhkiens/new
  def new
    @linhkien = Linhkien.new
  end

  # GET /linhkiens/1/edit
  def edit
  end

  # POST /linhkiens
  # POST /linhkiens.json
  def create
    @linhkien = Linhkien.new(linhkien_params)

    respond_to do |format|
      if @linhkien.save
        format.html { redirect_to @linhkien, notice: 'Linhkien was successfully created.' }
        format.json { render :show, status: :created, location: @linhkien }
      else
        format.html { render :new }
        format.json { render json: @linhkien.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /linhkiens/1
  # PATCH/PUT /linhkiens/1.json
  def update
    respond_to do |format|
      if @linhkien.update(linhkien_params)
        format.html { redirect_to @linhkien, notice: 'Linhkien was successfully updated.' }
        format.json { render :show, status: :ok, location: @linhkien }
      else
        format.html { render :edit }
        format.json { render json: @linhkien.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /linhkiens/1
  # DELETE /linhkiens/1.json
  def destroy
    @linhkien.destroy
    respond_to do |format|
      format.html { redirect_to linhkiens_url, notice: 'Linhkien was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_linhkien
      @linhkien = Linhkien.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def linhkien_params
      params.require(:linhkien).permit(:ten, :loai, :price, :tondau, :nhap, :xuat, :toncuoi)
    end
end
