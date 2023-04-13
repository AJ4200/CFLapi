class CommonFunctions
    # Check if a number is even.
    def self.is_even(num)
      num % 2 == 0
    end
  
    # Check if a number is odd.
    def self.is_odd(num)
      num % 2 != 0
    end
  
    # Calculate the factorial of a number.
    def self.factorial(num)
      result = 1
      (1..num).each { |i| result *= i }
      result
    end
  
    # Calculate the greatest common divisor (GCD) of two numbers.
    def self.gcd(a, b)
      while b > 0
        temp = b
        b = a % b
        a = temp
      end
      a
    end
  
    # Calculate the least common multiple (LCM) of two numbers.
    def self.lcm(a, b)
      a * b / gcd(a, b)
    end
  
    # Check if a number is prime.
    def self.is_prime(num)
      return false if num <= 1
  
      (2..Math.sqrt(num)).each do |i|
        return false if num % i == 0
      end
      true
    end
  
    # Swap the values of two variables.
    def self.swap_variable_value(arr, i, j)
      arr[i], arr[j] = arr[j], arr[i]
    end
  
    # Reverse a string.
    def self.reverse_string(str)
      str.reverse
    end
  end
  