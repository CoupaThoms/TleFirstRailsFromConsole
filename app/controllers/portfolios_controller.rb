class PortfoliosController < ApplicationController
  before_action :set_portfolio_items, only: [:edit, :update, :destroy]
  access all: [:show, :index], user:{except: [:destroy, :new, :create, :update, :edit]}, site_admin: :all

  layout 'portfolio'

  def index
    @portfolio_items = Portfolio.by_position    #.order("position ASC")
    #@portfolio_items = Portfolio.wrc
    #@portfolio_items = Portfolio.specific_portfolio_items
  end

  def sort
    params[:order].each do |key, value|
      Portfolio.find(value[:id]).update(position: value[:position])
    end

    render nothing: true #dit a rails qu'on a pas besoin d appeler une vue. On a just update la databaase et on a fini
  end

  def new
    @portfolio_items = Portfolio.new
  end

  def create
    @portfolio_items = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio_items.save
        format.html { redirect_to portfolios_path, notice: 'Portfolio item is now live.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
    #@portfolio_items = Portfolio.find(params[:id])
  end

  def update
    #@portfolio_items = Portfolio.find(params[:id])

    respond_to do |format|
      if @portfolio_items.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: 'The Portfolio was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def show
    #This one has no s ! so it's not at the before action
    @portfolio_item = Portfolio.find(params[:id])
  end

  def destroy
    #@portfolio_items = Portfolio.find(params[:id])

    @portfolio_items.destroy

    #Redirect part
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Portfolio was successfully destroyed.' }
    end
  end

  private

  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body)
  end

  def set_portfolio_items
    @portfolio_items = Portfolio.find(params[:id])
  end

end
