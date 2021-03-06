class Idea < ApplicationRecord
  belongs_to :category
  validates :body, presence: true

  def self.response_ideas(category_name)
    if category_name.present?
      category = Category.find_by!(name: category_name)
      ideas = category.ideas
    else
      ideas = Idea.all
    end
    Idea.format_idea(ideas)
  end

  def self.format_idea(ideas)
    ideas.map do |idea|
      {
        id: idea.id,
        category: idea.category.name,
        body: idea.body,
        created_at: idea.created_at
      }
    end
  end
end
