module Jekyll
    class RedirectGenerator < Generator
      priority :low
  
      def generate(site)
        site.posts.docs.each do |post|
          # Generate the old URL based on categories, date, and slug
          old_url = "/RDjarbeng/" + post.data['categories'].join('/') + "/" + post.date.strftime('%Y/%m/%d') + "/" + post.data['slug'] + ".html"
  
          # Add the redirect_from entry to the post's front matter
          post.data['redirect_from'] ||= []
          post.data['redirect_from'] << old_url
        end
      end
    end
  end