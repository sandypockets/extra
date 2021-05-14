class PagesController < ApplicationController

  # Be sure to add a route after creating the controller def


  def about
    @content = Page.find_by(url: 'about')
  end

  def our_story
    @content = Page.find_by(url: 'our-story')
  end

  def terms
    @content = Page.find_by(url: 'terms-and-conditions')
  end

end
