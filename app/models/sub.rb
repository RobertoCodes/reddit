class Sub < ActiveRecord::Base

  belongs_to(
    :moderator,
    class_name: "User",
    foreign_key: :mod_id,
    primary_key: :id
    )

  has_many(
    :posts,
    class_name: "Post",
    foreign_key: :sub_id,
    primary_key: :id
  )

  has_many(
    :sub_posts,
    class_name: "SubPost",
    foreign_key: :sub_id,
    primary_key: :id
  )

  has_many(
    :posts,
    through: :sub_posts,
    source: :post
  )


end
