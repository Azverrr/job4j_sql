SELECT id, title, company, description
FROM vacancies
WHERE title ~* ('java|go|postgres')
   or description ~* ('java|go|postgres')

