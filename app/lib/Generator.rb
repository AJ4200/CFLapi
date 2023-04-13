class Generator
    attr_accessor :first_names, :last_names
  
    def initialize
      @rand = Random.new
      @first_names = []
      @last_names = []
  
      begin
        File.open("lib/data/first_names.txt", "r") do |f|
          f.each_line { |name| @first_names << name.chomp }
        end
        File.open("lib/data/last_names.txt", "r") do |f|
          f.each_line { |name| @last_names << name.chomp }
        end
      rescue => e
        puts "An error occurred while reading the names from the file."
        puts e.message
        puts e.backtrace.inspect
      end
    end
  
    # Generates a random number between the given minimum and maximum values (inclusive).
    def generate_random_number(min, max)
      @rand.rand(min..max)
    end
  
    # Generates a random name by combining a random first name from the first_names array with a random
    # last name from the last_names array.
    def generate_random_name
      first_name_index = generate_random_number(0, @first_names.size - 1)
      last_name_index = generate_random_number(0, @last_names.size - 1)
      "#{@first_names[first_name_index]} #{@last_names[last_name_index]}"
    end
  
    # Returns a copy of the first_names array.
    def get_first_names
      @first_names.clone
    end
  
    # Returns a copy of the last_names array.
    def get_last_names
      @last_names.clone
    end
  
    # Generates a random password with the given length.
    # The password contains letters, numbers, and special characters.
    def generate_password(length)
      # List of characters to be used in the password
      characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789:;,.?@!#$%&()-_=+[]{}<>"
  
      all = characters.chars
  
      # Generate random characters from the list and concatenate them to form the password
      password = ""
      length.times do
        random_char = all[generate_random_number(0, all.length - 1)]
        password += random_char
      end
  
      password
    end
  end
  