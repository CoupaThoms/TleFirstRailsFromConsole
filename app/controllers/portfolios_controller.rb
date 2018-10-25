class PortfoliosController < ApplicationController
  def index
    @portfolio_items = Portfolio.all
    #@portfolio_items = Portfolio.wrc
    #@portfolio_items = Portfolio.specific_portfolio_items
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
    @portfolio_items = Portfolio.find(params[:id])
  end

  def update
    @portfolio_items = Portfolio.find(params[:id])

    respond_to do |format|
      if @portfolio_items.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: 'The Portfolio was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def show
    @portfolio_item = Portfolio.find(params[:id])
  end

  def destroy
    @portfolio_items = Portfolio.find(params[:id])

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



end
