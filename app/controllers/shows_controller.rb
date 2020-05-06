class ShowsController < ApplicationController
  before_action :set_show, only: [:show, :edit, :update, :destroy, :favorite]

  def index
    @shows = Show.all
  end

  def show
  end

  def new
    @show = Show.new
  end

  def edit
  end

  def create
    @show = Show.new(show_params)

    respond_to do |format|
      if @show.save
        format.html { redirect_to @show, notice: 'Show was successfully created.' }
        format.json { render :show, status: :created, location: @show }
      else
        format.html { render :new }
        format.json { render json: @show.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @show.update(show_params)
        format.html { redirect_to @show, notice: 'Show was successfully updated.' }
        format.json { render :show, status: :ok, location: @show }
      else
        format.html { render :edit }
        format.json { render json: @show.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @show.destroy
    respond_to do |format|
      format.html { redirect_to shows_url, notice: 'Show was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def favorite
    type = params[:type]
    if type == "favorite"
      current_user.favorites << @show
      redirect_to root_path, notice: 'Added to Your favorited shows'
    elsif type == "unfavorite"
      current_user.favorites.delete(@show)
      redirect_to root_path, notice: 'Removed from Your favorited shows'
    else
      redirect_to root_path, notice: 'Nothing happened.'
    end
  end

  private
    def set_show
      @show = Show.find(params[:id])
    end

    def show_params
      params.require(:show).permit(:name, :time, :channel_id)
    end
end
