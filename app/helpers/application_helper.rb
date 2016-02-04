module ApplicationHelper
    
  def gravatar_for(client, options = { size: 80 })
    gravatar_id = Digest::MD5::hexdigest(client.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: client.clientname, class: "gravatar")
    
  end
end
