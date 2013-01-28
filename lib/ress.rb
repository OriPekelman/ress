require "action_view"

require "ress/version"
require "ress/device_category"
require "ress/category_collection"
require "ress/controller_additions"
require "ress/view_helpers"

if defined? Rails
  require "ress/engine"
end

module Ress
  extend self

  def categories
    @categories ||= CategoryCollection.new
  end

  def configure
    yield(categories)
  end

end
