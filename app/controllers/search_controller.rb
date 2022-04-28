class SearchController < ApplicationController
  def search
    query = SubcategoryIndex.search(params[:query].to_s)

    @results = query.records
    @total_results = query.total_entries
  end
end
