# frozen_string_literal: true
class ListsController < ProtectedController
  before_action :set_list, only: [:show, :update, :destroy]

  # GET /lists
  def index
    @lists = current_user.lists.order(:id)

    render json: @lists
  end

  # GET /lists/1
  def show
    render json: @list
  end

  # POST /lists
  def create
    @list = current_user.lists.build(list_params)

    if @list.save
      render json: @list, status: :created
    else
      render json: @list.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /lists/1
  def update
    if @list.update(list_params)
      head :no_content
    else
      render json: @list.errors, status: :unprocessable_entity
    end
  end

  # DELETE /lists/1
  def destroy
    @list.destroy
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_list
    @list = current_user.lists.find(params[:id])
  end
  private :set_list
  # Only allow a trusted parameter "white list" through.
  def list_params
    params.require(:list).permit(:note)
  end
  private :list_params
end
