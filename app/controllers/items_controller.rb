class ItemsController < ApplicationController
  def index
    @list_of_items = Item.all

    render({ :template => "item_templates/list" })
  end
  def backdoor_form
    render({ :template => "item_templates/backdoor" })
  end
  def backdoor_results
    new_item = Item.new
    new_item.link_url = params.fetch("link_url")
    new_item.link_description = params.fetch("link_description")
    new_item.thumbnail_url = params.fetch("thumb_url")
    new_item.save
    redirect_to("/", allow_other_host: true)
  end
end
