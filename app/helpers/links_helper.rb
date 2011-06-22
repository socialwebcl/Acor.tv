module LinksHelper
  def encoded_url
  	  APP_CONFIG["domain_url"]+"/"+UrlCoder.encode_base(@link.id) 
  end
end
