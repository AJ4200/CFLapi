require 'digest'

# A module that implements several common hashing functions.
module Hashing
  
  # Computes the MD5 hash of a given input string.
  # 
  # @param input [String] the input string
  # @return [String] the MD5 hash of the input string
  def self.md5(input)
    begin
      md = Digest::MD5.new
      md.update(input)
      md.hexdigest
    rescue Exception => e
      raise RuntimeError, e
    end
  end

  # Computes the SHA-1 hash of a given input string.
  # 
  # @param input [String] the input string
  # @return [String] the SHA-1 hash of the input string
  def self.sha1(input)
    begin
      sha1 = Digest::SHA1.new
      sha1.update(input)
      sha1.hexdigest
    rescue Exception => e
      raise RuntimeError, e
    end
  end

  # Computes the SHA-256 hash of a given input string.
  # 
  # @param input [String] the input string
  # @return [String] the SHA-256 hash of the input string
  def self.sha256(input)
    begin
      sha256 = Digest::SHA256.new
      sha256.update(input)
      sha256.hexdigest
    rescue Exception => e
      raise RuntimeError, e
    end
  end

  # Computes the SHA-512 hash of a given input string.
  # 
  # @param input [String] the input string
  # @return [String] the SHA-512 hash of the input string
  def self.sha512(input)
    begin
      sha512 = Digest::SHA512.new
      sha512.update(input)
      sha512.hexdigest
    rescue Exception => e
      raise RuntimeError, e
    end
  end
end
