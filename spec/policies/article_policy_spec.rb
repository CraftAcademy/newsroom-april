require 'rails_helper'

RSpec.describe ArticlePolicy do

  let(:subscriber) { create(:user, email: 'subscriber@test.com', role: :subscriber) }
  let(:journalist) { create(:user, email: 'journalist@test.com', role: :journalist) }
  let(:editor) { create(:user, email: 'editor@test.com', role: :editor) }

  let(:article) { create(:article) }

  context 'Subscriber can NOT create article' do
    subject { described_class.new(subscriber, article) }
    it { is_expected.to forbid_new_and_create_actions }
  end

  context 'Journalist can create article' do
    subject { described_class.new(journalist, article) }
    it { is_expected.to permit_new_and_create_actions }
  end

  context 'Editor can create article' do
    subject { described_class.new(editor, article) }
    it { is_expected.to permit_new_and_create_actions }
  end
end
