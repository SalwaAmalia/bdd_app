require 'rails_helper'

RSpec.describe Book, type: :model do
  # associations
  it { is_expected.to belong_to(:user) }
  # columns
  it { is_expected.to have_db_column(:name).of_type(:string) }
  it { is_expected.to have_db_column(:author).of_type(:string) }
  it { is_expected.to have_db_column(:created_at).of_type(:datetime) }
  it { is_expected.to  have_db_column(:updated_at).of_type(:datetime) }
end
