first_post = Post.new

Section.create!(text: "First Paragraph", post: first_post)
Section.create!(text: "Second Paragraph", post: first_post)

EditRequest.create!(new_text: "Very Nice First Paragraph", section: Section.first)
