class Comment < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    body     :optional_markdown
    markdown :boolean
    timestamps
  end
  
  belongs_to :recipe

  set_search_columns # to none

  include OwnedModel

end
