class Word
  @@all_words = []

  define_method(:initialize) do |one_word|
    @one_word = one_word
    @id = @@all_words.length() + 1
    @definitions = []
  end

  define_method(:one_word) do
    @one_word
  end

  define_method(:save) do
    @@all_words.push(self)
  end

  define_singleton_method(:all) do
    @@all_words
  end

  define_singleton_method(:clear) do
    @@all_words.clear()
  end

  define_method(:id) do
    @id
  end

  define_method(:definitions) do
    @definitions
  end

  define_method(:add_def) do |definition|
    @definitions.push(definition)
  end
end
