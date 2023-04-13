# app/controllers/generator_controller.rb

require_relative '../../lib/generator.rb'

class GeneratorController < ApplicationController

  gen = Generator.new

  def generate_password
    password = gen.generate_password(params[:length].to_i)
    render json: { password: password }
  end

  def generate_random_name
    random_name = gen.generate_random_name
    render json: { random_name: random_name }
  end

  def generate_random_number
    random_number = gen.generate_random_number(params[:min].to_i, params[:max].to_i)
    render json: { random_number: random_number }
  end
end


