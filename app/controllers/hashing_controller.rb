require 'digest'

class HashingController < ApplicationController
  def hash
    type = params[:type]
    input = params[:input]

    hash = case type
           when "md5"
             Digest::MD5.hexdigest(input)
           when "sha1"
             Digest::SHA1.hexdigest(input)
           when "sha256"
             Digest::SHA256.hexdigest(input)
           when "sha512"
             Digest::SHA512.hexdigest(input)
           else
             raise ArgumentError, "Invalid hash type: #{type}"
           end

    render json: { hash: hash }
  end
end
