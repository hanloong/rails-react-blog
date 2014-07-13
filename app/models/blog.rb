class Blog < ActiveRecord::Base
  has_many :entries

  def as_json(options={})
    super(only: [:id, :name], include: :entries)
  end
end
