def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT Books.title, Books.year
  FROM Books
  WHERE Books.series_id = 1;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT Characters.name, Characters.motto
  FROM Characters
  ORDER BY LENGTH(Characters.motto) DESC LIMIT 1;"
end

def select_value_and_count_of_most_prolific_species
  "SELECT Characters.species, COUNT(Characters.species)
  FROM Characters
  GROUP BY Characters.species
  ORDER BY COUNT(*) DESC
  LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT Authors.name, Subgenres.name
  FROM Authors
  INNER JOIN Series ON author_id = authors.id
  INNER JOIN Subgenres ON subgenres.id = subgenre_id;"
end

def select_series_title_with_most_human_characters
  "SELECT Series.title
  FROM Series
  INNER JOIN Characters ON Series.id = series_id
  GROUP BY series.title HAVING species = 'human'
  ORDER by COUNT(characters.species) DESC LIMIT 1;"


end

def select_character_names_and_number_of_books_they_are_in
  "SELECT Characters.name, COUNT(Character_books.book_id)
  FROM Characters
  INNER JOIN Character_books ON character_id = Characters.id
  GROUP by Characters.name
  ORDER BY COUNT(Character_books.book_id) DESC;"
end
