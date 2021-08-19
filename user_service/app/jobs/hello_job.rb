class HelloJob < ApplicationJob
  @queue = :file_serve


  def perform_now
    zz = REDIS.set("roach", "21341243")
    kk = REDIS.get("roach")
    puts kk
  end

end