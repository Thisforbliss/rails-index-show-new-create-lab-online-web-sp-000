class CouponsController < ApplicationController
    def index
        @coupons = Coupon.all
    end
    
    def show
        @coupon = Coupon.find(params[:id])
    end
    
    def new
    end
    
    def create
        #@coupon = Coupon.create(:coupon_code => params[:coupon][:coupon_code], :store => params[:coupon][:store])
        @coupon = Coupon.create(coupon_params)
        redirect_to coupon_path(@coupon)
    end
    
    #controller do
    private
        def coupon_params
            params.require(:coupon).permit(:coupon_code, :store)
        end
    #end
end