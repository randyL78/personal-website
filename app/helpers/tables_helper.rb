module TablesHelper
  def truncate_text(text, max_characters = 30)
    return text if text.length < max_characters

    "#{text.slice(0, max_characters - 3)}..."
  end
end
