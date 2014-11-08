class Comm013WebsiteController < ApplicationController
  def home
    @title = "Home"
  end

  def abouttheclub
    @title = "About the club"
  end

  def howtojoin
    @title = "How to Join"
  end

  def whatyouneed
    @title = "What you need"
  end

  def clubmatters
    @title = "Club matters"
  end

  def howtogetthere
    @title = "How to get there"
  end

  def links
    @title = "Useful links"
  end
end
