require('rspec')
require('definition')

describe(Definition) do
  before() do
    Definition.clear()
  end

  describe('#first_def') do
    it('returns one definition of the word') do
      test_definition = Definition.new("problem", "nuisance", "virus")
      expect(test_definition.first_def()).to(eq("problem"))
    end
  end

  describe('#second_def') do
    it('returns one definition of the word') do
      test_definition = Definition.new("problem", "nuisance", "virus")
      expect(test_definition.second_def()).to(eq("nuisance"))
    end
  end

  describe('#third_def') do
    it('returns one definition of the word') do
      test_definition = Definition.new("problem", "nuisance", "virus")
      expect(test_definition.third_def()).to(eq("virus"))
    end
  end

  describe('#save') do
    it('add a definition to an array') do
      test_definition = Definition.new("problem", "nuisance", "virus")
      test_definition.save()
      expect(Definition.all()).to(eq([test_definition]))
    end
  end

  describe('.all') do
    it('starts empty') do
      expect(Definition.all).to(eq([]))
    end
  end
end