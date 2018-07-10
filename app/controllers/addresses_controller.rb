class AddressesController < ApplicationController

  def new
    @student = Student.find(params[:student_id])
  end

  def create
    @student = Student.find(params[:student_id])
    @address = @student.addresses.new(contact_params)
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
