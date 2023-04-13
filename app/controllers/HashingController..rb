class HashingController < ApplicationController
    def hash
      hash = case params[:type]
             when 'md5'
               Hashing.md5(params[:input])
             when 'sha1'
               Hashing.sha1(params[:input])
             when 'sha256'
               Hashing.sha256(params[:input])
             when 'sha512'
               Hashing.sha512(params[:input])
             else
               raise ArgumentError.new("Invalid hash type: #{params[:type]}")
             end
  
      render json: { hash: hash }
    end
  end
  