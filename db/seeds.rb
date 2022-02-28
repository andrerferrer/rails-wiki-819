User.create!(
  email: 'player@one.com',
  password: 123456
)

first_post = Post.create

lorem = "Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum itaque veritatis asperiores facere accusantium libero corrupti dolorum consectetur quam fuga, rem consequatur molestias eligendi, numquam culpa, consequuntur magni beatae ducimus?
Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum itaque veritatis asperiores facere accusantium libero corrupti dolorum consectetur quam fuga, rem consequatur molestias eligendi, numquam culpa, consequuntur magni beatae ducimus?
Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum itaque veritatis asperiores facere accusantium libero corrupti dolorum consectetur quam fuga, rem consequatur molestias eligendi, numquam culpa, consequuntur magni beatae ducimus?
Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum itaque veritatis asperiores facere accusantium libero corrupti dolorum consectetur quam fuga, rem consequatur molestias eligendi, numquam culpa, consequuntur magni beatae ducimus?
Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum itaque veritatis asperiores facere accusantium libero corrupti dolorum consectetur quam fuga, rem consequatur molestias eligendi, numquam culpa, consequuntur magni beatae ducimus?"

Section.create!(text: "First Paragraph #{lorem}", post: first_post)
Section.create!(text: "Second Paragraph #{lorem}", post: first_post)

EditRequest.create!(new_text: "Very Nice First Paragraph", section: Section.first)
