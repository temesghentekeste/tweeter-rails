module ApplicationHelper
  def gravatar_for(user, options = {size: 64})
    if user
      gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
      size = options[:size]
      gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
      image_tag(gravatar_url, alt: user.username, class: "rounded-circle")
    end
  end
end
