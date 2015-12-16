class HomeController < ApplicationController
  def index
  end

  def cristian
    @phrases = Phrase.get_by_category("cristianas", 0)
  end
end
