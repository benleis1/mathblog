module Jekyll
  module AutoExcerpt
    # Automatically generate excerpts from post content, skipping images
    def auto_excerpt(input)
      return input if input.nil? || input.empty?

      # Remove front matter if present
      content = input.gsub(/\A---(.|\n)*?---/, '')

      # Remove markdown images ![...](...)
      content = content.gsub(/!\[.*?\]\(.*?\)(\{[^}]*\})?/, '')

      # Remove HTML img tags
      content = content.gsub(/<img[^>]*>/, '')

      # Remove empty lines
      content = content.gsub(/^\s*$\n/, '')

      # Get first paragraph (text up to double newline or heading)
      paragraphs = content.split(/\n\n+|^#+\s/)
      first_text = paragraphs.find { |p| p.strip.length > 20 }

      return '' if first_text.nil?

      # Clean up and truncate
      first_text = first_text.strip.gsub(/\s+/, ' ')

      # Truncate to ~160 characters at word boundary
      if first_text.length > 160
        first_text = first_text[0..160].gsub(/\s\w+\s*$/, '...')
      end

      first_text
    end
  end
end

Liquid::Template.register_filter(Jekyll::AutoExcerpt)

# Hook to set excerpt for posts that don't have one
Jekyll::Hooks.register :posts, :pre_render do |post|
  # Check if excerpt is empty or auto-generated
  excerpt_text = post.data['excerpt'].to_s.strip
  # Remove HTML tags to check if there's actual content
  excerpt_plain = excerpt_text.gsub(/<[^>]*>/, '').strip

  if excerpt_plain.empty?
    filter = Jekyll::AutoExcerpt
    auto_excerpt = filter.instance_method(:auto_excerpt).bind(Object.new).call(post.content)
    post.data['excerpt'] = auto_excerpt unless auto_excerpt.empty?
  end
end
