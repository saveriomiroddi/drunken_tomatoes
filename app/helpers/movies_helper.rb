module MoviesHelper

  def js_on_change_link
    "document.location = '/movies?genre_id=' + movie_genre_id.value + " +
                               "'&sorting_field=' + sorting_field.value +" +
                               "'&min_rating=' + movie_min_rating.value +" +
                               "'&min_year=' + movie_min_year.value +" +
                               "'&watchable=' + movie_watchable.checked"
  end

  def new_page_params
    {
      genre_id: @genre_id,
      sorting_field: @sorting_field,
      min_rating: @min_rating,
      min_year: @min_year,
      watchable: @watchable,
    }
  end

end