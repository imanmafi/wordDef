require('rspec')
require('word')
require('definition')

describe(Word) do
  before() do
    Word.clear()
  end

  describe('#one_word') do
    it('returns the inputted word') do
      test_word = Word.new("word")
      expect(test_word.one_word()).to(eq("word"))
    end
  end

  describe('#id') do
    it('returns the id of the word') do
      test_dealership = Word.new("word")
      expect(test_dealership.id()).to(eq(1))
    end
  end

  describe('#definitions') do
    it('initially returns an empty array of definitions associated with one word') do
      test_word = Word.new("word")
      expect(test_word.definitions()).to(eq([]))
    end
  end

  describe('#save') do
    it('adds a word to an array of words') do
      test_word = Word.new("word")
      test_word.save()
      expect(Word.all()).to(eq([test_word]))
    end
  end

  describe('.all') do
    it('begins empty') do
      expect(Word.all()).to(eq([]))
    end
  end

  describe('#add_def') do
    it('adds a definition to definitions array') do
      test_word = Word.new("word")
      test_definition = Definition.new("a noun", "a verb")
      test_word.add_def(test_definition)
      expect(test_word.definitions()).to(eq([test_definition]))
    end
  end
end