module UsersHelper
#This helper simply gathers the associated gravatar for a given email..
  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: user.username, class: "gravatar")
  end
end
