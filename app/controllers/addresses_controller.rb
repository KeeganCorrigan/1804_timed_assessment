class AddressesController < ApplicationController

  def new
    @address = Address.new(address_params)
  end

  def create
    @student = Student.find(params[:student_id])
    @address = @student.addresses.new(address_params)
    if @address.save
      redirect_to student_path(@student)
    else
      redirect_to student_path(@student)
    end
  end

  private

  def address_params
    params.require(:address).permit(:street, :city, :state, :zip_code)
  end

end
