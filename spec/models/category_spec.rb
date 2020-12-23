require 'rails_helper'

RSpec.describe Category, type: :model do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_uniqueness_of(:name).case_insensitive }

  # O "dependent destroy" serve para excluir o produto que esteja associado a categoria que foi excluida
  it { is_expected.to have_many(:product_categories).dependent(:destroy) }
  it { is_expected.to have_many(:products).through(:product_categories) }

  it_behaves_like "name searchable concern", :category 
  it_behaves_like "paginatable concern", :category 
end
