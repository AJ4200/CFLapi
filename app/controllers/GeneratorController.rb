class GeneratorController < ApplicationController
    def generate_password
      gen = Generator.new
      password = gen.generate_password(params[:length].to_i)
      render json: { password: password }
    end
  
    def generate_random_name
      gen = Generator.new
      random_name = gen.generate_random_name
      render json: { random_name: random_name }
    end
  
    def generate_random_number
      gen = Generator.new
      random_number = gen.generate_random_number(params[:min].to_i, params[:max].to_i)
      render json: { random_number: random_number }
    end
  end
  