class CarsController < ApplicationController
  def index #works
    cars = Car.all
    render json: cars
  end

  def show #works
    car = Car.find(params[:id])
    render json: car
  end

  def create #works
    car = Car.create(make: params[:make], model: params[:model], year: params[:year], color: params[:color])
    render json: car
  end

  def update #works
    car = Car.find(params[:id])
    car.update(make: params[:make], model: params[:model], year: params[:year], color: params[:color])
    render json: car
  end

  def destroy #works
    car = Car.find(params[:id])
    car.destroy
    render :no_content
  end
end
