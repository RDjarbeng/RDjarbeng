module Jekyll
  class RedirectGenerator < Generator
    priority :low

    def generate(site)
      site.posts.docs.each do |post|
        # Generate old URLs
        category_url = "/RDjarbeng/" + post.data['categories'].join('/') + "/" + post.date.strftime('%Y/%m/%d') + "/" + post.data['slug']
        no_category_url = "/RDjarbeng/" + post.date.strftime('%Y/%m/%d') + "/" + post.data['slug']

        # Add these old URLs to redirect_from
        post.data['redirect_from'] ||= []
        post.data['redirect_from'] << category_url
        post.data['redirect_from'] << no_category_url

        # Debug output
        puts "Post: #{post.data['title']}"
        puts "Redirects: #{post.data['redirect_from']}"

        # Re-register the post with modified front matter
        site.pages << post if !site.pages.include?(post)
      end
    end
  end
end