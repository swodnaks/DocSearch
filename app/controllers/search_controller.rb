class SearchController < ApplicationController
  def search
    @query = SubcategoryIndex.search(params[:query].to_s).page(params[:page]).per(50) 


    @query = @query.sort(created_at: :desc)
    @query = @query.page(params[:page]).per(50)

    @results = @query.records
    @total_results = @query.total_entries
  end

end
