class CommonFunctionsController < ApplicationController
  def compute_function
    type = params[:type]
    input1 = params[:input1].to_i
    input2 = params[:input2].to_i

    result = nil
    case type
    when 'isEven'
      result = CommonFunctions.is_even?(input1)
    when 'isOdd'
      result = CommonFunctions.is_odd?(input1)
    when 'factorial'
      result = CommonFunctions.factorial(input1)
    when 'gcd'
      result = CommonFunctions.gcd(input1, input2)
    when 'lcm'
      result = CommonFunctions.lcm(input1, input2)
    when 'isPrime'
      result = CommonFunctions.is_prime?(input1)
    when 'swapVariableValue'
      result = 'swapped'
    when 'reverseString'
      result = CommonFunctions.reverse_string(input1.to_s)
    else
      # Handle invalid request
    end

    render json: { result: result }
  end
end
