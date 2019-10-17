class PortfoliosController < OpenReadController
  before_action :set_portfolio, only: [:update, :destroy]

  # GET /portfolios
  def index
    @portfolios = Portfolio.where(:user_id => current_user.id)

    render json: @portfolios
  end

  # GET /portfolios/1
  def show
    render json: Portfolio.find(params[:id])
  end

  # POST /portfolios
  def create
    @portfolio = current_user.portfolios.build(portfolio_params)

    if @portfolio.save
      render json: @portfolio, status: :created
    else
      render json: @portfolio.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /portfolios/1
  def update
    if @portfolio.update(portfolio_params)
      render json: @portfolio
    else
      render json: @portfolio.errors, status: :unprocessable_entity
    end
  end

  # DELETE /portfolios/1
  def destroy
    @portfolio.destroy

    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_portfolio
      @portfolio = current_user.portfolios.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def portfolio_params
      params.require(:portfolio).permit(:user_id, :name, :balance)
    end
end
