class StaticPagesController < ApplicationController
  skip_before_filter :autocheck, only: [:login]

  def login
  end

  def main
  end

  def userdata
  end
end
