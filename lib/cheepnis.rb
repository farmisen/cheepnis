module Cheepnis
  require 'heroku'

  # starts up a Heroku worker if none are active
  # Author: Mike Travers Feb 2010

  def self.enqueue(object)
    # enqueue the object in the normal way
    Delayed::Job.enqueue(object)
    if on_heroku
      # start a worker if necessary
      start
      # and enqueue something that calls maybe_stop, at low priortity
      terminator = Terminator.new
      Delayed::Job.enqueue(terminator, -10)    
    end
  end

  def self.on_heroku
    ENV["HEROKU_UPID"] != nil
  end

  def self.get_client
    Heroku::Client.new(ENV['HEROKU_USER'], ENV['HEROKU_PASSWORD'])
  end

  def self.start
    heroku = get_client
    info = heroku.info(ENV['APP_NAME'])
    workers = info[:workers].to_i
    if workers == 0
      heroku.set_workers(ENV['APP_NAME'], 1)
    end
  end

  def self.stop
    get_client.set_workers(ENV['APP_NAME'], 0)
  end

  # this needs some experimentation
  def self.maybe_stop
    stop unless Delayed::Job.count > 1
  end

  class Terminator
    def perform
      Cheepnis.maybe_stop
    end
  end

end
